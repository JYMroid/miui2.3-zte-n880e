.class public Lcom/android/providers/contacts/NameNormalizer;
.super Ljava/lang/Object;
.source "NameNormalizer.java"


# static fields
.field private static final sComplexityCollator:Lcom/ibm/icu4jni/text/RuleBasedCollator;

.field private static final sCompressingCollator:Lcom/ibm/icu4jni/text/RuleBasedCollator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 32
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu4jni/text/Collator;->getInstance(Ljava/util/Locale;)Lcom/ibm/icu4jni/text/Collator;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu4jni/text/RuleBasedCollator;

    sput-object v0, Lcom/android/providers/contacts/NameNormalizer;->sCompressingCollator:Lcom/ibm/icu4jni/text/RuleBasedCollator;

    .line 33
    sget-object v0, Lcom/android/providers/contacts/NameNormalizer;->sCompressingCollator:Lcom/ibm/icu4jni/text/RuleBasedCollator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ibm/icu4jni/text/RuleBasedCollator;->setStrength(I)V

    .line 34
    sget-object v0, Lcom/android/providers/contacts/NameNormalizer;->sCompressingCollator:Lcom/ibm/icu4jni/text/RuleBasedCollator;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/ibm/icu4jni/text/RuleBasedCollator;->setDecomposition(I)V

    .line 39
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu4jni/text/Collator;->getInstance(Ljava/util/Locale;)Lcom/ibm/icu4jni/text/Collator;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu4jni/text/RuleBasedCollator;

    sput-object v0, Lcom/android/providers/contacts/NameNormalizer;->sComplexityCollator:Lcom/ibm/icu4jni/text/RuleBasedCollator;

    .line 40
    sget-object v0, Lcom/android/providers/contacts/NameNormalizer;->sComplexityCollator:Lcom/ibm/icu4jni/text/RuleBasedCollator;

    invoke-virtual {v0, v2}, Lcom/ibm/icu4jni/text/RuleBasedCollator;->setStrength(I)V

    .line 41
    sget-object v0, Lcom/android/providers/contacts/NameNormalizer;->sComplexityCollator:Lcom/ibm/icu4jni/text/RuleBasedCollator;

    const/16 v1, 0x18

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu4jni/text/RuleBasedCollator;->setAttribute(II)V

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareComplexity(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "name1"
    .parameter "name2"

    .prologue
    .line 59
    sget-object v1, Lcom/android/providers/contacts/NameNormalizer;->sComplexityCollator:Lcom/ibm/icu4jni/text/RuleBasedCollator;

    invoke-static {p0}, Lcom/android/providers/contacts/NameNormalizer;->lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/android/providers/contacts/NameNormalizer;->lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ibm/icu4jni/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 61
    .local v0, diff:I
    if-eqz v0, :cond_0

    move v1, v0

    .line 65
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private static lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "name"

    .prologue
    .line 72
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 73
    .local v4, letters:[C
    const/4 v2, 0x0

    .line 74
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 75
    aget-char v0, v4, v1

    .line 76
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 77
    add-int/lit8 v3, v2, 0x1

    .end local v2           #length:I
    .local v3, length:I
    aput-char v0, v4, v2

    move v2, v3

    .line 74
    .end local v3           #length:I
    .restart local v2       #length:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v0           #c:C
    :cond_1
    array-length v5, v4

    if-eq v2, v5, :cond_2

    .line 82
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6, v2}, Ljava/lang/String;-><init>([CII)V

    .line 85
    :goto_1
    return-object v5

    :cond_2
    move-object v5, p0

    goto :goto_1
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    .line 50
    sget-object v1, Lcom/android/providers/contacts/NameNormalizer;->sCompressingCollator:Lcom/ibm/icu4jni/text/RuleBasedCollator;

    invoke-static {p0}, Lcom/android/providers/contacts/NameNormalizer;->lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ibm/icu4jni/text/RuleBasedCollator;->getCollationKey(Ljava/lang/String;)Lcom/ibm/icu4jni/text/CollationKey;

    move-result-object v0

    .line 51
    .local v0, key:Lcom/ibm/icu4jni/text/CollationKey;
    invoke-virtual {v0}, Lcom/ibm/icu4jni/text/CollationKey;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/providers/contacts/Hex;->encodeHex([BZ)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
