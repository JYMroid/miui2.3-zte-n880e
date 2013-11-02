.class public Lzte/com/cn/numberlocator/NumberLocatorContentProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "NumberLocatorContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/numberlocator/NumberLocatorContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatabaseHelper"
.end annotation


# static fields
.field static dbVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    sput-object v0, Lzte/com/cn/numberlocator/NumberLocatorContentProvider$DatabaseHelper;->dbVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 113
    const-string v0, "location.db"

    const/4 v1, 0x0

    const-string v2, "DB_VERSION"

    #calls: Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v2}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->access$200(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lzte/com/cn/numberlocator/NumberLocatorContentProvider$DatabaseHelper;->dbVersion:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 114
    return-void

    .line 113
    :cond_0
    sget-object v2, Lzte/com/cn/numberlocator/NumberLocatorContentProvider$DatabaseHelper;->dbVersion:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 118
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "currentVersion"

    .prologue
    .line 122
    const-string v0, "NumberLocatorContentProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DatabaseHelper onUpdate: oldVer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentVer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    if-eq p2, p3, :cond_0

    .line 125
    const/4 v0, 0x1

    invoke-static {v0}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->access$302(Z)Z

    .line 127
    :cond_0
    return-void
.end method
