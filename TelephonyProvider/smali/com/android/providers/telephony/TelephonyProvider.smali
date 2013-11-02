.class public Lcom/android/providers/telephony/TelephonyProvider;
.super Landroid/content/ContentProvider;
.source "TelephonyProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final s_currentNullMap:Landroid/content/ContentValues;

.field private static final s_currentSetMap:Landroid/content/ContentValues;

.field private static final s_urlMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const-string v5, "current"

    const-string v3, "telephony"

    .line 68
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    .line 74
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony"

    const-string v1, "carriers"

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony"

    const-string v1, "carriers/current"

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony"

    const-string v1, "carriers/#"

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony"

    const-string v1, "carriers/restore"

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony"

    const-string v1, "carriers/preferapn"

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_currentNullMap:Landroid/content/ContentValues;

    .line 81
    sget-object v1, Lcom/android/providers/telephony/TelephonyProvider;->s_currentNullMap:Landroid/content/ContentValues;

    const-string v0, "current"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 83
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_currentSetMap:Landroid/content/ContentValues;

    .line 84
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_currentSetMap:Landroid/content/ContentValues;

    const-string v1, "current"

    const-string v1, "1"

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 87
    return-void
.end method

.method private checkPermission()V
    .locals 3

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_APN_SETTINGS"

    const-string v2, "No permission to write APN settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    return-void
.end method

.method private getPreferredApnId()J
    .locals 4

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "preferred-apn"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 343
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "apn_id"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method private restoreDefaultAPN()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 639
    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 641
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "carriers"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 642
    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredApnId(Ljava/lang/Long;)V

    .line 643
    iget-object p0, p0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .end local p0
    check-cast p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    #calls: Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p0, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->access$000(Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 644
    return-void
.end method

.method private setPreferredApnId(Ljava/lang/Long;)V
    .locals 5
    .parameter "id"

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "preferred-apn"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 336
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 337
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "apn_id"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 338
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 339
    return-void

    .line 337
    :cond_0
    const-wide/16 v3, -0x1

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const-string v7, "carriers"

    .line 523
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider;->checkPermission()V

    .line 525
    iget-object v3, p0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 526
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 527
    .local v2, match:I
    packed-switch v2, :pswitch_data_0

    .line 562
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot delete that URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 531
    :pswitch_0
    const-string v3, "carriers"

    invoke-virtual {v1, v7, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 566
    .local v0, count:I
    :goto_0
    if-lez v0, :cond_0

    .line 567
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 570
    :cond_0
    return v0

    .line 537
    .end local v0           #count:I
    :pswitch_1
    const-string v3, "carriers"

    invoke-virtual {v1, v7, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 538
    .restart local v0       #count:I
    goto :goto_0

    .line 543
    .end local v0           #count:I
    :pswitch_2
    const-string v3, "carriers"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v7, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 545
    .restart local v0       #count:I
    goto :goto_0

    .line 549
    .end local v0           #count:I
    :pswitch_3
    const/4 v0, 0x1

    .line 550
    .restart local v0       #count:I
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider;->restoreDefaultAPN()V

    goto :goto_0

    .line 556
    .end local v0           #count:I
    :pswitch_4
    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredApnId(Ljava/lang/Long;)V

    .line 557
    const/4 v0, 0x1

    .line 558
    .restart local v0       #count:I
    goto :goto_0

    .line 527
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    const-string v1, "vnd.android.cursor.item/telephony-carrier"

    .line 391
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 402
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :pswitch_1
    const-string v0, "vnd.android.cursor.dir/telephony-carrier"

    .line 399
    :goto_0
    return-object v0

    .line 396
    :pswitch_2
    const-string v0, "vnd.android.cursor.item/telephony-carrier"

    move-object v0, v1

    goto :goto_0

    .line 399
    :pswitch_3
    const-string v0, "vnd.android.cursor.item/telephony-carrier"

    move-object v0, v1

    goto :goto_0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 13
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 409
    const/4 v4, 0x0

    .line 411
    .local v4, result:Landroid/net/Uri;
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider;->checkPermission()V

    .line 413
    iget-object v9, p0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 414
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v9, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v9, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 415
    .local v1, match:I
    const/4 v2, 0x0

    .line 416
    .local v2, notify:Z
    packed-switch v1, :pswitch_data_0

    .line 511
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v2, :cond_1

    .line 512
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 515
    :cond_1
    return-object v4

    .line 421
    :pswitch_1
    if-eqz p2, :cond_f

    .line 422
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 429
    .local v8, values:Landroid/content/ContentValues;
    :goto_1
    const-string v9, "name"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 430
    const-string v9, "name"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_2
    const-string v9, "apn"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 433
    const-string v9, "apn"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_3
    const-string v9, "port"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 436
    const-string v9, "port"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_4
    const-string v9, "proxy"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 439
    const-string v9, "proxy"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :cond_5
    const-string v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 442
    const-string v9, "user"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :cond_6
    const-string v9, "server"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 445
    const-string v9, "server"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_7
    const-string v9, "password"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 448
    const-string v9, "password"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_8
    const-string v9, "mmsport"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 451
    const-string v9, "mmsport"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :cond_9
    const-string v9, "mmsproxy"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 454
    const-string v9, "mmsproxy"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_a
    const-string v9, "authtype"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 457
    const-string v9, "authtype"

    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 459
    :cond_b
    const-string v9, "protocol"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 460
    const-string v9, "protocol"

    const-string v10, "IP"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_c
    const-string v9, "roaming_protocol"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 463
    const-string v9, "roaming_protocol"

    const-string v10, "IP"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_d
    const-string v9, "carriers"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 468
    .local v5, rowID:J
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_e

    .line 470
    sget-object v9, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 471
    const/4 v2, 0x1

    .line 474
    :cond_e
    const-string v9, "TelephonyProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "inserted "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " rowID = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 424
    .end local v5           #rowID:J
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_f
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .restart local v8       #values:Landroid/content/ContentValues;
    goto/16 :goto_1

    .line 481
    .end local v8           #values:Landroid/content/ContentValues;
    :pswitch_2
    const-string v9, "carriers"

    sget-object v10, Lcom/android/providers/telephony/TelephonyProvider;->s_currentNullMap:Landroid/content/ContentValues;

    const-string v11, "current IS NOT NULL"

    const/4 v12, 0x0

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 483
    const-string v9, "numeric"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 484
    .local v3, numeric:Ljava/lang/String;
    const-string v9, "carriers"

    sget-object v10, Lcom/android/providers/telephony/TelephonyProvider;->s_currentSetMap:Landroid/content/ContentValues;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "numeric = \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 487
    .local v7, updated:I
    if-lez v7, :cond_10

    .line 490
    const-string v9, "TelephonyProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting numeric \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' to be the current operator"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 495
    :cond_10
    const-string v9, "TelephonyProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed setting numeric \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' to the current operator"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 502
    .end local v3           #numeric:Ljava/lang/String;
    .end local v7           #updated:I
    :pswitch_3
    if-eqz p2, :cond_0

    .line 503
    const-string v9, "apn_id"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 504
    const-string v9, "apn_id"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredApnId(Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 416
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 330
    new-instance v0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 331
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "url"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    const/4 v5, 0x0

    const-string v4, "_id = "

    .line 349
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 350
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "carriers"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 352
    sget-object v2, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 353
    .local v8, match:I
    packed-switch v8, :pswitch_data_0

    :pswitch_0
    move-object v2, v5

    .line 385
    :goto_0
    return-object v2

    .line 361
    :pswitch_1
    const-string v2, "current IS NOT NULL"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 382
    :goto_1
    :pswitch_2
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    .line 383
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 384
    .local v9, ret:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object v2, v9

    .line 385
    goto :goto_0

    .line 368
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #ret:Landroid/database/Cursor;
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 373
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getPreferredApnId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 353
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const-string v4, "apn_id"

    const-string v7, "carriers"

    .line 576
    const/4 v0, 0x0

    .line 578
    .local v0, count:I
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider;->checkPermission()V

    .line 580
    iget-object v3, p0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 581
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 582
    .local v2, match:I
    packed-switch v2, :pswitch_data_0

    .line 619
    :pswitch_0
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot update that URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 586
    :pswitch_1
    const-string v3, "carriers"

    invoke-virtual {v1, v7, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 623
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 624
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 627
    :cond_1
    return v0

    .line 592
    :pswitch_2
    const-string v3, "carriers"

    invoke-virtual {v1, v7, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 593
    goto :goto_0

    .line 598
    :pswitch_3
    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    .line 599
    :cond_2
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot update URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with a where clause"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 602
    :cond_3
    const-string v3, "carriers"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v7, p2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 604
    goto :goto_0

    .line 609
    :pswitch_4
    if-eqz p2, :cond_0

    .line 610
    const-string v3, "apn_id"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 611
    const-string v3, "apn_id"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredApnId(Ljava/lang/Long;)V

    .line 612
    const/4 v0, 0x1

    goto :goto_0

    .line 582
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
