.class public Lcom/android/phone/CallRecordTime;
.super Landroid/os/Handler;
.source "CallRecordTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallRecordTime$CheckSpaceCallback;,
        Lcom/android/phone/CallRecordTime$PeriodicTimerCallback;,
        Lcom/android/phone/CallRecordTime$OnTickListener;
    }
.end annotation


# static fields
.field private static CallRecordDuration:J = 0x0L

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE/CallRecordTime"

.field private static final MIN_STORAGE_VALUE:J = 0xf000L

.field private static final SAMPLE_PREFIX:Ljava/lang/String; = "/call"

.field private static mRecordBeginTime:J


# instance fields
.field private mCheckSpaceCallback:Lcom/android/phone/CallRecordTime$CheckSpaceCallback;

.field private mCheckSpaceTimerRunning:Z

.field private mInterval:J

.field private mLastReportedTime:J

.field private mListener:Lcom/android/phone/CallRecordTime$OnTickListener;

.field private mRecorder:Landroid/media/MediaRecorder;

.field private mSampleFile:Ljava/io/File;

.field private mTimerCallback:Lcom/android/phone/CallRecordTime$PeriodicTimerCallback;

.field private mTimerRunning:Z


# direct methods
.method public constructor <init>(Lcom/android/phone/CallRecordTime$OnTickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 76
    iput-object v0, p0, Lcom/android/phone/CallRecordTime;->mSampleFile:Ljava/io/File;

    .line 77
    iput-object v0, p0, Lcom/android/phone/CallRecordTime;->mRecorder:Landroid/media/MediaRecorder;

    .line 84
    iput-object p1, p0, Lcom/android/phone/CallRecordTime;->mListener:Lcom/android/phone/CallRecordTime$OnTickListener;

    .line 85
    new-instance v0, Lcom/android/phone/CallRecordTime$PeriodicTimerCallback;

    invoke-direct {v0, p0}, Lcom/android/phone/CallRecordTime$PeriodicTimerCallback;-><init>(Lcom/android/phone/CallRecordTime;)V

    iput-object v0, p0, Lcom/android/phone/CallRecordTime;->mTimerCallback:Lcom/android/phone/CallRecordTime$PeriodicTimerCallback;

    .line 87
    new-instance v0, Lcom/android/phone/CallRecordTime$CheckSpaceCallback;

    invoke-direct {v0, p0}, Lcom/android/phone/CallRecordTime$CheckSpaceCallback;-><init>(Lcom/android/phone/CallRecordTime;)V

    iput-object v0, p0, Lcom/android/phone/CallRecordTime;->mCheckSpaceCallback:Lcom/android/phone/CallRecordTime$CheckSpaceCallback;

    .line 89
    return-void
.end method

.method static synthetic access$002(Lcom/android/phone/CallRecordTime;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/phone/CallRecordTime;->mTimerRunning:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/phone/CallRecordTime;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/phone/CallRecordTime;->mCheckSpaceTimerRunning:Z

    return p1
.end method

.method private addToMediaDB(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 14
    .parameter "context"
    .parameter "file"

    .prologue
    .line 286
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 287
    .local v7, res:Landroid/content/res/Resources;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 289
    .local v4, cv:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 290
    .local v2, current:J
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    .line 296
    .local v5, modDate:J
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 300
    .local v10, title:Ljava/lang/String;
    const-string v11, "is_music"

    const-string v12, "0"

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v11, "title"

    invoke-virtual {v4, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v11, "_data"

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v11, "date_added"

    const-wide/16 v12, 0x3e8

    div-long v12, v2, v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    const-string v11, "date_modified"

    const-wide/16 v12, 0x3e8

    div-long v12, v5, v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 306
    const-string v11, "mime_type"

    const-string v12, "audio/amr"

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v11, "artist"

    const v12, 0x7f0c0005

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v11, "album"

    const v12, 0x7f0c0005

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v11, "_size"

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 313
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Inserting audio record: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/CallRecordTime;->log(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 315
    .local v8, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 317
    .local v1, base:Landroid/net/Uri;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ContentURI: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/CallRecordTime;->log(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v8, v1, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 319
    .local v9, result:Landroid/net/Uri;
    if-nez v9, :cond_0

    .line 320
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-direct {v11, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v12, 0x7f0c0005

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0c0005

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x104000a

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 326
    const/4 v11, 0x0

    .line 337
    :goto_0
    return-object v11

    .line 328
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/CallRecordTime;->getPlaylistId(Landroid/content/Context;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    .line 329
    invoke-direct {p0, p1, v8}, Lcom/android/phone/CallRecordTime;->createPlaylist(Landroid/content/Context;Landroid/content/ContentResolver;)Landroid/net/Uri;

    .line 331
    :cond_1
    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 332
    .local v0, audioId:I
    invoke-direct {p0, p1}, Lcom/android/phone/CallRecordTime;->getPlaylistId(Landroid/content/Context;)I

    move-result v11

    int-to-long v11, v11

    invoke-direct {p0, v8, v0, v11, v12}, Lcom/android/phone/CallRecordTime;->addToPlaylist(Landroid/content/ContentResolver;IJ)V

    .line 336
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v11, v12, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move-object v11, v9

    .line 337
    goto :goto_0
.end method

.method private addToPlaylist(Landroid/content/ContentResolver;IJ)V
    .locals 10
    .parameter "resolver"
    .parameter "audioId"
    .parameter "playlistId"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 402
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v9

    .line 405
    .local v2, cols:[Ljava/lang/String;
    const-string v0, "external"

    invoke-static {v0, p3, p4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    .line 406
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 407
    .local v7, cur:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 408
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 409
    .local v6, base:I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 410
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 411
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "play_order"

    add-int v3, v6, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 412
    const-string v0, "audio_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 413
    invoke-virtual {p1, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 414
    return-void
.end method

.method private checkSpaceAvailable()V
    .locals 9

    .prologue
    .line 494
    iget-object v5, p0, Lcom/android/phone/CallRecordTime;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v5, :cond_0

    .line 495
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {p0}, Lcom/android/phone/CallRecordTime;->getSavePath()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 496
    .local v4, fs:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v2, v5

    .line 497
    .local v2, blocks:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v0, v5

    .line 498
    .local v0, blockSize:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkSpaceAvailable-blocks = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,blockSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/CallRecordTime;->log(Ljava/lang/String;)V

    .line 500
    const-wide/32 v5, 0xf000

    mul-long v7, v2, v0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 501
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/phone/InCallScreen;->onRecordEnd(Z)V

    .line 504
    .end local v0           #blockSize:J
    .end local v2           #blocks:J
    .end local v4           #fs:Landroid/os/StatFs;
    :cond_0
    return-void
.end method

.method private createPlaylist(Landroid/content/Context;Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 5
    .parameter "context"
    .parameter "resolver"

    .prologue
    const v4, 0x7f0c0005

    .line 368
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 369
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 371
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 372
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 379
    :cond_0
    return-object v1
.end method

.method private getPlaylistId(Landroid/content/Context;)I
    .locals 11
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 344
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 345
    .local v2, uri:Landroid/net/Uri;
    new-array v3, v1, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v10

    .line 346
    .local v3, ids:[Ljava/lang/String;
    const-string v9, "name=?"

    .line 347
    .local v9, where:Ljava/lang/String;
    new-array v5, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    .line 348
    .local v5, args:[Ljava/lang/String;
    const-string v4, "name=?"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/CallRecordTime;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 349
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 350
    const-string v0, "query returns null"

    invoke-static {v0}, Lcom/android/phone/CallRecordTime;->log(Ljava/lang/String;)V

    .line 351
    const/4 v0, -0x1

    .line 361
    :goto_0
    return v0

    .line 353
    :cond_0
    const/4 v8, -0x1

    .line 354
    .local v8, id:I
    if-eqz v7, :cond_1

    .line 355
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 356
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 357
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 360
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 361
    goto :goto_0
.end method

.method public static grandFullFilePermission(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    const/4 v2, -0x1

    .line 486
    const/16 v1, 0x1ff

    invoke-static {p0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v0

    .line 488
    .local v0, i:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "grandFullFilePermission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " full permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallRecordTime;->log(Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 137
    const-string v0, "PHONE/CallRecordTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CallRecordTime] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method private query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v7, 0x0

    .line 387
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 388
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 393
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_0
    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 391
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 392
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    move-object v6, v1

    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    move-object v1, v7

    .line 393
    goto :goto_0
.end method

.method private updateElapsedTime()V
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/phone/CallRecordTime;->mListener:Lcom/android/phone/CallRecordTime$OnTickListener;

    if-eqz v0, :cond_0

    .line 131
    sget-wide v0, Lcom/android/phone/CallRecordTime;->CallRecordDuration:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/phone/CallRecordTime;->CallRecordDuration:J

    .line 132
    iget-object v0, p0, Lcom/android/phone/CallRecordTime;->mListener:Lcom/android/phone/CallRecordTime$OnTickListener;

    sget-wide v1, Lcom/android/phone/CallRecordTime;->CallRecordDuration:J

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallRecordTime$OnTickListener;->onTickForCallRecordTimeElapsed(J)V

    .line 134
    :cond_0
    return-void
.end method


# virtual methods
.method cancelCheckSpaceTimer()V
    .locals 1

    .prologue
    .line 545
    const-string v0, "cancelCheckSpaceTimer()..."

    invoke-static {v0}, Lcom/android/phone/CallRecordTime;->log(Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/android/phone/CallRecordTime;->mCheckSpaceCallback:Lcom/android/phone/CallRecordTime$CheckSpaceCallback;

    invoke-virtual {p0, v0}, Lcom/android/phone/CallRecordTime;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 547
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallRecordTime;->mCheckSpaceTimerRunning:Z

    .line 548
    return-void
.end method

.method cancelTimer()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/phone/CallRecordTime;->mTimerCallback:Lcom/android/phone/CallRecordTime$PeriodicTimerCallback;

    invoke-virtual {p0, v0}, Lcom/android/phone/CallRecordTime;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallRecordTime;->mTimerRunning:Z

    .line 127
    return-void
.end method

.method checkSpaceUpdateTimer()V
    .locals 9

    .prologue
    .line 518
    iget-boolean v5, p0, Lcom/android/phone/CallRecordTime;->mCheckSpaceTimerRunning:Z

    if-nez v5, :cond_1

    .line 519
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/phone/CallRecordTime;->mCheckSpaceTimerRunning:Z

    .line 521
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 522
    .local v3, now:J
    iget-wide v5, p0, Lcom/android/phone/CallRecordTime;->mLastReportedTime:J

    iget-wide v7, p0, Lcom/android/phone/CallRecordTime;->mInterval:J

    add-long v1, v5, v7

    .line 524
    .local v1, nextReport:J
    :goto_0
    cmp-long v5, v3, v1

    if-ltz v5, :cond_0

    .line 525
    iget-wide v5, p0, Lcom/android/phone/CallRecordTime;->mInterval:J

    add-long/2addr v1, v5

    goto :goto_0

    .line 529
    :cond_0
    iget-object v5, p0, Lcom/android/phone/CallRecordTime;->mCheckSpaceCallback:Lcom/android/phone/CallRecordTime$CheckSpaceCallback;

    invoke-virtual {p0, v5, v1, v2}, Lcom/android/phone/CallRecordTime;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 533
    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/CallRecordTime;->checkSpaceAvailable()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    .end local v1           #nextReport:J
    .end local v3           #now:J
    :cond_1
    :goto_1
    return-void

    .line 534
    .restart local v1       #nextReport:J
    .restart local v3       #now:J
    :catch_0
    move-exception v0

    .line 535
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v5, "checkSpaceAvailable is IllegalArgumentException"

    invoke-static {v5}, Lcom/android/phone/CallRecordTime;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public diskExsitAvailable()Z
    .locals 2

    .prologue
    .line 255
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public diskLocalSpaceAvailable()Z
    .locals 10

    .prologue
    .line 444
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    .line 445
    .local v5, localDirectory:Ljava/io/File;
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 447
    .local v4, fs:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v2, v6

    .line 448
    .local v2, blocks:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    .line 449
    .local v0, blockSize:J
    mul-long v6, v2, v0

    const-wide/32 v8, 0xf000

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public diskPhysicalExsitAvailable()Z
    .locals 2

    .prologue
    .line 432
    invoke-static {}, Landroid/os/Environment;->getSecondaryExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public diskPhysicalSpaceAvailable()Z
    .locals 10

    .prologue
    .line 435
    invoke-static {}, Landroid/os/Environment;->getSecondaryExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 436
    .local v0, SDCardDirectory:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 438
    .local v5, fs:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v3, v6

    .line 439
    .local v3, blocks:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v1, v6

    .line 440
    .local v1, blockSize:J
    mul-long v6, v3, v1

    const-wide/32 v8, 0xf000

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public diskSpaceAvailable()Z
    .locals 10

    .prologue
    .line 258
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 259
    .local v0, SDCardDirectory:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 261
    .local v5, fs:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v3, v6

    .line 262
    .local v3, blocks:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v1, v6

    .line 263
    .local v1, blockSize:J
    mul-long v6, v3, v1

    const-wide/32 v8, 0xf000

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public getSavePath()Ljava/io/File;
    .locals 4

    .prologue
    .line 453
    const/4 v0, 0x0

    .line 454
    .local v0, path:Ljava/io/File;
    invoke-virtual {p0}, Lcom/android/phone/CallRecordTime;->is4gNoSDCard()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 455
    const-string v2, "getSavePath-is4gNoSDCard=ture"

    invoke-static {v2}, Lcom/android/phone/CallRecordTime;->log(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0}, Lcom/android/phone/CallRecordTime;->diskExsitAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 457
    const-string v2, "getSavePath-diskExsitAvailable=ture"

    invoke-static {v2}, Lcom/android/phone/CallRecordTime;->log(Ljava/lang/String;)V

    .line 458
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 473
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Voice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 474
    .local v1, sampleFile:Ljava/io/File;
    const/4 v0, 0x0

    .line 475
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 477
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallRecordTime;->grandFullFilePermission(Ljava/lang/String;)V

    .line 479
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSavePath-path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallRecordTime;->log(Ljava/lang/String;)V

    .line 480
    return-object v1

    .line 460
    .end local v1           #sampleFile:Ljava/io/File;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getOemStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 462
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CallRecordTime;->is8gNoSDCard()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 463
    const-string v2, "getSavePath-is8gNoSDCard=ture"

    invoke-static {v2}, Lcom/android/phone/CallRecordTime;->log(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p0}, Lcom/android/phone/CallRecordTime;->diskPhysicalExsitAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 465
    const-string v2, "getSavePath-diskPhysicalExsitAvailable=ture"

    invoke-static {v2}, Lcom/android/phone/CallRecordTime;->log(Ljava/lang/String;)V

    .line 466
    invoke-static {}, Landroid/os/Environment;->getSecondaryExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 468
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 471
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public is4gNoSDCard()Z
    .locals 2

    .prologue
    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is4gNoSDCard-="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->isOemStorageEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallRecordTime;->log(Ljava/lang/String;)V

    .line 421
    invoke-static {}, Landroid/os/Environment;->isOemStorageEnabled()Z

    move-result v0

    return v0
.end method

.method public is8gNoSDCard()Z
    .locals 2

    .prologue
    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is8gNoSDCard-="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->isSecondaryExternalStorageEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallRecordTime;->log(Ljava/lang/String;)V

    .line 427
    invoke-static {}, Landroid/os/Environment;->isSecondaryExternalStorageEnabled()Z

    move-result v0

    return v0
.end method

.method periodicUpdateTimer()V
    .locals 8

    .prologue
    .line 152
    iget-boolean v4, p0, Lcom/android/phone/CallRecordTime;->mTimerRunning:Z

    if-nez v4, :cond_1

    .line 153
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/phone/CallRecordTime;->mTimerRunning:Z

    .line 155
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 156
    .local v2, now:J
    iget-wide v4, p0, Lcom/android/phone/CallRecordTime;->mLastReportedTime:J

    iget-wide v6, p0, Lcom/android/phone/CallRecordTime;->mInterval:J

    add-long v0, v4, v6

    .line 158
    .local v0, nextReport:J
    :goto_0
    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    .line 159
    iget-wide v4, p0, Lcom/android/phone/CallRecordTime;->mInterval:J

    add-long/2addr v0, v4

    goto :goto_0

    .line 163
    :cond_0
    iget-object v4, p0, Lcom/android/phone/CallRecordTime;->mTimerCallback:Lcom/android/phone/CallRecordTime$PeriodicTimerCallback;

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/phone/CallRecordTime;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 164
    iput-wide v0, p0, Lcom/android/phone/CallRecordTime;->mLastReportedTime:J

    .line 166
    invoke-direct {p0}, Lcom/android/phone/CallRecordTime;->updateElapsedTime()V

    .line 170
    .end local v0           #nextReport:J
    .end local v2           #now:J
    :cond_1
    return-void
.end method

.method reset()V
    .locals 4

    .prologue
    .line 93
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/phone/CallRecordTime;->CallRecordDuration:J

    .line 94
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/phone/CallRecordTime;->mInterval:J

    .line 95
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/phone/CallRecordTime;->mInterval:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/phone/CallRecordTime;->mLastReportedTime:J

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/phone/CallRecordTime;->mRecordBeginTime:J

    .line 98
    return-void
.end method

.method public saveSample(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 269
    const/4 v1, 0x0

    .line 271
    .local v1, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallRecordTime;->mSampleFile:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 272
    iget-object v2, p0, Lcom/android/phone/CallRecordTime;->mSampleFile:Ljava/io/File;

    invoke-direct {p0, p1, v2}, Lcom/android/phone/CallRecordTime;->addToMediaDB(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 277
    :cond_0
    if-nez v1, :cond_1

    .line 280
    :cond_1
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 275
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method

.method public startRecording(Ljava/lang/String;)Z
    .locals 10
    .parameter "storePath"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 173
    iget-object v4, p0, Lcom/android/phone/CallRecordTime;->mSampleFile:Ljava/io/File;

    if-nez v4, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/android/phone/CallRecordTime;->getSavePath()Ljava/io/File;

    move-result-object v1

    .line 178
    .local v1, sampleDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_0

    .line 179
    new-instance v1, Ljava/io/File;

    .end local v1           #sampleDir:Ljava/io/File;
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .restart local v1       #sampleDir:Ljava/io/File;
    const-string v4, "startRecording !sampleDir.canWrite()"

    invoke-static {v4}, Lcom/android/phone/CallRecordTime;->log(Ljava/lang/String;)V

    .line 183
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sampleDir.getAbsolutePath() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CallRecordTime;->log(Ljava/lang/String;)V

    .line 185
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 186
    .local v2, time:Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 187
    const-string v4, "%m%d%H%M%S"

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, timeStr:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timeStr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CallRecordTime;->log(Ljava/lang/String;)V

    .line 190
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/call"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".amr"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/phone/CallRecordTime;->mSampleFile:Ljava/io/File;

    .line 193
    .end local v1           #sampleDir:Ljava/io/File;
    .end local v2           #time:Landroid/text/format/Time;
    .end local v3           #timeStr:Ljava/lang/String;
    :cond_1
    new-instance v4, Landroid/media/MediaRecorder;

    invoke-direct {v4}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v4, p0, Lcom/android/phone/CallRecordTime;->mRecorder:Landroid/media/MediaRecorder;

    .line 194
    iget-object v4, p0, Lcom/android/phone/CallRecordTime;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 195
    iget-object v4, p0, Lcom/android/phone/CallRecordTime;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 196
    iget-object v4, p0, Lcom/android/phone/CallRecordTime;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v9}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 197
    iget-object v4, p0, Lcom/android/phone/CallRecordTime;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/android/phone/CallRecordTime;->mSampleFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 201
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/CallRecordTime;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :try_start_1
    iget-object v4, p0, Lcom/android/phone/CallRecordTime;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move v4, v9

    .line 225
    :goto_0
    return v4

    .line 202
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 203
    .local v0, exception:Ljava/io/IOException;
    const-string v4, "startRecording prepare IOException"

    invoke-static {v4}, Lcom/android/phone/CallRecordTime;->log(Ljava/lang/String;)V

    .line 204
    iget-object v4, p0, Lcom/android/phone/CallRecordTime;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->reset()V

    .line 205
    iget-object v4, p0, Lcom/android/phone/CallRecordTime;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->release()V

    .line 206
    iput-object v7, p0, Lcom/android/phone/CallRecordTime;->mRecorder:Landroid/media/MediaRecorder;

    .line 208
    iput-object v7, p0, Lcom/android/phone/CallRecordTime;->mSampleFile:Ljava/io/File;

    move v4, v8

    .line 210
    goto :goto_0

    .line 215
    .end local v0           #exception:Ljava/io/IOException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 216
    .local v0, exception:Ljava/lang/RuntimeException;
    const-string v4, "mRecorder.start() failed "

    invoke-static {v4}, Lcom/android/phone/CallRecordTime;->log(Ljava/lang/String;)V

    .line 217
    iget-object v4, p0, Lcom/android/phone/CallRecordTime;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->reset()V

    .line 218
    iget-object v4, p0, Lcom/android/phone/CallRecordTime;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->release()V

    .line 219
    iput-object v7, p0, Lcom/android/phone/CallRecordTime;->mRecorder:Landroid/media/MediaRecorder;

    .line 221
    iput-object v7, p0, Lcom/android/phone/CallRecordTime;->mSampleFile:Ljava/io/File;

    move v4, v8

    .line 223
    goto :goto_0
.end method

.method stepSet()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 103
    iput-wide v6, p0, Lcom/android/phone/CallRecordTime;->mInterval:J

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/phone/CallRecordTime;->mInterval:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/phone/CallRecordTime;->mLastReportedTime:J

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 107
    .local v0, now:J
    sget-wide v2, Lcom/android/phone/CallRecordTime;->mRecordBeginTime:J

    sub-long v2, v0, v2

    div-long/2addr v2, v6

    sput-wide v2, Lcom/android/phone/CallRecordTime;->CallRecordDuration:J

    .line 109
    return-void
.end method

.method stepSetForV9()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 114
    iput-wide v6, p0, Lcom/android/phone/CallRecordTime;->mInterval:J

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/phone/CallRecordTime;->mInterval:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/phone/CallRecordTime;->mLastReportedTime:J

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 118
    .local v0, now:J
    sget-wide v2, Lcom/android/phone/CallRecordTime;->mRecordBeginTime:J

    sub-long v2, v0, v2

    div-long/2addr v2, v6

    sput-wide v2, Lcom/android/phone/CallRecordTime;->CallRecordDuration:J

    .line 119
    sget-wide v2, Lcom/android/phone/CallRecordTime;->CallRecordDuration:J

    sget-wide v4, Lcom/android/phone/CallRecordTime;->CallRecordDuration:J

    add-long/2addr v2, v4

    sput-wide v2, Lcom/android/phone/CallRecordTime;->CallRecordDuration:J

    .line 121
    return-void
.end method

.method public stopRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 229
    iget-object v1, p0, Lcom/android/phone/CallRecordTime;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_0

    .line 251
    :goto_0
    return-void

    .line 234
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallRecordTime;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_1
    iget-object v1, p0, Lcom/android/phone/CallRecordTime;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 241
    iput-object v2, p0, Lcom/android/phone/CallRecordTime;->mRecorder:Landroid/media/MediaRecorder;

    .line 243
    iget-object v1, p0, Lcom/android/phone/CallRecordTime;->mSampleFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallRecordTime;->grandFullFilePermission(Ljava/lang/String;)V

    .line 245
    iput-object v2, p0, Lcom/android/phone/CallRecordTime;->mSampleFile:Ljava/io/File;

    .line 248
    invoke-virtual {p0}, Lcom/android/phone/CallRecordTime;->cancelCheckSpaceTimer()V

    goto :goto_0

    .line 235
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 236
    .local v0, exception:Ljava/lang/RuntimeException;
    const-string v1, "stop Recording RuntimeException !!"

    invoke-static {v1}, Lcom/android/phone/CallRecordTime;->log(Ljava/lang/String;)V

    goto :goto_1
.end method
