.class public Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;
.super Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
.source "T9SearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/T9SearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "T9SearchNameResult"
.end annotation


# instance fields
.field public mMatchedChars:Ljava/util/BitSet;

.field public mMatchedLevel:I

.field final synthetic this$0:Lcom/android/providers/contacts/T9SearchSupport;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/T9SearchSupport;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V
    .locals 0
    .parameter
    .parameter "item"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    .line 238
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;-><init>(Lcom/android/providers/contacts/T9SearchSupport;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    .line 239
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->initialize()V

    .line 240
    return-void
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 270
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-object v1, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mT9Key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->mMatchedChars:Ljava/util/BitSet;

    .line 271
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->mMatchedLevel:I

    .line 272
    return-void
.end method


# virtual methods
.method public getMatchedDetail()Ljava/lang/String;
    .locals 3

    .prologue
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-object v2, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mT9Key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 261
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->mMatchedChars:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x31

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    :cond_0
    const/16 v2, 0x30

    goto :goto_1

    .line 263
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public setItem(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    .line 249
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->initialize()V

    .line 250
    return-void
.end method
