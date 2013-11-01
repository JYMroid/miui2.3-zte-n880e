.class public Lcom/android/internal/telephony/CallFilterTracker;
.super Landroid/os/Handler;
.source "CallFilterTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CallFilterTracker$SettingsChangedObserver;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "CallFilterTracker"


# instance fields
.field private final EVENT_CALLFILTER_INTERUPTED:I

.field private final NOTIFICATION_ID:I

.field private contentResolver:Landroid/content/ContentResolver;

.field private context:Landroid/content/Context;

.field private filter_interupt:I

.field private filter_method:I

.field private filter_mode:I

.field private filter_record_switch:I

.field private filter_switch:I

.field private mEnabled:Z

.field private nMgr:Landroid/app/NotificationManager;

.field private phone:Lcom/android/internal/telephony/Phone;

.field private settingsChangedObserver:Lcom/android/internal/telephony/CallFilterTracker$SettingsChangedObserver;

.field private tel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "phone"

    .prologue
    const/4 v3, 0x1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/16 v0, 0x6e

    iput v0, p0, Lcom/android/internal/telephony/CallFilterTracker;->NOTIFICATION_ID:I

    iput v3, p0, Lcom/android/internal/telephony/CallFilterTracker;->EVENT_CALLFILTER_INTERUPTED:I

    iput-object p1, p0, Lcom/android/internal/telephony/CallFilterTracker;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallFilterTracker;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/telephony/CallFilterTracker;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallFilterTracker;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallFilterTracker;->CheckEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallFilterTracker;->mEnabled:Z

    iget-boolean v0, p0, Lcom/android/internal/telephony/CallFilterTracker;->mEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/CallFilterTracker$SettingsChangedObserver;

    invoke-direct {v0, p0, p0}, Lcom/android/internal/telephony/CallFilterTracker$SettingsChangedObserver;-><init>(Lcom/android/internal/telephony/CallFilterTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CallFilterTracker;->settingsChangedObserver:Lcom/android/internal/telephony/CallFilterTracker$SettingsChangedObserver;

    iget-object v0, p0, Lcom/android/internal/telephony/CallFilterTracker;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallFilter$Settings;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/internal/telephony/CallFilterTracker;->settingsChangedObserver:Lcom/android/internal/telephony/CallFilterTracker$SettingsChangedObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallFilterTracker;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/internal/telephony/CallFilterTracker;->nMgr:Landroid/app/NotificationManager;

    invoke-direct {p0}, Lcom/android/internal/telephony/CallFilterTracker;->showNotification()V

    :cond_0
    return-void
.end method

.method private initFilter()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x2

    iget-object v0, p0, Lcom/android/internal/telephony/CallFilterTracker;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallFilter$Settings;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .local v7, setting:Ljava/lang/String;
    const-string v0, "filter_switch"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/CallFilterTracker;->filter_switch:I

    :cond_1
    const-string v0, "filter_mode"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/CallFilterTracker;->filter_mode:I

    :cond_2
    const-string v0, "filter_method"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/CallFilterTracker;->filter_method:I

    :cond_3
    const-string v0, "filter_record_switch"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/CallFilterTracker;->filter_record_switch:I

    :cond_4
    const-string v0, "filter_interupt"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/CallFilterTracker;->filter_interupt:I

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .end local v7           #setting:Ljava/lang/String;
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private initNumber(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .parameter "num"

    .prologue
    const/16 v8, 0x30

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .local v1, nums:[Ljava/lang/String;
    aput-object p1, v1, v4

    aput-object p1, v1, v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v0, v2, [B

    .local v0, numberData:[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v5, v2, v0, v5}, Ljava/lang/String;->getBytes(II[BI)V

    aget-byte v2, v0, v5

    if-ne v2, v8, :cond_1

    aget-byte v2, v0, v4

    const/16 v3, 0x31

    if-eq v2, v3, :cond_0

    aget-byte v2, v0, v4

    const/16 v3, 0x32

    if-eq v2, v3, :cond_0

    aget-byte v2, v0, v4

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_2

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-direct {v2, v0, v6, v3}, Ljava/lang/String;-><init>([BII)V

    aput-object v2, v1, v5

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    aget-byte v2, v0, v4

    if-eq v2, v8, :cond_3

    aget-byte v2, v0, v4

    const/16 v3, 0x33

    if-eq v2, v3, :cond_3

    aget-byte v2, v0, v4

    const/16 v3, 0x34

    if-eq v2, v3, :cond_3

    aget-byte v2, v0, v4

    const/16 v3, 0x35

    if-eq v2, v3, :cond_3

    aget-byte v2, v0, v4

    const/16 v3, 0x36

    if-eq v2, v3, :cond_3

    aget-byte v2, v0, v4

    const/16 v3, 0x37

    if-eq v2, v3, :cond_3

    aget-byte v2, v0, v4

    const/16 v3, 0x38

    if-eq v2, v3, :cond_3

    aget-byte v2, v0, v4

    const/16 v3, 0x39

    if-ne v2, v3, :cond_1

    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v7

    invoke-direct {v2, v0, v7, v3}, Ljava/lang/String;-><init>([BII)V

    aput-object v2, v1, v5

    goto :goto_0
.end method

.method private insertRecords(J)V
    .locals 11
    .parameter "date"

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x5

    .local v9, flags:I
    iget-object v0, p0, Lcom/android/internal/telephony/CallFilterTracker;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2, v9}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    .local v6, currentTime:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, name:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/CallFilterTracker;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallFilter$WBItems;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CallFilterTracker;->tel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_1
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/android/internal/telephony/CallFilterTracker;->tel:Ljava/lang/String;

    :cond_2
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .local v8, cv:Landroid/content/ContentValues;
    const-string v0, "name"

    invoke-virtual {v8, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tel"

    iget-object v1, p0, Lcom/android/internal/telephony/CallFilterTracker;->tel:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "time"

    invoke-virtual {v8, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallFilterTracker;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallFilter$Records;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void

    .end local v8           #cv:Landroid/content/ContentValues;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method private isIn(Ljava/lang/String;)Z
    .locals 14
    .parameter "type"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v2, 0x0

    const-string v1, "("

    const-string v3, "%\') AND ("

    iget-object v0, p0, Lcom/android/internal/telephony/CallFilterTracker;->tel:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallFilterTracker;->initNumber(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .local v10, nums:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_0

    new-instance v11, Ljava/lang/StringBuffer;

    const-string v0, "("

    invoke-direct {v11, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .local v11, where:Ljava/lang/StringBuffer;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v10, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\') AND ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ")"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/android/internal/telephony/CallFilterTracker;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallFilter$WBItems;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move v0, v13

    :goto_1
    return v0

    .end local v11           #where:Ljava/lang/StringBuffer;
    :cond_0
    new-instance v11, Ljava/lang/StringBuffer;

    const-string v0, "("

    invoke-direct {v11, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .restart local v11       #where:Ljava/lang/StringBuffer;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data1 LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v10, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\') AND ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "mimetype=\'vnd.android.cursor.item/phone_v2\'"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ")"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/android/internal/telephony/CallFilterTracker;->contentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v5, v13, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v5, v12

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move v0, v12

    goto :goto_1
.end method

.method private showNotification()V
    .locals 14

    .prologue
    const v13, 0x10403eb

    const/16 v12, 0x6e

    invoke-direct {p0}, Lcom/android/internal/telephony/CallFilterTracker;->initFilter()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .local v9, date:J
    const-string v1, "0"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/CallFilterTracker;->filter_switch:I

    if-ne v1, v2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallFilterTracker;->nMgr:Landroid/app/NotificationManager;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v11, v1

    .local v11, e:Ljava/lang/NullPointerException;
    :try_start_1
    const-string v1, "CallFilterTracker"

    const-string v2, "hejinping: if there is no notification that is notified, nMgr.cancel() will throw a nullpointerexception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v11           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v8, Landroid/content/Intent;

    const-string v1, "com.android.callfilter.action.MAIN"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v8, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .local v0, n:Landroid/app/Notification;
    iget v1, p0, Lcom/android/internal/telephony/CallFilterTracker;->filter_interupt:I

    const-string v2, "1"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/CallFilterTracker;->filter_interupt:I

    const-string v2, "2"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/CallFilterTracker;->tel:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v0, Landroid/app/Notification;

    .end local v0           #n:Landroid/app/Notification;
    iget-object v1, p0, Lcom/android/internal/telephony/CallFilterTracker;->context:Landroid/content/Context;

    const v2, 0x10802cb

    iget-object v3, p0, Lcom/android/internal/telephony/CallFilterTracker;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/internal/telephony/CallFilterTracker;->context:Landroid/content/Context;

    const v7, 0x10403ec

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/CallFilterTracker;->tel:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .restart local v0       #n:Landroid/app/Notification;
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/CallFilterTracker;->nMgr:Landroid/app/NotificationManager;

    invoke-virtual {v1, v12, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/app/Notification;

    .end local v0           #n:Landroid/app/Notification;
    iget-object v1, p0, Lcom/android/internal/telephony/CallFilterTracker;->context:Landroid/content/Context;

    const v2, 0x10802cc

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/android/internal/telephony/CallFilterTracker;->context:Landroid/content/Context;

    invoke-virtual {v6, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/CallFilterTracker;->context:Landroid/content/Context;

    invoke-virtual {v7, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .restart local v0       #n:Landroid/app/Notification;
    goto :goto_1
.end method

.method private updateInterupt(Ljava/lang/String;)V
    .locals 5
    .parameter "phoneName"

    .prologue
    const-string v4, "value"

    const-string v3, "2"

    const-string v2, "1"

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "CDMA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "value"

    const-string v1, "1"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "1"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/CallFilterTracker;->filter_interupt:I

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallFilterTracker;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CallFilter$Settings;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "key=\'filter_interupt\'"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v1, "GSM"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "value"

    const-string v1, "2"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "2"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/CallFilterTracker;->filter_interupt:I

    goto :goto_0
.end method


# virtual methods
.method CheckEnabled()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/CallFilterTracker;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallFilter$Settings;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/CallFilterTracker;->showNotification()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isInterupt(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 9
    .parameter "dc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v8, "no interupt"

    const-string v7, "1"

    const-string v6, "0"

    iget-boolean v2, p0, Lcom/android/internal/telephony/CallFilterTracker;->mEnabled:Z

    if-nez v2, :cond_0

    move v2, v4

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/CallFilterTracker;->initFilter()V

    if-eqz p1, :cond_2

    iget-object v2, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v3, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v2, v3, :cond_1

    iget-object v2, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v3, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v2, v3, :cond_2

    :cond_1
    iget-object v2, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/internal/telephony/CallFilterTracker;->filter_switch:I

    const-string v3, "0"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "no interupt"

    invoke-direct {v2, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    iget-object v2, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/CallFilterTracker;->tel:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .local v1, filter_mode_entryValues:[I
    const/4 v0, 0x0

    .local v0, b:Z
    iget v2, p0, Lcom/android/internal/telephony/CallFilterTracker;->filter_mode:I

    aget v3, v1, v4

    if-ne v2, v3, :cond_4

    const/4 v0, 0x1

    :cond_4
    iget v2, p0, Lcom/android/internal/telephony/CallFilterTracker;->filter_mode:I

    aget v3, v1, v5

    if-ne v2, v3, :cond_5

    const-string v2, "1"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/CallFilterTracker;->isIn(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v5

    :cond_5
    :goto_1
    iget v2, p0, Lcom/android/internal/telephony/CallFilterTracker;->filter_mode:I

    const/4 v3, 0x2

    aget v3, v1, v3

    if-ne v2, v3, :cond_6

    const-string v2, "0"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/CallFilterTracker;->isIn(Ljava/lang/String;)Z

    move-result v0

    :cond_6
    iget v2, p0, Lcom/android/internal/telephony/CallFilterTracker;->filter_mode:I

    const/4 v3, 0x3

    aget v3, v1, v3

    if-ne v2, v3, :cond_7

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CallFilterTracker;->isIn(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v5

    :cond_7
    :goto_2
    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/android/internal/telephony/CallFilterTracker;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CallFilterTracker;->updateInterupt(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/telephony/CallFilterTracker;->filter_record_switch:I

    const-string v3, "1"

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/CallFilterTracker;->insertRecords(J)V

    :cond_8
    iget v2, p0, Lcom/android/internal/telephony/CallFilterTracker;->filter_method:I

    if-ne v2, v5, :cond_b

    move v2, v5

    goto/16 :goto_0

    :cond_9
    move v0, v4

    goto :goto_1

    :cond_a
    move v0, v4

    goto :goto_2

    :cond_b
    move v2, v4

    goto/16 :goto_0

    :cond_c
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "no interupt"

    invoke-direct {v2, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public isInterupt(Lcom/android/internal/telephony/gsm/GsmConnection;)Z
    .locals 1
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isInterupt(Ljava/lang/String;)Z
    .locals 9
    .parameter "tel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v8, "no interupt"

    const-string v7, "1"

    const-string v6, "0"

    iget-boolean v2, p0, Lcom/android/internal/telephony/CallFilterTracker;->mEnabled:Z

    if-nez v2, :cond_0

    move v2, v4

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/CallFilterTracker;->initFilter()V

    if-eqz p1, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/CallFilterTracker;->filter_switch:I

    const-string v3, "0"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "no interupt"

    invoke-direct {v2, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iput-object p1, p0, Lcom/android/internal/telephony/CallFilterTracker;->tel:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .local v1, filter_mode_entryValues:[I
    const/4 v0, 0x0

    .local v0, b:Z
    iget v2, p0, Lcom/android/internal/telephony/CallFilterTracker;->filter_mode:I

    aget v3, v1, v4

    if-ne v2, v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    iget v2, p0, Lcom/android/internal/telephony/CallFilterTracker;->filter_mode:I

    aget v3, v1, v5

    if-ne v2, v3, :cond_4

    const-string v2, "1"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/CallFilterTracker;->isIn(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v5

    :cond_4
    :goto_1
    iget v2, p0, Lcom/android/internal/telephony/CallFilterTracker;->filter_mode:I

    const/4 v3, 0x2

    aget v3, v1, v3

    if-ne v2, v3, :cond_5

    const-string v2, "0"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/CallFilterTracker;->isIn(Ljava/lang/String;)Z

    move-result v0

    :cond_5
    iget v2, p0, Lcom/android/internal/telephony/CallFilterTracker;->filter_mode:I

    const/4 v3, 0x3

    aget v3, v1, v3

    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CallFilterTracker;->isIn(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v5

    :cond_6
    :goto_2
    if-eqz v0, :cond_b

    iget-object v2, p0, Lcom/android/internal/telephony/CallFilterTracker;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CallFilterTracker;->updateInterupt(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/telephony/CallFilterTracker;->filter_record_switch:I

    const-string v3, "1"

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/CallFilterTracker;->insertRecords(J)V

    :cond_7
    iget v2, p0, Lcom/android/internal/telephony/CallFilterTracker;->filter_method:I

    if-ne v2, v5, :cond_a

    move v2, v5

    goto :goto_0

    :cond_8
    move v0, v4

    goto :goto_1

    :cond_9
    move v0, v4

    goto :goto_2

    :cond_a
    move v2, v4

    goto :goto_0

    :cond_b
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "no interupt"

    invoke-direct {v2, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method
