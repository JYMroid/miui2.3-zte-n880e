.class Lzte/com/cn/numberlocator/NumberLocatorActivity$3;
.super Ljava/lang/Object;
.source "NumberLocatorActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/numberlocator/NumberLocatorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/numberlocator/NumberLocatorActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/numberlocator/NumberLocatorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity$3;->this$0:Lzte/com/cn/numberlocator/NumberLocatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 183
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 187
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 11
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const-string v10, "0086"

    const-string v9, "/"

    const-string v8, ","

    const-string v6, "+86"

    const-string v7, ""

    .line 191
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, filterIput:Ljava/lang/String;
    const-string v5, "/"

    const-string v5, ""

    invoke-virtual {v1, v9, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, filter:Ljava/lang/String;
    const-string v5, "0086"

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "+86"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 196
    :cond_0
    iget-object v5, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity$3;->this$0:Lzte/com/cn/numberlocator/NumberLocatorActivity;

    invoke-virtual {v5, v0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->queryNumLocation(Ljava/lang/String;)V

    .line 230
    :goto_0
    return-void

    .line 201
    :cond_1
    const-string v5, "+86"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 202
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    :cond_2
    const-string v5, "0086"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 205
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    :cond_3
    sget-object v5, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->ipDialNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 209
    sget-object v5, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->ipDialNumber:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 210
    sget-object v5, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->ipDialNumber:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 214
    :cond_4
    const-string v5, "17951"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 215
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    :cond_5
    const-string v5, ","

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_6

    .line 218
    const/4 v5, 0x0

    const-string v6, ","

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 220
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 221
    .local v2, len:I
    if-gtz v2, :cond_7

    .line 222
    iget-object v5, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity$3;->this$0:Lzte/com/cn/numberlocator/NumberLocatorActivity;

    #getter for: Lzte/com/cn/numberlocator/NumberLocatorActivity;->mErrorPhoneNumber:Landroid/widget/TextView;
    invoke-static {v5}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->access$100(Lzte/com/cn/numberlocator/NumberLocatorActivity;)Landroid/widget/TextView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 225
    :cond_7
    iget-object v5, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity$3;->this$0:Lzte/com/cn/numberlocator/NumberLocatorActivity;

    #getter for: Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;
    invoke-static {v5}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->access$000(Lzte/com/cn/numberlocator/NumberLocatorActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, origninput:Ljava/lang/String;
    const-string v5, "/"

    const-string v5, ""

    invoke-virtual {v4, v9, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, orign:Ljava/lang/String;
    iget-object v5, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity$3;->this$0:Lzte/com/cn/numberlocator/NumberLocatorActivity;

    invoke-virtual {v5, v3}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->queryNumLocation(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
