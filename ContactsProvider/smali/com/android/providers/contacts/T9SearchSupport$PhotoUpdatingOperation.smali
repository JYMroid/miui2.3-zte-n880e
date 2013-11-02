.class Lcom/android/providers/contacts/T9SearchSupport$PhotoUpdatingOperation;
.super Lcom/android/providers/contacts/T9SearchSupport$Operation;
.source "T9SearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/T9SearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoUpdatingOperation"
.end annotation


# instance fields
.field public photoIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
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
    .line 2881
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$PhotoUpdatingOperation;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    .line 2882
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/T9SearchSupport$Operation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;I)V

    .line 2879
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$PhotoUpdatingOperation;->photoIdMap:Ljava/util/HashMap;

    .line 2883
    return-void
.end method


# virtual methods
.method add(JLjava/lang/Object;)V
    .locals 2
    .parameter "contactId"
    .parameter "photoId"

    .prologue
    .line 2909
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$PhotoUpdatingOperation;->photoIdMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2910
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$PhotoUpdatingOperation;->photoIdMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2912
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$PhotoUpdatingOperation;->photoIdMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    check-cast p3, Ljava/lang/Long;

    .end local p3
    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2913
    return-void
.end method

.method apply()V
    .locals 10

    .prologue
    .line 2887
    iget-object v7, p0, Lcom/android/providers/contacts/T9SearchSupport$PhotoUpdatingOperation;->photoIdMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 2892
    .local v2, contactIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
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

    .line 2893
    .local v0, contactId:J
    iget-object v7, p0, Lcom/android/providers/contacts/T9SearchSupport$PhotoUpdatingOperation;->photoIdMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 2894
    .local v5, photoId:J
    iget-object v7, p0, Lcom/android/providers/contacts/T9SearchSupport$PhotoUpdatingOperation;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    #getter for: Lcom/android/providers/contacts/T9SearchSupport;->mPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;
    invoke-static {v7}, Lcom/android/providers/contacts/T9SearchSupport;->access$1400(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2895
    iget-object v7, p0, Lcom/android/providers/contacts/T9SearchSupport$PhotoUpdatingOperation;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    #getter for: Lcom/android/providers/contacts/T9SearchSupport;->mPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;
    invoke-static {v7}, Lcom/android/providers/contacts/T9SearchSupport;->access$1400(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2896
    iget-object v7, p0, Lcom/android/providers/contacts/T9SearchSupport$PhotoUpdatingOperation;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    #getter for: Lcom/android/providers/contacts/T9SearchSupport;->mPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;
    invoke-static {v7}, Lcom/android/providers/contacts/T9SearchSupport;->access$1400(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2899
    iget-object v7, p0, Lcom/android/providers/contacts/T9SearchSupport$PhotoUpdatingOperation;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    #calls: Lcom/android/providers/contacts/T9SearchSupport;->updatePhotoId(JJ)V
    invoke-static {v7, v0, v1, v5, v6}, Lcom/android/providers/contacts/T9SearchSupport;->access$1500(Lcom/android/providers/contacts/T9SearchSupport;JJ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2901
    .end local v0           #contactId:J
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #photoId:J
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 2902
    .local v3, e:Ljava/lang/RuntimeException;
    const-string v7, "T9SearchSupport"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to update the photo id for contacts: "

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

    .line 2903
    throw v3

    .line 2905
    .end local v3           #e:Ljava/lang/RuntimeException;
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method
