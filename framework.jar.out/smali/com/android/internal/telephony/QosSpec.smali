.class public Lcom/android/internal/telephony/QosSpec;
.super Ljava/lang/Object;
.source "QosSpec.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/QosSpec$QosPipe;,
        Lcom/android/internal/telephony/QosSpec$QosIntentKeys;,
        Lcom/android/internal/telephony/QosSpec$QosIndStates;,
        Lcom/android/internal/telephony/QosSpec$QosStatus;,
        Lcom/android/internal/telephony/QosSpec$QosSpecKey;,
        Lcom/android/internal/telephony/QosSpec$QosClass;,
        Lcom/android/internal/telephony/QosSpec$QosDirection;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/QosSpec;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "QosSpec"

.field private static mPipeId:I


# instance fields
.field mQosPipes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/QosSpec$QosPipe;",
            ">;"
        }
    .end annotation
.end field

.field private mUserData:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/QosSpec;->mPipeId:I

    new-instance v0, Lcom/android/internal/telephony/QosSpec$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/QosSpec$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/QosSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/QosSpec;->mUserData:I

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    return-void
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    const-string v0, "QosSpec"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/QosSpec$QosPipe;

    .local v1, pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    invoke-virtual {v1}, Lcom/android/internal/telephony/QosSpec$QosPipe;->clear()V

    goto :goto_0

    .end local v1           #pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public containsKey(ILcom/android/internal/telephony/QosSpec$QosSpecKey;)Z
    .locals 4
    .parameter "pipeId"
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .local v0, flag:Z
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QosSpec;->isValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/QosSpec$QosPipe;

    iget-object v1, p0, Lcom/android/internal/telephony/QosSpec$QosPipe;->mQosParams:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    .restart local p0
    :cond_0
    const-string v1, "QosSpec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: Invalid pipeId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public containsValue(ILjava/lang/String;)Z
    .locals 4
    .parameter "pipeId"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .local v0, flag:Z
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QosSpec;->isValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/QosSpec$QosPipe;

    iget-object v1, p0, Lcom/android/internal/telephony/QosSpec$QosPipe;->mQosParams:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    .restart local p0
    :cond_0
    const-string v1, "QosSpec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: Invalid pipeId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public createPipe()Lcom/android/internal/telephony/QosSpec$QosPipe;
    .locals 4

    .prologue
    sget v1, Lcom/android/internal/telephony/QosSpec;->mPipeId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/internal/telephony/QosSpec;->mPipeId:I

    .local v1, pipeId:I
    new-instance v0, Lcom/android/internal/telephony/QosSpec$QosPipe;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/QosSpec$QosPipe;-><init>(Lcom/android/internal/telephony/QosSpec;)V

    .local v0, pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    iget-object v2, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public createPipe(Ljava/lang/String;)Lcom/android/internal/telephony/QosSpec$QosPipe;
    .locals 19
    .parameter "flowFilterSpec"

    .prologue
    sget v13, Lcom/android/internal/telephony/QosSpec;->mPipeId:I

    add-int/lit8 v16, v13, 0x1

    sput v16, Lcom/android/internal/telephony/QosSpec;->mPipeId:I

    .local v13, pipeId:I
    const/4 v11, 0x0

    .local v11, pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    if-nez p1, :cond_0

    move-object v12, v11

    .end local v11           #pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    .local v12, pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    :goto_0
    return-object v12

    .end local v12           #pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    .restart local v11       #pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    :cond_0
    new-instance v11, Lcom/android/internal/telephony/QosSpec$QosPipe;

    .end local v11           #pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/QosSpec$QosPipe;-><init>(Lcom/android/internal/telephony/QosSpec;)V

    .restart local v11       #pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    move-object/from16 v16, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v16, ","

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .local v7, keyvalues:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, kvpair:[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, keyStr:Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, value:Ljava/lang/String;
    move-object v3, v7

    .local v3, arr$:[Ljava/lang/String;
    array-length v10, v3

    .local v10, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v10, :cond_1

    aget-object v8, v3, v4

    .local v8, kv:Ljava/lang/String;
    :try_start_0
    const-string v16, "="

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x0

    aget-object v6, v9, v16

    const/16 v16, 0x1

    aget-object v15, v9, v16

    const-class v16, Lcom/android/internal/telephony/RILConstants$RIL_QosSpecKeys;

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v16

    const-class v17, Lcom/android/internal/telephony/RILConstants$RIL_QosSpecKeys;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .local v5, key:I
    invoke-virtual {v11, v5, v15}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #key:I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v16

    move-object/from16 v14, v16

    .local v14, t:Ljava/lang/Throwable;
    const-string v16, "QosSpec"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Warning: Invalid key:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v8           #kv:Ljava/lang/String;
    .end local v14           #t:Ljava/lang/Throwable;
    :cond_1
    move-object v12, v11

    .end local v11           #pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    .restart local v12       #pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public entrySet(I)Ljava/util/Set;
    .locals 2
    .parameter "pipeId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QosSpec;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/QosSpec$QosPipe;

    iget-object v0, p0, Lcom/android/internal/telephony/QosSpec$QosPipe;->mQosParams:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQosPipes(Ljava/lang/String;)Lcom/android/internal/telephony/QosSpec$QosPipe;
    .locals 3
    .parameter "specIndex"

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/QosSpec$QosPipe;

    .local v1, pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/QosSpec$QosPipe;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .end local v1           #pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getQosPipes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/QosSpec$QosPipe;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getQosSpec(II)Ljava/lang/String;
    .locals 3
    .parameter "pipeId"
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .local v0, value:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QosSpec;->isValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/QosSpec$QosPipe;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/QosSpec$QosPipe;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRilQosSpec()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, rilQosSpec:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/QosSpec$QosPipe;

    .local v1, pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    #calls: Lcom/android/internal/telephony/QosSpec$QosPipe;->getRilPipeSpec()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/QosSpec$QosPipe;->access$000(Lcom/android/internal/telephony/QosSpec$QosPipe;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1           #pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    :cond_0
    return-object v2
.end method

.method public getUserData()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/QosSpec;->mUserData:I

    return v0
.end method

.method public isEmpty(I)Z
    .locals 4
    .parameter "pipeId"

    .prologue
    const/4 v0, 0x0

    .local v0, flag:Z
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QosSpec;->isValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/QosSpec$QosPipe;

    iget-object v1, p0, Lcom/android/internal/telephony/QosSpec$QosPipe;->mQosParams:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    .restart local p0
    :cond_0
    const-string v1, "QosSpec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: Invalid pipeId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isValid(I)Z
    .locals 2
    .parameter "pipeId"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public pipeKeySet(I)Ljava/util/Set;
    .locals 2
    .parameter "pipeId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QosSpec;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/QosSpec$QosPipe;

    iget-object v0, p0, Lcom/android/internal/telephony/QosSpec$QosPipe;->mQosParams:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pipeSize(I)I
    .locals 4
    .parameter "pipeId"

    .prologue
    const/4 v0, 0x0

    .local v0, size:I
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QosSpec;->isValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/QosSpec$QosPipe;

    iget-object v1, p0, Lcom/android/internal/telephony/QosSpec$QosPipe;->mQosParams:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    :goto_0
    return v0

    .restart local p0
    :cond_0
    const-string v1, "QosSpec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: Invalid pipeId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pipeValues(I)Ljava/util/Collection;
    .locals 2
    .parameter "pipeId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QosSpec;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/QosSpec$QosPipe;

    iget-object v0, p0, Lcom/android/internal/telephony/QosSpec$QosPipe;->mQosParams:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUserData(I)V
    .locals 0
    .parameter "userData"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/QosSpec;->mUserData:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/QosSpec$QosPipe;>;"
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/QosSpec$QosPipe;>;"
    :cond_0
    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget v4, p0, Lcom/android/internal/telephony/QosSpec;->mUserData:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcom/android/internal/telephony/QosSpec;->mQosPipes:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/QosSpec$QosPipe;

    .local v3, pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    iget-object v4, v3, Lcom/android/internal/telephony/QosSpec$QosPipe;->mQosParams:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, v3, Lcom/android/internal/telephony/QosSpec$QosPipe;->mQosParams:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    :cond_1
    return-void
.end method
