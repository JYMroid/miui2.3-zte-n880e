.class public Lcom/android/providers/contacts/NameSplitter;
.super Ljava/lang/Object;
.source "NameSplitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/NameSplitter$NameTokenizer;,
        Lcom/android/providers/contacts/NameSplitter$Name;
    }
.end annotation


# static fields
.field private static final CHINESE_LANGUAGE:Ljava/lang/String;

.field private static final JAPANESE_LANGUAGE:Ljava/lang/String;

.field private static final KOREAN_LANGUAGE:Ljava/lang/String;


# instance fields
.field private final mConjuctions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLanguage:Ljava/lang/String;

.field private final mLastNamePrefixesSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocale:Ljava/util/Locale;

.field private final mMaxSuffixLength:I

.field private final mPrefixesSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuffixesSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/NameSplitter;->JAPANESE_LANGUAGE:Ljava/lang/String;

    .line 49
    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/NameSplitter;->KOREAN_LANGUAGE:Ljava/lang/String;

    .line 52
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/NameSplitter;->CHINESE_LANGUAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 4
    .parameter "commonPrefixes"
    .parameter "commonLastNamePrefixes"
    .parameter "commonSuffixes"
    .parameter "commonConjunctions"
    .parameter "locale"

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    invoke-static {p1}, Lcom/android/providers/contacts/NameSplitter;->convertToSet(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mPrefixesSet:Ljava/util/HashSet;

    .line 257
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter;->convertToSet(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mLastNamePrefixesSet:Ljava/util/HashSet;

    .line 258
    invoke-static {p3}, Lcom/android/providers/contacts/NameSplitter;->convertToSet(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mSuffixesSet:Ljava/util/HashSet;

    .line 259
    invoke-static {p4}, Lcom/android/providers/contacts/NameSplitter;->convertToSet(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mConjuctions:Ljava/util/HashSet;

    .line 260
    if-eqz p5, :cond_1

    move-object v3, p5

    :goto_0
    iput-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mLocale:Ljava/util/Locale;

    .line 261
    iget-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mLanguage:Ljava/lang/String;

    .line 263
    const/4 v1, 0x0

    .line 264
    .local v1, maxLength:I
    iget-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mSuffixesSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 265
    .local v2, suffix:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 266
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    .line 260
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #maxLength:I
    .end local v2           #suffix:Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    goto :goto_0

    .line 270
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #maxLength:I
    :cond_2
    iput v1, p0, Lcom/android/providers/contacts/NameSplitter;->mMaxSuffixLength:I

    .line 271
    return-void
.end method

.method private static convertToSet(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 4
    .parameter "strings"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 279
    .local v1, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 280
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, split:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 282
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    .end local v0           #i:I
    .end local v2           #split:[Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private guessCJKNameStyle(Ljava/lang/String;I)I
    .locals 4
    .parameter "name"
    .parameter "offset"

    .prologue
    .line 869
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 870
    .local v1, length:I
    :goto_0
    if-ge p2, v1, :cond_2

    .line 871
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 872
    .local v0, codePoint:I
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 873
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v2

    .line 874
    .local v2, unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    invoke-static {v2}, Lcom/android/providers/contacts/NameSplitter;->isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 875
    const/4 v3, 0x4

    .line 884
    .end local v0           #codePoint:I
    .end local v2           #unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    :goto_1
    return v3

    .line 877
    .restart local v0       #codePoint:I
    .restart local v2       #unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    :cond_0
    invoke-static {v2}, Lcom/android/providers/contacts/NameSplitter;->isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 878
    const/4 v3, 0x5

    goto :goto_1

    .line 881
    .end local v2           #unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr p2, v3

    .line 882
    goto :goto_0

    .line 884
    .end local v0           #codePoint:I
    :cond_2
    const/4 v3, 0x2

    goto :goto_1
.end method

.method private guessFullNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V
    .locals 5
    .parameter "name"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 798
    iget v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    if-eqz v2, :cond_0

    .line 830
    :goto_0
    return-void

    .line 802
    :cond_0
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v0

    .line 805
    .local v0, bestGuess:I
    if-eqz v0, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    .line 807
    iput v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    goto :goto_0

    .line 811
    :cond_1
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v1

    .line 812
    .local v1, guess:I
    if-eqz v1, :cond_3

    .line 813
    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_2

    .line 814
    iput v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    goto :goto_0

    .line 817
    :cond_2
    move v0, v1

    .line 820
    :cond_3
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v1

    .line 821
    if-eqz v1, :cond_5

    .line 822
    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_4

    .line 823
    iput v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    goto :goto_0

    .line 826
    :cond_4
    move v0, v1

    .line 829
    :cond_5
    iput v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    goto :goto_0
.end method

.method private guessPhoneticNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V
    .locals 4
    .parameter "name"

    .prologue
    const/4 v3, 0x2

    .line 888
    iget v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    if-eqz v2, :cond_1

    .line 915
    :cond_0
    :goto_0
    return-void

    .line 892
    :cond_1
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Ljava/lang/String;)I

    move-result v0

    .line 893
    .local v0, bestGuess:I
    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_2

    .line 894
    iput v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    goto :goto_0

    .line 898
    :cond_2
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Ljava/lang/String;)I

    move-result v1

    .line 899
    .local v1, guess:I
    if-eqz v1, :cond_4

    .line 900
    if-eq v1, v3, :cond_3

    .line 901
    iput v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    goto :goto_0

    .line 904
    :cond_3
    move v0, v1

    .line 907
    :cond_4
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Ljava/lang/String;)I

    move-result v1

    .line 908
    if-eqz v1, :cond_0

    .line 909
    if-eq v1, v3, :cond_5

    .line 910
    iput v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    goto :goto_0

    .line 913
    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private static isCJKUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .parameter "block"

    .prologue
    .line 954
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFamilyNamePrefix(Ljava/lang/String;)Z
    .locals 4
    .parameter "word"

    .prologue
    .line 712
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, normalized:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mLastNamePrefixesSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mLastNamePrefixesSet:Ljava/util/HashSet;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .parameter "unicodeBlock"

    .prologue
    .line 972
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .parameter "unicodeBlock"

    .prologue
    .line 966
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .parameter "unicodeBlock"

    .prologue
    .line 946
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_ADDITIONAL:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;
    .locals 8
    .parameter "part1"
    .parameter "part2"
    .parameter "part3"
    .parameter "suffix"
    .parameter "useSpace"
    .parameter "useCommaAfterPart1"
    .parameter "useCommaAfterPart3"

    .prologue
    .line 472
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    move v0, v7

    .line 473
    .local v0, hasPart1:Z
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    const/4 v7, 0x1

    move v1, v7

    .line 474
    .local v1, hasPart2:Z
    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    const/4 v7, 0x1

    move v2, v7

    .line 475
    .local v2, hasPart3:Z
    :goto_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    const/4 v7, 0x1

    move v3, v7

    .line 477
    .local v3, hasSuffix:Z
    :goto_3
    const/4 v4, 0x1

    .line 478
    .local v4, isSingleWord:Z
    const/4 v6, 0x0

    .line 479
    .local v6, singleWord:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 480
    move-object v6, p1

    .line 483
    :cond_0
    if-eqz v1, :cond_1

    .line 484
    if-eqz v6, :cond_8

    .line 485
    const/4 v4, 0x0

    .line 491
    :cond_1
    :goto_4
    if-eqz v2, :cond_2

    .line 492
    if-eqz v6, :cond_9

    .line 493
    const/4 v4, 0x0

    .line 499
    :cond_2
    :goto_5
    if-eqz v3, :cond_3

    .line 500
    if-eqz v6, :cond_a

    .line 501
    const/4 v4, 0x0

    .line 507
    :cond_3
    :goto_6
    if-eqz v4, :cond_b

    move-object v7, v6

    .line 549
    :goto_7
    return-object v7

    .line 472
    .end local v0           #hasPart1:Z
    .end local v1           #hasPart2:Z
    .end local v2           #hasPart3:Z
    .end local v3           #hasSuffix:Z
    .end local v4           #isSingleWord:Z
    .end local v6           #singleWord:Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 473
    .restart local v0       #hasPart1:Z
    :cond_5
    const/4 v7, 0x0

    move v1, v7

    goto :goto_1

    .line 474
    .restart local v1       #hasPart2:Z
    :cond_6
    const/4 v7, 0x0

    move v2, v7

    goto :goto_2

    .line 475
    .restart local v2       #hasPart3:Z
    :cond_7
    const/4 v7, 0x0

    move v3, v7

    goto :goto_3

    .line 487
    .restart local v3       #hasSuffix:Z
    .restart local v4       #isSingleWord:Z
    .restart local v6       #singleWord:Ljava/lang/String;
    :cond_8
    move-object v6, p2

    goto :goto_4

    .line 495
    :cond_9
    move-object v6, p3

    goto :goto_5

    .line 503
    :cond_a
    invoke-direct {p0, p4}, Lcom/android/providers/contacts/NameSplitter;->normalizedSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 511
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 512
    .local v5, sb:Ljava/lang/StringBuilder;
    if-eqz v0, :cond_c

    .line 513
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    :cond_c
    if-eqz v1, :cond_f

    .line 517
    if-eqz v0, :cond_e

    .line 518
    if-eqz p6, :cond_d

    .line 519
    const/16 v7, 0x2c

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 521
    :cond_d
    if-eqz p5, :cond_e

    .line 522
    const/16 v7, 0x20

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 525
    :cond_e
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    :cond_f
    if-eqz v2, :cond_12

    .line 529
    if-nez v0, :cond_10

    if-eqz v1, :cond_11

    .line 530
    :cond_10
    if-eqz p5, :cond_11

    .line 531
    const/16 v7, 0x20

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 534
    :cond_11
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    :cond_12
    if-eqz v3, :cond_16

    .line 538
    if-nez v0, :cond_13

    if-nez v1, :cond_13

    if-eqz v2, :cond_15

    .line 539
    :cond_13
    if-eqz p7, :cond_14

    .line 540
    const/16 v7, 0x2c

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 542
    :cond_14
    if-eqz p5, :cond_15

    .line 543
    const/16 v7, 0x20

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 546
    :cond_15
    invoke-direct {p0, p4}, Lcom/android/providers/contacts/NameSplitter;->normalizedSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :cond_16
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_7
.end method

.method private normalizedSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "suffix"

    .prologue
    const/16 v3, 0x2e

    .line 557
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 558
    .local v0, length:I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    sub-int v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    :cond_0
    move-object v2, p1

    .line 566
    :goto_0
    return-object v2

    .line 562
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 563
    .local v1, withDot:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/providers/contacts/NameSplitter;->mSuffixesSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 564
    goto :goto_0

    :cond_2
    move-object v2, p1

    .line 566
    goto :goto_0
.end method

.method private parseGivenNames(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V
    .locals 4
    .parameter "name"
    .parameter "tokens"

    .prologue
    .line 738
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 757
    :goto_0
    return-void

    .line 742
    :cond_0
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 743
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v2

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 745
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 746
    .local v1, sb:Ljava/lang/StringBuilder;
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    .local v0, i:I
    :goto_1
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 747
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 748
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 750
    :cond_2
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    invoke-virtual {p2, v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 752
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 746
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 755
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0
.end method

.method private parseLastName(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V
    .locals 7
    .parameter "name"
    .parameter "tokens"

    .prologue
    const/16 v5, 0x2e

    const/4 v4, 0x1

    const-string v6, " "

    .line 665
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasComma(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 671
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v2

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 672
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$008(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    goto :goto_0

    .line 679
    :cond_2
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    if-ge v2, v3, :cond_4

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasComma(I)Z

    move-result v2

    if-eqz v2, :cond_4

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v2

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->isFamilyNamePrefix(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 682
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v2

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    aget-object v0, v2, v3

    .line 683
    .local v0, familyNamePrefix:Ljava/lang/String;
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 684
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 686
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v3

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 687
    const/4 v2, 0x2

    invoke-static {p2, v2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$012(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;I)I

    goto/16 :goto_0

    .line 692
    .end local v0           #familyNamePrefix:Ljava/lang/String;
    :cond_4
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v2

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 693
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$110(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    .line 696
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    .line 697
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v2

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    sub-int/2addr v3, v4

    aget-object v1, v2, v3

    .line 698
    .local v1, lastNamePrefix:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/NameSplitter;->isFamilyNamePrefix(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 699
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {p2, v2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 700
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 702
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 703
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$110(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    goto/16 :goto_0
.end method

.method private parseMiddleName(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V
    .locals 5
    .parameter "name"
    .parameter "tokens"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 720
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    sub-int/2addr v0, v1

    if-le v0, v3, :cond_0

    .line 725
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    sub-int/2addr v0, v1

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter;->mConjuctions:Ljava/util/HashSet;

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v1

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    sub-int/2addr v2, v4

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 728
    :cond_2
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v0

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    sub-int/2addr v1, v3

    aget-object v0, v0, v1

    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 729
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p2, v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 732
    :cond_3
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$110(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    goto :goto_0
.end method

.method private parsePrefix(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V
    .locals 3
    .parameter "name"
    .parameter "tokens"

    .prologue
    .line 603
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v1

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    aget-object v0, v1, v2

    .line 608
    .local v0, firstToken:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mPrefixesSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    .line 610
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$008(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    goto :goto_0
.end method

.method private parseSuffix(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V
    .locals 7
    .parameter "name"
    .parameter "tokens"

    .prologue
    const/4 v5, 0x1

    const-string v6, "."

    .line 618
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v3

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v4

    sub-int/2addr v4, v5

    aget-object v0, v3, v4

    .line 623
    .local v0, lastToken:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/android/providers/contacts/NameSplitter;->mMaxSuffixLength:I

    if-gt v3, v4, :cond_0

    .line 627
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 628
    .local v1, normalized:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mSuffixesSet:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 629
    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    .line 630
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$110(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    goto :goto_0

    .line 634
    :cond_2
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {p2, v3}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 635
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 637
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 640
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    sub-int v2, v3, v5

    .line 641
    .local v2, pos:I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/android/providers/contacts/NameSplitter;->mMaxSuffixLength:I

    if-gt v3, v4, :cond_0

    .line 643
    iget-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mSuffixesSet:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 644
    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    .line 645
    #setter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2, v2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$102(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;I)I

    goto :goto_0

    .line 649
    :cond_4
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 653
    add-int/lit8 v2, v2, -0x1

    .line 654
    invoke-virtual {p2, v2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 655
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 660
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 657
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private splitChineseName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V
    .locals 8
    .parameter "name"
    .parameter "fullName"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 378
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 379
    .local v2, tokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 380
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, token:Ljava/lang/String;
    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 382
    iput-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 383
    :cond_0
    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 384
    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 385
    iput-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 386
    :cond_1
    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 387
    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 388
    iput-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 390
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 391
    iput-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 396
    .end local v1           #token:Ljava/lang/String;
    :cond_3
    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 397
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 398
    .local v0, length:I
    if-eq v0, v5, :cond_4

    const/4 v3, 0x3

    if-ne v0, v3, :cond_6

    .line 399
    :cond_4
    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 400
    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    .line 407
    .end local v0           #length:I
    :cond_5
    :goto_1
    return-void

    .line 401
    .restart local v0       #length:I
    :cond_6
    const/4 v3, 0x4

    if-ne v0, v3, :cond_5

    .line 402
    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 403
    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_1
.end method

.method private splitJapaneseOrKoreanName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .parameter "fullName"

    .prologue
    .line 416
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 417
    .local v1, tokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 418
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, token:Ljava/lang/String;
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 420
    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 421
    :cond_0
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 422
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 423
    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 425
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 428
    .end local v0           #token:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private splitWesternName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "fullName"

    .prologue
    .line 353
    new-instance v0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;

    invoke-direct {v0, p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, tokens:Lcom/android/providers/contacts/NameSplitter$NameTokenizer;
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/NameSplitter;->parsePrefix(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V

    .line 358
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 359
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/NameSplitter;->parseSuffix(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V

    .line 362
    :cond_0
    iget-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    if-nez v1, :cond_1

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 363
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v1

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    .line 369
    :goto_0
    return-void

    .line 365
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/NameSplitter;->parseLastName(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V

    .line 366
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/NameSplitter;->parseMiddleName(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V

    .line 367
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/NameSplitter;->parseGivenNames(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V

    goto :goto_0
.end method


# virtual methods
.method public getAdjustedFullNameStyle(I)I
    .locals 5
    .parameter "nameStyle"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 577
    if-nez p1, :cond_3

    .line 578
    sget-object v0, Lcom/android/providers/contacts/NameSplitter;->JAPANESE_LANGUAGE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 596
    :goto_0
    return v0

    .line 580
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/NameSplitter;->KOREAN_LANGUAGE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    .line 581
    goto :goto_0

    .line 582
    :cond_1
    sget-object v0, Lcom/android/providers/contacts/NameSplitter;->CHINESE_LANGUAGE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 583
    goto :goto_0

    .line 585
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 587
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 588
    sget-object v0, Lcom/android/providers/contacts/NameSplitter;->JAPANESE_LANGUAGE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    .line 589
    goto :goto_0

    .line 590
    :cond_4
    sget-object v0, Lcom/android/providers/contacts/NameSplitter;->KOREAN_LANGUAGE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v4

    .line 591
    goto :goto_0

    :cond_5
    move v0, v2

    .line 593
    goto :goto_0

    :cond_6
    move v0, p1

    .line 596
    goto :goto_0
.end method

.method public getAdjustedNameStyleBasedOnPhoneticNameStyle(II)I
    .locals 4
    .parameter "nameStyle"
    .parameter "phoneticNameStyle"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v0, 0x2

    .line 778
    if-eqz p2, :cond_3

    .line 779
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_3

    .line 780
    :cond_0
    if-ne p2, v2, :cond_1

    move v0, v2

    .line 790
    :goto_0
    return v0

    .line 782
    :cond_1
    if-ne p2, v3, :cond_2

    move v0, v3

    .line 783
    goto :goto_0

    .line 785
    :cond_2
    if-ne p1, v0, :cond_3

    if-ne p2, v1, :cond_3

    move v0, v1

    .line 786
    goto :goto_0

    :cond_3
    move v0, p1

    .line 790
    goto :goto_0
.end method

.method public guessFullNameStyle(Ljava/lang/String;)I
    .locals 6
    .parameter "name"

    .prologue
    .line 833
    if-nez p1, :cond_0

    .line 834
    const/4 v5, 0x0

    .line 865
    :goto_0
    return v5

    .line 837
    :cond_0
    const/4 v2, 0x0

    .line 838
    .local v2, nameStyle:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 839
    .local v1, length:I
    const/4 v3, 0x0

    .line 840
    .local v3, offset:I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 841
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 842
    .local v0, codePoint:I
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 843
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v4

    .line 845
    .local v4, unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter;->isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 847
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter;->isCJKUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 850
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v5, v3

    invoke-direct {p0, p1, v5}, Lcom/android/providers/contacts/NameSplitter;->guessCJKNameStyle(Ljava/lang/String;I)I

    move-result v5

    goto :goto_0

    .line 853
    :cond_1
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter;->isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 854
    const/4 v5, 0x4

    goto :goto_0

    .line 857
    :cond_2
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter;->isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 858
    const/4 v5, 0x5

    goto :goto_0

    .line 861
    :cond_3
    const/4 v2, 0x1

    .line 863
    .end local v4           #unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    :cond_4
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 864
    goto :goto_1

    .end local v0           #codePoint:I
    :cond_5
    move v5, v2

    .line 865
    goto :goto_0
.end method

.method public guessNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 766
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V

    .line 767
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V

    .line 768
    iget v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    iget v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedNameStyleBasedOnPhoneticNameStyle(II)I

    move-result v0

    iput v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 770
    return-void
.end method

.method public guessPhoneticNameStyle(Ljava/lang/String;)I
    .locals 6
    .parameter "name"

    .prologue
    .line 918
    if-nez p1, :cond_0

    .line 919
    const/4 v5, 0x0

    .line 942
    :goto_0
    return v5

    .line 922
    :cond_0
    const/4 v2, 0x0

    .line 923
    .local v2, nameStyle:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 924
    .local v1, length:I
    const/4 v3, 0x0

    .line 925
    .local v3, offset:I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 926
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 927
    .local v0, codePoint:I
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 928
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v4

    .line 929
    .local v4, unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter;->isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 930
    const/4 v5, 0x4

    goto :goto_0

    .line 932
    :cond_1
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter;->isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 933
    const/4 v5, 0x5

    goto :goto_0

    .line 935
    :cond_2
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter;->isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 936
    const/4 v5, 0x3

    goto :goto_0

    .line 939
    .end local v4           #unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 940
    goto :goto_1

    .end local v0           #codePoint:I
    :cond_4
    move v5, v2

    .line 942
    goto :goto_0
.end method

.method public join(Lcom/android/providers/contacts/NameSplitter$Name;Z)Ljava/lang/String;
    .locals 8
    .parameter "name"
    .parameter "givenNameFirst"

    .prologue
    .line 436
    iget v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    packed-switch v0, :pswitch_data_0

    .line 448
    if-eqz p2, :cond_0

    .line 449
    iget-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/providers/contacts/NameSplitter;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    .line 452
    :goto_0
    return-object v0

    .line 440
    :pswitch_0
    iget-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/providers/contacts/NameSplitter;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 444
    :pswitch_1
    iget-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/providers/contacts/NameSplitter;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 452
    :cond_0
    iget-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/providers/contacts/NameSplitter;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public joinPhoneticName(Lcom/android/providers/contacts/NameSplitter$Name;)Ljava/lang/String;
    .locals 8
    .parameter "name"

    .prologue
    const/4 v6, 0x0

    .line 463
    iget-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/providers/contacts/NameSplitter;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public split(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "fullName"

    .prologue
    .line 319
    if-nez p2, :cond_0

    .line 343
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v0

    .line 324
    .local v0, fullNameStyle:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 325
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v0

    .line 328
    :cond_1
    iput v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 330
    packed-switch v0, :pswitch_data_0

    .line 341
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/NameSplitter;->splitWesternName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/NameSplitter;->splitChineseName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/NameSplitter;->splitJapaneseOrKoreanName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    goto :goto_0

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public tokenize([Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "tokens"
    .parameter "fullName"

    .prologue
    const/4 v7, 0x0

    .line 292
    if-nez p2, :cond_0

    move v5, v7

    .line 311
    :goto_0
    return v5

    .line 296
    :cond_0
    new-instance v4, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;

    invoke-direct {v4, p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;-><init>(Ljava/lang/String;)V

    .line 298
    .local v4, tokenizer:Lcom/android/providers/contacts/NameSplitter$NameTokenizer;
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v5

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v6

    if-ne v5, v6, :cond_1

    move v5, v7

    .line 299
    goto :goto_0

    .line 302
    :cond_1
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v5

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v6

    aget-object v2, v5, v6

    .line 303
    .local v2, firstToken:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/providers/contacts/NameSplitter;->mPrefixesSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 304
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$008(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    .line 306
    :cond_2
    const/4 v0, 0x0

    .line 307
    .local v0, count:I
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    .local v3, i:I
    :goto_1
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 308
    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .local v1, count:I
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    aput-object v5, p1, v0

    .line 307
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_1

    :cond_3
    move v5, v0

    .line 311
    goto :goto_0
.end method
