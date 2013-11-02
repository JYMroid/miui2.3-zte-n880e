.class public Lcom/android/settings/battery_history/BatteryHistory;
.super Landroid/app/Activity;
.source "BatteryHistory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;,
        Lcom/android/settings/battery_history/BatteryHistory$WakelockUsage;,
        Lcom/android/settings/battery_history/BatteryHistory$SensorUsage;,
        Lcom/android/settings/battery_history/BatteryHistory$NetworkUsage;,
        Lcom/android/settings/battery_history/BatteryHistory$CpuUsage;,
        Lcom/android/settings/battery_history/BatteryHistory$Graphable;
    }
.end annotation


# static fields
.field private static final CPU_USAGE:I = 0x0

.field private static final CURRENT:I = 0x1

.field private static final GPS_USAGE:I = 0x2

.field private static final MISC_USAGE:I = 0x5

.field private static final NETWORK_USAGE:I = 0x1

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final SENSOR_USAGE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BatteryHistory"

.field private static final TOTAL:I = 0x2

.field private static final UNPLUGGED:I = 0x0

.field private static final WAKELOCK_USAGE:I = 0x4


# instance fields
.field mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mButtons:[Lcom/android/settings/battery_history/GraphableButton;

.field private mCpuUsage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/battery_history/BatteryHistory$CpuUsage;",
            ">;"
        }
    .end annotation
.end field

.field private mDetailsBackButton:Landroid/widget/Button;

.field private mDetailsShown:Z

.field private mDetailsText:Landroid/widget/TextView;

.field private final mFormatBuilder:Ljava/lang/StringBuilder;

.field private final mFormatter:Ljava/util/Formatter;

.field private mGpsUsage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/battery_history/BatteryHistory$SensorUsage;",
            ">;"
        }
    .end annotation
.end field

.field private mGraphLayout:Landroid/widget/LinearLayout;

.field private mHaveCpuUsage:Z

.field private mHaveMiscUsage:Z

.field private mHaveNetworkUsage:Z

.field private mHaveSensorUsage:Z

.field private mHaveWakelockUsage:Z

.field private mMessageText:Landroid/widget/TextView;

.field private mMiscUsage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkUsage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/battery_history/BatteryHistory$NetworkUsage;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorUsage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/battery_history/BatteryHistory$SensorUsage;",
            ">;"
        }
    .end annotation
.end field

.field private mStats:Landroid/os/BatteryStats;

.field private mTextLayout:Landroid/widget/LinearLayout;

.field private mType:I

.field private mTypeSpinner:Landroid/widget/Spinner;

.field private mWakelockUsage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/battery_history/BatteryHistory$WakelockUsage;",
            ">;"
        }
    .end annotation
.end field

.field private mWhich:I

.field private mWhichSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mWhich:I

    .line 77
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mType:I

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mCpuUsage:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mNetworkUsage:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mSensorUsage:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mGpsUsage:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mWakelockUsage:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mMiscUsage:Ljava/util/List;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mDetailsShown:Z

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 673
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mFormatter:Ljava/util/Formatter;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/android/settings/battery_history/BatteryHistory;->getLabel(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private collectStatistics()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 750
    iget v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mType:I

    if-nez v0, :cond_0

    .line 751
    iget-boolean v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mHaveCpuUsage:Z

    if-nez v0, :cond_0

    .line 752
    iput-boolean v2, p0, Lcom/android/settings/battery_history/BatteryHistory;->mHaveCpuUsage:Z

    .line 753
    invoke-direct {p0}, Lcom/android/settings/battery_history/BatteryHistory;->processCpuUsage()V

    .line 756
    :cond_0
    iget v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mType:I

    if-ne v0, v2, :cond_1

    .line 757
    iget-boolean v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mHaveNetworkUsage:Z

    if-nez v0, :cond_1

    .line 758
    iput-boolean v2, p0, Lcom/android/settings/battery_history/BatteryHistory;->mHaveNetworkUsage:Z

    .line 759
    invoke-direct {p0}, Lcom/android/settings/battery_history/BatteryHistory;->processNetworkUsage()V

    .line 762
    :cond_1
    iget v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 763
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mHaveSensorUsage:Z

    if-nez v0, :cond_3

    .line 764
    iput-boolean v2, p0, Lcom/android/settings/battery_history/BatteryHistory;->mHaveSensorUsage:Z

    .line 765
    invoke-direct {p0}, Lcom/android/settings/battery_history/BatteryHistory;->processSensorUsage()V

    .line 768
    :cond_3
    iget v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 769
    iget-boolean v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mHaveWakelockUsage:Z

    if-nez v0, :cond_4

    .line 770
    iput-boolean v2, p0, Lcom/android/settings/battery_history/BatteryHistory;->mHaveWakelockUsage:Z

    .line 771
    invoke-direct {p0}, Lcom/android/settings/battery_history/BatteryHistory;->processWakelockUsage()V

    .line 774
    :cond_4
    iget v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 775
    iget-boolean v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mHaveMiscUsage:Z

    if-nez v0, :cond_5

    .line 776
    iput-boolean v2, p0, Lcom/android/settings/battery_history/BatteryHistory;->mHaveMiscUsage:Z

    .line 777
    invoke-direct {p0}, Lcom/android/settings/battery_history/BatteryHistory;->processMiscUsage()V

    .line 780
    :cond_5
    return-void
.end method

.method private displayGraph()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 471
    const-string v10, "BatteryHistory"

    const-string v11, "displayGraph"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-direct {p0}, Lcom/android/settings/battery_history/BatteryHistory;->collectStatistics()V

    .line 476
    iget-object v10, p0, Lcom/android/settings/battery_history/BatteryHistory;->mMessageText:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 477
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v10, p0, Lcom/android/settings/battery_history/BatteryHistory;->mButtons:[Lcom/android/settings/battery_history/GraphableButton;

    array-length v10, v10

    if-ge v2, v10, :cond_0

    .line 478
    iget-object v10, p0, Lcom/android/settings/battery_history/BatteryHistory;->mButtons:[Lcom/android/settings/battery_history/GraphableButton;

    aget-object v10, v10, v2

    invoke-virtual {v10, v14}, Lcom/android/settings/battery_history/GraphableButton;->setVisibility(I)V

    .line 477
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 481
    :cond_0
    const-wide v4, -0x10000000000001L

    .line 483
    .local v4, maxValue:D
    invoke-direct {p0}, Lcom/android/settings/battery_history/BatteryHistory;->getGraphRecords()Ljava/util/List;

    move-result-object v8

    .line 484
    .local v8, records:Ljava/util/List;,"Ljava/util/List<+Lcom/android/settings/battery_history/BatteryHistory$Graphable;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/battery_history/BatteryHistory$Graphable;

    .line 485
    .local v1, g:Lcom/android/settings/battery_history/BatteryHistory$Graphable;
    invoke-virtual {v1}, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->getValues()[D

    move-result-object v9

    .line 486
    .local v9, values:[D
    array-length v10, v9

    sub-int/2addr v10, v13

    aget-wide v10, v9, v10

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 487
    invoke-virtual {v1}, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->getMaxValue()D

    move-result-wide v10

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 488
    goto :goto_1

    .line 490
    .end local v1           #g:Lcom/android/settings/battery_history/BatteryHistory$Graphable;
    .end local v9           #values:[D
    :cond_1
    const/4 v10, 0x2

    new-array v0, v10, [I

    .line 491
    .local v0, colors:[I
    const v10, -0xffff01

    aput v10, v0, v12

    .line 492
    const/high16 v10, -0x1

    aput v10, v0, v13

    .line 494
    const/4 v2, 0x0

    :goto_2
    iget-object v10, p0, Lcom/android/settings/battery_history/BatteryHistory;->mButtons:[Lcom/android/settings/battery_history/GraphableButton;

    array-length v10, v10

    if-ge v2, v10, :cond_2

    .line 495
    iget-object v10, p0, Lcom/android/settings/battery_history/BatteryHistory;->mButtons:[Lcom/android/settings/battery_history/GraphableButton;

    aget-object v10, v10, v2

    invoke-virtual {v10, v14}, Lcom/android/settings/battery_history/GraphableButton;->setVisibility(I)V

    .line 494
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 498
    :cond_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    iget-object v11, p0, Lcom/android/settings/battery_history/BatteryHistory;->mButtons:[Lcom/android/settings/battery_history/GraphableButton;

    array-length v11, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 499
    .local v6, numRecords:I
    if-nez v6, :cond_4

    .line 500
    iget-object v10, p0, Lcom/android/settings/battery_history/BatteryHistory;->mMessageText:Landroid/widget/TextView;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 501
    iget-object v10, p0, Lcom/android/settings/battery_history/BatteryHistory;->mMessageText:Landroid/widget/TextView;

    const v11, 0x7f0803ab

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 511
    :cond_3
    return-void

    .line 503
    :cond_4
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v6, :cond_3

    .line 504
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/battery_history/BatteryHistory$Graphable;

    .line 506
    .local v7, r:Lcom/android/settings/battery_history/BatteryHistory$Graphable;
    iget-object v10, p0, Lcom/android/settings/battery_history/BatteryHistory;->mButtons:[Lcom/android/settings/battery_history/GraphableButton;

    aget-object v10, v10, v2

    invoke-virtual {v7}, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->getLabel()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/settings/battery_history/GraphableButton;->setText(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v10, p0, Lcom/android/settings/battery_history/BatteryHistory;->mButtons:[Lcom/android/settings/battery_history/GraphableButton;

    aget-object v10, v10, v2

    invoke-virtual {v7}, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->getValues()[D

    move-result-object v11

    invoke-virtual {v10, v11, v4, v5}, Lcom/android/settings/battery_history/GraphableButton;->setValues([DD)V

    .line 508
    iget-object v10, p0, Lcom/android/settings/battery_history/BatteryHistory;->mButtons:[Lcom/android/settings/battery_history/GraphableButton;

    aget-object v10, v10, v2

    invoke-virtual {v10, v12}, Lcom/android/settings/battery_history/GraphableButton;->setVisibility(I)V

    .line 503
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private final formatRatio(JJ)Ljava/lang/String;
    .locals 6
    .parameter "num"
    .parameter "den"

    .prologue
    const/4 v5, 0x0

    .line 676
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-nez v1, :cond_0

    .line 677
    const-string v1, "---%"

    .line 682
    :goto_0
    return-object v1

    .line 679
    :cond_0
    long-to-float v1, p1

    long-to-float v2, p3

    div-float/2addr v1, v2

    const/high16 v2, 0x42c8

    mul-float v0, v1, v2

    .line 680
    .local v0, perc:F
    iget-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 681
    iget-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mFormatter:Ljava/util/Formatter;

    const-string v2, "%.1f%%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 682
    iget-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getGraphRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/settings/battery_history/BatteryHistory$Graphable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    iget v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 466
    const/4 p0, 0x0

    check-cast p0, Ljava/util/List;

    .end local p0
    move-object v0, p0

    :goto_0
    return-object v0

    .line 459
    .restart local p0
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mCpuUsage:Ljava/util/List;

    goto :goto_0

    .line 460
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mNetworkUsage:Ljava/util/List;

    goto :goto_0

    .line 461
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mSensorUsage:Ljava/util/List;

    goto :goto_0

    .line 462
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mGpsUsage:Ljava/util/List;

    goto :goto_0

    .line 463
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mWakelockUsage:Ljava/util/List;

    goto :goto_0

    .line 464
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mMiscUsage:Ljava/util/List;

    goto :goto_0

    .line 458
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static getLabel(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 4
    .parameter "packageName"
    .parameter "pm"

    .prologue
    .line 104
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, p0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 105
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 106
    .local v2, label:Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 107
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 113
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v2           #label:Ljava/lang/CharSequence;
    :goto_0
    return-object v3

    .line 109
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v3, p0

    .line 110
    goto :goto_0

    .line 113
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v2       #label:Ljava/lang/CharSequence;
    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method private hideDetails()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 514
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mTextLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 515
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mGraphLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 516
    iput-boolean v2, p0, Lcom/android/settings/battery_history/BatteryHistory;->mDetailsShown:Z

    .line 517
    return-void
.end method

.method private load()V
    .locals 5

    .prologue
    .line 784
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/battery_history/BatteryHistory;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    .line 785
    .local v0, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 787
    .local v2, parcel:Landroid/os/Parcel;
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 788
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 789
    sget-object v3, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats;

    iput-object v3, p0, Lcom/android/settings/battery_history/BatteryHistory;->mStats:Landroid/os/BatteryStats;

    .line 794
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/battery_history/BatteryHistory;->mHaveMiscUsage:Z

    iput-boolean v3, p0, Lcom/android/settings/battery_history/BatteryHistory;->mHaveWakelockUsage:Z

    iput-boolean v3, p0, Lcom/android/settings/battery_history/BatteryHistory;->mHaveSensorUsage:Z

    iput-boolean v3, p0, Lcom/android/settings/battery_history/BatteryHistory;->mHaveNetworkUsage:Z

    iput-boolean v3, p0, Lcom/android/settings/battery_history/BatteryHistory;->mHaveCpuUsage:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    .end local v0           #data:[B
    .end local v2           #parcel:Landroid/os/Parcel;
    :goto_0
    return-void

    .line 796
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 797
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "BatteryHistory"

    const-string v4, "RemoteException:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processCpuUsage()V
    .locals 26

    .prologue
    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/battery_history/BatteryHistory;->mCpuUsage:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 538
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v23, v4, v6

    .line 539
    .local v23, uSecTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/battery_history/BatteryHistory;->mStats:Landroid/os/BatteryStats;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/battery_history/BatteryHistory;->mWhich:I

    move v5, v0

    move-object v0, v4

    move-wide/from16 v1, v23

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v14, v4, v6

    .line 541
    .local v14, uSecNow:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/battery_history/BatteryHistory;->mStats:Landroid/os/BatteryStats;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v25

    .line 542
    .local v25, uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v16

    .line 543
    .local v16, NU:I
    const/16 v19, 0x0

    .local v19, iu:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 544
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/BatteryStats$Uid;

    .line 546
    .local v22, u:Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {v22 .. v22}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v20

    .line 547
    .local v20, processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 549
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .end local v20           #processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .local v18, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 551
    .local v17, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/BatteryStats$Uid$Proc;

    .line 552
    .local v21, ps:Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/battery_history/BatteryHistory;->mWhich:I

    move v4, v0

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v8

    .line 553
    .local v8, userTime:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/battery_history/BatteryHistory;->mWhich:I

    move v4, v0

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v10

    .line 554
    .local v10, systemTime:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/battery_history/BatteryHistory;->mWhich:I

    move v4, v0

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v4

    int-to-long v12, v4

    .line 556
    .local v12, starts:J
    const-wide/16 v4, 0x0

    cmp-long v4, v8, v4

    if-nez v4, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-eqz v4, :cond_0

    .line 557
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/battery_history/BatteryHistory;->mCpuUsage:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v4, Lcom/android/settings/battery_history/BatteryHistory$CpuUsage;

    invoke-virtual/range {v22 .. v22}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v15}, Lcom/android/settings/battery_history/BatteryHistory$CpuUsage;-><init>(Lcom/android/settings/battery_history/BatteryHistory;ILjava/lang/String;JJJJ)V

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 543
    .end local v8           #userTime:J
    .end local v10           #systemTime:J
    .end local v12           #starts:J
    .end local v17           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v21           #ps:Landroid/os/BatteryStats$Uid$Proc;
    :cond_2
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 563
    .end local v22           #u:Landroid/os/BatteryStats$Uid;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/battery_history/BatteryHistory;->mCpuUsage:Ljava/util/List;

    move-object v4, v0

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 564
    return-void
.end method

.method private processMiscUsage()V
    .locals 12

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mMiscUsage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 688
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v10, v0, v2

    .line 689
    .local v10, rawRealtime:J
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v0, v10, v11}, Landroid/os/BatteryStats;->getBatteryRealtime(J)J

    move-result-wide v8

    .line 690
    .local v8, batteryRealtime:J
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mStats:Landroid/os/BatteryStats;

    iget v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mWhich:I

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v6, v0, v2

    .line 692
    .local v6, whichRealtime:J
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mStats:Landroid/os/BatteryStats;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iget v3, p0, Lcom/android/settings/battery_history/BatteryHistory;->mWhich:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    .line 693
    .local v4, time:J
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_0

    .line 694
    iget-object v10, p0, Lcom/android/settings/battery_history/BatteryHistory;->mMiscUsage:Ljava/util/List;

    .end local v10           #rawRealtime:J
    new-instance v0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0803b1

    invoke-virtual {p0, v2}, Lcom/android/settings/battery_history/BatteryHistory;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/settings/battery_history/BatteryHistory;->formatRatio(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0803b7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;-><init>(Lcom/android/settings/battery_history/BatteryHistory;Ljava/lang/String;IJJ)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mStats:Landroid/os/BatteryStats;

    iget v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mWhich:I

    invoke-virtual {v0, v8, v9, v1}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    .line 702
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_1

    .line 703
    iget-object v10, p0, Lcom/android/settings/battery_history/BatteryHistory;->mMiscUsage:Ljava/util/List;

    new-instance v0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0803b2

    invoke-virtual {p0, v2}, Lcom/android/settings/battery_history/BatteryHistory;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/settings/battery_history/BatteryHistory;->formatRatio(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0803b8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;-><init>(Lcom/android/settings/battery_history/BatteryHistory;Ljava/lang/String;IJJ)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    :cond_1
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mStats:Landroid/os/BatteryStats;

    iget v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mWhich:I

    invoke-virtual {v0, v8, v9, v1}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    .line 711
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_2

    .line 712
    iget-object v10, p0, Lcom/android/settings/battery_history/BatteryHistory;->mMiscUsage:Ljava/util/List;

    new-instance v0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0803b3

    invoke-virtual {p0, v2}, Lcom/android/settings/battery_history/BatteryHistory;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/settings/battery_history/BatteryHistory;->formatRatio(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0803b9

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;-><init>(Lcom/android/settings/battery_history/BatteryHistory;Ljava/lang/String;IJJ)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    :cond_2
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mStats:Landroid/os/BatteryStats;

    iget v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mWhich:I

    invoke-virtual {v0, v8, v9, v1}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    .line 720
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_3

    .line 721
    iget-object v10, p0, Lcom/android/settings/battery_history/BatteryHistory;->mMiscUsage:Ljava/util/List;

    new-instance v0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0803b4

    invoke-virtual {p0, v2}, Lcom/android/settings/battery_history/BatteryHistory;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/settings/battery_history/BatteryHistory;->formatRatio(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0803ba

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;-><init>(Lcom/android/settings/battery_history/BatteryHistory;Ljava/lang/String;IJJ)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    :cond_3
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mStats:Landroid/os/BatteryStats;

    iget v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mWhich:I

    invoke-virtual {v0, v8, v9, v1}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    .line 729
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_4

    .line 730
    iget-object v10, p0, Lcom/android/settings/battery_history/BatteryHistory;->mMiscUsage:Ljava/util/List;

    new-instance v0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0803b5

    invoke-virtual {p0, v2}, Lcom/android/settings/battery_history/BatteryHistory;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/settings/battery_history/BatteryHistory;->formatRatio(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0803bb

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;-><init>(Lcom/android/settings/battery_history/BatteryHistory;Ljava/lang/String;IJJ)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 737
    :cond_4
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mStats:Landroid/os/BatteryStats;

    iget v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mWhich:I

    invoke-virtual {v0, v8, v9, v1}, Landroid/os/BatteryStats;->getBluetoothOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    .line 738
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_5

    .line 739
    iget-object v8, p0, Lcom/android/settings/battery_history/BatteryHistory;->mMiscUsage:Ljava/util/List;

    .end local v8           #batteryRealtime:J
    new-instance v0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0803b6

    invoke-virtual {p0, v2}, Lcom/android/settings/battery_history/BatteryHistory;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/settings/battery_history/BatteryHistory;->formatRatio(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0803bc

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;-><init>(Lcom/android/settings/battery_history/BatteryHistory;Ljava/lang/String;IJJ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    :cond_5
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mMiscUsage:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 747
    return-void
.end method

.method private processNetworkUsage()V
    .locals 13

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mNetworkUsage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 569
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v10

    .line 570
    .local v10, uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 571
    .local v7, NU:I
    const/4 v8, 0x0

    .local v8, iu:I
    :goto_0
    if-ge v8, v7, :cond_1

    .line 572
    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/BatteryStats$Uid;

    .line 574
    .local v9, u:Landroid/os/BatteryStats$Uid;
    iget v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mWhich:I

    invoke-virtual {v9, v0}, Landroid/os/BatteryStats$Uid;->getTcpBytesReceived(I)J

    move-result-wide v3

    .line 575
    .local v3, received:J
    iget v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mWhich:I

    invoke-virtual {v9, v0}, Landroid/os/BatteryStats$Uid;->getTcpBytesSent(I)J

    move-result-wide v5

    .line 576
    .local v5, sent:J
    add-long v0, v3, v5

    const-wide/16 v11, 0x0

    cmp-long v0, v0, v11

    if-lez v0, :cond_0

    .line 577
    iget-object v11, p0, Lcom/android/settings/battery_history/BatteryHistory;->mNetworkUsage:Ljava/util/List;

    new-instance v0, Lcom/android/settings/battery_history/BatteryHistory$NetworkUsage;

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/battery_history/BatteryHistory$NetworkUsage;-><init>(Lcom/android/settings/battery_history/BatteryHistory;IJJ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 580
    .end local v3           #received:J
    .end local v5           #sent:J
    .end local v9           #u:Landroid/os/BatteryStats$Uid;
    :cond_1
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mNetworkUsage:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 581
    return-void
.end method

.method private processSensorUsage()V
    .locals 35

    .prologue
    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/battery_history/BatteryHistory;->mGpsUsage:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/battery_history/BatteryHistory;->mSensorUsage:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 587
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v32, v4, v6

    .line 588
    .local v32, uSecTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/battery_history/BatteryHistory;->mStats:Landroid/os/BatteryStats;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/battery_history/BatteryHistory;->mWhich:I

    move v5, v0

    move-object v0, v4

    move-wide/from16 v1, v32

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v10, v4, v6

    .line 590
    .local v10, uSecNow:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/battery_history/BatteryHistory;->mStats:Landroid/os/BatteryStats;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v34

    .line 591
    .local v34, uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v34 .. v34}, Landroid/util/SparseArray;->size()I

    move-result v20

    .line 592
    .local v20, NU:I
    const/16 v25, 0x0

    .local v25, iu:I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 593
    move-object/from16 v0, v34

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/BatteryStats$Uid;

    .line 594
    .local v31, u:Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {v31 .. v31}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    .line 596
    .local v6, uid:I
    invoke-virtual/range {v31 .. v31}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v27

    .line 597
    .local v27, sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    const-wide/16 v7, 0x0

    .line 598
    .local v7, timeGps:J
    const/4 v9, 0x0

    .line 599
    .local v9, countGps:I
    const-wide/16 v15, 0x0

    .line 600
    .local v15, timeOther:J
    const/16 v17, 0x0

    .line 601
    .local v17, countOther:I
    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 603
    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 605
    .local v22, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/BatteryStats$Uid$Sensor;

    .line 606
    .local v26, se:Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual/range {v26 .. v26}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v23

    .line 607
    .local v23, handle:I
    invoke-virtual/range {v26 .. v26}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v28

    .line 608
    .local v28, timer:Landroid/os/BatteryStats$Timer;
    if-eqz v28, :cond_0

    .line 610
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/battery_history/BatteryHistory;->mWhich:I

    move v4, v0

    move-object/from16 v0, v28

    move-wide v1, v10

    move v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v4

    const-wide/16 v12, 0x1f4

    add-long/2addr v4, v12

    const-wide/16 v12, 0x3e8

    div-long v29, v4, v12

    .line 611
    .local v29, totalTime:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/battery_history/BatteryHistory;->mWhich:I

    move v4, v0

    move-object/from16 v0, v28

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v21

    .line 612
    .local v21, count:I
    const/16 v4, -0x2710

    move/from16 v0, v23

    move v1, v4

    if-ne v0, v1, :cond_1

    .line 613
    add-long v7, v7, v29

    .line 614
    add-int v9, v9, v21

    goto :goto_1

    .line 616
    :cond_1
    add-long v15, v15, v29

    .line 617
    add-int v17, v17, v21

    goto :goto_1

    .line 623
    .end local v21           #count:I
    .end local v22           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v23           #handle:I
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v26           #se:Landroid/os/BatteryStats$Uid$Sensor;
    .end local v28           #timer:Landroid/os/BatteryStats$Timer;
    .end local v29           #totalTime:J
    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v4, v7, v4

    if-lez v4, :cond_3

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/battery_history/BatteryHistory;->mGpsUsage:Ljava/util/List;

    move-object v12, v0

    new-instance v4, Lcom/android/settings/battery_history/BatteryHistory$SensorUsage;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/settings/battery_history/BatteryHistory$SensorUsage;-><init>(Lcom/android/settings/battery_history/BatteryHistory;IJIJ)V

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v4, v15, v4

    if-lez v4, :cond_4

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/battery_history/BatteryHistory;->mSensorUsage:Ljava/util/List;

    move-object v4, v0

    new-instance v12, Lcom/android/settings/battery_history/BatteryHistory$SensorUsage;

    move-object/from16 v13, p0

    move v14, v6

    move-wide/from16 v18, v10

    invoke-direct/range {v12 .. v19}, Lcom/android/settings/battery_history/BatteryHistory$SensorUsage;-><init>(Lcom/android/settings/battery_history/BatteryHistory;IJIJ)V

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    :cond_4
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_0

    .line 631
    .end local v6           #uid:I
    .end local v7           #timeGps:J
    .end local v9           #countGps:I
    .end local v15           #timeOther:J
    .end local v17           #countOther:I
    .end local v27           #sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v31           #u:Landroid/os/BatteryStats$Uid;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/battery_history/BatteryHistory;->mGpsUsage:Ljava/util/List;

    move-object v4, v0

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/battery_history/BatteryHistory;->mSensorUsage:Ljava/util/List;

    move-object v4, v0

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 633
    return-void
.end method

.method private processWakelockUsage()V
    .locals 23

    .prologue
    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/battery_history/BatteryHistory;->mWakelockUsage:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 638
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v18, v4, v6

    .line 639
    .local v18, uSecTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/battery_history/BatteryHistory;->mStats:Landroid/os/BatteryStats;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/battery_history/BatteryHistory;->mWhich:I

    move v5, v0

    move-object v0, v4

    move-wide/from16 v1, v18

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v10, v4, v6

    .line 641
    .local v10, uSecNow:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/battery_history/BatteryHistory;->mStats:Landroid/os/BatteryStats;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v20

    .line 642
    .local v20, uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 643
    .local v12, NU:I
    const/4 v15, 0x0

    .local v15, iu:I
    :goto_0
    if-ge v15, v12, :cond_3

    .line 644
    move-object/from16 v0, v20

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/BatteryStats$Uid;

    .line 645
    .local v17, u:Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    .line 647
    .local v6, uid:I
    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v21

    .line 648
    .local v21, wakelockStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    const-wide/16 v7, 0x0

    .line 649
    .local v7, time:J
    const/4 v9, 0x0

    .line 650
    .local v9, count:I
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 652
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .end local v17           #u:Landroid/os/BatteryStats$Uid;
    .local v14, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 654
    .local v13, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 655
    .local v22, wl:Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v4, 0x0

    move-object/from16 v0, v22

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v16

    .line 656
    .local v16, timer:Landroid/os/BatteryStats$Timer;
    if-eqz v16, :cond_0

    .line 658
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/battery_history/BatteryHistory;->mWhich:I

    move v4, v0

    move-object/from16 v0, v16

    move-wide v1, v10

    move v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v4

    const-wide/16 v17, 0x1f4

    add-long v4, v4, v17

    const-wide/16 v17, 0x3e8

    div-long v4, v4, v17

    add-long/2addr v7, v4

    .line 659
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/battery_history/BatteryHistory;->mWhich:I

    move v4, v0

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v4

    add-int/2addr v9, v4

    goto :goto_1

    .line 664
    .end local v13           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #timer:Landroid/os/BatteryStats$Timer;
    .end local v22           #wl:Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, v7, v4

    if-lez v4, :cond_2

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/battery_history/BatteryHistory;->mWakelockUsage:Ljava/util/List;

    move-object v13, v0

    new-instance v4, Lcom/android/settings/battery_history/BatteryHistory$WakelockUsage;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/settings/battery_history/BatteryHistory$WakelockUsage;-><init>(Lcom/android/settings/battery_history/BatteryHistory;IJIJ)V

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 669
    .end local v6           #uid:I
    .end local v7           #time:J
    .end local v9           #count:I
    .end local v21           #wakelockStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/battery_history/BatteryHistory;->mWakelockUsage:Ljava/util/List;

    move-object v4, v0

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 670
    return-void
.end method

.method private showDetails(I)V
    .locals 8
    .parameter "id"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 520
    iget-object v3, p0, Lcom/android/settings/battery_history/BatteryHistory;->mGraphLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 521
    iget-object v3, p0, Lcom/android/settings/battery_history/BatteryHistory;->mTextLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 524
    .local v0, info:Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/android/settings/battery_history/BatteryHistory;->getGraphRecords()Ljava/util/List;

    move-result-object v2

    .line 525
    .local v2, records:Ljava/util/List;,"Ljava/util/List<+Lcom/android/settings/battery_history/BatteryHistory$Graphable;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 526
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/battery_history/BatteryHistory$Graphable;

    .line 527
    .local v1, record:Lcom/android/settings/battery_history/BatteryHistory$Graphable;
    invoke-virtual {v1, v0}, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->getInfo(Ljava/lang/StringBuilder;)V

    .line 531
    .end local v1           #record:Lcom/android/settings/battery_history/BatteryHistory$Graphable;
    :goto_0
    iget-object v3, p0, Lcom/android/settings/battery_history/BatteryHistory;->mDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iput-boolean v7, p0, Lcom/android/settings/battery_history/BatteryHistory;->mDetailsShown:Z

    .line 533
    return-void

    .line 529
    :cond_0
    const v3, 0x7f08039b

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/battery_history/BatteryHistory;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method formatTime(DLjava/lang/StringBuilder;)V
    .locals 11
    .parameter "millis"
    .parameter "sb"

    .prologue
    const/4 v10, 0x3

    const v6, 0x15180

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 117
    const-wide v4, 0x408f400000000000L

    div-double v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 119
    .local v3, seconds:I
    const/4 v0, 0x0

    .local v0, days:I
    const/4 v1, 0x0

    .local v1, hours:I
    const/4 v2, 0x0

    .line 120
    .local v2, minutes:I
    if-le v3, v6, :cond_0

    .line 121
    div-int v0, v3, v6

    .line 122
    mul-int v4, v0, v6

    sub-int/2addr v3, v4

    .line 124
    :cond_0
    const/16 v4, 0xe10

    if-le v3, v4, :cond_1

    .line 125
    div-int/lit16 v1, v3, 0xe10

    .line 126
    mul-int/lit16 v4, v1, 0xe10

    sub-int/2addr v3, v4

    .line 128
    :cond_1
    const/16 v4, 0x3c

    if-le v3, v4, :cond_2

    .line 129
    div-int/lit8 v2, v3, 0x3c

    .line 130
    mul-int/lit8 v4, v2, 0x3c

    sub-int/2addr v3, v4

    .line 132
    :cond_2
    if-lez v0, :cond_3

    .line 133
    const v4, 0x7f0803a6

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/battery_history/BatteryHistory;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :goto_0
    return-void

    .line 134
    :cond_3
    if-lez v1, :cond_4

    .line 135
    const v4, 0x7f0803a7

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/battery_history/BatteryHistory;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 136
    :cond_4
    if-lez v2, :cond_5

    .line 137
    const v4, 0x7f0803a8

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/battery_history/BatteryHistory;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 139
    :cond_5
    const v4, 0x7f0803a9

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/battery_history/BatteryHistory;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 802
    iget-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mDetailsBackButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 803
    invoke-direct {p0}, Lcom/android/settings/battery_history/BatteryHistory;->hideDetails()V

    .line 809
    :goto_0
    return-void

    .line 807
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 808
    .local v0, id:I
    invoke-direct {p0, v0}, Lcom/android/settings/battery_history/BatteryHistory;->showDetails(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    .line 869
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 870
    const-string v1, "BatteryHistory"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/android/settings/battery_history/BatteryHistory;->setContentView(I)V

    .line 874
    invoke-virtual {p0}, Lcom/android/settings/battery_history/BatteryHistory;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats;

    iput-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mStats:Landroid/os/BatteryStats;

    .line 875
    if-eqz p1, :cond_1

    .line 876
    iget-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mStats:Landroid/os/BatteryStats;

    if-nez v1, :cond_0

    .line 877
    const-string v1, "stats"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats;

    iput-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mStats:Landroid/os/BatteryStats;

    .line 879
    :cond_0
    const-string v1, "type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mType:I

    .line 880
    const-string v1, "which"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mWhich:I

    .line 883
    :cond_1
    const v1, 0x7f0b0006

    invoke-virtual {p0, v1}, Lcom/android/settings/battery_history/BatteryHistory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mGraphLayout:Landroid/widget/LinearLayout;

    .line 884
    const v1, 0x7f0b0012

    invoke-virtual {p0, v1}, Lcom/android/settings/battery_history/BatteryHistory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mTextLayout:Landroid/widget/LinearLayout;

    .line 885
    const v1, 0x7f0b0013

    invoke-virtual {p0, v1}, Lcom/android/settings/battery_history/BatteryHistory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mDetailsText:Landroid/widget/TextView;

    .line 886
    const v1, 0x7f0b0009

    invoke-virtual {p0, v1}, Lcom/android/settings/battery_history/BatteryHistory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mMessageText:Landroid/widget/TextView;

    .line 888
    const v1, 0x7f0b0007

    invoke-virtual {p0, v1}, Lcom/android/settings/battery_history/BatteryHistory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mTypeSpinner:Landroid/widget/Spinner;

    .line 889
    iget-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mTypeSpinner:Landroid/widget/Spinner;

    iget v2, p0, Lcom/android/settings/battery_history/BatteryHistory;->mType:I

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 890
    iget-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 892
    const v1, 0x7f0b0008

    invoke-virtual {p0, v1}, Lcom/android/settings/battery_history/BatteryHistory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mWhichSpinner:Landroid/widget/Spinner;

    .line 893
    iget-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mWhichSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 894
    iget-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mWhichSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 896
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/android/settings/battery_history/GraphableButton;

    iput-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mButtons:[Lcom/android/settings/battery_history/GraphableButton;

    .line 897
    iget-object v2, p0, Lcom/android/settings/battery_history/BatteryHistory;->mButtons:[Lcom/android/settings/battery_history/GraphableButton;

    const/4 v3, 0x0

    const v1, 0x7f0b000a

    invoke-virtual {p0, v1}, Lcom/android/settings/battery_history/BatteryHistory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/battery_history/GraphableButton;

    aput-object v1, v2, v3

    .line 898
    iget-object v2, p0, Lcom/android/settings/battery_history/BatteryHistory;->mButtons:[Lcom/android/settings/battery_history/GraphableButton;

    const v1, 0x7f0b000b

    invoke-virtual {p0, v1}, Lcom/android/settings/battery_history/BatteryHistory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/battery_history/GraphableButton;

    aput-object v1, v2, v4

    .line 899
    iget-object v2, p0, Lcom/android/settings/battery_history/BatteryHistory;->mButtons:[Lcom/android/settings/battery_history/GraphableButton;

    const/4 v3, 0x2

    const v1, 0x7f0b000c

    invoke-virtual {p0, v1}, Lcom/android/settings/battery_history/BatteryHistory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/battery_history/GraphableButton;

    aput-object v1, v2, v3

    .line 900
    iget-object v2, p0, Lcom/android/settings/battery_history/BatteryHistory;->mButtons:[Lcom/android/settings/battery_history/GraphableButton;

    const/4 v3, 0x3

    const v1, 0x7f0b000d

    invoke-virtual {p0, v1}, Lcom/android/settings/battery_history/BatteryHistory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/battery_history/GraphableButton;

    aput-object v1, v2, v3

    .line 901
    iget-object v2, p0, Lcom/android/settings/battery_history/BatteryHistory;->mButtons:[Lcom/android/settings/battery_history/GraphableButton;

    const/4 v3, 0x4

    const v1, 0x7f0b000e

    invoke-virtual {p0, v1}, Lcom/android/settings/battery_history/BatteryHistory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/battery_history/GraphableButton;

    aput-object v1, v2, v3

    .line 902
    iget-object v2, p0, Lcom/android/settings/battery_history/BatteryHistory;->mButtons:[Lcom/android/settings/battery_history/GraphableButton;

    const/4 v3, 0x5

    const v1, 0x7f0b000f

    invoke-virtual {p0, v1}, Lcom/android/settings/battery_history/BatteryHistory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/battery_history/GraphableButton;

    aput-object v1, v2, v3

    .line 903
    iget-object v2, p0, Lcom/android/settings/battery_history/BatteryHistory;->mButtons:[Lcom/android/settings/battery_history/GraphableButton;

    const/4 v3, 0x6

    const v1, 0x7f0b0010

    invoke-virtual {p0, v1}, Lcom/android/settings/battery_history/BatteryHistory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/battery_history/GraphableButton;

    aput-object v1, v2, v3

    .line 904
    iget-object v2, p0, Lcom/android/settings/battery_history/BatteryHistory;->mButtons:[Lcom/android/settings/battery_history/GraphableButton;

    const/4 v3, 0x7

    const v1, 0x7f0b0011

    invoke-virtual {p0, v1}, Lcom/android/settings/battery_history/BatteryHistory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/battery_history/GraphableButton;

    aput-object v1, v2, v3

    .line 906
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mButtons:[Lcom/android/settings/battery_history/GraphableButton;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 907
    iget-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mButtons:[Lcom/android/settings/battery_history/GraphableButton;

    aget-object v1, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/battery_history/GraphableButton;->setTag(Ljava/lang/Object;)V

    .line 908
    iget-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mButtons:[Lcom/android/settings/battery_history/GraphableButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/settings/battery_history/GraphableButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 906
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 911
    :cond_2
    const-string v1, "batteryinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 914
    iget-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mStats:Landroid/os/BatteryStats;

    if-nez v1, :cond_3

    .line 915
    invoke-direct {p0}, Lcom/android/settings/battery_history/BatteryHistory;->load()V

    .line 917
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/battery_history/BatteryHistory;->displayGraph()V

    .line 918
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 820
    iget v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mWhich:I

    .line 822
    .local v0, oldWhich:I
    iget-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 823
    iput p3, p0, Lcom/android/settings/battery_history/BatteryHistory;->mType:I

    .line 838
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mWhich:I

    if-eq v0, v1, :cond_1

    .line 839
    iput-boolean v2, p0, Lcom/android/settings/battery_history/BatteryHistory;->mHaveMiscUsage:Z

    iput-boolean v2, p0, Lcom/android/settings/battery_history/BatteryHistory;->mHaveWakelockUsage:Z

    iput-boolean v2, p0, Lcom/android/settings/battery_history/BatteryHistory;->mHaveSensorUsage:Z

    iput-boolean v2, p0, Lcom/android/settings/battery_history/BatteryHistory;->mHaveNetworkUsage:Z

    iput-boolean v2, p0, Lcom/android/settings/battery_history/BatteryHistory;->mHaveCpuUsage:Z

    .line 843
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/battery_history/BatteryHistory;->displayGraph()V

    .line 844
    return-void

    .line 824
    :cond_2
    iget-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mWhichSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 825
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 827
    :pswitch_0
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mWhich:I

    goto :goto_0

    .line 830
    :pswitch_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mWhich:I

    goto :goto_0

    .line 833
    :pswitch_2
    iput v2, p0, Lcom/android/settings/battery_history/BatteryHistory;->mWhich:I

    goto :goto_0

    .line 825
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 812
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mDetailsShown:Z

    if-eqz v0, :cond_0

    .line 813
    invoke-direct {p0}, Lcom/android/settings/battery_history/BatteryHistory;->hideDetails()V

    .line 814
    const/4 v0, 0x1

    .line 816
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 848
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mStats:Landroid/os/BatteryStats;

    .line 853
    .local v0, stats:Landroid/os/BatteryStats;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mStats:Landroid/os/BatteryStats;

    .line 854
    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 859
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 860
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory;->mStats:Landroid/os/BatteryStats;

    if-eqz v0, :cond_0

    .line 861
    const-string v0, "stats"

    iget-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 863
    :cond_0
    const-string v0, "type"

    iget v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 864
    const-string v0, "which"

    iget v1, p0, Lcom/android/settings/battery_history/BatteryHistory;->mWhich:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 865
    return-void
.end method
