.class Lcom/android/providers/contacts/T9SearchSupport$DataDeletingOperation;
.super Lcom/android/providers/contacts/T9SearchSupport$Operation;
.source "T9SearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/T9SearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataDeletingOperation"
.end annotation


# instance fields
.field public dataIds:Ljava/util/HashSet;
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
    .line 2776
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$DataDeletingOperation;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    .line 2777
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/T9SearchSupport$Operation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;I)V

    .line 2774
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$DataDeletingOperation;->dataIds:Ljava/util/HashSet;

    .line 2778
    return-void
.end method


# virtual methods
.method add(JLjava/lang/Object;)V
    .locals 2
    .parameter "dataId"
    .parameter "info"

    .prologue
    .line 2797
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$DataDeletingOperation;->dataIds:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2798
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$DataDeletingOperation;->dataIds:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2800
    :cond_0
    return-void
.end method

.method apply()V
    .locals 6

    .prologue
    const-string v5, ","

    .line 2782
    const-string v2, ","

    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport$DataDeletingOperation;->dataIds:Ljava/util/HashSet;

    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 2786
    .local v1, joinedIds:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport$DataDeletingOperation;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    #getter for: Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v2}, Lcom/android/providers/contacts/T9SearchSupport;->access$800(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DELETE FROM t9_lookup WHERE data_id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2788
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport$DataDeletingOperation;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport$DataDeletingOperation;->dataIds:Ljava/util/HashSet;

    sget-object v4, Lcom/android/providers/contacts/T9SearchSupport$IdType;->DataId:Lcom/android/providers/contacts/T9SearchSupport$IdType;

    #calls: Lcom/android/providers/contacts/T9SearchSupport;->deleteItem(Ljava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V
    invoke-static {v2, v3, v4}, Lcom/android/providers/contacts/T9SearchSupport;->access$1000(Lcom/android/providers/contacts/T9SearchSupport;Ljava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2793
    return-void

    .line 2789
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 2790
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "T9SearchSupport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to delete data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$DataDeletingOperation;->dataIds:Ljava/util/HashSet;

    invoke-static {v5, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2791
    throw v0
.end method
