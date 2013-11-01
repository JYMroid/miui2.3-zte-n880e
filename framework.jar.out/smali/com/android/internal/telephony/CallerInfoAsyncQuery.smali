.class public Lcom/android/internal/telephony/CallerInfoAsyncQuery;
.super Ljava/lang/Object;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CallerInfoAsyncQuery$1;,
        Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;,
        Lcom/android/internal/telephony/CallerInfoAsyncQuery$QueryPoolException;,
        Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;,
        Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
    }
.end annotation


# static fields
.field static final COLUMN_XDN:[Ljava/lang/String; = null

.field private static final DBG:Z = true

.field private static final EVENT_ADD_LISTENER:I = 0x2

.field private static final EVENT_EMERGENCY_NUMBER:I = 0x4

.field private static final EVENT_END_OF_QUEUE:I = 0x3

.field private static final EVENT_NEW_QUERY:I = 0x1

.field private static final EVENT_VOICEMAIL_NUMBER:I = 0x5

.field public static final FDN_TOKEN:I = 0x3e7

.field private static final LOG_TAG:Ljava/lang/String; = "CallerInfoAsyncQuery"

.field static final MIN_MATCH:I = 0x7

.field static final NAME_COLUMN:I = 0x0

.field static final NUMBER_COLUMN:I = 0x1

.field protected static final QUERY_TOKEN:I = -0x1

.field protected static final SDN_TOKEN:I = 0x3e6

.field static final fdnUri_sub1:Landroid/net/Uri;

.field static final fdnUri_sub2:Landroid/net/Uri;

.field static phoneNumber:Ljava/lang/String;

.field static final sdnUri:Landroid/net/Uri;


# instance fields
.field private mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->COLUMN_XDN:[Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->phoneNumber:Ljava/lang/String;

    const-string v0, "content://icc/fdn_sub1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->fdnUri_sub1:Landroid/net/Uri;

    const-string v0, "content://icc/fdn_sub2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->fdnUri_sub2:Landroid/net/Uri;

    const-string v0, "content://icc/sdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->sdnUri:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/CallerInfoAsyncQuery;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->release()V

    return-void
.end method

.method private allocate(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "contactRef"

    .prologue
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$QueryPoolException;

    const-string v1, "Bad context or query uri."

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery;Landroid/content/Context;Lcom/android/internal/telephony/CallerInfoAsyncQuery$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    #setter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$502(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    #setter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;
    invoke-static {v0, p2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$302(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;

    return-void
.end method

.method private getCallerInfoFormXdnList(Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;
    .locals 8
    .parameter "c"
    .parameter "fdnNumber"

    .prologue
    const/4 v4, 0x0

    const-string v7, "CallerInfoAsyncQuery"

    new-instance v0, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    iput-boolean v4, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    const/4 v2, 0x0

    .local v2, name:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, number:Ljava/lang/String;
    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "CallerInfoAsyncQuery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNameForFdnList: fdnNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "CallerInfoAsyncQuery"

    const-string v5, "getNameForFdnList,has fdn record. "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {p0, v3, p2, v4}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->isNumberMatch(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "CallerInfoAsyncQuery"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNameForFdnList,get fdn record. name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "CallerInfoAsyncQuery"

    const-string v5, "getNameForFdnList,while finish, not found the record."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    const-string v4, "CallerInfoAsyncQuery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNameForFdnList,cursor is null ,name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "CallerInfoAsyncQuery"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNameForFdnList,query card exception ex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4
.end method

.method private release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    #setter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$502(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    #setter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$302(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    #setter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$602(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;

    iput-object v1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    return-void
.end method

.method private static sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, uriString:Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .local v0, indexOfLastSlash:I
    if-lez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/xxxxxxx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v0           #indexOfLastSlash:I
    .end local v1           #uriString:Ljava/lang/String;
    :goto_0
    return-object v2

    .restart local v0       #indexOfLastSlash:I
    .restart local v1       #uriString:Ljava/lang/String;
    :cond_0
    move-object v2, v1

    goto :goto_0

    .end local v0           #indexOfLastSlash:I
    .end local v1           #uriString:Ljava/lang/String;
    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public static startQuery(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    .locals 9
    .parameter "token"
    .parameter "context"
    .parameter "contactRef"
    .parameter "listener"
    .parameter "cookie"

    .prologue
    const/4 v4, 0x0

    new-instance v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-direct {v8}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;-><init>()V

    .local v8, c:Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    invoke-direct {v8, p1, p2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;)V

    const-string v0, "CallerInfoAsyncQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "starting query for URI: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " handler: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$1;)V

    .local v2, cw:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    iput-object p3, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iput-object p4, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const-string v7, "raw_contacts.mode_id"

    move v1, p0

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public static startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    .locals 18
    .parameter "token"
    .parameter "context"
    .parameter "number"
    .parameter "listener"
    .parameter "cookie"

    .prologue
    const-string v3, "CallerInfoAsyncQuery"

    const-string v4, "##### CallerInfoAsyncQuery startQuery()... #####"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "CallerInfoAsyncQuery"

    const-string v4, "- number: xxxxxxx"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "CallerInfoAsyncQuery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- cookie: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "CallerInfoAsyncQuery"

    const-string v4, "  - Treating number as a SIP address: xxxxxxx"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .local v6, contactRef:Landroid/net/Uri;
    const-string v8, "upper(data1)=? AND mimetype=\'vnd.android.cursor.item/sip_address\'"

    .local v8, selection:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v3

    .local v9, selectionArgs:[Ljava/lang/String;
    const-string v3, "CallerInfoAsyncQuery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startQuery number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-direct {v11}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;-><init>()V

    .local v11, c:Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    move-object v0, v11

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance v5, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    const/16 p1, 0x0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$1;)V

    .end local p1
    .local v5, cw:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    move-object/from16 v0, p3

    move-object v1, v5

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    move-object/from16 v0, p4

    move-object v1, v5

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x4

    move/from16 v0, p1

    move-object v1, v5

    iput v0, v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    :goto_0
    iget-object v3, v11, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v7, 0x0

    const/4 v10, 0x0

    move/from16 v4, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 p0, v11

    .end local v11           #c:Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    .local p0, c:Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    move-object/from16 p1, v11

    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .end local p0           #c:Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    .local p1, c:Ljava/lang/Object;
    :goto_1
    return-object p1

    .end local p1           #c:Ljava/lang/Object;
    .restart local v8       #selection:Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    .restart local v11       #c:Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    .local p0, token:I
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x5

    move/from16 v0, p1

    move-object v1, v5

    iput v0, v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x1

    move/from16 v0, p1

    move-object v1, v5

    iput v0, v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_0

    .end local v5           #cw:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    .end local v6           #contactRef:Landroid/net/Uri;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .end local v11           #c:Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    .local p1, context:Landroid/content/Context;
    :cond_2
    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .restart local v6       #contactRef:Landroid/net/Uri;
    new-instance v3, Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-direct {v3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;-><init>()V

    .local v3, c:Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    move-object v0, v3

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;)V

    const-string p1, "CallerInfoAsyncQuery"

    .end local p1           #context:Landroid/content/Context;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "starting query for number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handler: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    const/16 p1, 0x0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$1;)V

    .restart local v5       #cw:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    move-object/from16 v0, p3

    move-object v1, v5

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    move-object/from16 v0, p4

    move-object v1, v5

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x4

    move/from16 v0, p1

    move-object v1, v5

    iput v0, v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    :goto_2
    iget-object v10, v3, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v17, " photo_id desc,custom_ringtone desc,raw_contacts.mode_id"

    move/from16 v11, p0

    move-object v12, v5

    move-object v13, v6

    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 p0, v3

    .end local v3           #c:Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    .local p0, c:Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    move-object/from16 p1, v3

    .local p1, c:Ljava/lang/Object;
    goto/16 :goto_1

    .end local p1           #c:Ljava/lang/Object;
    .restart local v3       #c:Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    .local p0, token:I
    :cond_3
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x5

    move/from16 v0, p1

    move-object v1, v5

    iput v0, v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_2

    :cond_4
    const/16 p1, 0x1

    move/from16 v0, p1

    move-object v1, v5

    iput v0, v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_2
.end method

.method public static startQuerybyId(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    .locals 9
    .parameter "token"
    .parameter "context"
    .parameter "number"
    .parameter "listener"
    .parameter "cookie"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    sget-object v3, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .local v3, contactRef:Landroid/net/Uri;
    const-string v0, "phone_lookup_byrawid"

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, p5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-direct {v8}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;-><init>()V

    .local v8, c:Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    invoke-direct {v8, p1, v3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;)V

    const-string v0, "CallerInfoAsyncQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "starting query for number: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " handler: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$1;)V

    .local v2, cw:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    iput-object p3, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iput-object p4, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    iput-object p2, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    iput v0, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    :goto_0
    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const-string v7, "raw_contacts.mode_id"

    move v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    :cond_0
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    iput v0, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput v0, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_0
.end method


# virtual methods
.method public addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V
    .locals 8
    .parameter "token"
    .parameter "listener"
    .parameter "cookie"

    .prologue
    const/4 v3, 0x0

    const-string v0, "CallerInfoAsyncQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adding listener to query: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    #getter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$300(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " handler: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$1;)V

    .local v2, cw:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    iput-object p2, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iput-object p3, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    move v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isNumberMatch(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 9
    .parameter "number1"
    .parameter "number2"
    .parameter "minMatch"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v5, v6

    :goto_0
    return v5

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, length1:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, length2:I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .local v2, minLength:I
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v8

    goto :goto_0

    :cond_2
    if-ge v2, p3, :cond_3

    move v5, v6

    goto :goto_0

    :cond_3
    if-lt v2, p3, :cond_4

    sub-int v5, v0, p3

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .local v3, subNumber1:Ljava/lang/String;
    sub-int v5, v1, p3

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .local v4, subNumber2:Ljava/lang/String;
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    goto :goto_0

    .end local v3           #subNumber1:Ljava/lang/String;
    .end local v4           #subNumber2:Ljava/lang/String;
    :cond_4
    const-string v5, "CallerInfoAsyncQuery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isNumberMatch,number1 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",number2 ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    goto :goto_0
.end method
