.class Lcom/android/providers/contacts/ContactLocaleUtils$ChineseContactUtils;
.super Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
.source "ContactLocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactLocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChineseContactUtils"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/ContactLocaleUtils;


# direct methods
.method private constructor <init>(Lcom/android/providers/contacts/ContactLocaleUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/providers/contacts/ContactLocaleUtils$ChineseContactUtils;->this$0:Lcom/android/providers/contacts/ContactLocaleUtils;

    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;-><init>(Lcom/android/providers/contacts/ContactLocaleUtils;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/ContactLocaleUtils;Lcom/android/providers/contacts/ContactLocaleUtils$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactLocaleUtils$ChineseContactUtils;-><init>(Lcom/android/providers/contacts/ContactLocaleUtils;)V

    return-void
.end method


# virtual methods
.method public getNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 13
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v12, 0x20

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 102
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 103
    .local v4, keys:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lmiui/util/HanziToPinyin;->getInstance()Lmiui/util/HanziToPinyin;

    move-result-object v8

    invoke-virtual {v8, p1, v11, v10}, Lmiui/util/HanziToPinyin;->get(Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v7

    .line 104
    .local v7, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/HanziToPinyin$Token;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 105
    .local v6, tokenCount:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v3, keyPinyin:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v1, keyInitial:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v2, keyOrignal:Ljava/lang/StringBuilder;
    sub-int v0, v6, v11

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_4

    .line 112
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/util/HanziToPinyin$Token;

    .line 113
    .local v5, token:Lmiui/util/HanziToPinyin$Token;
    const/4 v8, 0x2

    iget v9, v5, Lmiui/util/HanziToPinyin$Token;->type:I

    if-ne v8, v9, :cond_1

    .line 114
    iget-object v8, v5, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v3, v10, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v8, v5, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v1, v10, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 127
    :cond_0
    :goto_1
    iget-object v8, v5, Lmiui/util/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v2, v10, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 116
    :cond_1
    iget v8, v5, Lmiui/util/HanziToPinyin$Token;->type:I

    if-ne v11, v8, :cond_0

    .line 118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 119
    invoke-virtual {v3, v10, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 121
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 122
    invoke-virtual {v2, v10, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 124
    :cond_3
    iget-object v8, v5, Lmiui/util/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v3, v10, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v8, v5, Lmiui/util/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v1, v10, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 132
    .end local v5           #token:Lmiui/util/HanziToPinyin$Token;
    :cond_4
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    return-object v8
.end method

.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "displayName"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x20

    const/4 v6, 0x1

    .line 64
    invoke-static {}, Lmiui/util/HanziToPinyin;->getInstance()Lmiui/util/HanziToPinyin;

    move-result-object v4

    invoke-virtual {v4, p1, v6, v8}, Lmiui/util/HanziToPinyin;->get(Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v3

    .line 65
    .local v3, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/HanziToPinyin$Token;>;"
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/HanziToPinyin$Token;

    .line 70
    .local v2, token:Lmiui/util/HanziToPinyin$Token;
    const/4 v4, 0x2

    iget v5, v2, Lmiui/util/HanziToPinyin$Token;->type:I

    if-ne v4, v5, :cond_2

    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 72
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    :cond_0
    iget-object v4, v2, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    const-string v4, "   "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v4, v2, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_1

    .line 83
    iget-object v4, v2, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_1
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    iget-object v4, v2, Lmiui/util/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 89
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    :cond_3
    iget-object v4, v2, Lmiui/util/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 94
    .end local v2           #token:Lmiui/util/HanziToPinyin$Token;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 96
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :goto_1
    return-object v4

    :cond_5
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method
