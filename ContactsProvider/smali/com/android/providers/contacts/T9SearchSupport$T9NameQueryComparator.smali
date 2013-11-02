.class Lcom/android/providers/contacts/T9SearchSupport$T9NameQueryComparator;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/T9SearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "T9NameQueryComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9NameQueryComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;)I
    .locals 8
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 281
    if-ne p1, p2, :cond_0

    .line 282
    const/4 v4, 0x0

    .line 307
    :goto_0
    return v4

    .line 285
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;

    move-object v2, v0

    .line 286
    .local v2, r1:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;
    move-object v0, p2

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;

    move-object v3, v0

    .line 288
    .local v3, r2:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;
    iget v4, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->mMatchedLevel:I

    iget v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->mMatchedLevel:I

    sub-int v1, v4, v5

    .line 289
    .local v1, i:I
    if-eqz v1, :cond_1

    .line 290
    neg-int v4, v1

    goto :goto_0

    .line 293
    :cond_1
    iget-object v4, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v4, v4, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mTimesContacted:J

    iget-object v6, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v6, v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mTimesContacted:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    .line 294
    if-eqz v1, :cond_2

    .line 295
    neg-int v4, v1

    goto :goto_0

    .line 298
    :cond_2
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->access$000()Ljava/text/Collator;

    move-result-object v4

    iget-object v5, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-object v5, v5, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayName:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-object v6, v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 299
    if-eqz v1, :cond_3

    move v4, v1

    .line 300
    goto :goto_0

    .line 303
    :cond_3
    iget-object v4, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v4, v4, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mContactId:J

    iget-object v6, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v6, v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mContactId:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    .line 304
    if-eqz v1, :cond_4

    move v4, v1

    .line 305
    goto :goto_0

    .line 307
    :cond_4
    iget-object v4, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v4, v4, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mRawContactId:J

    iget-object v6, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v6, v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mRawContactId:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 278
    check-cast p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .end local p1
    check-cast p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9NameQueryComparator;->compare(Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;)I

    move-result v0

    return v0
.end method
