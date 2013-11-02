.class public Lcom/android/settings/AppWidgetPickActivity;
.super Landroid/app/Activity;
.source "AppWidgetPickActivity.java"


# instance fields
.field private fAppWManager:Landroid/appwidget/AppWidgetManager;

.field private fAppWidgetId:I

.field private fIntent:Landroid/content/Intent;

.field private fItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/SubItem;",
            ">;"
        }
    .end annotation
.end field

.field private fPManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/android/settings/AppWidgetPickActivity;->fIntent:Landroid/content/Intent;

    .line 38
    iput-object v0, p0, Lcom/android/settings/AppWidgetPickActivity;->fPManager:Landroid/content/pm/PackageManager;

    .line 39
    iput-object v0, p0, Lcom/android/settings/AppWidgetPickActivity;->fAppWManager:Landroid/appwidget/AppWidgetManager;

    return-void
.end method

.method private AddAppWidgetProviderInfos()V
    .locals 10

    .prologue
    .line 163
    iget-object v6, p0, Lcom/android/settings/AppWidgetPickActivity;->fAppWManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v6}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v3

    .line 165
    .local v3, infos:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 168
    .local v2, info:Landroid/appwidget/AppWidgetProviderInfo;
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/AppWidgetPickActivity;->fPManager:Landroid/content/pm/PackageManager;

    iget-object v7, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 169
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    new-instance v4, Lcom/android/settings/SubItem;

    iget-object v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/AppWidgetPickActivity;->fPManager:Landroid/content/pm/PackageManager;

    iget-object v8, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget v9, v2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-virtual {v7, v8, v9, v0}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/android/settings/SubItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 170
    .local v4, itm:Lcom/android/settings/SubItem;
    iget-object v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Lcom/android/settings/SubItem;->setProvider(Landroid/content/ComponentName;)V

    .line 171
    invoke-direct {p0, v2}, Lcom/android/settings/AppWidgetPickActivity;->getPackageItem(Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/settings/Item;

    move-result-object v5

    .line 172
    .local v5, mainItm:Lcom/android/settings/Item;
    invoke-virtual {v5}, Lcom/android/settings/Item;->getItems()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v4           #itm:Lcom/android/settings/SubItem;
    .end local v5           #mainItm:Lcom/android/settings/Item;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 177
    .end local v2           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_0
    return-void
.end method

.method private AddCustomAppWidgets()V
    .locals 8

    .prologue
    .line 180
    iget-object v7, p0, Lcom/android/settings/AppWidgetPickActivity;->fIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 183
    .local v4, extras:Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 184
    .local v2, customInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/4 v0, 0x0

    .line 186
    .local v0, customExtras:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const-string v7, "customInfo"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 188
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 219
    :cond_0
    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/android/settings/AppWidgetPickActivity;->putAppWidgetItems(Ljava/util/List;Ljava/util/List;)V

    .line 220
    return-void

    .line 192
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 193
    .local v3, customInfoSize:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v3, :cond_4

    .line 194
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    .line 195
    .local v6, p:Landroid/os/Parcelable;
    if-eqz v6, :cond_2

    instance-of v7, v6, Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v7, :cond_3

    .line 196
    :cond_2
    const/4 v2, 0x0

    .line 197
    goto :goto_0

    .line 193
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 201
    .end local v6           #p:Landroid/os/Parcelable;
    :cond_4
    const-string v7, "customExtras"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 202
    if-nez v0, :cond_5

    .line 203
    const/4 v2, 0x0

    .line 204
    goto :goto_0

    .line 206
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 207
    .local v1, customExtrasSize:I
    if-ne v3, v1, :cond_0

    .line 210
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_0

    .line 211
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    .line 212
    .restart local v6       #p:Landroid/os/Parcelable;
    if-eqz v6, :cond_6

    instance-of v7, v6, Landroid/os/Bundle;

    if-nez v7, :cond_7

    .line 213
    :cond_6
    const/4 v2, 0x0

    .line 214
    const/4 v0, 0x0

    .line 215
    goto :goto_0

    .line 210
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private getIntent(Lcom/android/settings/SubItem;)Landroid/content/Intent;
    .locals 4
    .parameter "itm"

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/AppWidgetPickActivity;->fIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 116
    .local v1, parcel:Landroid/os/Parcelable;
    instance-of v2, v1, Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 117
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    check-cast v1, Landroid/content/Intent;

    .end local v1           #parcel:Landroid/os/Parcelable;
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 123
    .restart local v0       #intent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p1}, Lcom/android/settings/SubItem;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 125
    invoke-virtual {p1}, Lcom/android/settings/SubItem;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/settings/SubItem;->getProvider()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    :goto_1
    invoke-virtual {p1}, Lcom/android/settings/SubItem;->getExtra()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {p1}, Lcom/android/settings/SubItem;->getExtra()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 134
    :cond_0
    return-object v0

    .line 119
    .restart local v1       #parcel:Landroid/os/Parcelable;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 120
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 128
    .end local v1           #parcel:Landroid/os/Parcelable;
    :cond_2
    const-string v2, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1}, Lcom/android/settings/SubItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private getPackageItem(Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/settings/Item;
    .locals 12
    .parameter "info"

    .prologue
    .line 138
    iget-object v9, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 139
    .local v7, packName:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/AppWidgetPickActivity;->fItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/SubItem;

    .line 140
    .local v5, itm:Lcom/android/settings/SubItem;
    instance-of v9, v5, Lcom/android/settings/Item;

    if-eqz v9, :cond_0

    .line 141
    move-object v0, v5

    check-cast v0, Lcom/android/settings/Item;

    move-object v3, v0

    .line 142
    .local v3, i:Lcom/android/settings/Item;
    invoke-virtual {v3}, Lcom/android/settings/Item;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, v3

    .line 159
    .end local v3           #i:Lcom/android/settings/Item;
    .end local v5           #itm:Lcom/android/settings/SubItem;
    :goto_0
    return-object v9

    .line 149
    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/android/settings/AppWidgetPickActivity;->fPManager:Landroid/content/pm/PackageManager;

    iget-object v10, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 150
    .local v2, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v9, p0, Lcom/android/settings/AppWidgetPickActivity;->fPManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 151
    .local v1, appIcon:Landroid/graphics/drawable/Drawable;
    iget-object v9, p0, Lcom/android/settings/AppWidgetPickActivity;->fPManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 152
    .local v8, str:Ljava/lang/CharSequence;
    new-instance v6, Lcom/android/settings/Item;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9, v1}, Lcom/android/settings/Item;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 153
    .local v6, newItm:Lcom/android/settings/Item;
    invoke-virtual {v6, v7}, Lcom/android/settings/Item;->setPackageName(Ljava/lang/String;)V

    .line 154
    iget-object v9, p0, Lcom/android/settings/AppWidgetPickActivity;->fItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v6

    .line 155
    goto :goto_0

    .line 157
    .end local v1           #appIcon:Landroid/graphics/drawable/Drawable;
    .end local v2           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v6           #newItm:Lcom/android/settings/Item;
    .end local v8           #str:Ljava/lang/CharSequence;
    :catch_0
    move-exception v9

    .line 159
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private putAppWidgetItems(Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, appWidgets:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .local p2, customExtras:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    if-nez p1, :cond_1

    .line 247
    :cond_0
    return-void

    .line 225
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 226
    .local v5, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 227
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 229
    .local v2, info:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v7, v2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, label:Ljava/lang/String;
    const/4 v1, 0x0

    .line 232
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    iget v7, v2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    if-eqz v7, :cond_2

    .line 233
    iget-object v7, p0, Lcom/android/settings/AppWidgetPickActivity;->fPManager:Landroid/content/pm/PackageManager;

    iget-object v8, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget v9, v2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 236
    :cond_2
    new-instance v3, Lcom/android/settings/Item;

    invoke-direct {v3, v4, v1}, Lcom/android/settings/Item;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 237
    .local v3, item:Lcom/android/settings/Item;
    new-instance v6, Lcom/android/settings/SubItem;

    invoke-direct {v6, v4, v1}, Lcom/android/settings/SubItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 238
    .local v6, subItem:Lcom/android/settings/SubItem;
    invoke-virtual {v3}, Lcom/android/settings/Item;->getItems()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v7, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/settings/Item;->setPackageName(Ljava/lang/String;)V

    .line 241
    if-eqz p2, :cond_3

    .line 242
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Lcom/android/settings/SubItem;->setExtra(Landroid/os/Bundle;)V

    .line 245
    :cond_3
    iget-object v7, p0, Lcom/android/settings/AppWidgetPickActivity;->fItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public finishOk(Lcom/android/settings/SubItem;)V
    .locals 5
    .parameter "item"

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/android/settings/SubItem;->getExtra()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 90
    const/4 v2, -0x1

    invoke-direct {p0, p1}, Lcom/android/settings/AppWidgetPickActivity;->getIntent(Lcom/android/settings/SubItem;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/AppWidgetPickActivity;->setResult(ILandroid/content/Intent;)V

    .line 105
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->finish()V

    .line 106
    return-void

    .line 93
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/AppWidgetPickActivity;->fAppWManager:Landroid/appwidget/AppWidgetManager;

    iget v3, p0, Lcom/android/settings/AppWidgetPickActivity;->fAppWidgetId:I

    invoke-virtual {p1}, Lcom/android/settings/SubItem;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    const/4 v1, -0x1

    .line 103
    .local v1, result:I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/AppWidgetPickActivity;->fIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/AppWidgetPickActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 95
    .end local v1           #result:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 101
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    .restart local v1       #result:I
    goto :goto_1
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/SubItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/AppWidgetPickActivity;->fItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const-string v4, "appWidgetId"

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/android/settings/AppWidgetPickActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/AppWidgetPickActivity;->requestWindowFeature(I)Z

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/AppWidgetPickActivity;->fIntent:Landroid/content/Intent;

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 52
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "appWidgetId"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 53
    const-string v3, "appWidgetId"

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/AppWidgetPickActivity;->fAppWidgetId:I

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/AppWidgetPickActivity;->fPManager:Landroid/content/pm/PackageManager;

    .line 56
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/AppWidgetPickActivity;->fAppWManager:Landroid/appwidget/AppWidgetManager;

    .line 58
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings/AppWidgetPickActivity;->fItems:Ljava/util/ArrayList;

    .line 59
    invoke-direct {p0}, Lcom/android/settings/AppWidgetPickActivity;->AddAppWidgetProviderInfos()V

    .line 60
    invoke-direct {p0}, Lcom/android/settings/AppWidgetPickActivity;->AddCustomAppWidgets()V

    .line 61
    iget-object v3, p0, Lcom/android/settings/AppWidgetPickActivity;->fItems:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/settings/AppWidgetPickActivity$1;

    invoke-direct {v4, p0}, Lcom/android/settings/AppWidgetPickActivity$1;-><init>(Lcom/android/settings/AppWidgetPickActivity;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 69
    iget-object v3, p0, Lcom/android/settings/AppWidgetPickActivity;->fItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SubItem;

    .line 70
    .local v2, itm:Lcom/android/settings/SubItem;
    instance-of v3, v2, Lcom/android/settings/Item;

    if-eqz v3, :cond_0

    .line 71
    check-cast v2, Lcom/android/settings/Item;

    .end local v2           #itm:Lcom/android/settings/SubItem;
    invoke-virtual {v2}, Lcom/android/settings/Item;->sort()V

    goto :goto_0

    .line 74
    :cond_1
    new-instance v3, Lcom/android/settings/PickWidgetDialog;

    invoke-direct {v3, p0}, Lcom/android/settings/PickWidgetDialog;-><init>(Lcom/android/settings/AppWidgetPickActivity;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings/PickWidgetDialog;->showDialog(Lcom/android/settings/SubItem;)V

    .line 78
    .end local v0           #i$:Ljava/util/Iterator;
    :goto_1
    return-void

    .line 76
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->finish()V

    goto :goto_1
.end method
