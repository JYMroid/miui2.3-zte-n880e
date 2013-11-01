.class public Lcom/android/internal/telephony/RegStateResponse;
.super Ljava/lang/Object;
.source "RegStateResponse.java"


# instance fields
.field private mRegStates:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .parameter "regstates"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/RegStateResponse;->mRegStates:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/RegStateResponse;->mRegStates:[Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const-string v5, "null"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/internal/telephony/RegStateResponse;->getValues()[Ljava/lang/String;

    move-result-object v2

    .local v2, strings:[Ljava/lang/String;
    if-eqz v2, :cond_2

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_3

    aget-object v3, v2, v0

    if-eqz v3, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_0

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "null"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v0           #i:I
    :cond_2
    const-string v3, "null"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
