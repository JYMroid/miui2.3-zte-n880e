.class public Lzte/com/cn/numberlocator/OutgoingCallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OutgoingCallReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NumberLocator"

.field private static final mCountryCode:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "+86"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "0086"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "086"

    aput-object v2, v0, v1

    sput-object v0, Lzte/com/cn/numberlocator/OutgoingCallReceiver;->mCountryCode:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private dealWithCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "number"

    .prologue
    .line 27
    move-object v4, p1

    .line 29
    .local v4, resultNumber:Ljava/lang/String;
    const-string v5, "+"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "0"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 31
    :cond_0
    sget-object v0, Lzte/com/cn/numberlocator/OutgoingCallReceiver;->mCountryCode:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 33
    .local v1, c:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 35
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 40
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #c:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    return-object v4

    .line 31
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #c:Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isCanIpDial(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "number"
    .parameter "ipDialEnabled"
    .parameter "ipDialNumber"
    .parameter "localNumber"

    .prologue
    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    const/4 v0, 0x0

    .line 156
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private placeCall(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "comfromDialer"
    .parameter "finalNumber"

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p3, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 142
    .local v0, intent:Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 143
    const-string v1, "com.zte.SmartDialer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    :cond_0
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 146
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 147
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .parameter "context"
    .parameter "broadcastIntent"

    .prologue
    .line 48
    const-string v5, "NumberLocator"

    const-string v6, "NumberLocatorReceiver onReceive!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual/range {p0 .. p0}, Lzte/com/cn/numberlocator/OutgoingCallReceiver;->getResultData()Ljava/lang/String;

    move-result-object v21

    .line 50
    .local v21, number:Ljava/lang/String;
    const-string v5, "NumberLocator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "number = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string v5, "com.zte.SmartDialer"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 52
    .local v15, comfromDialer:Z
    const-string v5, "QuickContact"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    .line 54
    .local v22, quickContact:Z
    const-string v5, "Subscription"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 55
    .local v23, subId:I
    sget-object v19, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->ipDialNumber:Ljava/lang/String;

    .line 56
    .local v19, ipPrefix:Ljava/lang/String;
    sget-object v20, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->localNumber:Ljava/lang/String;

    .line 57
    .local v20, localNum:Ljava/lang/String;
    const-string v18, ""

    .line 58
    .local v18, finalNumber:Ljava/lang/String;
    if-eqz v22, :cond_0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 59
    const-string v20, "0"

    .line 62
    :cond_0
    if-nez v23, :cond_4

    sget-boolean v5, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->ipDialEnabled:Z

    if-nez v5, :cond_1

    if-eqz v22, :cond_3

    :cond_1
    const/4 v5, 0x1

    :goto_0
    sget-object v6, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->ipDialNumber:Ljava/lang/String;

    sget-object v7, Lzte/com/cn/numberlocator/NumberLocatorContentProvider;->localNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move v2, v5

    move-object v3, v6

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lzte/com/cn/numberlocator/OutgoingCallReceiver;->isCanIpDial(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 137
    :cond_2
    :goto_1
    return-void

    .line 62
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 66
    :cond_4
    const/4 v5, 0x1

    move/from16 v0, v23

    move v1, v5

    if-ne v0, v1, :cond_9

    .line 67
    if-nez v22, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "telecom_smart_dial_enable_second"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 68
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "telecom_smart_ip_dial_number_second"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 69
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "telecom_phone_area_code_second"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 70
    if-eqz v22, :cond_6

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 71
    const-string v20, "0"

    .line 73
    :cond_6
    if-eqz v19, :cond_7

    if-eqz v20, :cond_7

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move v2, v5

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lzte/com/cn/numberlocator/OutgoingCallReceiver;->isCanIpDial(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 74
    :cond_7
    const-string v5, "NumberLocator"

    const-string v6, "Card 2, invalid settings, will not ip call..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 77
    :cond_8
    const-string v5, "NumberLocator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Card 2, ip call, prefix->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", localNum->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_9
    const/16 v16, 0x0

    .line 86
    .local v16, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v5, "NumberLocator"

    const-string v6, "query begin"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v5, "content://zte.com.cn.providers.numberlocatorprovider/location"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 88
    .local v6, numlocatorUri:Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 89
    if-eqz v16, :cond_a

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_c

    .line 90
    :cond_a
    const-string v5, "NumberLocator"

    const-string v6, "cursor =null"

    .end local v6           #numlocatorUri:Landroid/net/Uri;
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    const-string v5, "NumberLocator"

    const-string v6, "finally"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-eqz v16, :cond_2

    .line 134
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 79
    .end local v16           #cursor:Landroid/database/Cursor;
    :cond_b
    const-string v5, "NumberLocator"

    const-string v6, "Card 2 smart ip call is disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 94
    .restart local v6       #numlocatorUri:Landroid/net/Uri;
    .restart local v16       #cursor:Landroid/database/Cursor;
    :cond_c
    :try_start_1
    const-string v5, "areacode"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 95
    .local v12, areaCodeColumn:I
    const-string v5, "NumberLocator"

    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #numlocatorUri:Landroid/net/Uri;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "areaCodeColumn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v5, "cardtype"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 97
    .local v14, cardtypeColumn:I
    const-string v5, "NumberLocator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cardtypeColumn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    move-object/from16 v0, v16

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 99
    .local v13, cardtype:Ljava/lang/String;
    const-string v5, "NumberLocator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cardtype="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v11, ""

    .line 102
    .local v11, areaCode:Ljava/lang/String;
    move-object/from16 v0, v16

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-eqz v5, :cond_d

    .line 132
    const-string v5, "NumberLocator"

    const-string v6, "finally"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-eqz v16, :cond_2

    .line 134
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 105
    :cond_d
    :try_start_2
    const-string v5, "fixedphone"

    invoke-virtual {v13, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 112
    :goto_2
    const-string v5, "NumberLocator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "areaCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 114
    const-string v5, "NumberLocator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "areaCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    move-object/from16 v0, v20

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    if-eqz v5, :cond_10

    .line 132
    const-string v5, "NumberLocator"

    const-string v6, "finally"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-eqz v16, :cond_2

    .line 134
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 107
    :cond_e
    :try_start_3
    const-string v5, "intlphone"

    invoke-virtual {v13, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "00"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 110
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 119
    :cond_10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lzte/com/cn/numberlocator/OutgoingCallReceiver;->dealWithCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 126
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lzte/com/cn/numberlocator/OutgoingCallReceiver;->setResultData(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 132
    const-string v5, "NumberLocator"

    const-string v6, "finally"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-eqz v16, :cond_2

    .line 134
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 132
    :cond_11
    const-string v5, "NumberLocator"

    const-string v6, "finally"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-eqz v16, :cond_2

    .line 134
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 128
    .end local v11           #areaCode:Ljava/lang/String;
    .end local v12           #areaCodeColumn:I
    .end local v13           #cardtype:Ljava/lang/String;
    .end local v14           #cardtypeColumn:I
    :catch_0
    move-exception v5

    move-object/from16 v17, v5

    .line 129
    .local v17, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 132
    const-string v5, "NumberLocator"

    const-string v6, "finally"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-eqz v16, :cond_2

    .line 134
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 132
    .end local v17           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    const-string v6, "NumberLocator"

    const-string v7, "finally"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-eqz v16, :cond_12

    .line 134
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_12
    throw v5
.end method
