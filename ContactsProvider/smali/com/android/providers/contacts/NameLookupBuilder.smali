.class public abstract Lcom/android/providers/contacts/NameLookupBuilder;
.super Ljava/lang/Object;
.source "NameLookupBuilder.java"


# static fields
.field private static KOREAN_JAUM_CONVERT_MAP:[I

.field private static KOREAN_JAUM_CONVERT_MAP_COUNT:I


# instance fields
.field private mNames:[Ljava/lang/String;

.field private mNicknameClusters:[[Ljava/lang/String;

.field private final mSplitter:Lcom/android/providers/contacts/NameSplitter;

.field private mStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x1e

    .line 38
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/providers/contacts/NameLookupBuilder;->KOREAN_JAUM_CONVERT_MAP:[I

    .line 72
    sput v1, Lcom/android/providers/contacts/NameLookupBuilder;->KOREAN_JAUM_CONVERT_MAP_COUNT:I

    return-void

    .line 38
    :array_0
    .array-data 0x4
        0x0t 0x11t 0x0t 0x0t
        0x1t 0x11t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x11t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x11t 0x0t 0x0t
        0x4t 0x11t 0x0t 0x0t
        0x5t 0x11t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x11t 0x0t 0x0t
        0x7t 0x11t 0x0t 0x0t
        0x8t 0x11t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x9t 0x11t 0x0t 0x0t
        0xat 0x11t 0x0t 0x0t
        0xbt 0x11t 0x0t 0x0t
        0xct 0x11t 0x0t 0x0t
        0xdt 0x11t 0x0t 0x0t
        0xet 0x11t 0x0t 0x0t
        0xft 0x11t 0x0t 0x0t
        0x10t 0x11t 0x0t 0x0t
        0x11t 0x11t 0x0t 0x0t
        0x12t 0x11t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/providers/contacts/NameSplitter;)V
    .locals 1
    .parameter "splitter"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNicknameClusters:[[Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 36
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    .line 77
    return-void
.end method

.method private insertCollationKey(JJI)V
    .locals 8
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "tokenCount"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 270
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, p5, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 274
    :cond_0
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJILjava/lang/String;)V

    .line 276
    return-void
.end method

.method private insertKoreanNameConsonantsLookup(JJLjava/lang/String;)V
    .locals 14
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "name"

    .prologue
    .line 155
    const/4 v11, 0x0

    .line 156
    .local v11, position:I
    const/4 v10, 0x0

    .line 159
    .local v10, consonantLength:I
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v13

    .line 160
    .local v13, stringLength:I
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 162
    :goto_0
    add-int/lit8 v12, v11, 0x1

    .end local v11           #position:I
    .local v12, position:I
    move-object/from16 v0, p5

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    .line 163
    .local v9, character:I
    const/16 v2, 0x20

    if-ne v9, v2, :cond_2

    .line 195
    :goto_1
    if-lt v12, v13, :cond_7

    .line 199
    :cond_0
    :goto_2
    const/4 v2, 0x1

    if-le v10, v2, :cond_1

    .line 200
    const/4 v7, 0x7

    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/NameLookupBuilder;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    move-wide v3, p1

    move-wide/from16 v5, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJILjava/lang/String;)V

    .line 203
    :cond_1
    return-void

    .line 169
    :cond_2
    const/16 v2, 0x1100

    if-lt v9, v2, :cond_0

    const/16 v2, 0x1112

    if-le v9, v2, :cond_3

    const/16 v2, 0x3131

    if-lt v9, v2, :cond_0

    :cond_3
    const/16 v2, 0x314e

    if-le v9, v2, :cond_4

    const v2, 0xac00

    if-lt v9, v2, :cond_0

    :cond_4
    const v2, 0xd7a3

    if-gt v9, v2, :cond_0

    .line 175
    const v2, 0xac00

    if-lt v9, v2, :cond_6

    .line 179
    const v2, 0xac00

    sub-int v2, v9, v2

    div-int/lit16 v2, v2, 0x24c

    add-int/lit16 v9, v2, 0x1100

    .line 193
    :cond_5
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 194
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 180
    :cond_6
    const/16 v2, 0x3131

    if-lt v9, v2, :cond_5

    .line 183
    const/16 v2, 0x3131

    sub-int v2, v9, v2

    sget v3, Lcom/android/providers/contacts/NameLookupBuilder;->KOREAN_JAUM_CONVERT_MAP_COUNT:I

    if-ge v2, v3, :cond_0

    .line 187
    sget-object v2, Lcom/android/providers/contacts/NameLookupBuilder;->KOREAN_JAUM_CONVERT_MAP:[I

    const/16 v3, 0x3131

    sub-int v3, v9, v3

    aget v9, v2, v3

    .line 188
    if-nez v9, :cond_5

    goto :goto_2

    :cond_7
    move v11, v12

    .end local v12           #position:I
    .restart local v11       #position:I
    goto :goto_0
.end method

.method private insertLocaleBasedSpecificLookup(JJLjava/lang/String;I)V
    .locals 1
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "name"
    .parameter "fullNameStyle"

    .prologue
    .line 146
    const/4 v0, 0x5

    if-ne p6, v0, :cond_0

    .line 147
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/contacts/NameLookupBuilder;->insertKoreanNameConsonantsLookup(JJLjava/lang/String;)V

    .line 149
    :cond_0
    return-void
.end method

.method private insertNameShorthandLookup(JJLjava/lang/String;II)V
    .locals 9
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "name"
    .parameter "fullNameStyle"
    .parameter "nameLookupType"

    .prologue
    .line 304
    invoke-static {}, Lcom/android/providers/contacts/ContactLocaleUtils;->getIntance()Lcom/android/providers/contacts/ContactLocaleUtils;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Lcom/android/providers/contacts/ContactLocaleUtils;->getNameLookupKeys(Ljava/lang/String;I)Ljava/util/Iterator;

    move-result-object v7

    .line 306
    .local v7, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v7, :cond_0

    .line 307
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 310
    .local v8, key:Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/providers/contacts/NameLookupBuilder;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJILjava/lang/String;)V

    goto :goto_0

    .line 314
    .end local v8           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private insertNameVariant(JJIIZ)V
    .locals 8
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "tokenCount"
    .parameter "lookupType"
    .parameter "buildCollationKey"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 250
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, p5, :cond_1

    .line 251
    if-eqz v7, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJILjava/lang/String;)V

    .line 259
    if-eqz p7, :cond_2

    .line 260
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/contacts/NameLookupBuilder;->insertCollationKey(JJI)V

    .line 262
    :cond_2
    return-void
.end method

.method private insertNameVariants(JJIIZZ)V
    .locals 13
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "fromIndex"
    .parameter "toIndex"
    .parameter "initiallyExact"
    .parameter "buildCollationKey"

    .prologue
    .line 221
    move/from16 v0, p5

    move/from16 v1, p6

    if-ne v0, v1, :cond_2

    .line 222
    if-eqz p7, :cond_1

    const/4 v2, 0x0

    move v8, v2

    :goto_0
    move-object v2, p0

    move-wide v3, p1

    move-wide/from16 v5, p3

    move/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameVariant(JJIIZ)V

    .line 241
    :cond_0
    return-void

    .line 222
    :cond_1
    const/4 v2, 0x1

    move v8, v2

    goto :goto_0

    .line 230
    :cond_2
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v11, v2, p5

    .line 231
    .local v11, firstToken:Ljava/lang/String;
    move/from16 v12, p5

    .local v12, i:I
    :goto_1
    move v0, v12

    move/from16 v1, p6

    if-ge v0, v1, :cond_0

    .line 232
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v3, v3, v12

    aput-object v3, v2, p5

    .line 233
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aput-object v11, v2, v12

    .line 235
    add-int/lit8 v7, p5, 0x1

    if-eqz p7, :cond_3

    move v0, v12

    move/from16 v1, p5

    if-ne v0, v1, :cond_3

    const/4 v2, 0x1

    move v9, v2

    :goto_2
    move-object v2, p0

    move-wide v3, p1

    move-wide/from16 v5, p3

    move/from16 v8, p6

    move/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameVariants(JJIIZZ)V

    .line 238
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v3, v3, p5

    aput-object v3, v2, v12

    .line 239
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aput-object v11, v2, p5

    .line 231
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 235
    :cond_3
    const/4 v2, 0x0

    move v9, v2

    goto :goto_2
.end method

.method private insertNicknamePermutations(JJII)V
    .locals 15
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "fromIndex"
    .parameter "tokenCount"

    .prologue
    .line 284
    move/from16 v12, p5

    .local v12, i:I
    :goto_0
    move v0, v12

    move/from16 v1, p6

    if-ge v0, v1, :cond_2

    .line 285
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNicknameClusters:[[Ljava/lang/String;

    aget-object v11, v2, v12

    .line 286
    .local v11, clusters:[Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 287
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v14, v2, v12

    .line 288
    .local v14, token:Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, j:I
    :goto_1
    array-length v2, v11

    if-ge v13, v2, :cond_0

    .line 289
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aget-object v3, v11, v13

    aput-object v3, v2, v12

    .line 292
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move/from16 v8, p6

    invoke-direct/range {v2 .. v10}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameVariants(JJIIZZ)V

    .line 295
    add-int/lit8 v7, v12, 0x1

    move-object v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNicknamePermutations(JJII)V

    .line 288
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 297
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    aput-object v14, v2, v12

    .line 284
    .end local v13           #j:I
    .end local v14           #token:Ljava/lang/String;
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 300
    .end local v11           #clusters:[Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method protected abstract getCommonNicknameClusters(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method protected abstract insertNameLookup(JJILjava/lang/String;)V
.end method

.method public insertNameLookup(JJLjava/lang/String;II)V
    .locals 21
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "name"
    .parameter "fullNameStyle"
    .parameter "nameLookupType"

    .prologue
    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    move-object v4, v0

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/NameSplitter;->tokenize([Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 101
    .local v8, tokenCount:I
    if-nez v8, :cond_0

    .line 142
    :goto_0
    return-void

    .line 105
    :cond_0
    const/16 v19, 0x0

    .local v19, i:I
    :goto_1
    move/from16 v0, v19

    move v1, v8

    if-ge v0, v1, :cond_1

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    move-object v4, v0

    aget-object v4, v4, v19

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/NameLookupBuilder;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v19

    .line 105
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 109
    :cond_1
    const/4 v3, 0x4

    if-le v8, v3, :cond_2

    const/4 v3, 0x1

    move/from16 v20, v3

    .line 110
    .local v20, tooManyTokens:Z
    :goto_2
    if-eqz v20, :cond_4

    .line 111
    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameVariant(JJIIZ)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    new-instance v5, Lcom/android/providers/contacts/NameLookupBuilder$1;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/NameLookupBuilder$1;-><init>(Lcom/android/providers/contacts/NameLookupBuilder;)V

    invoke-static {v3, v4, v8, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    aget-object v18, v3, v4

    .line 124
    .local v18, firstToken:Ljava/lang/String;
    const/16 v19, 0x4

    :goto_3
    move/from16 v0, v19

    move v1, v8

    if-ge v0, v1, :cond_3

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    move-object v5, v0

    aget-object v5, v5, v19

    aput-object v5, v3, v4

    .line 126
    const/4 v14, 0x4

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    invoke-direct/range {v9 .. v14}, Lcom/android/providers/contacts/NameLookupBuilder;->insertCollationKey(JJI)V

    .line 124
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 109
    .end local v18           #firstToken:Ljava/lang/String;
    .end local v20           #tooManyTokens:Z
    :cond_2
    const/4 v3, 0x0

    move/from16 v20, v3

    goto :goto_2

    .line 128
    .restart local v18       #firstToken:Ljava/lang/String;
    .restart local v20       #tooManyTokens:Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    aput-object v18, v3, v4

    .line 130
    const/4 v8, 0x4

    .line 134
    .end local v18           #firstToken:Ljava/lang/String;
    :cond_4
    const/16 v19, 0x0

    :goto_4
    move/from16 v0, v19

    move v1, v8

    if-ge v0, v1, :cond_5

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNicknameClusters:[[Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/NameLookupBuilder;->mNames:[Ljava/lang/String;

    move-object v4, v0

    aget-object v4, v4, v19

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/NameLookupBuilder;->getCommonNicknameClusters(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v19

    .line 134
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 138
    :cond_5
    const/4 v14, 0x0

    if-nez v20, :cond_6

    const/4 v3, 0x1

    move/from16 v16, v3

    :goto_5
    const/16 v17, 0x1

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move v15, v8

    invoke-direct/range {v9 .. v17}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameVariants(JJIIZZ)V

    .line 139
    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNicknamePermutations(JJII)V

    .line 140
    invoke-direct/range {p0 .. p7}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameShorthandLookup(JJLjava/lang/String;II)V

    .line 141
    invoke-direct/range {p0 .. p6}, Lcom/android/providers/contacts/NameLookupBuilder;->insertLocaleBasedSpecificLookup(JJLjava/lang/String;I)V

    goto/16 :goto_0

    .line 138
    :cond_6
    const/4 v3, 0x0

    move/from16 v16, v3

    goto :goto_5
.end method

.method protected normalizeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 206
    invoke-static {p1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
