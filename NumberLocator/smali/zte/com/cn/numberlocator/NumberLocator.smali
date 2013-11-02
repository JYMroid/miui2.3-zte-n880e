.class public final Lzte/com/cn/numberlocator/NumberLocator;
.super Ljava/lang/Object;
.source "NumberLocator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/numberlocator/NumberLocator$Locator;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "zte.com.cn.providers.numberlocatorprovider"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static checkInputNum(Ljava/lang/String;Ljava/lang/String;)Lzte/com/cn/numberlocator/NumberType;
    .locals 8
    .parameter "origninput"
    .parameter "userIP"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x30

    const/4 v3, 0x0

    .line 31
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v6, :cond_1

    .line 32
    :cond_0
    new-instance v1, Lzte/com/cn/numberlocator/NumberType;

    invoke-direct {v1, v3, p0}, Lzte/com/cn/numberlocator/NumberType;-><init>(ILjava/lang/String;)V

    .line 107
    :goto_0
    return-object v1

    .line 34
    :cond_1
    const-string v1, "+"

    const-string v2, "00"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 35
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 36
    move-object v0, p0

    .line 37
    .local v0, input:Ljava/lang/String;
    const-string v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 38
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v6, :cond_2

    .line 40
    new-instance v1, Lzte/com/cn/numberlocator/NumberType;

    invoke-direct {v1, v3, p0}, Lzte/com/cn/numberlocator/NumberType;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v4, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-ne v1, v2, :cond_4

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-ne v1, v2, :cond_5

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_5

    .line 45
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    :cond_5
    const-string v1, "0086"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "0086"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 50
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v6, :cond_6

    .line 52
    new-instance v1, Lzte/com/cn/numberlocator/NumberType;

    invoke-direct {v1, v3, p0}, Lzte/com/cn/numberlocator/NumberType;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v4, :cond_7

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-ne v1, v2, :cond_8

    :cond_7
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-ne v1, v2, :cond_9

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_9

    .line 57
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    :cond_9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    :cond_a
    const-string v1, "17901"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 66
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_b
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_c

    .line 70
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v5, :cond_d

    .line 74
    new-instance v1, Lzte/com/cn/numberlocator/NumberType;

    invoke-direct {v1, v3, p0}, Lzte/com/cn/numberlocator/NumberType;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 78
    :cond_d
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v4, :cond_e

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_e

    .line 80
    const-string v1, "100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 82
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_e

    .line 83
    new-instance v1, Lzte/com/cn/numberlocator/NumberType;

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v7, v2}, Lzte/com/cn/numberlocator/NumberType;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 87
    :cond_e
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_f

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_f

    .line 88
    new-instance v1, Lzte/com/cn/numberlocator/NumberType;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Lzte/com/cn/numberlocator/NumberType;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 90
    :cond_f
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_13

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v4, :cond_13

    .line 91
    const-string v1, "010"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "020"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "021"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "022"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "023"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "024"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "025"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "026"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "027"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "028"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "029"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 97
    :cond_10
    new-instance v1, Lzte/com/cn/numberlocator/NumberType;

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v6, v2}, Lzte/com/cn/numberlocator/NumberType;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 98
    :cond_11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v7, :cond_12

    .line 99
    new-instance v1, Lzte/com/cn/numberlocator/NumberType;

    invoke-direct {v1, v3, v0}, Lzte/com/cn/numberlocator/NumberType;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 101
    :cond_12
    new-instance v1, Lzte/com/cn/numberlocator/NumberType;

    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v6, v2}, Lzte/com/cn/numberlocator/NumberType;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 104
    :cond_13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-le v1, v2, :cond_15

    .line 105
    :cond_14
    new-instance v1, Lzte/com/cn/numberlocator/NumberType;

    invoke-direct {v1, v3, v0}, Lzte/com/cn/numberlocator/NumberType;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 107
    :cond_15
    new-instance v1, Lzte/com/cn/numberlocator/NumberType;

    const/4 v2, 0x7

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lzte/com/cn/numberlocator/NumberType;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0
.end method
