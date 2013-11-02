.class public Lzte/com/cn/numberlocator/NumberLocatorContentProvider;
.super Landroid/content/ContentProvider;
.source "NumberLocatorContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/numberlocator/NumberLocatorContentProvider$1;,
        Lzte/com/cn/numberlocator/NumberLocatorContentProvider$DatabaseHelper;,
        Lzte/com/cn/numberlocator/NumberLocatorContentProvider$PhonenumberChangedBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ALLROWS:I = 0x1

.field private static final DATABASE_DESTPATH:Ljava/lang/String; = "/data/data/zte.com.cn.numberlocator/databases/"

.field private static final DATABASE_NAME:Ljava/lang/String; = "location.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final DB_VERSION:Ljava/lang/String; = "DB_VERSION"

.field private static final GET_VALUE:I = 0x4

.field private static final IP_DIAL_SAVE:Ljava/lang/String; = "IP_DIAL_SAVE"

.field private static final PUT_VALUE:I = 0x3

.field private static final SINGLE_ROW:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NumberLocatorContentProvider"

.field private static final UPDATE_DB:I = 0x5

.field public static ipDialEnabled:Z

.field public static ipDialNumber:Ljava/lang/String;

.field public static localNumber:Ljava/lang/String;

.field private static mNeedToUseNewWithAPK:Z

.field private static mSettingsKeyArray:[Ljava/lang/String;

.field private static final sURLMatcher:Landroid/content/UriMatcher;

.field static shardPreferences:Landroid/content/SharedPreferences;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const-string v3, "zte.com.cn.providers.numberlocatorprovider"

    .line 43
    sput-boolean v2, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->ipDialEnabled:Z

    .line 44
    const-string v0, ""

    sput-object v0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->ipDialNumber:Ljava/lang/String;

    .line 45
    const-string v0, ""

    sput-object v0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->localNumber:Ljava/lang/String;

    .line 47
    sput-boolean v2, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->mNeedToUseNewWithAPK:Z

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SMART_IP_DIAL_ENABLED"

    aput-object v1, v0, v2

    const-string v1, "IP_NUMBER"

    aput-object v1, v0, v4

    const-string v1, "LOCAL_NUMBER"

    aput-object v1, v0, v5

    const-string v1, "PHONE_NUMBER"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "LOCATION_DISPLAY_ENABLED"

    aput-object v2, v0, v1

    sput-object v0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->mSettingsKeyArray:[Ljava/lang/String;

    .line 97
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->sURLMatcher:Landroid/content/UriMatcher;

    .line 100
    sget-object v0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "zte.com.cn.providers.numberlocatorprovider"

    const-string v1, "location"

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    sget-object v0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "zte.com.cn.providers.numberlocatorprovider"

    const-string v1, "location/*"

    invoke-virtual {v0, v3, v1, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    sget-object v0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "zte.com.cn.providers.numberlocatorprovider"

    const-string v1, "get_value"

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    sget-object v0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "zte.com.cn.providers.numberlocatorprovider"

    const-string v1, "put_value"

    invoke-virtual {v0, v3, v1, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    sget-object v0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "zte.com.cn.providers.numberlocatorprovider"

    const-string v1, "update_db"

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 173
    const/4 v0, 0x0

    sput-object v0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->shardPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 46
    new-instance v0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider$PhonenumberChangedBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider$PhonenumberChangedBroadcastReceiver;-><init>(Lzte/com/cn/numberlocator/NumberLocatorContentProvider;Lzte/com/cn/numberlocator/NumberLocatorContentProvider$1;)V

    iput-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    return-void
.end method

.method static synthetic access$100(Lzte/com/cn/numberlocator/NumberLocatorContentProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->getIpSettings()V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-static {p0, p1}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    sput-boolean p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->mNeedToUseNewWithAPK:Z

    return p0
.end method

.method private copyDatabaseToDataPath(Ljava/io/InputStream;)V
    .locals 10
    .parameter "fis"

    .prologue
    const-string v9, "NumberLocatorContentProvider"

    .line 141
    const/4 v5, 0x0

    .line 143
    .local v5, fos:Ljava/io/FileOutputStream;
    const-string v7, "NumberLocatorContentProvider"

    const-string v7, "copyDatabase"

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :try_start_0
    const-string v3, "/data/data/zte.com.cn.numberlocator/databases/location.db"

    .line 151
    .local v3, destdbFilename:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v2, desFile:Ljava/io/File;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 157
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .local v6, fos:Ljava/io/FileOutputStream;
    const/16 v7, 0x1000

    :try_start_1
    new-array v0, v7, [B

    .line 158
    .local v0, buf:[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_0

    .line 159
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 165
    .end local v0           #buf:[B
    .end local v1           #bytesRead:I
    :catch_0
    move-exception v7

    move-object v4, v7

    move-object v5, v6

    .line 167
    .end local v2           #desFile:Ljava/io/File;
    .end local v3           #destdbFilename:Ljava/lang/String;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .local v4, e:Ljava/lang/Exception;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 168
    const-string v7, "NumberLocatorContentProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "copyDatabaseToDataPath ex:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v4           #e:Ljava/lang/Exception;
    :goto_2
    return-void

    .line 161
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #buf:[B
    .restart local v1       #bytesRead:I
    .restart local v2       #desFile:Ljava/io/File;
    .restart local v3       #destdbFilename:Ljava/lang/String;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :cond_0
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 162
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 163
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    .line 169
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 165
    .end local v0           #buf:[B
    .end local v1           #bytesRead:I
    .end local v2           #desFile:Ljava/io/File;
    .end local v3           #destdbFilename:Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v4, v7

    goto :goto_1
.end method

.method private getIpSettings()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 87
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->mSettingsKeyArray:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, value:Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v4

    :goto_0
    sput-boolean v1, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->ipDialEnabled:Z

    .line 89
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->mSettingsKeyArray:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-static {v1, v2}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->ipDialNumber:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->mSettingsKeyArray:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->localNumber:Ljava/lang/String;

    .line 91
    const-string v1, "NumberLocatorContentProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIpSettings ipDialEnabled= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->ipDialEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",ipDialNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->ipDialNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",localNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->localNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void

    :cond_0
    move v1, v3

    .line 88
    goto :goto_0
.end method

.method private static getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "key"

    .prologue
    .line 61
    sget-object v1, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->shardPreferences:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->mSettingsKeyArray:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->mSettingsKeyArray:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    :cond_0
    const-string v0, "0"

    .line 67
    :cond_1
    return-object v0
.end method

.method private handleNumber(Lzte/com/cn/numberlocator/NumberType;)Landroid/database/Cursor;
    .locals 14
    .parameter "numberType"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v3, 0x2

    const/4 v13, 0x0

    const/4 v4, 0x0

    .line 355
    const/4 v11, 0x0

    .line 356
    .local v11, ret:Landroid/database/Cursor;
    invoke-virtual {p1}, Lzte/com/cn/numberlocator/NumberType;->getNumType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 412
    :cond_0
    :goto_0
    return-object v11

    .line 361
    :pswitch_0
    const-string v1, "location,city_zone"

    .line 362
    .local v1, tables:Ljava/lang/String;
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "location.uuid_begin as phonenum"

    aput-object v0, v2, v13

    const-string v0, "\'mobilephone\' as cardtype"

    aput-object v0, v2, v5

    const-string v0, "city_zone.city as cityname"

    aput-object v0, v2, v3

    const-string v0, "city_zone.zone as areacode"

    aput-object v0, v2, v6

    .line 363
    .local v2, columns:[Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 364
    .local v12, sbselection:Ljava/lang/StringBuffer;
    const-string v0, "location.uuid_begin<=\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    invoke-virtual {p1}, Lzte/com/cn/numberlocator/NumberType;->getNumText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    const-string v0, "\' and "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    const-string v0, "location.uuid_end>=\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    invoke-virtual {p1}, Lzte/com/cn/numberlocator/NumberType;->getNumText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    const-string v0, "\' and location.city=city_zone.uuid"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 372
    goto :goto_0

    .line 376
    .end local v1           #tables:Ljava/lang/String;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v12           #sbselection:Ljava/lang/StringBuffer;
    :pswitch_1
    const-string v1, "city_zone"

    .line 377
    .restart local v1       #tables:Ljava/lang/String;
    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "city as cityname"

    aput-object v0, v2, v13

    const-string v0, "\'fixedphone\' as cardtype"

    aput-object v0, v2, v5

    const-string v0, "zone as areacode"

    aput-object v0, v2, v3

    .line 378
    .restart local v2       #columns:[Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 379
    .restart local v12       #sbselection:Ljava/lang/StringBuffer;
    const-string v0, "zone=\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    invoke-virtual {p1}, Lzte/com/cn/numberlocator/NumberType;->getNumText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    const-string v0, "\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    const-string v8, "1"

    .line 384
    .local v8, limit:Ljava/lang/String;
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 385
    goto :goto_0

    .line 389
    .end local v1           #tables:Ljava/lang/String;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v8           #limit:Ljava/lang/String;
    .end local v12           #sbselection:Ljava/lang/StringBuffer;
    :pswitch_2
    const-string v1, "international"

    .line 390
    .restart local v1       #tables:Ljava/lang/String;
    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "zone as cityname"

    aput-object v0, v2, v13

    const-string v0, "\'intlphone\' as cardtype"

    aput-object v0, v2, v5

    const-string v0, "uuid as areacode"

    aput-object v0, v2, v3

    .line 391
    .restart local v2       #columns:[Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 392
    .restart local v12       #sbselection:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Lzte/com/cn/numberlocator/NumberType;->getNumText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 393
    .local v10, number:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    const/4 v9, 0x1

    .local v9, i:I
    :goto_1
    const/4 v0, 0x4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gt v9, v0, :cond_0

    .line 398
    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 399
    const-string v0, "uuid=\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 400
    invoke-virtual {v10, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    const-string v0, "\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 402
    const-string v8, "1"

    .line 404
    .restart local v8       #limit:Ljava/lang/String;
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 405
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 396
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private importOldTableToNewTable()V
    .locals 15

    .prologue
    .line 230
    iget-object v12, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v13, "create table location_new (uuid_begin integer, uuid_end integer, city integer)"

    invoke-virtual {v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 231
    iget-object v12, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v13, "select distinct city from location order by city"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 232
    .local v2, cursor:Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v0, cities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    const/4 v12, 0x0

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_0

    .line 238
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 241
    const/4 v5, 0x0

    .line 242
    .local v5, sql:Ljava/lang/String;
    const/4 v8, 0x0

    .line 243
    .local v8, uuid_begin:I
    const/4 v9, 0x0

    .line 244
    .local v9, uuid_end:I
    const/4 v10, 0x0

    .line 245
    .local v10, uuid_next:I
    const/4 v11, 0x0

    .line 246
    .local v11, uuid_prev:I
    const-wide/16 v6, 0x0

    .line 247
    .local v6, total_count:J
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 249
    .local v1, city:Ljava/lang/Integer;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "select uuid,city from location where city="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " order by uuid asc"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 250
    const-string v12, "NumberLocatorContentProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sql = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v12, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v13, 0x0

    invoke-virtual {v12, v5, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 252
    .local v3, cursor_uuids:Landroid/database/Cursor;
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 253
    const/4 v12, 0x0

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    move v11, v8

    .line 254
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 256
    move v9, v8

    .line 259
    const-string v12, "location_new"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-direct {p0, v12, v8, v9, v13}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->insertNewTable(Ljava/lang/String;III)I

    move-result v12

    int-to-long v12, v12

    add-long/2addr v6, v12

    .line 260
    goto :goto_0

    .line 263
    :cond_1
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 265
    const/4 v12, 0x0

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 266
    sub-int v12, v10, v11

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    .line 268
    move v11, v10

    move v9, v10

    .line 269
    goto :goto_1

    .line 272
    :cond_2
    move v9, v11

    .line 274
    const-string v12, "location_new"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-direct {p0, v12, v8, v9, v13}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->insertNewTable(Ljava/lang/String;III)I

    move-result v12

    int-to-long v12, v12

    add-long/2addr v6, v12

    .line 277
    move v8, v10

    move v11, v10

    move v9, v10

    goto :goto_1

    .line 282
    :cond_3
    const-string v12, "location_new"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-direct {p0, v12, v8, v9, v13}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->insertNewTable(Ljava/lang/String;III)I

    move-result v12

    int-to-long v12, v12

    add-long/2addr v6, v12

    .line 283
    const-string v12, "NumberLocatorContentProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "total count = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 286
    .end local v1           #city:Ljava/lang/Integer;
    .end local v3           #cursor_uuids:Landroid/database/Cursor;
    :cond_4
    const-string v12, "NumberLocatorContentProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "process end total count = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v12, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v13, "drop table location"

    invoke-virtual {v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 288
    iget-object v12, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v13, "alter table location_new rename to location"

    invoke-virtual {v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method private insertNewTable(Ljava/lang/String;III)I
    .locals 4
    .parameter "table"
    .parameter "uuid_begin"
    .parameter "uuid_end"
    .parameter "city"

    .prologue
    .line 292
    if-le p2, p3, :cond_0

    .line 295
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid uuid begin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 298
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "uuid_begin"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 299
    const-string v1, "uuid_end"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 300
    const-string v1, "city"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    iget-object v1, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 303
    sub-int v1, p3, p2

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private putValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 72
    sget-object v0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->shardPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 73
    return-void
.end method

.method private replaceDb()V
    .locals 3

    .prologue
    .line 221
    iget-object v1, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 222
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f05

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 223
    .local v0, fis:Ljava/io/InputStream;
    invoke-direct {p0, v0}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->copyDatabaseToDataPath(Ljava/io/InputStream;)V

    .line 224
    iget-object v1, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 225
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 493
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 417
    sget-object v1, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 418
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 424
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown URL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 420
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir//vnd.google.location"

    .line 422
    :goto_0
    return-object v1

    :pswitch_1
    const-string v1, "vnd.android.cursor.item//vnd.google.location"

    goto :goto_0

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 488
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x1

    const-string v12, "NumberLocatorContentProvider"

    .line 178
    const-string v0, "NumberLocatorContentProvider"

    const-string v0, "onCreate ->getIpSettings"

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "IP_DIAL_SAVE"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->shardPreferences:Landroid/content/SharedPreferences;

    .line 180
    invoke-direct {p0}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->getIpSettings()V

    .line 181
    new-instance v10, Landroid/content/IntentFilter;

    const-string v0, "Intent_ACTION_SMART_IP_DIAL"

    invoke-direct {v10, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 183
    .local v10, intentFilter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "DB_VERSION"

    invoke-static {v0, v3}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 186
    .local v8, dbVersion:Ljava/lang/String;
    const-string v0, "NumberLocatorContentProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dbVersion="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider$DatabaseHelper;

    invoke-virtual {p0}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 191
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 193
    sget-boolean v0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->mNeedToUseNewWithAPK:Z

    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->replaceDb()V

    move v0, v13

    .line 216
    :goto_0
    return v0

    .line 200
    :cond_0
    const-string v1, "location,city_zone"

    .line 201
    .local v1, tables:Ljava/lang/String;
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "location.uuid_begin as phonenum"

    aput-object v0, v2, v4

    const-string v0, "city_zone.city as cityname"

    aput-object v0, v2, v13

    const/4 v0, 0x2

    const-string v3, "\'fixedphone\' as cardtype"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "city_zone.zone as areacode"

    aput-object v3, v2, v0

    .line 202
    .local v2, columns:[Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 203
    .local v11, sbselection:Ljava/lang/StringBuffer;
    const-string v0, "location.uuid_begin=\'"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    const-string v0, "1300000"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    const-string v0, "\' and location.city=city_zone.uuid"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    :try_start_0
    const-string v0, "NumberLocatorContentProvider"

    const-string v3, "db.query test"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v13

    .line 216
    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 213
    .local v9, ex:Ljava/lang/Exception;
    const-string v0, "NumberLocatorContentProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db.query ex:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-direct {p0}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->replaceDb()V

    goto :goto_1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "url"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 309
    const/4 v7, 0x0

    .line 312
    .local v7, ret:Landroid/database/Cursor;
    sget-object v9, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v9, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 313
    .local v5, match:I
    const-string v9, "NumberLocatorContentProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "match="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " uri="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    packed-switch v5, :pswitch_data_0

    .line 342
    :pswitch_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown URL "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 319
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Ljava/lang/String;

    sget-object v9, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->ipDialNumber:Ljava/lang/String;

    invoke-static {p2, v9}, Lzte/com/cn/numberlocator/NumberLocator;->checkInputNum(Ljava/lang/String;Ljava/lang/String;)Lzte/com/cn/numberlocator/NumberType;

    move-result-object v6

    .line 320
    .local v6, numbertype:Lzte/com/cn/numberlocator/NumberType;
    invoke-direct {p0, v6}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->handleNumber(Lzte/com/cn/numberlocator/NumberType;)Landroid/database/Cursor;

    move-result-object v7

    .line 345
    .end local v6           #numbertype:Lzte/com/cn/numberlocator/NumberType;
    :goto_0
    :pswitch_2
    if-nez v7, :cond_1

    .line 350
    :goto_1
    return-object v7

    .line 324
    .restart local p2
    :pswitch_3
    sget-object v9, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->mSettingsKeyArray:[Ljava/lang/String;

    array-length v4, v9

    .line 325
    .local v4, len:I
    const/4 v3, 0x0

    .line 326
    .local v3, key:Ljava/lang/String;
    const/4 v8, 0x0

    .line 327
    .local v8, value:Ljava/lang/String;
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v9, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->mSettingsKeyArray:[Ljava/lang/String;

    invoke-direct {v1, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 328
    .local v1, cursor:Landroid/database/MatrixCursor;
    new-array v0, v4, [Ljava/lang/String;

    .line 329
    .local v0, columnValues:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v4, :cond_0

    .line 331
    sget-object v9, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->mSettingsKeyArray:[Ljava/lang/String;

    aget-object v3, v9, v2

    .line 332
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v3}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 333
    aput-object v8, v0, v2

    .line 334
    const-string v9, "NumberLocatorContentProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "key = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " value="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 337
    :cond_0
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 338
    move-object v7, v1

    .line 339
    goto :goto_0

    .line 348
    .end local v0           #columnValues:[Ljava/lang/String;
    .end local v1           #cursor:Landroid/database/MatrixCursor;
    .end local v2           #i:I
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #len:I
    .end local v8           #value:Ljava/lang/String;
    .end local p2
    :cond_1
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-interface {v7, v9, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_1

    .line 314
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const-string v10, "NumberLocatorContentProvider"

    .line 431
    sget-object v8, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    .line 432
    .local v6, match:I
    const-string v8, "NumberLocatorContentProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insert match="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " uri="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    packed-switch v6, :pswitch_data_0

    .line 481
    :goto_0
    :pswitch_0
    const/4 v8, 0x0

    return v8

    .line 439
    :pswitch_1
    sget-object v8, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->mSettingsKeyArray:[Ljava/lang/String;

    array-length v5, v8

    .line 440
    .local v5, len:I
    const/4 v4, 0x0

    .line 441
    .local v4, key:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_1

    .line 443
    sget-object v8, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->mSettingsKeyArray:[Ljava/lang/String;

    aget-object v4, v8, v3

    .line 444
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 446
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v4, v9}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->putValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v8, "NumberLocatorContentProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "key = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 450
    :cond_1
    invoke-direct {p0}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->getIpSettings()V

    goto :goto_0

    .line 456
    .end local v3           #i:I
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #len:I
    :pswitch_2
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 457
    .local v0, context:Landroid/content/Context;
    iget-object v8, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 458
    const-string v8, "location.db"

    invoke-virtual {v0, v8}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 460
    const-string v8, "db_uri"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 463
    .local v7, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 464
    .local v2, fis:Ljava/io/InputStream;
    invoke-direct {p0, v2}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->copyDatabaseToDataPath(Ljava/io/InputStream;)V

    .line 465
    const-string v8, "DB_VERSION"

    const-string v9, "version"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v0, v8, v9}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->putValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    new-instance v8, Lzte/com/cn/numberlocator/NumberLocatorContentProvider$DatabaseHelper;

    invoke-direct {v8, v0}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 467
    iget-object v8, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    iput-object v8, p0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 468
    .end local v2           #fis:Ljava/io/InputStream;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 470
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 434
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
