.class public Landroid/net/NetworkInfo;
.super Ljava/lang/Object;
.source "NetworkInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkInfo$SpecDetailedState;,
        Landroid/net/NetworkInfo$DetailedState;,
        Landroid/net/NetworkInfo$State;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final stateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/net/NetworkInfo$DetailedState;",
            "Landroid/net/NetworkInfo$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDetailedState:Landroid/net/NetworkInfo$DetailedState;

.field private mExtraInfo:Ljava/lang/String;

.field private mIpv4Apn:Ljava/lang/String;

.field private mIpv4Interface:Ljava/lang/String;

.field private mIpv6Apn:Ljava/lang/String;

.field private mIpv6Interface:Ljava/lang/String;

.field private mIsAvailable:Z

.field private mIsFailover:Z

.field private mIsIpV4Connected:Z

.field private mIsIpV6Connected:Z

.field private mIsRoaming:Z

.field private mNetworkType:I

.field private mReason:Ljava/lang/String;

.field private mState:Landroid/net/NetworkInfo$State;

.field private mSubtype:I

.field private mSubtypeName:Ljava/lang/String;

.field private mTypeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/net/NetworkInfo$1;

    invoke-direct {v0}, Landroid/net/NetworkInfo$1;-><init>()V

    sput-object v0, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "type"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "type"
    .parameter "subtype"
    .parameter "typeName"
    .parameter "subtypeName"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid network type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/net/NetworkInfo;->mNetworkType:I

    iput p2, p0, Landroid/net/NetworkInfo;->mSubtype:I

    iput-object p3, p0, Landroid/net/NetworkInfo;->mTypeName:Ljava/lang/String;

    iput-object p4, p0, Landroid/net/NetworkInfo;->mSubtypeName:Ljava/lang/String;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    move-object v0, p0

    move v3, v2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, v4

    invoke-virtual/range {v0 .. v9}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    iput-boolean v2, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z

    iput-boolean v2, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z

    return-void
.end method

.method static synthetic access$002(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    return-object p1
.end method

.method static synthetic access$1002(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/NetworkInfo;->mIpv6Apn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    return-object p1
.end method

.method static synthetic access$1102(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/NetworkInfo;->mIpv4Interface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/NetworkInfo;->mIpv6Interface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Landroid/net/NetworkInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsFailover:Z

    return p1
.end method

.method static synthetic access$302(Landroid/net/NetworkInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z

    return p1
.end method

.method static synthetic access$402(Landroid/net/NetworkInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z

    return p1
.end method

.method static synthetic access$502(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Landroid/net/NetworkInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsIpV4Connected:Z

    return p1
.end method

.method static synthetic access$802(Landroid/net/NetworkInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsIpV6Connected:Z

    return p1
.end method

.method static synthetic access$902(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/NetworkInfo;->mIpv4Apn:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method public getExtraInfo()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv4Apn()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/NetworkInfo;->mIpv4Apn:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv4Interface()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/NetworkInfo;->mIpv4Interface:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv6Apn()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/NetworkInfo;->mIpv6Apn:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv6Interface()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/NetworkInfo;->mIpv6Interface:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Landroid/net/NetworkInfo$State;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    return-object v0
.end method

.method public getSubtype()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/NetworkInfo;->mSubtype:I

    return v0
.end method

.method public getSubtypeName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/NetworkInfo;->mSubtypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/NetworkInfo;->mNetworkType:I

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/NetworkInfo;->mTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z

    return v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnectedOrConnecting()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFailover()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/net/NetworkInfo;->mIsFailover:Z

    return v0
.end method

.method public isIpv4Connected()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/net/NetworkInfo;->mIsIpV4Connected:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIpv6Connected()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/net/NetworkInfo;->mIsIpV6Connected:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRoaming()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z

    return v0
.end method

.method setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "detailedState"
    .parameter "isIpv4Connected"
    .parameter "isIpv6Connected"
    .parameter "reason"
    .parameter "extraInfo"
    .parameter "ipv4Apn"
    .parameter "ipv6Apn"
    .parameter "ipv4Interface"
    .parameter "ipv6Interface"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    iput-object p4, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    iput-object p5, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    iput-object p6, p0, Landroid/net/NetworkInfo;->mIpv4Apn:Ljava/lang/String;

    iput-object p7, p0, Landroid/net/NetworkInfo;->mIpv6Apn:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_0

    iput-boolean v2, p0, Landroid/net/NetworkInfo;->mIsIpV4Connected:Z

    iput-boolean v2, p0, Landroid/net/NetworkInfo;->mIsIpV6Connected:Z

    iput-object v3, p0, Landroid/net/NetworkInfo;->mIpv4Interface:Ljava/lang/String;

    iput-object v3, p0, Landroid/net/NetworkInfo;->mIpv6Interface:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-boolean p2, p0, Landroid/net/NetworkInfo;->mIsIpV4Connected:Z

    iput-object p8, p0, Landroid/net/NetworkInfo;->mIpv4Interface:Ljava/lang/String;

    iput-boolean p3, p0, Landroid/net/NetworkInfo;->mIsIpV6Connected:Z

    iput-object p9, p0, Landroid/net/NetworkInfo;->mIpv6Interface:Ljava/lang/String;

    goto :goto_0
.end method

.method public setFailover(Z)V
    .locals 0
    .parameter "isFailover"

    .prologue
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsFailover:Z

    return-void
.end method

.method public setIsAvailable(Z)V
    .locals 0
    .parameter "isAvailable"

    .prologue
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z

    return-void
.end method

.method setRoaming(Z)V
    .locals 0
    .parameter "isRoaming"

    .prologue
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z

    return-void
.end method

.method setSubtype(ILjava/lang/String;)V
    .locals 0
    .parameter "subtype"
    .parameter "subtypeName"

    .prologue
    iput p1, p0, Landroid/net/NetworkInfo;->mSubtype:I

    iput-object p2, p0, Landroid/net/NetworkInfo;->mSubtypeName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "(unspecified)"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, "(none)"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", roaming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", failover: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsFailover:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isIpv4Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsIpV4Connected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isIpv6Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsIpV6Connected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ipv4Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkInfo;->mIpv4Apn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ipv6Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkInfo;->mIpv6Apn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v2, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Landroid/net/NetworkInfo;->mNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/NetworkInfo;->mSubtype:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/NetworkInfo;->mTypeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/NetworkInfo;->mSubtypeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0}, Landroid/net/NetworkInfo$State;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/net/NetworkInfo;->mIsFailover:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/net/NetworkInfo;->mIsIpV4Connected:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/NetworkInfo;->mIsIpV6Connected:Z

    if-eqz v0, :cond_4

    move v0, v2

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/NetworkInfo;->mIpv4Apn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/NetworkInfo;->mIpv6Apn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/NetworkInfo;->mIpv4Interface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/NetworkInfo;->mIpv6Interface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_4
.end method
