.class public Lcom/android/providers/contacts/NameSplitter$Name;
.super Ljava/lang/Object;
.source "NameSplitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/NameSplitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Name"
.end annotation


# instance fields
.field public familyName:Ljava/lang/String;

.field public fullNameStyle:I

.field public givenNames:Ljava/lang/String;

.field public middleName:Ljava/lang/String;

.field public phoneticFamilyName:Ljava/lang/String;

.field public phoneticGivenName:Ljava/lang/String;

.field public phoneticMiddleName:Ljava/lang/String;

.field public phoneticNameStyle:I

.field public prefix:Ljava/lang/String;

.field public suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    .line 162
    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    .line 163
    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 164
    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 165
    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    .line 166
    iput v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 167
    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    .line 168
    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    .line 170
    iput v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    .line 171
    return-void
.end method

.method public fromValues(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 130
    const-string v1, "data4"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    .line 131
    const-string v1, "data2"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    .line 132
    const-string v1, "data5"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 133
    const-string v1, "data3"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 134
    const-string v1, "data6"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    .line 136
    const-string v1, "data10"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 137
    .local v0, integer:Ljava/lang/Integer;
    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 139
    const-string v1, "data9"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    .line 140
    const-string v1, "data8"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    .line 141
    const-string v1, "data7"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    .line 143
    const-string v1, "data11"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 144
    if-nez v0, :cond_1

    move v1, v2

    :goto_1
    iput v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    .line 145
    return-void

    .line 137
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    return-object v0
.end method

.method public getFullNameStyle()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    return v0
.end method

.method public getGivenNames()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    return-object v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " middle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " family: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ph/given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ph/middle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ph/family: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toValues(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 148
    const-string v0, "data4"

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v0, "data2"

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v0, "data5"

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v0, "data3"

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v0, "data6"

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v0, "data10"

    iget v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    const-string v0, "data9"

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v0, "data8"

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v0, "data7"

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v0, "data11"

    iget v1, p0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    return-void
.end method
