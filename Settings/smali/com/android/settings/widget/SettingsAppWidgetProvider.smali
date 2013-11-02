.class public Lcom/android/settings/widget/SettingsAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SettingsAppWidgetProvider.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final STATE_DISABLED:I = 0x0

.field public static final STATE_DISABLED_RED:I = 0xa

.field public static final STATE_ENABLED:I = 0x1

.field public static final STATE_ENABLED_RED:I = 0xb

.field public static final STATE_INTERMEDIATE:I = 0x5

.field public static final STATE_TURNING_OFF:I = 0x3

.field public static final STATE_TURNING_ON:I = 0x2

.field public static final STATE_UNKNOWN:I = 0x4

.field public static final TAG:Ljava/lang/String; = "SettingsAppWidgetProvider"

.field static final THIS_APPWIDGET:Landroid/content/ComponentName; = null

.field public static final WIDGET_DELETED:I = 0x0

.field public static final WIDGET_NOT_CONFIGURED:I = 0x1

.field public static final WIDGET_PRESENT:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 77
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.widget.SettingsAppWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static buildUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 13
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    const/4 v12, 0x0

    const-string v11, "SettingsAppWidgetProvider"

    .line 146
    const-string v9, ">> buildUpdate IN"

    invoke-static {v9}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 148
    const-string v9, "widget_MAIN"

    invoke-virtual {p0, v9, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 152
    .local v2, globalPreferences:Landroid/content/SharedPreferences;
    const-string v9, "saved"

    invoke-interface {v2, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 153
    const-string v9, "SettingsAppWidgetProvider"

    const-string v9, "Widget is from a previous version... Let\'s update"

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v9, Lcom/android/settings/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {p1, v9}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v8

    .line 159
    .local v8, widgets:[I
    move-object v1, v8

    .local v1, arr$:[I
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v6, v1, v3

    .line 160
    .local v6, widget:I
    const-string v9, "SettingsAppWidgetProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Will set widget "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to default settings"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "widget_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 163
    .local v7, widgetPreferences:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/android/settings/widget/WidgetSettings;->initDefaultWidget(Landroid/content/SharedPreferences;)V

    .line 159
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    .end local v6           #widget:I
    .end local v7           #widgetPreferences:Landroid/content/SharedPreferences;
    :cond_0
    array-length v9, v8

    if-lez v9, :cond_3

    .line 167
    invoke-static {v2}, Lcom/android/settings/widget/WidgetSettings;->initDefaultSettings(Landroid/content/SharedPreferences;)V

    .line 174
    .end local v1           #arr$:[I
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v8           #widgets:[I
    :cond_1
    :goto_1
    invoke-static {p0, v2, p2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateStates(Landroid/content/Context;Landroid/content/SharedPreferences;[I)V

    .line 177
    move-object v1, p2

    .restart local v1       #arr$:[I
    array-length v4, v1

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v4, :cond_4

    aget v0, v1, v3

    .line 178
    .local v0, appWidgetId:I
    const-string v9, "SettingsAppWidgetProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Call buildUpdate for widget:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-static {p0, v2, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateViews(Landroid/content/Context;Landroid/content/SharedPreferences;I)Landroid/widget/RemoteViews;

    move-result-object v5

    .line 180
    .local v5, views:Landroid/widget/RemoteViews;
    if-eqz v5, :cond_2

    .line 181
    invoke-virtual {p1, v0, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 183
    :cond_2
    const-string v9, "SettingsAppWidgetProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "buildUpdate done for widget:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 169
    .end local v0           #appWidgetId:I
    .end local v5           #views:Landroid/widget/RemoteViews;
    .restart local v8       #widgets:[I
    :cond_3
    const-string v9, "SettingsAppWidgetProvider"

    const-string v9, "No instances yet... Wait for at least one instance to exist before adding global settings"

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 185
    .end local v8           #widgets:[I
    :cond_4
    const-string v9, "<< buildUpdate OUT"

    invoke-static {v9}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public static logD(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 396
    return-void
.end method

.method private static updateStates(Landroid/content/Context;Landroid/content/SharedPreferences;[I)V
    .locals 1
    .parameter "context"
    .parameter "globalPreferences"
    .parameter "appWidgetIds"

    .prologue
    .line 194
    invoke-static {}, Lcom/android/settings/widget/buttons/WifiButton;->getInstance()Lcom/android/settings/widget/buttons/WifiButton;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/widget/buttons/WifiButton;->updateState(Landroid/content/Context;Landroid/content/SharedPreferences;[I)V

    .line 195
    invoke-static {}, Lcom/android/settings/widget/buttons/WifiApButton;->getInstance()Lcom/android/settings/widget/buttons/WifiApButton;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/widget/buttons/WifiApButton;->updateState(Landroid/content/Context;Landroid/content/SharedPreferences;[I)V

    .line 196
    invoke-static {}, Lcom/android/settings/widget/buttons/BluetoothButton;->getInstance()Lcom/android/settings/widget/buttons/BluetoothButton;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/widget/buttons/BluetoothButton;->updateState(Landroid/content/Context;Landroid/content/SharedPreferences;[I)V

    .line 197
    invoke-static {}, Lcom/android/settings/widget/buttons/GPSButton;->getInstance()Lcom/android/settings/widget/buttons/GPSButton;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/widget/buttons/GPSButton;->updateState(Landroid/content/Context;Landroid/content/SharedPreferences;[I)V

    .line 198
    invoke-static {}, Lcom/android/settings/widget/buttons/MobileDataButton;->getInstance()Lcom/android/settings/widget/buttons/MobileDataButton;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/widget/buttons/MobileDataButton;->updateState(Landroid/content/Context;Landroid/content/SharedPreferences;[I)V

    .line 199
    invoke-static {}, Lcom/android/settings/widget/buttons/NetworkModeButton;->getInstance()Lcom/android/settings/widget/buttons/NetworkModeButton;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/widget/buttons/NetworkModeButton;->updateState(Landroid/content/Context;Landroid/content/SharedPreferences;[I)V

    .line 200
    invoke-static {}, Lcom/android/settings/widget/buttons/SyncButton;->getInstance()Lcom/android/settings/widget/buttons/SyncButton;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/widget/buttons/SyncButton;->updateState(Landroid/content/Context;Landroid/content/SharedPreferences;[I)V

    .line 201
    invoke-static {}, Lcom/android/settings/widget/buttons/SoundButton;->getInstance()Lcom/android/settings/widget/buttons/SoundButton;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/widget/buttons/SoundButton;->updateState(Landroid/content/Context;Landroid/content/SharedPreferences;[I)V

    .line 202
    invoke-static {}, Lcom/android/settings/widget/buttons/AutoRotateButton;->getInstance()Lcom/android/settings/widget/buttons/AutoRotateButton;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/widget/buttons/AutoRotateButton;->updateState(Landroid/content/Context;Landroid/content/SharedPreferences;[I)V

    .line 203
    invoke-static {}, Lcom/android/settings/widget/buttons/ScreenTimeoutButton;->getInstance()Lcom/android/settings/widget/buttons/ScreenTimeoutButton;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/widget/buttons/ScreenTimeoutButton;->updateState(Landroid/content/Context;Landroid/content/SharedPreferences;[I)V

    .line 204
    invoke-static {}, Lcom/android/settings/widget/buttons/AirplaneButton;->getInstance()Lcom/android/settings/widget/buttons/AirplaneButton;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/widget/buttons/AirplaneButton;->updateState(Landroid/content/Context;Landroid/content/SharedPreferences;[I)V

    .line 205
    invoke-static {}, Lcom/android/settings/widget/buttons/LockScreenButton;->getInstance()Lcom/android/settings/widget/buttons/LockScreenButton;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/widget/buttons/LockScreenButton;->updateState(Landroid/content/Context;Landroid/content/SharedPreferences;[I)V

    .line 206
    invoke-static {}, Lcom/android/settings/widget/buttons/FlashlightButton;->getInstance()Lcom/android/settings/widget/buttons/FlashlightButton;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/widget/buttons/FlashlightButton;->updateState(Landroid/content/Context;Landroid/content/SharedPreferences;[I)V

    .line 207
    invoke-static {}, Lcom/android/settings/widget/buttons/BrightnessButton;->getInstance()Lcom/android/settings/widget/buttons/BrightnessButton;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/widget/buttons/BrightnessButton;->updateState(Landroid/content/Context;Landroid/content/SharedPreferences;[I)V

    .line 208
    .line 209
    return-void
.end method

.method private static updateViews(Landroid/content/Context;Landroid/content/SharedPreferences;I)Landroid/widget/RemoteViews;
    .locals 10
    .parameter "context"
    .parameter "globalPreferences"
    .parameter "appWidgetId"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const-string v9, ">> updateViews IN - Widget:"

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">> updateViews IN - Widget:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "widget_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 224
    .local v4, widgetPreferences:Landroid/content/SharedPreferences;
    const-string v0, "saved"

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 229
    const v8, 0x7f030048

    .line 230
    .local v8, widgetLayout:I
    const-string v0, "backgrounImage"

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 231
    .local v6, backgroundLayout:I
    const-string v0, "useVertical"

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 233
    .local v7, verticalLayout:Z
    if-nez v7, :cond_1

    if-ne v6, v5, :cond_1

    .line 234
    const v8, 0x7f03004c

    .line 250
    :cond_0
    :goto_0
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 253
    .local v2, views:Landroid/widget/RemoteViews;
    invoke-static {}, Lcom/android/settings/widget/buttons/WifiButton;->getInstance()Lcom/android/settings/widget/buttons/WifiButton;

    move-result-object v0

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/widget/buttons/WifiButton;->updateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;I)V

    .line 255
    invoke-static {}, Lcom/android/settings/widget/buttons/WifiApButton;->getInstance()Lcom/android/settings/widget/buttons/WifiApButton;

    move-result-object v0

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/widget/buttons/WifiApButton;->updateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;I)V

    .line 257
    invoke-static {}, Lcom/android/settings/widget/buttons/BluetoothButton;->getInstance()Lcom/android/settings/widget/buttons/BluetoothButton;

    move-result-object v0

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/widget/buttons/BluetoothButton;->updateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;I)V

    .line 259
    invoke-static {}, Lcom/android/settings/widget/buttons/GPSButton;->getInstance()Lcom/android/settings/widget/buttons/GPSButton;

    move-result-object v0

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/widget/buttons/GPSButton;->updateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;I)V

    .line 261
    invoke-static {}, Lcom/android/settings/widget/buttons/MobileDataButton;->getInstance()Lcom/android/settings/widget/buttons/MobileDataButton;

    move-result-object v0

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/widget/buttons/MobileDataButton;->updateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;I)V

    .line 263
    invoke-static {}, Lcom/android/settings/widget/buttons/NetworkModeButton;->getInstance()Lcom/android/settings/widget/buttons/NetworkModeButton;

    move-result-object v0

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/widget/buttons/NetworkModeButton;->updateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;I)V

    .line 265
    invoke-static {}, Lcom/android/settings/widget/buttons/SyncButton;->getInstance()Lcom/android/settings/widget/buttons/SyncButton;

    move-result-object v0

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/widget/buttons/SyncButton;->updateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;I)V

    .line 267
    invoke-static {}, Lcom/android/settings/widget/buttons/SoundButton;->getInstance()Lcom/android/settings/widget/buttons/SoundButton;

    move-result-object v0

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/widget/buttons/SoundButton;->updateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;I)V

    .line 269
    invoke-static {}, Lcom/android/settings/widget/buttons/AutoRotateButton;->getInstance()Lcom/android/settings/widget/buttons/AutoRotateButton;

    move-result-object v0

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/widget/buttons/AutoRotateButton;->updateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;I)V

    .line 271
    invoke-static {}, Lcom/android/settings/widget/buttons/ScreenTimeoutButton;->getInstance()Lcom/android/settings/widget/buttons/ScreenTimeoutButton;

    move-result-object v0

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/widget/buttons/ScreenTimeoutButton;->updateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;I)V

    .line 273
    invoke-static {}, Lcom/android/settings/widget/buttons/BrightnessButton;->getInstance()Lcom/android/settings/widget/buttons/BrightnessButton;

    move-result-object v0

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/widget/buttons/BrightnessButton;->updateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;I)V

    .line 275
    invoke-static {}, Lcom/android/settings/widget/buttons/FlashlightButton;->getInstance()Lcom/android/settings/widget/buttons/FlashlightButton;

    move-result-object v0

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/widget/buttons/FlashlightButton;->updateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;I)V

    .line 277
    invoke-static {}, Lcom/android/settings/widget/buttons/LockScreenButton;->getInstance()Lcom/android/settings/widget/buttons/LockScreenButton;

    move-result-object v0

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/widget/buttons/LockScreenButton;->updateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;I)V

    .line 279
    invoke-static {}, Lcom/android/settings/widget/buttons/AirplaneButton;->getInstance()Lcom/android/settings/widget/buttons/AirplaneButton;

    move-result-object v0

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/widget/buttons/AirplaneButton;->updateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;I)V

    .line 281
    .line 291
    .end local v6           #backgroundLayout:I
    .end local v7           #verticalLayout:Z
    .end local v8           #widgetLayout:I
    :goto_1
    return-object v2

    .line 235
    .end local v2           #views:Landroid/widget/RemoteViews;
    .restart local v6       #backgroundLayout:I
    .restart local v7       #verticalLayout:Z
    .restart local v8       #widgetLayout:I
    :cond_1
    if-eqz v7, :cond_2

    if-ne v6, v5, :cond_2

    .line 236
    const v8, 0x7f03004e

    goto/16 :goto_0

    .line 245
    :cond_2
    if-eqz v7, :cond_0

    .line 246
    const v8, 0x7f03004d

    goto/16 :goto_0

    .line 287
    .end local v6           #backgroundLayout:I
    .end local v7           #verticalLayout:Z
    .end local v8           #widgetLayout:I
    :cond_3
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f030049

    invoke-direct {v2, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 289
    .restart local v2       #views:Landroid/widget/RemoteViews;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">> updateViews IN - Widget:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " no longer present or not configured"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 127
    const-string v2, ">> updateWidget IN"

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 128
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 129
    .local v0, manager:Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/android/settings/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 130
    .local v1, widgets:[I
    invoke-static {p0, v0, v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 131
    const-string v2, "<< updateWidget OUT"

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 132
    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 9
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    const/4 v8, 0x0

    .line 110
    const-string v6, "Received request to remove a widget"

    invoke-static {v6}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 111
    move-object v1, p2

    .local v1, arr$:[I
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v0, v1, v3

    .line 112
    .local v0, appWidgetId:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "widget_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 114
    .local v5, widgetPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 115
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 116
    const-string v6, "saved"

    invoke-interface {v2, v6, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 117
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    .end local v0           #appWidgetId:I
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v5           #widgetPreferences:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 101
    const-string v1, "Received request to remove last widget"

    invoke-static {v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 103
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, ".widget.SettingsAppWidgetProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 106
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 92
    const-string v1, "Received request to enable first widget"

    invoke-static {v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 94
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, ".widget.SettingsAppWidgetProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 97
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v5, "Received WiMAX change request"

    const-string v4, "<< onReceive OUT"

    .line 303
    const-string v2, ">> onReceive IN"

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 304
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 305
    const-string v2, "net.cactii.flash2.TORCH_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 386
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 388
    const-string v2, "<< onReceive OUT"

    invoke-static {v4}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 390
    :goto_1
    return-void

    .line 306
    :cond_1
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 307
    const-string v2, "Received Wifi state change"

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 308
    invoke-static {}, Lcom/android/settings/widget/buttons/WifiButton;->getInstance()Lcom/android/settings/widget/buttons/WifiButton;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/settings/widget/buttons/WifiButton;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 309
    :cond_2
    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 310
    const-string v2, "Received Wifi AP state change"

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 311
    invoke-static {}, Lcom/android/settings/widget/buttons/WifiApButton;->getInstance()Lcom/android/settings/widget/buttons/WifiApButton;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/settings/widget/buttons/WifiApButton;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 312
    :cond_3
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 313
    const-string v2, "Received Bluetooth state change"

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lcom/android/settings/widget/buttons/BluetoothButton;->getInstance()Lcom/android/settings/widget/buttons/BluetoothButton;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/settings/widget/buttons/BluetoothButton;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 315
    :cond_4
    const-string v2, "com.android.internal.telephony.NETWORK_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 316
    const-string v2, "Received Network mode state change"

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcom/android/settings/widget/buttons/NetworkModeButton;->getInstance()Lcom/android/settings/widget/buttons/NetworkModeButton;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/settings/widget/buttons/NetworkModeButton;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 318
    :cond_5
    const-string v2, "android.net.wimax.WIMAX_STATUS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 320
    :cond_6
    const-string v2, "Received WiMAX change request"

    invoke-static {v5}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 321
    invoke-static {}, Lcom/android/settings/widget/buttons/WimaxButton;->getInstance()Lcom/android/settings/widget/buttons/WimaxButton;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/settings/widget/buttons/WimaxButton;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 322
    :cond_7
    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 324
    :cond_8
    const-string v2, "Received power mode state change"

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 325
    invoke-static {}, Lcom/android/settings/widget/buttons/PowerButton;->getInstance()Lcom/android/settings/widget/buttons/PowerButton;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/settings/widget/buttons/PowerButton;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 326
    :cond_9
    const-string v2, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 327
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 328
    .local v1, data:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 329
    .local v0, buttonId:I
    if-nez v0, :cond_a

    .line 330
    const-string v2, "Received wifi button change request"

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 331
    invoke-static {}, Lcom/android/settings/widget/buttons/WifiButton;->getInstance()Lcom/android/settings/widget/buttons/WifiButton;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/settings/widget/buttons/WifiButton;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 332
    :cond_a
    const/16 v2, 0xd

    if-ne v0, v2, :cond_b

    .line 333
    const-string v2, "Received wifi ap button change request"

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/android/settings/widget/buttons/WifiApButton;->getInstance()Lcom/android/settings/widget/buttons/WifiApButton;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/settings/widget/buttons/WifiApButton;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 335
    :cond_b
    const/4 v2, 0x4

    if-ne v0, v2, :cond_c

    .line 336
    const-string v2, "Received bluetooth button change request"

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 337
    invoke-static {}, Lcom/android/settings/widget/buttons/BluetoothButton;->getInstance()Lcom/android/settings/widget/buttons/BluetoothButton;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/settings/widget/buttons/BluetoothButton;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 338
    :cond_c
    const/4 v2, 0x3

    if-ne v0, v2, :cond_d

    .line 339
    const-string v2, "Received GPS button change request"

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 340
    invoke-static {}, Lcom/android/settings/widget/buttons/GPSButton;->getInstance()Lcom/android/settings/widget/buttons/GPSButton;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/settings/widget/buttons/GPSButton;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 341
    :cond_d
    const/4 v2, 0x5

    if-ne v0, v2, :cond_e

    .line 342
    const-string v2, "Received mobile data button change request"

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 343
    invoke-static {}, Lcom/android/settings/widget/buttons/MobileDataButton;->getInstance()Lcom/android/settings/widget/buttons/MobileDataButton;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/settings/widget/buttons/MobileDataButton;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 344
    :cond_e
    const/4 v2, 0x7

    if-ne v0, v2, :cond_f

    .line 345
    const-string v2, "Received network mode button change request"

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 346
    invoke-static {}, Lcom/android/settings/widget/buttons/NetworkModeButton;->getInstance()Lcom/android/settings/widget/buttons/NetworkModeButton;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/settings/widget/buttons/NetworkModeButton;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 347
    :cond_f
    const/4 v2, 0x2

    if-ne v0, v2, :cond_10

    .line 348
    const-string v2, "Received sync button change request"

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lcom/android/settings/widget/buttons/SyncButton;->getInstance()Lcom/android/settings/widget/buttons/SyncButton;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/settings/widget/buttons/SyncButton;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 350
    :cond_10
    const/4 v2, 0x6

    if-ne v0, v2, :cond_11

    .line 351
    const-string v2, "Received sound button change request"

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 352
    invoke-static {}, Lcom/android/settings/widget/buttons/SoundButton;->getInstance()Lcom/android/settings/widget/buttons/SoundButton;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/settings/widget/buttons/SoundButton;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 353
    :cond_11
    const/16 v2, 0x8

    if-ne v0, v2, :cond_12

    .line 354
    const-string v2, "Received screen timeout change request"

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 355
    invoke-static {}, Lcom/android/settings/widget/buttons/ScreenTimeoutButton;->getInstance()Lcom/android/settings/widget/buttons/ScreenTimeoutButton;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/settings/widget/buttons/ScreenTimeoutButton;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 356
    :cond_12
    const/16 v2, 0x9

    if-ne v0, v2, :cond_13

    .line 357
    const-string v2, "Received auto rotate change request"

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 358
    invoke-static {}, Lcom/android/settings/widget/buttons/AutoRotateButton;->getInstance()Lcom/android/settings/widget/buttons/AutoRotateButton;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/settings/widget/buttons/AutoRotateButton;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 359
    :cond_13
    const/4 v2, 0x1

    if-ne v0, v2, :cond_14

    .line 360
    const-string v2, "Received brightness change request"

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 361
    invoke-static {}, Lcom/android/settings/widget/buttons/BrightnessButton;->getInstance()Lcom/android/settings/widget/buttons/BrightnessButton;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/settings/widget/buttons/BrightnessButton;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 362
    :cond_14
    const/16 v2, 0xa

    if-ne v0, v2, :cond_15

    .line 363
    const-string v2, "Received flahslight change request"

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 364
    invoke-static {}, Lcom/android/settings/widget/buttons/FlashlightButton;->getInstance()Lcom/android/settings/widget/buttons/FlashlightButton;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/settings/widget/buttons/FlashlightButton;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 365
    :cond_15
    const/16 v2, 0xc

    if-ne v0, v2, :cond_16

    .line 366
    const-string v2, "Received Lock Screen change request"

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 367
    invoke-static {}, Lcom/android/settings/widget/buttons/LockScreenButton;->getInstance()Lcom/android/settings/widget/buttons/LockScreenButton;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/settings/widget/buttons/LockScreenButton;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 368
    :cond_16
    const/16 v2, 0xb

    if-ne v0, v2, :cond_17

    .line 369
    const-string v2, "Received airplane change request"

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 370
    invoke-static {}, Lcom/android/settings/widget/buttons/AirplaneButton;->getInstance()Lcom/android/settings/widget/buttons/AirplaneButton;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/settings/widget/buttons/AirplaneButton;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 371
    :cond_17
    const/16 v2, 0xe

    if-ne v0, v2, :cond_0

    .line 372
    const-string v2, "Received WiMAX change request"

    invoke-static {v5}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 373
    invoke-static {}, Lcom/android/settings/widget/buttons/WimaxButton;->getInstance()Lcom/android/settings/widget/buttons/WimaxButton;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/settings/widget/buttons/WimaxButton;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 375
    .end local v0           #buttonId:I
    .end local v1           #data:Landroid/net/Uri;
    :cond_18
    const-string v2, "com.android.internal.telephony.MOBILE_DATA_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.settings.GPS_STATUS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring Action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 383
    const-string v2, "<< onReceive OUT"

    invoke-static {v4}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 1
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 136
    const-string v0, ">> onUpdate IN"

    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 137
    invoke-static {p1, p2, p3}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 138
    const-string v0, "<< onUpdate OUT"

    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 139
    return-void
.end method
