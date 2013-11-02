.class Lcom/android/providers/contacts/T9SearchSupport$TimesContactedUpdatingOperation;
.super Lcom/android/providers/contacts/T9SearchSupport$Operation;
.source "T9SearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/T9SearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimesContactedUpdatingOperation"
.end annotation


# instance fields
.field public contactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
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
    .line 2922
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$TimesContactedUpdatingOperation;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    .line 2923
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/T9SearchSupport$Operation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;I)V

    .line 2920
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$TimesContactedUpdatingOperation;->contactIds:Ljava/util/ArrayList;

    .line 2924
    return-void
.end method


# virtual methods
.method add(JLjava/lang/Object;)V
    .locals 2
    .parameter "contactId"
    .parameter "info"

    .prologue
    .line 2948
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$TimesContactedUpdatingOperation;->contactIds:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2949
    return-void
.end method

.method apply()V
    .locals 8

    .prologue
    .line 2933
    :try_start_0
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$TimesContactedUpdatingOperation;->contactIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2934
    .local v0, contactId:J
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$TimesContactedUpdatingOperation;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    #getter for: Lcom/android/providers/contacts/T9SearchSupport;->mTimesContactedUpdateStatement:Landroid/database/sqlite/SQLiteStatement;
    invoke-static {v4}, Lcom/android/providers/contacts/T9SearchSupport;->access$1600(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2935
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$TimesContactedUpdatingOperation;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    #getter for: Lcom/android/providers/contacts/T9SearchSupport;->mTimesContactedUpdateStatement:Landroid/database/sqlite/SQLiteStatement;
    invoke-static {v4}, Lcom/android/providers/contacts/T9SearchSupport;->access$1600(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2938
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$TimesContactedUpdatingOperation;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    #calls: Lcom/android/providers/contacts/T9SearchSupport;->incTimesContacted(J)V
    invoke-static {v4, v0, v1}, Lcom/android/providers/contacts/T9SearchSupport;->access$1700(Lcom/android/providers/contacts/T9SearchSupport;J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2940
    .end local v0           #contactId:J
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 2941
    .local v2, e:Ljava/lang/RuntimeException;
    const-string v4, "T9SearchSupport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to increase times contacted for contacts: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    iget-object v7, p0, Lcom/android/providers/contacts/T9SearchSupport$TimesContactedUpdatingOperation;->contactIds:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2942
    throw v2

    .line 2944
    .end local v2           #e:Ljava/lang/RuntimeException;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method
