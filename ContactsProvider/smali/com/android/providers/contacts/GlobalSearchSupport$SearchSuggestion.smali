.class Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;
.super Ljava/lang/Object;
.source "GlobalSearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/GlobalSearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchSuggestion"
.end annotation


# instance fields
.field contactId:J

.field email:Ljava/lang/String;

.field icon1:Ljava/lang/String;

.field icon2:Ljava/lang/String;

.field lookupKey:Ljava/lang/String;

.field organization:Ljava/lang/String;

.field phoneNumber:Ljava/lang/String;

.field photoUri:Landroid/net/Uri;

.field presence:I

.field processed:Z

.field text1:Ljava/lang/String;

.field text2:Ljava/lang/String;

.field titleIsName:Z


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .parameter "contactId"

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->presence:I

    .line 185
    iput-wide p1, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->contactId:J

    .line 186
    return-void
.end method

.method private addColumnValue(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "column"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v0, "_id"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-wide v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->contactId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :goto_0
    return-void

    .line 247
    :cond_0
    const-string v0, "suggest_text_1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->text1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    :cond_1
    const-string v0, "suggest_text_2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->text2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    :cond_2
    const-string v0, "suggest_icon_1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->icon1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 253
    :cond_3
    const-string v0, "suggest_icon_2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 254
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->icon2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 255
    :cond_4
    const-string v0, "suggest_intent_data_id"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 256
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->lookupKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    :cond_5
    const-string v0, "suggest_shortcut_id"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 258
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->lookupKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid column name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private process()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 189
    iget-boolean v6, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->processed:Z

    if-eqz v6, :cond_0

    .line 221
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v6, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->organization:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    move v1, v8

    .line 194
    .local v1, hasOrganization:Z
    :goto_1
    iget-object v6, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->email:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    move v0, v8

    .line 195
    .local v0, hasEmail:Z
    :goto_2
    iget-object v6, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->phoneNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    move v2, v8

    .line 197
    .local v2, hasPhone:Z
    :goto_3
    iget-boolean v6, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->titleIsName:Z

    if-nez v6, :cond_6

    if-eqz v1, :cond_6

    move v4, v8

    .line 198
    .local v4, titleIsOrganization:Z
    :goto_4
    iget-boolean v6, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->titleIsName:Z

    if-nez v6, :cond_7

    if-nez v4, :cond_7

    if-eqz v0, :cond_7

    move v3, v8

    .line 199
    .local v3, titleIsEmail:Z
    :goto_5
    iget-boolean v6, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->titleIsName:Z

    if-nez v6, :cond_8

    if-nez v4, :cond_8

    if-nez v3, :cond_8

    if-eqz v2, :cond_8

    move v5, v8

    .line 202
    .local v5, titleIsPhone:Z
    :goto_6
    if-nez v4, :cond_9

    if-eqz v1, :cond_9

    .line 203
    iget-object v6, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->organization:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->text2:Ljava/lang/String;

    .line 210
    :cond_1
    :goto_7
    iget-object v6, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->photoUri:Landroid/net/Uri;

    if-eqz v6, :cond_b

    .line 211
    iget-object v6, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->photoUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->icon1:Ljava/lang/String;

    .line 216
    :goto_8
    iget v6, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->presence:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 217
    iget v6, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->presence:I

    invoke-static {v6}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->icon2:Ljava/lang/String;

    .line 220
    :cond_2
    iput-boolean v8, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->processed:Z

    goto :goto_0

    .end local v0           #hasEmail:Z
    .end local v1           #hasOrganization:Z
    .end local v2           #hasPhone:Z
    .end local v3           #titleIsEmail:Z
    .end local v4           #titleIsOrganization:Z
    .end local v5           #titleIsPhone:Z
    :cond_3
    move v1, v7

    .line 193
    goto :goto_1

    .restart local v1       #hasOrganization:Z
    :cond_4
    move v0, v7

    .line 194
    goto :goto_2

    .restart local v0       #hasEmail:Z
    :cond_5
    move v2, v7

    .line 195
    goto :goto_3

    .restart local v2       #hasPhone:Z
    :cond_6
    move v4, v7

    .line 197
    goto :goto_4

    .restart local v4       #titleIsOrganization:Z
    :cond_7
    move v3, v7

    .line 198
    goto :goto_5

    .restart local v3       #titleIsEmail:Z
    :cond_8
    move v5, v7

    .line 199
    goto :goto_6

    .line 204
    .restart local v5       #titleIsPhone:Z
    :cond_9
    if-nez v5, :cond_a

    if-eqz v2, :cond_a

    .line 205
    iget-object v6, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->phoneNumber:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->text2:Ljava/lang/String;

    goto :goto_7

    .line 206
    :cond_a
    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    .line 207
    iget-object v6, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->email:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->text2:Ljava/lang/String;

    goto :goto_7

    .line 213
    :cond_b
    const v6, 0x6020248

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->icon1:Ljava/lang/String;

    goto :goto_8
.end method


# virtual methods
.method public asList([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter "projection"

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->process()V

    .line 227
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 229
    iget-wide v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->contactId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->text1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->text2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->icon1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->icon2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->lookupKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->lookupKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_0
    return-object v1

    .line 237
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 238
    aget-object v2, p1, v0

    invoke-direct {p0, v1, v2}, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->addColumnValue(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
