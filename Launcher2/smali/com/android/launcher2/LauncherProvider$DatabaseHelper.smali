.class Lcom/android/launcher2/LauncherProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 261
    const-string v0, "launcher.db"

    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 262
    iput-object p1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 263
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    const/16 v1, 0x400

    invoke-direct {v0, p1, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 264
    return-void
.end method

.method private addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .locals 10
    .parameter "db"
    .parameter "values"
    .parameter "a"
    .parameter "packageManager"
    .parameter "intent"

    .prologue
    .line 590
    const/4 v7, 0x1

    invoke-virtual {p3, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 591
    .local v5, packageName:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, className:Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    .local v1, cn:Landroid/content/ComponentName;
    const/4 v7, 0x0

    invoke-virtual {p4, v1, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 604
    .local v3, info:Landroid/content/pm/ActivityInfo;
    :goto_0
    :try_start_1
    invoke-virtual {p5, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 605
    const/high16 v7, 0x1020

    invoke-virtual {p5, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 607
    const-string v7, "intent"

    const/4 v8, 0x0

    invoke-virtual {p5, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string v7, "title"

    invoke-virtual {v3, p4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-string v7, "itemType"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 610
    const-string v7, "iconPackage"

    invoke-virtual {p2, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string v7, "spanX"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 612
    const-string v7, "spanY"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 613
    const-string v7, "favorites"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 619
    const/4 v7, 0x1

    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v3           #info:Landroid/content/pm/ActivityInfo;
    :goto_1
    return v7

    .line 597
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 598
    .local v4, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-virtual {p4, v7}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 600
    .local v6, packages:[Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-direct {v1, v7, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    .restart local v1       #cn:Landroid/content/ComponentName;
    const/4 v7, 0x0

    invoke-virtual {p4, v1, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .restart local v3       #info:Landroid/content/pm/ActivityInfo;
    goto :goto_0

    .line 614
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v3           #info:Landroid/content/pm/ActivityInfo;
    .end local v4           #nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6           #packages:[Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 615
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "Launcher.LauncherProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to add favorite: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z
    .locals 6
    .parameter "db"
    .parameter "values"
    .parameter "cn"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 702
    const/4 v0, 0x0

    .line 703
    .local v0, allocatedAppWidgets:Z
    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 706
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :try_start_0
    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 708
    .local v1, appWidgetId:I
    const-string v4, "itemType"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 709
    const-string v4, "spanX"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 710
    const-string v4, "spanY"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 711
    const-string v4, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 712
    const-string v4, "favorites"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 714
    const/4 v0, 0x1

    .line 716
    invoke-virtual {v2, v1, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    .end local v1           #appWidgetId:I
    :goto_0
    return v0

    .line 717
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 718
    .local v3, ex:Ljava/lang/RuntimeException;
    const-string v4, "Launcher.LauncherProvider"

    const-string v5, "Problem allocating appWidgetId"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;)Z
    .locals 15
    .parameter "db"
    .parameter "values"
    .parameter "a"
    .parameter "packageManager"

    .prologue
    .line 669
    const/4 v3, 0x1

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 670
    .local v13, packageName:Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 672
    .local v9, className:Ljava/lang/String;
    if-eqz v13, :cond_0

    if-nez v9, :cond_1

    .line 673
    :cond_0
    const/4 v3, 0x0

    .line 697
    :goto_0
    return v3

    .line 676
    :cond_1
    const/4 v12, 0x1

    .line 677
    .local v12, hasPackage:Z
    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v13, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    .local v6, cn:Landroid/content/ComponentName;
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p4

    move-object v1, v6

    move v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    :goto_1
    if-eqz v12, :cond_2

    .line 692
    const/4 v3, 0x6

    const/4 v4, 0x0

    move-object/from16 v0, p3

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 693
    .local v7, spanX:I
    const/4 v3, 0x7

    const/4 v4, 0x0

    move-object/from16 v0, p3

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .local v8, spanY:I
    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 694
    invoke-direct/range {v3 .. v8}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z

    move-result v3

    goto :goto_0

    .line 680
    .end local v7           #spanX:I
    .end local v8           #spanY:I
    :catch_0
    move-exception v10

    .line 681
    .local v10, e:Ljava/lang/Exception;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v13, v3, v4

    move-object/from16 v0, p4

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 683
    .local v14, packages:[Ljava/lang/String;
    new-instance v6, Landroid/content/ComponentName;

    .end local v6           #cn:Landroid/content/ComponentName;
    const/4 v3, 0x0

    aget-object v3, v14, v3

    invoke-direct {v6, v3, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    .restart local v6       #cn:Landroid/content/ComponentName;
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p4

    move-object v1, v6

    move v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 686
    :catch_1
    move-exception v11

    .line 687
    .local v11, e1:Ljava/lang/Exception;
    const/4 v12, 0x0

    goto :goto_1

    .line 697
    .end local v10           #e:Ljava/lang/Exception;
    .end local v11           #e1:Ljava/lang/Exception;
    .end local v14           #packages:[Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .locals 1
    .parameter "db"
    .parameter "values"

    .prologue
    .line 653
    const/4 v0, 0x6

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)Z

    move-result v0

    return v0
.end method

.method private addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z
    .locals 3
    .parameter "db"
    .parameter "values"
    .parameter "a"

    .prologue
    const/4 v2, 0x1

    .line 578
    const-string v0, "title"

    const/16 v1, 0x9

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string v0, "itemType"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 580
    const-string v0, "spanX"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 581
    const-string v0, "spanY"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 582
    const-string v0, "favorites"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 583
    return v2
.end method

.method private addGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)Z
    .locals 3
    .parameter "db"
    .parameter "values"
    .parameter "gadgetId"

    .prologue
    .line 657
    invoke-static {p3}, Lcom/android/launcher2/gadget/GadgetFactory;->getInfo(I)Lcom/android/launcher2/gadget/GadgetInfo;

    move-result-object v0

    .line 658
    .local v0, info:Lcom/android/launcher2/gadget/GadgetInfo;
    const-string v1, "spanX"

    iget v2, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 659
    const-string v1, "spanY"

    iget v2, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 660
    const-string v1, "itemType"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 661
    const-string v1, "appWidgetId"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 662
    const-string v1, "favorites"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 663
    const/4 v1, 0x1

    return v1
.end method

.method private addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .locals 1
    .parameter "db"
    .parameter "values"

    .prologue
    .line 649
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)Z

    move-result v0

    return v0
.end method

.method private addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z
    .locals 11
    .parameter "db"
    .parameter "values"
    .parameter "a"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "Launcher.LauncherProvider"

    .line 726
    iget-object v6, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 728
    .local v3, r:Landroid/content/res/Resources;
    const/16 v6, 0x8

    invoke-virtual {p3, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 729
    .local v1, iconResId:I
    const/16 v6, 0x9

    invoke-virtual {p3, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 732
    .local v4, titleResId:I
    const/4 v5, 0x0

    .line 734
    .local v5, uri:Ljava/lang/String;
    const/16 v6, 0xa

    :try_start_0
    invoke-virtual {p3, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 735
    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 741
    .local v2, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    if-nez v4, :cond_1

    .line 742
    :cond_0
    const-string v6, "Launcher.LauncherProvider"

    const-string v6, "Shortcut is missing title or icon resource ID"

    invoke-static {v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 758
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return v6

    .line 736
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 737
    .local v0, e:Ljava/net/URISyntaxException;
    const-string v6, "Launcher.LauncherProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Shortcut has malformed uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 738
    goto :goto_0

    .line 746
    .end local v0           #e:Ljava/net/URISyntaxException;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_1
    const/high16 v6, 0x1000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 747
    const-string v6, "intent"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const-string v6, "title"

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const-string v6, "itemType"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 750
    const-string v6, "spanX"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 751
    const-string v6, "spanY"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 752
    const-string v6, "iconType"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 753
    const-string v6, "iconPackage"

    iget-object v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const-string v6, "iconResource"

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const-string v6, "favorites"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move v6, v9

    .line 758
    goto :goto_0
.end method

.method private createFavoritesTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 348
    const-string v0, "DROP TRIGGER IF EXISTS update_item_on_update_item;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 349
    const-string v0, "CREATE TRIGGER update_item_on_update_item  AFTER UPDATE of container ON favorites  WHEN (new.itemType == 0 OR new.itemType == 1) AND (new.container > 0) BEGIN   UPDATE favorites SET itemFlags = (((itemFlags >> 1) <<1) | (SELECT ((itemFlags>>1)&1) from favorites where _id==new.container))     WHERE _id==new._id;  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 351
    const-string v0, "DROP TRIGGER IF EXISTS update_item_on_update_home;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 352
    const-string v0, "CREATE TRIGGER update_item_on_update_home  AFTER UPDATE of container ON favorites  WHEN (new.itemType == 0 OR new.itemType == 1) AND (new.container <= 0) BEGIN   UPDATE favorites SET itemFlags = (((itemFlags >> 1) <<1) | 0)     WHERE _id==new._id;  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 354
    const-string v0, "DROP TRIGGER IF EXISTS update_item_on_update_folder;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 355
    const-string v0, "CREATE TRIGGER update_item_on_update_folder  AFTER UPDATE of itemFlags ON favorites  WHEN new.itemType == 2  BEGIN   UPDATE favorites SET itemFlags = (((itemFlags >> 1) <<1) | ((new.itemFlags>>1)&1))      WHERE container==new._id;  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method private createScreensTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .parameter "db"

    .prologue
    const/4 v13, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v1, "favorites"

    .line 359
    const-string v0, "DROP TABLE IF EXISTS screens"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 361
    const-string v0, "CREATE TABLE screens (_id INTEGER PRIMARY KEY,title TEXT,screenOrder INTEGER NOT NULL DEFAULT -1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 368
    const-string v0, "favorites"

    new-array v2, v13, [Ljava/lang/String;

    const-string v0, "MAX(screen)"

    aput-object v0, v2, v4

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 374
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/lit8 v8, v0, 0x1

    .line 376
    .local v8, count:I
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 377
    .local v12, values:Landroid/content/ContentValues;
    new-array v11, v8, [J

    .line 378
    .local v11, ids:[J
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v8, :cond_0

    .line 379
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 380
    const-string v0, "screenOrder"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 381
    const-string v0, "screens"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    aput-wide v0, v11, v10

    .line 378
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 383
    :cond_0
    sub-int v10, v8, v13

    :goto_1
    if-ltz v10, :cond_1

    .line 384
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 385
    const-string v0, "screen"

    aget-wide v1, v11, v10

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 386
    const-string v0, "favorites"

    const-string v1, "screen=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, v12, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 394
    .end local v8           #count:I
    .end local v10           #i:I
    .end local v11           #ids:[J
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_1
    if-eqz v9, :cond_2

    .line 395
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 398
    :cond_2
    return-void

    .line 394
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 395
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private loadFavorites(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 22
    .parameter "db"

    .prologue
    .line 508
    new-instance v10, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {v10, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 509
    .local v10, intent:Landroid/content/Intent;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v10, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 512
    .local v7, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 513
    .local v9, packageManager:Landroid/content/pm/PackageManager;
    const/16 v17, 0x0

    .line 515
    .local v17, i:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f05

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v19

    .line 516
    .local v19, parser:Landroid/content/res/XmlResourceParser;
    invoke-static/range {v19 .. v19}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v12

    .line 517
    .local v12, attrs:Landroid/util/AttributeSet;
    const-string v5, "favorites"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 519
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    .line 523
    .local v14, depth:I
    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v20

    .local v20, type:I
    const/4 v5, 0x3

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_1

    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v14, :cond_5

    :cond_1
    const/4 v5, 0x1

    move/from16 v0, v20

    move v1, v5

    if-eq v0, v1, :cond_5

    .line 525
    const/4 v5, 0x2

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_0

    .line 529
    const/4 v11, 0x0

    .line 530
    .local v11, added:Z
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v18

    .line 532
    .local v18, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object v5, v0

    sget-object v6, Lcom/android/launcher/R$styleable;->Favorite:[I

    invoke-virtual {v5, v12, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 534
    .local v8, a:Landroid/content/res/TypedArray;
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 535
    const/4 v5, 0x3

    invoke-virtual {v8, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 538
    .local v13, container:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 539
    const/16 v5, -0x64

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 540
    const-string v5, "screen"

    const/4 v6, 0x2

    invoke-virtual {v8, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v5, "cellX"

    const/4 v6, 0x4

    invoke-virtual {v8, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v5, "cellY"

    const/4 v6, 0x5

    invoke-virtual {v8, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    :cond_2
    const-string v5, "container"

    invoke-virtual {v7, v5, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v5, "default"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    .line 549
    .local v16, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "pref_default_screen"

    const-string v6, "screen"

    invoke-virtual {v7, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .end local v20           #type:I
    move-object/from16 v0, v16

    move-object v1, v5

    move-wide/from16 v2, v20

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 550
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 565
    .end local v16           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    :goto_1
    if-eqz v11, :cond_4

    add-int/lit8 v17, v17, 0x1

    .line 567
    :cond_4
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 569
    .end local v8           #a:Landroid/content/res/TypedArray;
    .end local v11           #added:Z
    .end local v12           #attrs:Landroid/util/AttributeSet;
    .end local v13           #container:Ljava/lang/String;
    .end local v14           #depth:I
    .end local v18           #name:Ljava/lang/String;
    .end local v19           #parser:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v5

    move-object v15, v5

    .line 570
    .local v15, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v5, "Launcher.LauncherProvider"

    const-string v6, "Got exception parsing favorites."

    invoke-static {v5, v6, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 574
    .end local v15           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_5
    :goto_2
    return v17

    .line 551
    .restart local v8       #a:Landroid/content/res/TypedArray;
    .restart local v11       #added:Z
    .restart local v12       #attrs:Landroid/util/AttributeSet;
    .restart local v13       #container:Ljava/lang/String;
    .restart local v14       #depth:I
    .restart local v18       #name:Ljava/lang/String;
    .restart local v19       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v20       #type:I
    :cond_6
    :try_start_1
    const-string v5, "favorite"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 552
    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v11

    goto :goto_1

    .line 553
    :cond_7
    const-string v5, "search"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 554
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v11

    goto :goto_1

    .line 555
    :cond_8
    const-string v5, "clock"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 556
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v11

    goto :goto_1

    .line 557
    :cond_9
    const-string v5, "appwidget"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 558
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;)Z

    move-result v11

    goto :goto_1

    .line 559
    :cond_a
    const-string v5, "shortcut"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 560
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move-object v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z

    move-result v11

    goto :goto_1

    .line 561
    :cond_b
    const-string v5, "folder"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 562
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move-object v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    goto/16 :goto_1

    .line 571
    .end local v8           #a:Landroid/content/res/TypedArray;
    .end local v11           #added:Z
    .end local v12           #attrs:Landroid/util/AttributeSet;
    .end local v13           #container:Ljava/lang/String;
    .end local v14           #depth:I
    .end local v18           #name:Ljava/lang/String;
    .end local v19           #parser:Landroid/content/res/XmlResourceParser;
    .end local v20           #type:I
    :catch_1
    move-exception v5

    move-object v15, v5

    .line 572
    .local v15, e:Ljava/io/IOException;
    const-string v5, "Launcher.LauncherProvider"

    const-string v6, "Got exception parsing favorites."

    invoke-static {v5, v6, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2
.end method

.method private normalizeIcons(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .parameter "db"

    .prologue
    const-string v12, "Launcher.LauncherProvider"

    .line 447
    const-string v11, "Launcher.LauncherProvider"

    const-string v11, "normalizing icons"

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 450
    const/4 v1, 0x0

    .line 451
    .local v1, c:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 453
    .local v10, update:Landroid/database/sqlite/SQLiteStatement;
    const/4 v9, 0x0

    .line 454
    .local v9, logged:Z
    :try_start_0
    const-string v11, "UPDATE favorites SET icon=? WHERE _id=?"

    invoke-virtual {p1, v11}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    .line 457
    const-string v11, "SELECT _id, icon FROM favorites WHERE iconType=1"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 460
    const-string v11, "_id"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 461
    .local v8, idIndex:I
    const-string v11, "icon"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 463
    .local v5, iconIndex:I
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 464
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 465
    .local v6, id:J
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 467
    .local v2, data:[B
    const/4 v11, 0x0

    :try_start_1
    array-length v12, v2

    invoke-static {v2, v11, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v11

    iget-object v12, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v11, v12}, Lcom/android/launcher2/Utilities;->resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 470
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 471
    const/4 v11, 0x1

    invoke-virtual {v10, v11, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 472
    invoke-static {v0}, Lcom/android/launcher2/ItemInfo;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 473
    if-eqz v2, :cond_1

    .line 474
    const/4 v11, 0x2

    invoke-virtual {v10, v11, v2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 475
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 477
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 479
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v11

    move-object v3, v11

    .line 480
    .local v3, e:Ljava/lang/Exception;
    if-nez v9, :cond_2

    .line 481
    :try_start_2
    const-string v11, "Launcher.LauncherProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed normalizing icon "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 485
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 483
    :cond_2
    const-string v11, "Launcher.LauncherProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Also failed normalizing icon "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 489
    .end local v2           #data:[B
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #iconIndex:I
    .end local v6           #id:J
    .end local v8           #idIndex:I
    :catch_1
    move-exception v11

    move-object v4, v11

    .line 490
    .local v4, ex:Landroid/database/SQLException;
    :try_start_3
    const-string v11, "Launcher.LauncherProvider"

    const-string v12, "Problem while allocating appWidgetIds for existing widgets"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 492
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 493
    if-eqz v10, :cond_3

    .line 494
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 496
    :cond_3
    if-eqz v1, :cond_4

    .line 497
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 500
    .end local v4           #ex:Landroid/database/SQLException;
    :cond_4
    :goto_2
    return-void

    .line 488
    .restart local v5       #iconIndex:I
    .restart local v8       #idIndex:I
    :cond_5
    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 492
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 493
    if-eqz v10, :cond_6

    .line 494
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 496
    :cond_6
    if-eqz v1, :cond_4

    .line 497
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 492
    .end local v5           #iconIndex:I
    .end local v8           #idIndex:I
    :catchall_0
    move-exception v11

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 493
    if-eqz v10, :cond_7

    .line 494
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 496
    :cond_7
    if-eqz v1, :cond_8

    .line 497
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v11
.end method

.method private sendAppWidgetResetNotify()V
    .locals 3

    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 274
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher2/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 275
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 281
    const-string v0, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 282
    const-string v0, "CREATE TABLE favorites (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,isShortcut INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB,uri TEXT,displayMode INTEGER,launchCount INTEGER NOT NULL DEFAULT 1,sortMode INTEGER,itemFlags INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 306
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createFavoritesTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 309
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 311
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->sendAppWidgetResetNotify()V

    .line 315
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 317
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createScreensTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 318
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/16 v3, 0x9

    .line 404
    move v1, p2

    .line 406
    .local v1, version:I
    const/4 v0, 0x0

    .line 408
    .local v0, needCreateTriggers:Z
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 412
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->normalizeIcons(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 413
    const/16 v1, 0x8

    .line 416
    :cond_0
    if-ge v1, v3, :cond_1

    .line 417
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createScreensTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 418
    const/16 v1, 0x9

    .line 421
    :cond_1
    if-ne v1, v3, :cond_2

    .line 422
    const-string v2, "ALTER TABLE favorites ADD COLUMN launchCount INTEGER NOT NULL DEFAULT 1"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 424
    const-string v2, "ALTER TABLE favorites ADD COLUMN sortMode INTEGER"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 426
    const/16 v1, 0xa

    .line 429
    :cond_2
    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 430
    const-string v2, "ALTER TABLE favorites ADD COLUMN itemFlags INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 432
    const/16 v1, 0xb

    .line 433
    const/4 v0, 0x1

    .line 436
    :cond_3
    if-eqz v0, :cond_4

    .line 437
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createFavoritesTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 440
    :cond_4
    if-eq v1, p3, :cond_5

    .line 441
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "Destroying all old data and re-create."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 444
    :cond_5
    return-void
.end method
