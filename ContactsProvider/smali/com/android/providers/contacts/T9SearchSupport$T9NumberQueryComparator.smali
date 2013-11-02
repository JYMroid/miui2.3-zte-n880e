.class Lcom/android/providers/contacts/T9SearchSupport$T9NumberQueryComparator;
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
    name = "T9NumberQueryComparator"
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
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9NumberQueryComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;)I
    .locals 5
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 318
    if-ne p1, p2, :cond_0

    .line 319
    const/4 v1, 0x0

    .line 337
    :goto_0
    return v1

    .line 323
    :cond_0
    iget-object v1, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v1, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mTimesContacted:J

    iget-object v3, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v3, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mTimesContacted:J

    sub-long/2addr v1, v3

    long-to-int v0, v1

    .line 324
    .local v0, i:I
    if-eqz v0, :cond_1

    .line 325
    neg-int v1, v0

    goto :goto_0

    .line 328
    :cond_1
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->access$000()Ljava/text/Collator;

    move-result-object v1

    iget-object v2, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-object v2, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayName:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-object v3, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 329
    if-eqz v0, :cond_2

    move v1, v0

    .line 330
    goto :goto_0

    .line 333
    :cond_2
    iget-object v1, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v1, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mContactId:J

    iget-object v3, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v3, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mContactId:J

    sub-long/2addr v1, v3

    long-to-int v0, v1

    .line 334
    if-eqz v0, :cond_3

    move v1, v0

    .line 335
    goto :goto_0

    .line 337
    :cond_3
    iget-object v1, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v1, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mRawContactId:J

    iget-object v3, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v3, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mRawContactId:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 315
    check-cast p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .end local p1
    check-cast p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9NumberQueryComparator;->compare(Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;)I

    move-result v0

    return v0
.end method
