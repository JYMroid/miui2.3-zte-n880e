.class Lcom/android/phone/CallLogAsync$AddCallTask;
.super Landroid/os/AsyncTask;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallLogAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddCallTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/phone/CallLogAsync$AddCallArgs;",
        "Ljava/lang/Void;",
        "[",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallLogAsync;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallLogAsync;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/phone/CallLogAsync$AddCallTask;->this$0:Lcom/android/phone/CallLogAsync;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallLogAsync;Lcom/android/phone/CallLogAsync$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/phone/CallLogAsync$AddCallTask;-><init>(Lcom/android/phone/CallLogAsync;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    check-cast p1, [Lcom/android/phone/CallLogAsync$AddCallArgs;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/CallLogAsync$AddCallTask;->doInBackground([Lcom/android/phone/CallLogAsync$AddCallArgs;)[Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/phone/CallLogAsync$AddCallArgs;)[Landroid/net/Uri;
    .locals 13
    .parameter "callList"

    .prologue
    .line 159
    array-length v10, p1

    .line 160
    .local v10, count:I
    new-array v12, v10, [Landroid/net/Uri;

    .line 161
    .local v12, result:[Landroid/net/Uri;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v10, :cond_0

    .line 162
    aget-object v9, p1, v11

    .line 165
    .local v9, c:Lcom/android/phone/CallLogAsync$AddCallArgs;
    iget-object v0, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    iget-object v2, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    iget v3, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    iget v4, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    iget-wide v5, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    iget v7, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    iget v8, v9, Lcom/android/phone/CallLogAsync$AddCallArgs;->subscription:I

    invoke-static/range {v0 .. v8}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJII)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v12, v11

    .line 161
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 169
    .end local v9           #c:Lcom/android/phone/CallLogAsync$AddCallArgs;
    :cond_0
    return-object v12
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 156
    check-cast p1, [Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/CallLogAsync$AddCallTask;->onPostExecute([Landroid/net/Uri;)V

    return-void
.end method

.method protected onPostExecute([Landroid/net/Uri;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 177
    move-object v0, p1

    .local v0, arr$:[Landroid/net/Uri;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 178
    .local v3, uri:Landroid/net/Uri;
    if-nez v3, :cond_0

    .line 179
    const-string v4, "CallLogAsync"

    const-string v5, "Failed to write call to the log."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    .end local v3           #uri:Landroid/net/Uri;
    :cond_1
    return-void
.end method
