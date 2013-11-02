.class Lcom/android/providers/contacts/T9SearchSupport$DisplayNameUpdatingOperation;
.super Lcom/android/providers/contacts/T9SearchSupport$Operation;
.source "T9SearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/T9SearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayNameUpdatingOperation"
.end annotation


# instance fields
.field public contactIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
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
    .line 2672
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$DisplayNameUpdatingOperation;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    .line 2673
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/T9SearchSupport$Operation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;I)V

    .line 2670
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$DisplayNameUpdatingOperation;->contactIds:Ljava/util/HashSet;

    .line 2674
    return-void
.end method


# virtual methods
.method add(JLjava/lang/Object;)V
    .locals 2
    .parameter "contactId"
    .parameter "info"

    .prologue
    .line 2699
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$DisplayNameUpdatingOperation;->contactIds:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2700
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$DisplayNameUpdatingOperation;->contactIds:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2702
    :cond_0
    return-void
.end method

.method apply()V
    .locals 6

    .prologue
    .line 2678
    const-string v3, ","

    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$DisplayNameUpdatingOperation;->contactIds:Ljava/util/HashSet;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 2681
    .local v2, joinedIds:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2683
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport$DisplayNameUpdatingOperation;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    #getter for: Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v3}, Lcom/android/providers/contacts/T9SearchSupport;->access$800(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DELETE FROM t9_lookup WHERE contact_id IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2685
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport$DisplayNameUpdatingOperation;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$DisplayNameUpdatingOperation;->contactIds:Ljava/util/HashSet;

    sget-object v5, Lcom/android/providers/contacts/T9SearchSupport$IdType;->ContactId:Lcom/android/providers/contacts/T9SearchSupport$IdType;

    #calls: Lcom/android/providers/contacts/T9SearchSupport;->deleteItem(Ljava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V
    invoke-static {v3, v4, v5}, Lcom/android/providers/contacts/T9SearchSupport;->access$1000(Lcom/android/providers/contacts/T9SearchSupport;Ljava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V

    .line 2686
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport$DisplayNameUpdatingOperation;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$DisplayNameUpdatingOperation;->contactIds:Ljava/util/HashSet;

    sget-object v5, Lcom/android/providers/contacts/T9SearchSupport$IdType;->ContactId:Lcom/android/providers/contacts/T9SearchSupport$IdType;

    #calls: Lcom/android/providers/contacts/T9SearchSupport;->insertT9SearchItem(Ljava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V
    invoke-static {v3, v4, v5}, Lcom/android/providers/contacts/T9SearchSupport;->access$1100(Lcom/android/providers/contacts/T9SearchSupport;Ljava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2691
    if-eqz v0, :cond_0

    .line 2692
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2695
    :cond_0
    return-void

    .line 2687
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 2688
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v3, "T9SearchSupport"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to update display name for contacts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2691
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 2692
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v3
.end method
