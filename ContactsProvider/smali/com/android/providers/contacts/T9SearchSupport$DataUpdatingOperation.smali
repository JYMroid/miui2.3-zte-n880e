.class Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;
.super Lcom/android/providers/contacts/T9SearchSupport$Operation;
.source "T9SearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/T9SearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataUpdatingOperation"
.end annotation


# instance fields
.field public dataDataInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/contacts/T9SearchSupport$UpdatedDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/providers/contacts/T9SearchSupport;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/T9SearchSupport;)V
    .locals 1
    .parameter

    .prologue
    .line 2839
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    .line 2840
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/T9SearchSupport$Operation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;I)V

    .line 2837
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;->dataDataInfoMap:Ljava/util/HashMap;

    .line 2841
    return-void
.end method


# virtual methods
.method add(JLjava/lang/Object;)V
    .locals 2
    .parameter "dataId"
    .parameter "info"

    .prologue
    .line 2868
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;->dataDataInfoMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2869
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;->dataDataInfoMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2871
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;->dataDataInfoMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    check-cast p3, Lcom/android/providers/contacts/T9SearchSupport$UpdatedDataInfo;

    .end local p3
    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2872
    return-void
.end method

.method apply()V
    .locals 10

    .prologue
    .line 2845
    iget-object v7, p0, Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;->dataDataInfoMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 2849
    .local v2, dataIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :try_start_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2850
    .local v0, dataId:J
    iget-object v7, p0, Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;->dataDataInfoMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/providers/contacts/T9SearchSupport$UpdatedDataInfo;

    .line 2851
    .local v6, udi:Lcom/android/providers/contacts/T9SearchSupport$UpdatedDataInfo;
    iget-object v7, v6, Lcom/android/providers/contacts/T9SearchSupport$UpdatedDataInfo;->mData:Ljava/lang/String;

    iget-wide v8, v6, Lcom/android/providers/contacts/T9SearchSupport$UpdatedDataInfo;->mMimeTypeId:J

    invoke-static {v7, v8, v9}, Lcom/android/providers/contacts/T9SearchSupport;->normalizeNumber(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    .line 2852
    .local v5, normalizedData:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    #getter for: Lcom/android/providers/contacts/T9SearchSupport;->mDataUpdateStatement:Landroid/database/sqlite/SQLiteStatement;
    invoke-static {v7}, Lcom/android/providers/contacts/T9SearchSupport;->access$1200(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    const/4 v8, 0x1

    iget-object v9, v6, Lcom/android/providers/contacts/T9SearchSupport$UpdatedDataInfo;->mData:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2853
    iget-object v7, p0, Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    #getter for: Lcom/android/providers/contacts/T9SearchSupport;->mDataUpdateStatement:Landroid/database/sqlite/SQLiteStatement;
    invoke-static {v7}, Lcom/android/providers/contacts/T9SearchSupport;->access$1200(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2854
    iget-object v7, p0, Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    #getter for: Lcom/android/providers/contacts/T9SearchSupport;->mDataUpdateStatement:Landroid/database/sqlite/SQLiteStatement;
    invoke-static {v7}, Lcom/android/providers/contacts/T9SearchSupport;->access$1200(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2855
    iget-object v7, p0, Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    #getter for: Lcom/android/providers/contacts/T9SearchSupport;->mDataUpdateStatement:Landroid/database/sqlite/SQLiteStatement;
    invoke-static {v7}, Lcom/android/providers/contacts/T9SearchSupport;->access$1200(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2858
    iget-object v7, p0, Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    iget-object v8, v6, Lcom/android/providers/contacts/T9SearchSupport$UpdatedDataInfo;->mData:Ljava/lang/String;

    #calls: Lcom/android/providers/contacts/T9SearchSupport;->updateItem(JLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v0, v1, v8, v5}, Lcom/android/providers/contacts/T9SearchSupport;->access$1300(Lcom/android/providers/contacts/T9SearchSupport;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2860
    .end local v0           #dataId:J
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #normalizedData:Ljava/lang/String;
    .end local v6           #udi:Lcom/android/providers/contacts/T9SearchSupport$UpdatedDataInfo;
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 2861
    .local v3, e:Ljava/lang/RuntimeException;
    const-string v7, "T9SearchSupport"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to update data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-static {v9, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2862
    throw v3

    .line 2864
    .end local v3           #e:Ljava/lang/RuntimeException;
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method
