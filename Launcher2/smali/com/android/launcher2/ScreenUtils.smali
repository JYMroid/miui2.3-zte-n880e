.class Lcom/android/launcher2/ScreenUtils;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/ScreenUtils$1;,
        Lcom/android/launcher2/ScreenUtils$ScreenInfo;,
        Lcom/android/launcher2/ScreenUtils$CellInfo;,
        Lcom/android/launcher2/ScreenUtils$ScreensQuery;,
        Lcom/android/launcher2/ScreenUtils$AppPlaceQuery;,
        Lcom/android/launcher2/ScreenUtils$OccupidQuery;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    return-void
.end method

.method private static addToHomeScreen(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;J)V
    .locals 5
    .parameter "context"
    .parameter "info"
    .parameter "db"
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/ResolveInfo;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ScreenUtils$ScreenInfo;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p3, screens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ScreenUtils$ScreenInfo;>;"
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-ltz v2, :cond_1

    .line 266
    const-string v2, "ScreenUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating home screen item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-static {p2, p4, p5}, Lcom/android/launcher2/ScreenUtils;->verifyItemPosition(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    invoke-static {p0, p1}, Lcom/android/launcher2/ScreenUtils;->buildValuesForUpdate(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-static {p2, p4, p5, v2}, Lcom/android/launcher2/ScreenUtils;->updateFavorite(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    invoke-static {p0, p2, p3}, Lcom/android/launcher2/ScreenUtils;->findEmptyCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)Lcom/android/launcher2/ScreenUtils$CellInfo;

    move-result-object v0

    .line 275
    .local v0, cellInfo:Lcom/android/launcher2/ScreenUtils$CellInfo;
    if-eqz v0, :cond_0

    .line 279
    invoke-static {p0, p1, v0}, Lcom/android/launcher2/ScreenUtils;->buildValuesForInsert(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Lcom/android/launcher2/ScreenUtils$CellInfo;)Landroid/content/ContentValues;

    move-result-object v1

    .line 280
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "favorites"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method private static buildValuesForInsert(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Lcom/android/launcher2/ScreenUtils$CellInfo;)Landroid/content/ContentValues;
    .locals 7
    .parameter "context"
    .parameter "info"
    .parameter "cellInfo"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 355
    invoke-static {p0, p1}, Lcom/android/launcher2/ScreenUtils;->buildValuesForUpdate(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/content/ContentValues;

    move-result-object v0

    .line 356
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "itemType"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 357
    const-string v1, "container"

    const/16 v2, -0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 361
    const-string v1, "iconPackage"

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v1, "iconType"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 363
    const-string v1, "screen"

    iget-wide v2, p2, Lcom/android/launcher2/ScreenUtils$CellInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 364
    const-string v1, "cellX"

    iget v2, p2, Lcom/android/launcher2/ScreenUtils$CellInfo;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 365
    const-string v1, "cellY"

    iget v2, p2, Lcom/android/launcher2/ScreenUtils$CellInfo;->cellY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 366
    const-string v1, "spanX"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 367
    const-string v1, "spanY"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 368
    const-string v1, "ScreenUtils"

    const-string v2, "Adding new app %s to screen %d, pos (%d, %d)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "title"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    iget-wide v4, p2, Lcom/android/launcher2/ScreenUtils$CellInfo;->screenId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget v5, p2, Lcom/android/launcher2/ScreenUtils$CellInfo;->cellX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p2, Lcom/android/launcher2/ScreenUtils$CellInfo;->cellY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-object v0
.end method

.method private static buildValuesForUpdate(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/content/ContentValues;
    .locals 6
    .parameter "context"
    .parameter "info"

    .prologue
    .line 341
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 342
    .local v3, values:Landroid/content/ContentValues;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 345
    .local v2, packageName:Ljava/lang/String;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 346
    const/high16 v4, 0x1020

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 347
    const-string v4, "intent"

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, label:Ljava/lang/String;
    const-string v4, "title"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-object v3
.end method

.method private static deleteFavorite(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 5
    .parameter "db"
    .parameter "id"

    .prologue
    .line 144
    const-string v0, "favorites"

    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 148
    return-void
.end method

.method private static ensureEnoughScreensForCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;I)V
    .locals 5
    .parameter "context"
    .parameter "db"
    .parameter
    .parameter "screenOrder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ScreenUtils$ScreenInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, screens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ScreenUtils$ScreenInfo;>;"
    const/4 v4, 0x1

    .line 315
    add-int/lit8 v2, p3, 0x1

    const/16 v3, 0x12

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 316
    .local v1, screenCountNeeded:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 317
    sub-int v2, v1, v4

    if-ne v0, v2, :cond_0

    move v2, v4

    :goto_1
    invoke-static {p0, p1, v0, v2}, Lcom/android/launcher2/ScreenUtils;->insertScreen(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;IZ)Lcom/android/launcher2/ScreenUtils$ScreenInfo;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 319
    :cond_1
    return-void
.end method

.method static ensureEnoughScreensForItem(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;J)V
    .locals 4
    .parameter "context"
    .parameter "db"
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ScreenUtils$ScreenInfo;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p2, screens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ScreenUtils$ScreenInfo;>;"
    const-string v0, "favorites._id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/launcher2/ScreenUtils;->ensureEnoughScreensForItem(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method static ensureEnoughScreensForItem(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "db"
    .parameter
    .parameter "where"
    .parameter "whereArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ScreenUtils$ScreenInfo;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, screens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ScreenUtils$ScreenInfo;>;"
    const/4 v5, 0x0

    .line 291
    const-string v1, "favorites JOIN screens ON (screen=screens._id) "

    sget-object v2, Lcom/android/launcher2/ScreenUtils$AppPlaceQuery;->COLUMNS:[Ljava/lang/String;

    move-object v0, p1

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 299
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 310
    :goto_0
    return-void

    .line 304
    :cond_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcom/android/launcher2/ScreenUtils;->ensureEnoughScreensForCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static fillEmptyCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Landroid/content/ContentValues;)Z
    .locals 5
    .parameter "context"
    .parameter "db"
    .parameter
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ScreenUtils$ScreenInfo;",
            ">;",
            "Landroid/content/ContentValues;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, screens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ScreenUtils$ScreenInfo;>;"
    const/4 v4, 0x1

    .line 449
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/ScreenUtils;->findEmptyCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)Lcom/android/launcher2/ScreenUtils$CellInfo;

    move-result-object v0

    .line 450
    .local v0, cellInfo:Lcom/android/launcher2/ScreenUtils$CellInfo;
    if-nez v0, :cond_0

    .line 451
    const/4 v1, 0x0

    .line 460
    :goto_0
    return v1

    .line 455
    :cond_0
    const-string v1, "screen"

    iget-wide v2, v0, Lcom/android/launcher2/ScreenUtils$CellInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 456
    const-string v1, "cellX"

    iget v2, v0, Lcom/android/launcher2/ScreenUtils$CellInfo;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 457
    const-string v1, "cellY"

    iget v2, v0, Lcom/android/launcher2/ScreenUtils$CellInfo;->cellY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 458
    const-string v1, "spanX"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 459
    const-string v1, "spanY"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move v1, v4

    .line 460
    goto :goto_0
.end method

.method private static fillOccupied(Landroid/database/Cursor;[[ZII)V
    .locals 4
    .parameter "c"
    .parameter "occupied"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 588
    move v0, p2

    .local v0, x:I
    :goto_0
    const/4 v2, 0x3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    add-int/2addr v2, p2

    if-ge v0, v2, :cond_1

    .line 589
    move v1, p3

    .local v1, y:I
    :goto_1
    const/4 v2, 0x4

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    add-int/2addr v2, p3

    if-ge v1, v2, :cond_0

    .line 590
    aget-object v2, p1, v0

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 589
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 588
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 593
    .end local v1           #y:I
    :cond_1
    return-void
.end method

.method static findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "context"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 376
    .local v0, mainIntent:Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static findEmptyCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/launcher2/ScreenUtils$CellInfo;
    .locals 7
    .parameter "context"
    .parameter "db"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 477
    new-instance v0, Lcom/android/launcher2/ScreenUtils$CellInfo;

    invoke-direct {v0, v6}, Lcom/android/launcher2/ScreenUtils$CellInfo;-><init>(Lcom/android/launcher2/ScreenUtils$1;)V

    .line 478
    .local v0, cellInfo:Lcom/android/launcher2/ScreenUtils$CellInfo;
    iput v5, v0, Lcom/android/launcher2/ScreenUtils$CellInfo;->screenOrder:I

    .line 479
    iput v5, v0, Lcom/android/launcher2/ScreenUtils$CellInfo;->cellX:I

    .line 480
    iput v5, v0, Lcom/android/launcher2/ScreenUtils$CellInfo;->cellY:I

    .line 482
    const-string v3, "container=-100 AND screenOrder=(SELECT MAX(screenOrder) FROM favorites JOIN screens ON (screen=screens._id) )"

    invoke-static {p0, p1, v0, v3, v6}, Lcom/android/launcher2/ScreenUtils;->findEmptyCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher2/ScreenUtils$CellInfo;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/launcher2/ScreenUtils$CellInfo;

    move-result-object v0

    .line 483
    iget v3, v0, Lcom/android/launcher2/ScreenUtils$CellInfo;->screenOrder:I

    const/16 v4, 0x12

    if-ge v3, v4, :cond_0

    move-object v3, v0

    .line 499
    :goto_0
    return-object v3

    .line 487
    :cond_0
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    .line 490
    .local v2, selectionArgs:[Ljava/lang/String;
    const/16 v1, 0x11

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 491
    iput v1, v0, Lcom/android/launcher2/ScreenUtils$CellInfo;->screenOrder:I

    .line 492
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 493
    const-string v3, "container=-100 AND screenOrder=?"

    invoke-static {p0, p1, v0, v3, v2}, Lcom/android/launcher2/ScreenUtils;->findEmptyCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher2/ScreenUtils$CellInfo;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/launcher2/ScreenUtils$CellInfo;

    move-result-object v0

    .line 494
    iget v3, v0, Lcom/android/launcher2/ScreenUtils$CellInfo;->screenOrder:I

    if-ne v3, v1, :cond_1

    move-object v3, v0

    .line 495
    goto :goto_0

    .line 490
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    move-object v3, v6

    .line 499
    goto :goto_0
.end method

.method private static findEmptyCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher2/ScreenUtils$CellInfo;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/launcher2/ScreenUtils$CellInfo;
    .locals 8
    .parameter "context"
    .parameter "db"
    .parameter "guessed"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 526
    const-string v1, "favorites JOIN screens ON (screen=screens._id) "

    sget-object v2, Lcom/android/launcher2/ScreenUtils$AppPlaceQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "cellY ASC, cellX ASC"

    move-object v0, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 535
    .local p0, c:Landroid/database/Cursor;
    move-object p1, p2

    .line 538
    .local p1, cellInfo:Lcom/android/launcher2/ScreenUtils$CellInfo;
    const/4 p2, 0x4

    const/4 p3, 0x4

    :try_start_0
    filled-new-array {p2, p3}, [I

    .end local p2
    .end local p3
    move-result-object p2

    sget-object p3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p3, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[Z

    .line 539
    .end local p4
    .local p2, occupied:[[Z
    :cond_0
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 540
    const/4 p3, 0x0

    invoke-interface {p0, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    .line 541
    .local p3, screenOrder:I
    iget p4, p1, Lcom/android/launcher2/ScreenUtils$CellInfo;->screenOrder:I

    if-le p3, p4, :cond_4

    .line 542
    iput p3, p1, Lcom/android/launcher2/ScreenUtils$CellInfo;->screenOrder:I

    .line 548
    :cond_1
    const/4 p3, 0x1

    invoke-interface {p0, p3}, Landroid/database/Cursor;->getInt(I)I

    .end local p3           #screenOrder:I
    move-result p3

    const/4 p4, 0x2

    invoke-interface {p0, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    invoke-static {p0, p2, p3, p4}, Lcom/android/launcher2/ScreenUtils;->fillOccupied(Landroid/database/Cursor;[[ZII)V

    .line 551
    invoke-static {p2, p1}, Lcom/android/launcher2/ScreenUtils;->findEmptyCell([[ZLcom/android/launcher2/ScreenUtils$CellInfo;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 552
    iget p2, p1, Lcom/android/launcher2/ScreenUtils$CellInfo;->screenOrder:I

    .end local p2           #occupied:[[Z
    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/android/launcher2/ScreenUtils$CellInfo;->screenOrder:I

    .line 553
    const/4 p2, 0x0

    iput p2, p1, Lcom/android/launcher2/ScreenUtils$CellInfo;->cellX:I

    .line 554
    const/4 p2, 0x0

    iput p2, p1, Lcom/android/launcher2/ScreenUtils$CellInfo;->cellY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    :cond_2
    :goto_0
    if-eqz p0, :cond_3

    .line 560
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 564
    :cond_3
    return-object p1

    .line 543
    .restart local p2       #occupied:[[Z
    .restart local p3       #screenOrder:I
    :cond_4
    :try_start_1
    iget p4, p1, Lcom/android/launcher2/ScreenUtils$CellInfo;->screenOrder:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge p3, p4, :cond_1

    goto :goto_0

    .line 559
    .end local p2           #occupied:[[Z
    .end local p3           #screenOrder:I
    :catchall_0
    move-exception p1

    .end local p1           #cellInfo:Lcom/android/launcher2/ScreenUtils$CellInfo;
    if-eqz p0, :cond_5

    .line 560
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
.end method

.method static findEmptyCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)Lcom/android/launcher2/ScreenUtils$CellInfo;
    .locals 3
    .parameter "context"
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ScreenUtils$ScreenInfo;",
            ">;)",
            "Lcom/android/launcher2/ScreenUtils$CellInfo;"
        }
    .end annotation

    .prologue
    .line 464
    .local p2, screens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ScreenUtils$ScreenInfo;>;"
    invoke-static {p0, p1}, Lcom/android/launcher2/ScreenUtils;->findEmptyCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/launcher2/ScreenUtils$CellInfo;

    move-result-object v0

    .line 466
    .local v0, cellInfo:Lcom/android/launcher2/ScreenUtils$CellInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/launcher2/ScreenUtils$CellInfo;->screenOrder:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_1

    .line 467
    :cond_0
    const-string v1, "ScreenUtils"

    const-string v2, "Too many apps installed, not adding to home screen"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v1, 0x0

    .line 473
    .end local p0
    :goto_0
    return-object v1

    .line 471
    .restart local p0
    :cond_1
    iget v1, v0, Lcom/android/launcher2/ScreenUtils$CellInfo;->screenOrder:I

    invoke-static {p0, p1, p2, v1}, Lcom/android/launcher2/ScreenUtils;->ensureEnoughScreensForCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;I)V

    .line 472
    iget v1, v0, Lcom/android/launcher2/ScreenUtils$CellInfo;->screenOrder:I

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/ScreenUtils$ScreenInfo;

    iget-wide v1, p0, Lcom/android/launcher2/ScreenUtils$ScreenInfo;->screenId:J

    iput-wide v1, v0, Lcom/android/launcher2/ScreenUtils$CellInfo;->screenId:J

    move-object v1, v0

    .line 473
    goto :goto_0
.end method

.method private static findEmptyCell([[ZLcom/android/launcher2/ScreenUtils$CellInfo;)Z
    .locals 6
    .parameter "occupied"
    .parameter "cellInfo"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x4

    .line 568
    iget v0, p1, Lcom/android/launcher2/ScreenUtils$CellInfo;->cellX:I

    .local v0, x:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 569
    aget-object v2, p0, v0

    iget v3, p1, Lcom/android/launcher2/ScreenUtils$CellInfo;->cellY:I

    aget-boolean v2, v2, v3

    if-nez v2, :cond_0

    .line 570
    iput v0, p1, Lcom/android/launcher2/ScreenUtils$CellInfo;->cellX:I

    move v2, v5

    .line 584
    :goto_1
    return v2

    .line 568
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 574
    :cond_1
    iget v2, p1, Lcom/android/launcher2/ScreenUtils$CellInfo;->cellY:I

    add-int/lit8 v1, v2, 0x1

    .local v1, y:I
    :goto_2
    if-ge v1, v4, :cond_4

    .line 575
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v4, :cond_3

    .line 576
    aget-object v2, p0, v0

    aget-boolean v2, v2, v1

    if-nez v2, :cond_2

    .line 577
    iput v0, p1, Lcom/android/launcher2/ScreenUtils$CellInfo;->cellX:I

    .line 578
    iput v1, p1, Lcom/android/launcher2/ScreenUtils$CellInfo;->cellY:I

    move v2, v5

    .line 579
    goto :goto_1

    .line 575
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 574
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 584
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static insertScreen(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;IZ)Lcom/android/launcher2/ScreenUtils$ScreenInfo;
    .locals 6
    .parameter "context"
    .parameter "db"
    .parameter "order"
    .parameter "notify"

    .prologue
    .line 323
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 324
    .local v2, v:Landroid/content/ContentValues;
    const-string v3, "screenOrder"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    const-string v3, "screens"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 326
    .local v0, id:J
    const-string v3, "ScreenUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added screen id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " order "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    if-eqz p3, :cond_0

    .line 330
    sget-object v3, Lcom/android/launcher2/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v3}, Lcom/android/launcher2/ScreenUtils;->notifyChange(Landroid/content/Context;Landroid/net/Uri;)V

    .line 333
    :cond_0
    new-instance v3, Lcom/android/launcher2/ScreenUtils$ScreenInfo;

    invoke-direct {v3, v0, v1, p2}, Lcom/android/launcher2/ScreenUtils$ScreenInfo;-><init>(JI)V

    return-object v3
.end method

.method static loadScreens(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 10
    .parameter "db"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ScreenUtils$ScreenInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 503
    const-string v1, "screens"

    sget-object v2, Lcom/android/launcher2/ScreenUtils$ScreensQuery;->COLUMNS:[Ljava/lang/String;

    const-string v7, "screenOrder ASC"

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 512
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 513
    .local v9, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ScreenUtils$ScreenInfo;>;"
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    new-instance v0, Lcom/android/launcher2/ScreenUtils$ScreenInfo;

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/ScreenUtils$ScreenInfo;-><init>(JI)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 518
    .end local v9           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ScreenUtils$ScreenInfo;>;"
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_0

    .line 519
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 518
    .restart local v9       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ScreenUtils$ScreenInfo;>;"
    :cond_1
    if-eqz v8, :cond_2

    .line 519
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v9
.end method

.method private static notifyChange(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 337
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 338
    return-void
.end method

.method private static updateFavorite(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)V
    .locals 5
    .parameter "db"
    .parameter "id"
    .parameter "values"

    .prologue
    .line 137
    const-string v0, "favorites"

    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, p3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 141
    return-void
.end method

.method static updateHomeScreen(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Ljava/lang/String;Z)V
    .locals 10
    .parameter "context"
    .parameter "db"
    .parameter
    .parameter "packageName"
    .parameter "keepItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ScreenUtils$ScreenInfo;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, screens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ScreenUtils$ScreenInfo;>;"
    invoke-static {p0, p3}, Lcom/android/launcher2/ScreenUtils;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 26
    .local v9, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v8, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v0, "ScreenUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating home screen for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-string v1, "favorites"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "iconPackage=? AND itemType=0"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 37
    .local v0, cursor:Landroid/database/Cursor;
    :goto_0
    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .end local p0
    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    throw p0

    .line 41
    .restart local p0
    :cond_1
    if-eqz v0, :cond_2

    .line 42
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 46
    :cond_2
    const-string v0, "ScreenUtils"

    .end local v0           #cursor:Landroid/database/Cursor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found existing items: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, index:I
    if-eqz v9, :cond_5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 49
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    move v7, v0

    .end local v0           #index:I
    .local v7, index:I
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 50
    .local v1, info:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v4, v2

    :goto_2
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/android/launcher2/ScreenUtils;->addToHomeScreen(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;J)V

    .line 51
    add-int/lit8 v0, v7, 0x1

    .end local v7           #index:I
    .restart local v0       #index:I
    move v7, v0

    .end local v0           #index:I
    .restart local v7       #index:I
    goto :goto_1

    .line 50
    :cond_3
    const-wide/16 v2, -0x1

    move-wide v4, v2

    goto :goto_2

    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    :cond_4
    move p0, v7

    .line 56
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #index:I
    .end local p2           #screens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ScreenUtils$ScreenInfo;>;"
    .local p0, index:I
    :goto_3
    if-nez p4, :cond_8

    .line 58
    move p0, p0

    .end local p4
    .local p0, i:I
    :goto_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p0, p2, :cond_6

    .line 59
    const-string p2, "ScreenUtils"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removing useless home screen item "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/launcher2/ScreenUtils;->deleteFavorite(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 58
    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    .line 54
    .restart local v0       #index:I
    .local p0, context:Landroid/content/Context;
    .restart local p2       #screens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ScreenUtils$ScreenInfo;>;"
    .restart local p4
    :cond_5
    const-string p0, "ScreenUtils"

    .end local p0           #context:Landroid/content/Context;
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2           #screens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ScreenUtils$ScreenInfo;>;"
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No activities found for package "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v0

    .end local v0           #index:I
    .local p0, index:I
    goto :goto_3

    .line 64
    .end local p4
    .local p0, i:I
    :cond_6
    if-eqz v9, :cond_7

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result p0

    .end local p0           #i:I
    if-eqz p0, :cond_8

    .line 65
    :cond_7
    const-string p0, "favorites"

    const-string p2, "iconPackage=?"

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, p4, v0

    invoke-virtual {p1, p0, p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 68
    :cond_8
    return-void
.end method

.method static verifyItemPosition(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 1
    .parameter "db"
    .parameter "id"

    .prologue
    .line 162
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/android/launcher2/ScreenUtils;->verifyItemPosition(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static verifyItemPosition(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Z
    .locals 17
    .parameter "db"
    .parameter "id"
    .parameter "validPackages"

    .prologue
    .line 166
    const/4 v11, 0x0

    .line 168
    .local v11, c:Landroid/database/Cursor;
    const/4 v13, -0x1

    .local v13, count:I
    move/from16 v16, v13

    .local v16, sid:I
    move v15, v13

    .local v15, cy:I
    move v14, v13

    .local v14, cx:I
    move v12, v13

    .line 170
    .local v12, cid:I
    :try_start_0
    const-string v4, "favorites"

    sget-object v5, Lcom/android/launcher2/ScreenUtils$OccupidQuery;->COLUMNS:[Ljava/lang/String;

    const-string v6, "_id=?"

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 176
    .end local v11           #c:Landroid/database/Cursor;
    .local v3, c:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    move-result v5

    .line 177
    .end local v13           #count:I
    .local v5, count:I
    const/4 v4, 0x1

    if-ne v5, v4, :cond_18

    .line 178
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 179
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, -0x1

    .line 180
    .end local v12           #cid:I
    .local v4, cid:I
    :goto_0
    const/4 v6, 0x1

    :try_start_3
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, -0x1

    .line 181
    .end local v14           #cx:I
    .local v6, cx:I
    :goto_1
    const/4 v7, 0x2

    :try_start_4
    invoke-interface {v3, v7}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_c

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, -0x1

    .line 182
    .end local v15           #cy:I
    .local v7, cy:I
    :goto_2
    const/4 v8, 0x3

    :try_start_5
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_d

    move-result v8

    if-eqz v8, :cond_5

    const/4 v5, -0x1

    .end local v16           #sid:I
    .local v5, sid:I
    :goto_3
    move v8, v4

    .end local v4           #cid:I
    .local v8, cid:I
    move v4, v6

    .end local v6           #cx:I
    .local v4, cx:I
    move v6, v5

    .end local v5           #sid:I
    .local v6, sid:I
    move v5, v7

    .line 186
    .end local v7           #cy:I
    .local v5, cy:I
    :goto_4
    if-eqz v3, :cond_0

    .line 187
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 190
    :cond_0
    const/4 v11, 0x0

    .line 191
    .end local v3           #c:Landroid/database/Cursor;
    .restart local v11       #c:Landroid/database/Cursor;
    const/4 v12, -0x1

    .line 192
    .local v12, count:I
    const/16 v3, -0x65

    if-ne v8, v3, :cond_a

    .line 194
    :try_start_6
    const-string v4, "favorites"

    .end local v4           #cx:I
    sget-object v5, Lcom/android/launcher2/ScreenUtils$OccupidQuery;->COLUMNS:[Ljava/lang/String;

    .end local v5           #cy:I
    const-string v6, "container=?"

    .end local v6           #sid:I
    const/16 p3, 0x1

    move/from16 v0, p3

    new-array v0, v0, [Ljava/lang/String;

    move-object v7, v0

    .end local p3
    const/16 p3, 0x0

    const/16 v3, -0x65

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, p3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v8           #cid:I
    move-result-object p3

    .line 200
    .end local v11           #c:Landroid/database/Cursor;
    .local p3, c:Landroid/database/Cursor;
    :try_start_7
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    move-result v3

    .line 201
    .end local v12           #count:I
    .local v3, count:I
    const/4 v4, 0x6

    if-gt v3, v4, :cond_7

    .line 202
    const/16 p0, 0x1

    .line 208
    .end local p0
    if-eqz p3, :cond_1

    .line 209
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_1
    move/from16 p1, v3

    .end local v3           #count:I
    .local p1, count:I
    move/from16 p2, p0

    move-object/from16 p0, p3

    .line 261
    .end local p3           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    :goto_5
    return p2

    .line 179
    .local v3, c:Landroid/database/Cursor;
    .local v5, count:I
    .local v12, cid:I
    .restart local v14       #cx:I
    .restart local v15       #cy:I
    .restart local v16       #sid:I
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .local p1, id:J
    .local p3, validPackages:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    :try_start_8
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    move-result v4

    goto :goto_0

    .line 180
    .end local v12           #cid:I
    .local v4, cid:I
    :cond_3
    const/4 v6, 0x1

    :try_start_9
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    move-result v6

    goto :goto_1

    .line 181
    .end local v14           #cx:I
    .local v6, cx:I
    :cond_4
    const/4 v7, 0x2

    :try_start_a
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_c

    move-result v7

    goto :goto_2

    .line 182
    .end local v15           #cy:I
    .restart local v7       #cy:I
    :cond_5
    const/4 v8, 0x3

    :try_start_b
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_d

    move-result v5

    goto :goto_3

    .line 186
    .end local v3           #c:Landroid/database/Cursor;
    .end local v4           #cid:I
    .end local v5           #count:I
    .end local v6           #cx:I
    .end local v7           #cy:I
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v12       #cid:I
    .restart local v13       #count:I
    .restart local v14       #cx:I
    .restart local v15       #cy:I
    :catchall_0
    move-exception p0

    move-object/from16 v4, p0

    move/from16 p2, v13

    .end local v13           #count:I
    .end local p1           #id:J
    .local p2, count:I
    move v3, v15

    .end local v15           #cy:I
    .local v3, cy:I
    move/from16 p3, v14

    .end local v14           #cx:I
    .local p3, cx:I
    move/from16 p1, v12

    .end local v12           #cid:I
    .local p1, cid:I
    move-object/from16 p0, v11

    .end local v11           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    :goto_6
    if-eqz p0, :cond_6

    .line 187
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v4

    .line 204
    .end local v16           #sid:I
    .end local p2           #count:I
    .local v3, count:I
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .local p1, id:J
    .local p3, c:Landroid/database/Cursor;
    :cond_7
    :try_start_c
    invoke-static/range {p0 .. p2}, Lcom/android/launcher2/ScreenUtils;->deleteFavorite(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 205
    const/16 p0, 0x0

    .line 208
    .end local p0           #db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p3, :cond_8

    .line 209
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_8
    move/from16 p1, v3

    .end local v3           #count:I
    .local p1, count:I
    move/from16 p2, p0

    move-object/from16 p0, p3

    .end local p3           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto :goto_5

    .line 208
    .restart local v11       #c:Landroid/database/Cursor;
    .local v12, count:I
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .local p1, id:J
    :catchall_1
    move-exception p0

    move-object/from16 p2, p0

    move/from16 p1, v12

    .end local v12           #count:I
    .local p1, count:I
    move-object/from16 p0, v11

    .end local v11           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    :goto_7
    if-eqz p0, :cond_9

    .line 209
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    :cond_9
    throw p2

    .line 212
    .local v4, cx:I
    .local v5, cy:I
    .local v6, sid:I
    .restart local v8       #cid:I
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v12       #count:I
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .local p1, id:J
    .local p3, validPackages:Ljava/lang/String;
    :cond_a
    const/16 v3, -0x64

    if-ne v8, v3, :cond_12

    .line 213
    const/4 v3, -0x1

    if-eq v6, v3, :cond_b

    const/4 v3, -0x1

    if-eq v4, v3, :cond_b

    const/4 v3, -0x1

    if-ne v5, v3, :cond_c

    .line 214
    :cond_b
    const/16 p0, 0x0

    move/from16 p1, v12

    .end local v12           #count:I
    .local p1, count:I
    move/from16 p2, p0

    move-object/from16 p0, v11

    .end local v11           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto :goto_5

    .line 218
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v12       #count:I
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .local p1, id:J
    :cond_c
    :try_start_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT _id FROM favorites WHERE container=-100 AND screen="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " AND "

    .end local v6           #sid:I
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "cellX"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "<="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " AND "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "cellX"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "+"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "spanX"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ">"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    .end local v4           #cx:I
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cellY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cellY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "spanY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, sql:Ljava/lang/String;
    if-eqz p3, :cond_d

    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .end local v3           #sql:Ljava/lang/String;
    const-string v4, " AND iconPackage IN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 229
    .restart local v3       #sql:Ljava/lang/String;
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .end local v3           #sql:Ljava/lang/String;
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 230
    .restart local v3       #sql:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-result-object v3

    .line 231
    .end local v11           #c:Landroid/database/Cursor;
    .local v3, c:Landroid/database/Cursor;
    :try_start_e
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    move-result v4

    .line 233
    .end local v12           #count:I
    .local v4, count:I
    if-eqz v3, :cond_e

    .line 234
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 237
    :cond_e
    if-lez v4, :cond_f

    if-nez p3, :cond_f

    .line 238
    invoke-static/range {p0 .. p2}, Lcom/android/launcher2/ScreenUtils;->deleteFavorite(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 240
    :cond_f
    if-nez v4, :cond_11

    const/16 p0, 0x1

    .end local p0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_8
    move/from16 p1, v4

    .end local v4           #count:I
    .local p1, count:I
    move/from16 p2, p0

    move-object/from16 p0, v3

    .end local v3           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto/16 :goto_5

    .line 233
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v12       #count:I
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .local p1, id:J
    :catchall_2
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, v11

    .end local v11           #c:Landroid/database/Cursor;
    .end local p1           #id:J
    .local p0, c:Landroid/database/Cursor;
    :goto_9
    if-eqz p0, :cond_10

    .line 234
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    :cond_10
    throw p1

    .line 240
    .end local v12           #count:I
    .restart local v3       #c:Landroid/database/Cursor;
    .restart local v4       #count:I
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1       #id:J
    :cond_11
    const/16 p0, 0x0

    goto :goto_8

    .line 241
    .end local v3           #c:Landroid/database/Cursor;
    .local v4, cx:I
    .restart local v6       #sid:I
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v12       #count:I
    :cond_12
    if-lez v8, :cond_16

    .line 243
    :try_start_f
    const-string v4, "favorites"

    .end local v4           #cx:I
    sget-object v5, Lcom/android/launcher2/ScreenUtils$OccupidQuery;->COLUMNS:[Ljava/lang/String;

    .end local v5           #cy:I
    const-string v6, "_id=?"

    .end local v6           #sid:I
    const/16 p3, 0x1

    move/from16 v0, p3

    new-array v0, v0, [Ljava/lang/String;

    move-object v7, v0

    .end local p3           #validPackages:Ljava/lang/String;
    const/16 p3, 0x0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, p3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .end local v8           #cid:I
    move-result-object p3

    .line 249
    .end local v11           #c:Landroid/database/Cursor;
    .local p3, c:Landroid/database/Cursor;
    :try_start_10
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move-result v3

    .line 250
    .end local v12           #count:I
    .local v3, count:I
    if-nez v3, :cond_13

    .line 251
    :try_start_11
    invoke-static/range {p0 .. p2}, Lcom/android/launcher2/ScreenUtils;->deleteFavorite(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 254
    :cond_13
    if-eqz p3, :cond_14

    .line 255
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 261
    :cond_14
    const/16 p0, 0x1

    move v0, v3

    move/from16 v1, p0

    if-ne v0, v1, :cond_17

    .end local p0           #db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 p0, 0x1

    :goto_a
    move/from16 p1, v3

    .end local v3           #count:I
    .local p1, count:I
    move/from16 p2, p0

    move-object/from16 p0, p3

    .end local p3           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto/16 :goto_5

    .line 254
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v12       #count:I
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .local p1, id:J
    :catchall_3
    move-exception p0

    move-object/from16 p2, p0

    move/from16 p1, v12

    .end local v12           #count:I
    .local p1, count:I
    move-object/from16 p0, v11

    .end local v11           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    :goto_b
    if-eqz p0, :cond_15

    .line 255
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    :cond_15
    throw p2

    .line 259
    .restart local v4       #cx:I
    .restart local v5       #cy:I
    .restart local v6       #sid:I
    .restart local v8       #cid:I
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v12       #count:I
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .local p1, id:J
    .local p3, validPackages:Ljava/lang/String;
    :cond_16
    const/16 p0, 0x0

    move/from16 p1, v12

    .end local v12           #count:I
    .local p1, count:I
    move/from16 p2, p0

    move-object/from16 p0, v11

    .end local v11           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto/16 :goto_5

    .line 261
    .end local v4           #cx:I
    .end local v5           #cy:I
    .end local v6           #sid:I
    .end local v8           #cid:I
    .end local p0           #c:Landroid/database/Cursor;
    .restart local v3       #count:I
    .local p1, id:J
    .local p3, c:Landroid/database/Cursor;
    :cond_17
    const/16 p0, 0x0

    goto :goto_a

    .line 254
    .end local v3           #count:I
    .restart local v12       #count:I
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_4
    move-exception p0

    move-object/from16 p2, p0

    move/from16 p1, v12

    .end local v12           #count:I
    .local p1, count:I
    move-object/from16 p0, p3

    .end local p3           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto :goto_b

    .restart local v3       #count:I
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .local p1, id:J
    .restart local p3       #c:Landroid/database/Cursor;
    :catchall_5
    move-exception p0

    move-object/from16 p2, p0

    move/from16 p1, v3

    .end local v3           #count:I
    .local p1, count:I
    move-object/from16 p0, p3

    .end local p3           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto :goto_b

    .line 233
    .local v3, c:Landroid/database/Cursor;
    .restart local v5       #cy:I
    .restart local v8       #cid:I
    .restart local v12       #count:I
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .local p1, id:J
    .local p3, validPackages:Ljava/lang/String;
    :catchall_6
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, v3

    .end local v3           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto :goto_9

    .line 208
    .end local v5           #cy:I
    .end local v8           #cid:I
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .local p3, c:Landroid/database/Cursor;
    :catchall_7
    move-exception p0

    move-object/from16 p2, p0

    move/from16 p1, v12

    .end local v12           #count:I
    .local p1, count:I
    move-object/from16 p0, p3

    .end local p3           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto/16 :goto_7

    .local v3, count:I
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .local p1, id:J
    .restart local p3       #c:Landroid/database/Cursor;
    :catchall_8
    move-exception p0

    move-object/from16 p2, p0

    move/from16 p1, v3

    .end local v3           #count:I
    .local p1, count:I
    move-object/from16 p0, p3

    .end local p3           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto/16 :goto_7

    .line 186
    .local v3, c:Landroid/database/Cursor;
    .local v12, cid:I
    .restart local v13       #count:I
    .restart local v14       #cx:I
    .restart local v15       #cy:I
    .restart local v16       #sid:I
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .local p1, id:J
    .local p3, validPackages:Ljava/lang/String;
    :catchall_9
    move-exception p0

    move-object/from16 v4, p0

    move/from16 p2, v13

    .end local v13           #count:I
    .end local p1           #id:J
    .restart local p2       #count:I
    move/from16 p3, v14

    .end local v14           #cx:I
    .local p3, cx:I
    move/from16 p1, v12

    .end local v12           #cid:I
    .local p1, cid:I
    move-object/from16 p0, v3

    .end local v3           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    move v3, v15

    .end local v15           #cy:I
    .local v3, cy:I
    goto/16 :goto_6

    .end local p2           #count:I
    .local v3, c:Landroid/database/Cursor;
    .local v5, count:I
    .restart local v12       #cid:I
    .restart local v14       #cx:I
    .restart local v15       #cy:I
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .local p1, id:J
    .local p3, validPackages:Ljava/lang/String;
    :catchall_a
    move-exception p0

    move-object/from16 v4, p0

    move/from16 p2, v5

    .end local v5           #count:I
    .end local p1           #id:J
    .restart local p2       #count:I
    move/from16 p3, v14

    .end local v14           #cx:I
    .local p3, cx:I
    move/from16 p1, v12

    .end local v12           #cid:I
    .local p1, cid:I
    move-object/from16 p0, v3

    .end local v3           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    move v3, v15

    .end local v15           #cy:I
    .local v3, cy:I
    goto/16 :goto_6

    .end local p2           #count:I
    .local v3, c:Landroid/database/Cursor;
    .local v4, cid:I
    .restart local v5       #count:I
    .restart local v14       #cx:I
    .restart local v15       #cy:I
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .local p1, id:J
    .local p3, validPackages:Ljava/lang/String;
    :catchall_b
    move-exception p0

    move/from16 p2, v5

    .end local v5           #count:I
    .end local p1           #id:J
    .restart local p2       #count:I
    move/from16 p3, v14

    .end local v14           #cx:I
    .local p3, cx:I
    move/from16 p1, v4

    .end local v4           #cid:I
    .local p1, cid:I
    move-object/from16 v4, p0

    move-object/from16 p0, v3

    .end local v3           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    move v3, v15

    .end local v15           #cy:I
    .local v3, cy:I
    goto/16 :goto_6

    .end local p2           #count:I
    .local v3, c:Landroid/database/Cursor;
    .restart local v4       #cid:I
    .restart local v5       #count:I
    .local v6, cx:I
    .restart local v15       #cy:I
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .local p1, id:J
    .local p3, validPackages:Ljava/lang/String;
    :catchall_c
    move-exception p0

    move/from16 p2, v5

    .end local v5           #count:I
    .end local p1           #id:J
    .restart local p2       #count:I
    move/from16 p3, v6

    .end local v6           #cx:I
    .local p3, cx:I
    move/from16 p1, v4

    .end local v4           #cid:I
    .local p1, cid:I
    move-object/from16 v4, p0

    move-object/from16 p0, v3

    .end local v3           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    move v3, v15

    .end local v15           #cy:I
    .local v3, cy:I
    goto/16 :goto_6

    .end local p2           #count:I
    .local v3, c:Landroid/database/Cursor;
    .restart local v4       #cid:I
    .restart local v5       #count:I
    .restart local v6       #cx:I
    .restart local v7       #cy:I
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .local p1, id:J
    .local p3, validPackages:Ljava/lang/String;
    :catchall_d
    move-exception p0

    move/from16 p2, v5

    .end local v5           #count:I
    .end local p1           #id:J
    .restart local p2       #count:I
    move/from16 p3, v6

    .end local v6           #cx:I
    .local p3, cx:I
    move/from16 p1, v4

    .end local v4           #cid:I
    .local p1, cid:I
    move-object/from16 v4, p0

    move-object/from16 p0, v3

    .end local v3           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    move v3, v7

    .end local v7           #cy:I
    .local v3, cy:I
    goto/16 :goto_6

    .end local p2           #count:I
    .local v3, c:Landroid/database/Cursor;
    .restart local v5       #count:I
    .restart local v12       #cid:I
    .restart local v14       #cx:I
    .restart local v15       #cy:I
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .local p1, id:J
    .local p3, validPackages:Ljava/lang/String;
    :cond_18
    move/from16 v6, v16

    .end local v16           #sid:I
    .local v6, sid:I
    move v5, v15

    .end local v15           #cy:I
    .local v5, cy:I
    move v4, v14

    .end local v14           #cx:I
    .local v4, cx:I
    move v8, v12

    .end local v12           #cid:I
    .restart local v8       #cid:I
    goto/16 :goto_4
.end method
