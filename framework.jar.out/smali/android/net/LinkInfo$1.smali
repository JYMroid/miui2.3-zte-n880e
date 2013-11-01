.class final Landroid/net/LinkInfo$1;
.super Ljava/lang/Object;
.source "LinkInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkInfo;
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
        "Landroid/net/LinkInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkInfo;
    .locals 9
    .parameter "in"

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    new-array v7, v8, [B

    .local v7, ip:[B
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readByteArray([B)V

    :try_start_0
    invoke-static {v7}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, ipAddr:Ljava/net/InetAddress;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, availFwLinkBw:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, availRevLinkBw:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, nwId:I
    new-instance v0, Landroid/net/LinkInfo;

    invoke-direct/range {v0 .. v5}, Landroid/net/LinkInfo;-><init>(Ljava/net/InetAddress;IIILandroid/net/LinkInfo$1;)V

    .local v0, info:Landroid/net/LinkInfo;
    move-object v5, v0

    .end local v0           #info:Landroid/net/LinkInfo;
    .end local v1           #ipAddr:Ljava/net/InetAddress;
    .end local v2           #availFwLinkBw:I
    .end local v3           #availRevLinkBw:I
    .end local v4           #nwId:I
    :goto_0
    return-object v5

    :catch_0
    move-exception v6

    .local v6, e:Ljava/net/UnknownHostException;
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/LinkInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/LinkInfo;
    .locals 1
    .parameter "size"

    .prologue
    new-array v0, p1, [Landroid/net/LinkInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/LinkInfo$1;->newArray(I)[Landroid/net/LinkInfo;

    move-result-object v0

    return-object v0
.end method
