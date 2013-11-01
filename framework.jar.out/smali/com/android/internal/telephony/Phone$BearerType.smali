.class public final enum Lcom/android/internal/telephony/Phone$BearerType;
.super Ljava/lang/Enum;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BearerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/Phone$BearerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/Phone$BearerType;

.field public static final enum IP:Lcom/android/internal/telephony/Phone$BearerType;

.field public static final enum IPV4V6:Lcom/android/internal/telephony/Phone$BearerType;

.field public static final enum IPV6:Lcom/android/internal/telephony/Phone$BearerType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/telephony/Phone$BearerType;

    const-string v1, "IP"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Phone$BearerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$BearerType;->IP:Lcom/android/internal/telephony/Phone$BearerType;

    new-instance v0, Lcom/android/internal/telephony/Phone$BearerType;

    const-string v1, "IPV6"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/Phone$BearerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$BearerType;->IPV6:Lcom/android/internal/telephony/Phone$BearerType;

    new-instance v0, Lcom/android/internal/telephony/Phone$BearerType;

    const-string v1, "IPV4V6"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/Phone$BearerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$BearerType;->IPV4V6:Lcom/android/internal/telephony/Phone$BearerType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/Phone$BearerType;

    sget-object v1, Lcom/android/internal/telephony/Phone$BearerType;->IP:Lcom/android/internal/telephony/Phone$BearerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/Phone$BearerType;->IPV6:Lcom/android/internal/telephony/Phone$BearerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/Phone$BearerType;->IPV4V6:Lcom/android/internal/telephony/Phone$BearerType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/Phone$BearerType;->$VALUES:[Lcom/android/internal/telephony/Phone$BearerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$BearerType;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/android/internal/telephony/Phone$BearerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/Phone$BearerType;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/Phone$BearerType;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/Phone$BearerType;->$VALUES:[Lcom/android/internal/telephony/Phone$BearerType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/Phone$BearerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/Phone$BearerType;

    return-object v0
.end method


# virtual methods
.method supportsIpVersion(Lcom/android/internal/net/IPVersion;)Z
    .locals 2
    .parameter "ipv"

    .prologue
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/Phone$BearerType;->IPV4V6:Lcom/android/internal/telephony/Phone$BearerType;

    if-ne p0, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/Phone$BearerType;->IP:Lcom/android/internal/telephony/Phone$BearerType;

    if-ne p0, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/Phone$BearerType;->IPV6:Lcom/android/internal/telephony/Phone$BearerType;

    if-ne p0, v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/internal/telephony/Phone$1;->$SwitchMap$com$android$internal$telephony$Phone$BearerType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone$BearerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "IP"

    goto :goto_0

    :pswitch_1
    const-string v0, "IPV6"

    goto :goto_0

    :pswitch_2
    const-string v0, "IPV4V6"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
