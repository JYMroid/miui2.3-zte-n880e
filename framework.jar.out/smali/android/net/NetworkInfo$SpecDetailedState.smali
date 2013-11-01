.class public final enum Landroid/net/NetworkInfo$SpecDetailedState;
.super Ljava/lang/Enum;
.source "NetworkInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpecDetailedState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/NetworkInfo$SpecDetailedState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/NetworkInfo$SpecDetailedState;

.field public static final enum WPS_EVENT:Landroid/net/NetworkInfo$SpecDetailedState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    new-instance v0, Landroid/net/NetworkInfo$SpecDetailedState;

    const-string v1, "WPS_EVENT"

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkInfo$SpecDetailedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/NetworkInfo$SpecDetailedState;->WPS_EVENT:Landroid/net/NetworkInfo$SpecDetailedState;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/NetworkInfo$SpecDetailedState;

    sget-object v1, Landroid/net/NetworkInfo$SpecDetailedState;->WPS_EVENT:Landroid/net/NetworkInfo$SpecDetailedState;

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/NetworkInfo$SpecDetailedState;->$VALUES:[Landroid/net/NetworkInfo$SpecDetailedState;

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

.method public static valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$SpecDetailedState;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Landroid/net/NetworkInfo$SpecDetailedState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/NetworkInfo$SpecDetailedState;

    return-object p0
.end method

.method public static values()[Landroid/net/NetworkInfo$SpecDetailedState;
    .locals 1

    .prologue
    sget-object v0, Landroid/net/NetworkInfo$SpecDetailedState;->$VALUES:[Landroid/net/NetworkInfo$SpecDetailedState;

    invoke-virtual {v0}, [Landroid/net/NetworkInfo$SpecDetailedState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkInfo$SpecDetailedState;

    return-object v0
.end method
