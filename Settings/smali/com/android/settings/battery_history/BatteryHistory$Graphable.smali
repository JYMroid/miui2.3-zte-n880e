.class abstract Lcom/android/settings/battery_history/BatteryHistory$Graphable;
.super Ljava/lang/Object;
.source "BatteryHistory.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/battery_history/BatteryHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Graphable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/battery_history/BatteryHistory$Graphable;",
        ">;"
    }
.end annotation


# instance fields
.field protected mName:Ljava/lang/String;

.field protected mNamePackage:Ljava/lang/String;

.field protected mPackageNames:[Ljava/lang/String;

.field protected mPackages:[Ljava/lang/String;

.field protected mUniqueName:Z

.field final synthetic this$0:Lcom/android/settings/battery_history/BatteryHistory;


# direct methods
.method constructor <init>(Lcom/android/settings/battery_history/BatteryHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/battery_history/BatteryHistory$Graphable;)I
    .locals 5
    .parameter "o"

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->getSortValue()D

    move-result-wide v2

    .line 161
    .local v2, t:D
    invoke-virtual {p1}, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->getSortValue()D

    move-result-wide v0

    .line 162
    .local v0, ot:D
    cmpg-double v4, v2, v0

    if-gez v4, :cond_0

    .line 164
    const/4 v4, 0x1

    .line 168
    :goto_0
    return v4

    .line 165
    :cond_0
    cmpl-double v4, v2, v0

    if-lez v4, :cond_1

    .line 166
    const/4 v4, -0x1

    goto :goto_0

    .line 168
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    check-cast p1, Lcom/android/settings/battery_history/BatteryHistory$Graphable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->compareTo(Lcom/android/settings/battery_history/BatteryHistory$Graphable;)I

    move-result v0

    return v0
.end method

.method public abstract getInfo(Ljava/lang/StringBuilder;)V
.end method

.method public abstract getLabel()Ljava/lang/String;
.end method

.method public getMaxValue()D
    .locals 2

    .prologue
    .line 156
    const-wide v0, -0x10000000000001L

    return-wide v0
.end method

.method getNameForUid(I)V
    .locals 13
    .parameter "uid"

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 174
    iget-object v8, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    invoke-virtual {v8}, Lcom/android/settings/battery_history/BatteryHistory;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 175
    .local v7, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v7, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mPackages:[Ljava/lang/String;

    .line 176
    iget-object v8, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mPackages:[Ljava/lang/String;

    if-nez v8, :cond_1

    .line 177
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mName:Ljava/lang/String;

    .line 178
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mNamePackage:Ljava/lang/String;

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v8, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mPackages:[Ljava/lang/String;

    array-length v8, v8

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mPackageNames:[Ljava/lang/String;

    .line 183
    iget-object v8, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mPackages:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mPackageNames:[Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mPackages:[Ljava/lang/String;

    array-length v10, v10

    invoke-static {v8, v12, v9, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v8, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mPackageNames:[Ljava/lang/String;

    array-length v8, v8

    if-ge v1, v8, :cond_2

    .line 187
    iget-object v8, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mPackageNames:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mPackageNames:[Ljava/lang/String;

    aget-object v9, v9, v1

    #calls: Lcom/android/settings/battery_history/BatteryHistory;->getLabel(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    invoke-static {v9, v7}, Lcom/android/settings/battery_history/BatteryHistory;->access$000(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 190
    :cond_2
    iget-object v8, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mPackageNames:[Ljava/lang/String;

    array-length v8, v8

    if-ne v8, v11, :cond_3

    .line 191
    iget-object v8, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mPackages:[Ljava/lang/String;

    aget-object v8, v8, v12

    iput-object v8, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mNamePackage:Ljava/lang/String;

    .line 192
    iget-object v8, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mPackageNames:[Ljava/lang/String;

    aget-object v8, v8, v12

    iput-object v8, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mName:Ljava/lang/String;

    .line 193
    iput-boolean v11, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mUniqueName:Z

    goto :goto_0

    .line 195
    :cond_3
    iget-object v8, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    const v9, 0x7f08039c

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Lcom/android/settings/battery_history/BatteryHistory;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mName:Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mPackages:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 199
    .local v4, name:Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 200
    .local v6, pi:Landroid/content/pm/PackageInfo;
    iget v8, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v8, :cond_4

    .line 201
    iget v8, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v4, v8, v9}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 203
    .local v5, nm:Ljava/lang/CharSequence;
    if-eqz v5, :cond_4

    .line 204
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    .end local v5           #nm:Ljava/lang/CharSequence;
    .end local v6           #pi:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v8

    .line 197
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public abstract getSortValue()D
.end method

.method public abstract getValues()[D
.end method
