.class public Lcom/android/settings/widget/buttons/BrightnessButton;
.super Lcom/android/settings/widget/buttons/WidgetButton;
.source "BrightnessButton.java"


# static fields
.field private static final AUTO_BACKLIGHT:I = -0x1

.field private static DEFAULT_BACKLIGHT:I = 0x0

.field private static final DEFAULT_SETTTING:I = 0x0

.field private static HIGH_BACKLIGHT:I = 0x0

.field private static LOW_BACKLIGHT:I = 0x0

.field private static final MAXIMUM_BACKLIGHT:I = 0xff

.field private static MID_BACKLIGHT:I = 0x0

.field private static final MINIMUM_BACKLIGHT:I = 0x1e

.field private static final MODE_AUTO_LOW_MAX:I = 0x2

.field private static final MODE_AUTO_MIN_DEF_MAX:I = 0x0

.field private static final MODE_AUTO_MIN_LOW_MID_HIGH_MAX:I = 0x1

.field private static final MODE_MIN_MAX:I = 0x3

.field private static currentMode:I

.field static ownButton:Lcom/android/settings/widget/buttons/BrightnessButton;

.field private static supportsAutomaticMode:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    const/16 v0, 0x66

    sput v0, Lcom/android/settings/widget/buttons/BrightnessButton;->DEFAULT_BACKLIGHT:I

    .line 29
    const/16 v0, 0x3f

    sput v0, Lcom/android/settings/widget/buttons/BrightnessButton;->LOW_BACKLIGHT:I

    .line 31
    const/16 v0, 0x7f

    sput v0, Lcom/android/settings/widget/buttons/BrightnessButton;->MID_BACKLIGHT:I

    .line 33
    const/16 v0, 0xbf

    sput v0, Lcom/android/settings/widget/buttons/BrightnessButton;->HIGH_BACKLIGHT:I

    .line 47
    sput-object v1, Lcom/android/settings/widget/buttons/BrightnessButton;->supportsAutomaticMode:Ljava/lang/Boolean;

    .line 49
    sput-object v1, Lcom/android/settings/widget/buttons/BrightnessButton;->ownButton:Lcom/android/settings/widget/buttons/BrightnessButton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/settings/widget/buttons/WidgetButton;-><init>()V

    return-void
.end method

.method private getBrightnessState(Landroid/content/Context;)I
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 231
    .local v0, brightness:I
    sget v1, Lcom/android/settings/widget/buttons/BrightnessButton;->LOW_BACKLIGHT:I

    if-ge v0, v1, :cond_0

    move v1, v3

    .line 250
    :goto_0
    return v1

    .line 233
    :cond_0
    sget v1, Lcom/android/settings/widget/buttons/BrightnessButton;->DEFAULT_BACKLIGHT:I

    if-ge v0, v1, :cond_1

    move v1, v3

    .line 234
    goto :goto_0

    .line 235
    :cond_1
    sget v1, Lcom/android/settings/widget/buttons/BrightnessButton;->MID_BACKLIGHT:I

    if-ge v0, v1, :cond_3

    .line 236
    sget v1, Lcom/android/settings/widget/buttons/BrightnessButton;->currentMode:I

    if-ne v1, v4, :cond_2

    move v1, v3

    .line 237
    goto :goto_0

    :cond_2
    move v1, v6

    .line 239
    goto :goto_0

    .line 241
    :cond_3
    sget v1, Lcom/android/settings/widget/buttons/BrightnessButton;->HIGH_BACKLIGHT:I

    if-ge v0, v1, :cond_5

    .line 242
    sget v1, Lcom/android/settings/widget/buttons/BrightnessButton;->currentMode:I

    if-ne v1, v4, :cond_4

    move v1, v6

    .line 243
    goto :goto_0

    :cond_4
    move v1, v5

    .line 245
    goto :goto_0

    .line 247
    :cond_5
    const/16 v1, 0xff

    if-ge v0, v1, :cond_6

    move v1, v5

    .line 248
    goto :goto_0

    :cond_6
    move v1, v4

    .line 250
    goto :goto_0
.end method

.method public static getInstance()Lcom/android/settings/widget/buttons/BrightnessButton;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/android/settings/widget/buttons/BrightnessButton;->ownButton:Lcom/android/settings/widget/buttons/BrightnessButton;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/android/settings/widget/buttons/BrightnessButton;

    invoke-direct {v0}, Lcom/android/settings/widget/buttons/BrightnessButton;-><init>()V

    sput-object v0, Lcom/android/settings/widget/buttons/BrightnessButton;->ownButton:Lcom/android/settings/widget/buttons/BrightnessButton;

    .line 194
    :cond_0
    sget-object v0, Lcom/android/settings/widget/buttons/BrightnessButton;->ownButton:Lcom/android/settings/widget/buttons/BrightnessButton;

    return-object v0
.end method

.method public static getMinBacklight(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 68
    const/16 v0, 0x1e

    return v0
.end method

.method private getNextBrightnessValue(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/16 v4, 0xff

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 114
    .local v0, brightness:I
    invoke-static {p1}, Lcom/android/settings/widget/buttons/BrightnessButton;->isAutomaticModeSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/android/settings/widget/buttons/BrightnessButton;->isBrightnessSetToAutomatic(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    sget v1, Lcom/android/settings/widget/buttons/BrightnessButton;->currentMode:I

    if-ne v1, v5, :cond_0

    .line 116
    sget v1, Lcom/android/settings/widget/buttons/BrightnessButton;->LOW_BACKLIGHT:I

    .line 155
    :goto_0
    return v1

    .line 118
    :cond_0
    invoke-static {p1}, Lcom/android/settings/widget/buttons/BrightnessButton;->getMinBacklight(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    .line 120
    :cond_1
    sget v1, Lcom/android/settings/widget/buttons/BrightnessButton;->LOW_BACKLIGHT:I

    if-ge v0, v1, :cond_4

    .line 121
    sget v1, Lcom/android/settings/widget/buttons/BrightnessButton;->currentMode:I

    if-ne v1, v5, :cond_2

    .line 122
    sget v1, Lcom/android/settings/widget/buttons/BrightnessButton;->LOW_BACKLIGHT:I

    goto :goto_0

    .line 123
    :cond_2
    sget v1, Lcom/android/settings/widget/buttons/BrightnessButton;->currentMode:I

    if-ne v1, v6, :cond_3

    move v1, v4

    .line 124
    goto :goto_0

    .line 126
    :cond_3
    sget v1, Lcom/android/settings/widget/buttons/BrightnessButton;->DEFAULT_BACKLIGHT:I

    goto :goto_0

    .line 128
    :cond_4
    sget v1, Lcom/android/settings/widget/buttons/BrightnessButton;->DEFAULT_BACKLIGHT:I

    if-ge v0, v1, :cond_8

    .line 129
    sget v1, Lcom/android/settings/widget/buttons/BrightnessButton;->currentMode:I

    if-nez v1, :cond_5

    .line 130
    sget v1, Lcom/android/settings/widget/buttons/BrightnessButton;->DEFAULT_BACKLIGHT:I

    goto :goto_0

    .line 131
    :cond_5
    sget v1, Lcom/android/settings/widget/buttons/BrightnessButton;->currentMode:I

    if-eq v1, v5, :cond_6

    sget v1, Lcom/android/settings/widget/buttons/BrightnessButton;->currentMode:I

    if-ne v1, v6, :cond_7

    :cond_6
    move v1, v4

    .line 132
    goto :goto_0

    .line 134
    :cond_7
    sget v1, Lcom/android/settings/widget/buttons/BrightnessButton;->MID_BACKLIGHT:I

    goto :goto_0

    .line 136
    :cond_8
    sget v1, Lcom/android/settings/widget/buttons/BrightnessButton;->MID_BACKLIGHT:I

    if-ge v0, v1, :cond_a

    .line 137
    sget v1, Lcom/android/settings/widget/buttons/BrightnessButton;->currentMode:I

    if-ne v1, v7, :cond_9

    .line 138
    sget v1, Lcom/android/settings/widget/buttons/BrightnessButton;->MID_BACKLIGHT:I

    goto :goto_0

    :cond_9
    move v1, v4

    .line 140
    goto :goto_0

    .line 142
    :cond_a
    sget v1, Lcom/android/settings/widget/buttons/BrightnessButton;->HIGH_BACKLIGHT:I

    if-ge v0, v1, :cond_c

    .line 143
    sget v1, Lcom/android/settings/widget/buttons/BrightnessButton;->currentMode:I

    if-ne v1, v7, :cond_b

    .line 144
    sget v1, Lcom/android/settings/widget/buttons/BrightnessButton;->HIGH_BACKLIGHT:I

    goto :goto_0

    :cond_b
    move v1, v4

    .line 146
    goto :goto_0

    .line 148
    :cond_c
    if-ge v0, v4, :cond_d

    move v1, v4

    .line 149
    goto :goto_0

    .line 150
    :cond_d
    invoke-static {p1}, Lcom/android/settings/widget/buttons/BrightnessButton;->isAutomaticModeSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget v1, Lcom/android/settings/widget/buttons/BrightnessButton;->currentMode:I

    if-eq v1, v6, :cond_e

    .line 151
    const/4 v1, -0x1

    goto :goto_0

    .line 152
    :cond_e
    sget v1, Lcom/android/settings/widget/buttons/BrightnessButton;->currentMode:I

    if-ne v1, v5, :cond_f

    .line 153
    sget v1, Lcom/android/settings/widget/buttons/BrightnessButton;->LOW_BACKLIGHT:I

    goto :goto_0

    .line 155
    :cond_f
    invoke-static {p1}, Lcom/android/settings/widget/buttons/BrightnessButton;->getMinBacklight(Landroid/content/Context;)I

    move-result v1

    goto :goto_0
.end method

.method private static isAutomaticModeSupported(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 74
    sget-object v0, Lcom/android/settings/widget/buttons/BrightnessButton;->supportsAutomaticMode:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/widget/buttons/BrightnessButton;->supportsAutomaticMode:Ljava/lang/Boolean;

    .line 82
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/settings/widget/buttons/BrightnessButton;->supportsAutomaticMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 79
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/widget/buttons/BrightnessButton;->supportsAutomaticMode:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private static isBrightnessSetToAutomatic(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 93
    :try_start_0
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 95
    .local v2, power:Landroid/os/IPowerManager;
    if-eqz v2, :cond_1

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 98
    .local v0, brightnessMode:I
    if-ne v0, v5, :cond_0

    move v3, v5

    .line 103
    .end local v0           #brightnessMode:I
    .end local v2           #power:Landroid/os/IPowerManager;
    :goto_0
    return v3

    .restart local v0       #brightnessMode:I
    .restart local v2       #power:Landroid/os/IPowerManager;
    :cond_0
    move v3, v6

    .line 98
    goto :goto_0

    .line 100
    .end local v0           #brightnessMode:I
    .end local v2           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 101
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SettingsAppWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBrightnessMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    move v3, v6

    .line 103
    goto :goto_0
.end method


# virtual methods
.method initButton()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/widget/buttons/BrightnessButton;->buttonID:I

    .line 200
    const-string v0, "toggleBrightness"

    iput-object v0, p0, Lcom/android/settings/widget/buttons/BrightnessButton;->preferenceName:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public toggleState(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const-string v4, "screen_brightness_mode"

    .line 166
    :try_start_0
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    .line 168
    .local v3, power:Landroid/os/IPowerManager;
    if-eqz v3, :cond_0

    .line 169
    invoke-direct {p0, p1}, Lcom/android/settings/widget/buttons/BrightnessButton;->getNextBrightnessValue(Landroid/content/Context;)I

    move-result v0

    .line 170
    .local v0, brightness:I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 171
    .local v1, contentResolver:Landroid/content/ContentResolver;
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 172
    const-string v4, "screen_brightness_mode"

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 188
    .end local v0           #brightness:I
    .end local v1           #contentResolver:Landroid/content/ContentResolver;
    .end local v3           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 175
    .restart local v0       #brightness:I
    .restart local v1       #contentResolver:Landroid/content/ContentResolver;
    .restart local v3       #power:Landroid/os/IPowerManager;
    :cond_1
    invoke-static {p1}, Lcom/android/settings/widget/buttons/BrightnessButton;->isAutomaticModeSupported(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 176
    const-string v4, "screen_brightness_mode"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 180
    :cond_2
    invoke-interface {v3, v0}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 181
    const-string v4, "screen_brightness"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    .end local v0           #brightness:I
    .end local v1           #contentResolver:Landroid/content/ContentResolver;
    .end local v3           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 186
    .local v2, e:Landroid/os/RemoteException;
    const-string v4, "SettingsAppWidgetProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toggleBrightness: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateState(Landroid/content/Context;Landroid/content/SharedPreferences;[I)V
    .locals 6
    .parameter "context"
    .parameter "globalPreferences"
    .parameter "appWidgetIds"

    .prologue
    const v5, 0x7f020038

    const v4, 0x7f020037

    const/4 v3, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 206
    const-string v0, "brightnessSpinner"

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/widget/buttons/BrightnessButton;->currentMode:I

    .line 208
    invoke-static {p1}, Lcom/android/settings/widget/buttons/BrightnessButton;->isBrightnessSetToAutomatic(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const v0, 0x7f020035

    iput v0, p0, Lcom/android/settings/widget/buttons/BrightnessButton;->currentIcon:I

    .line 210
    iput v1, p0, Lcom/android/settings/widget/buttons/BrightnessButton;->currentState:I

    .line 225
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/widget/buttons/BrightnessButton;->getBrightnessState(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 213
    iput v5, p0, Lcom/android/settings/widget/buttons/BrightnessButton;->currentIcon:I

    .line 214
    iput v1, p0, Lcom/android/settings/widget/buttons/BrightnessButton;->currentState:I

    goto :goto_0

    .line 215
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/widget/buttons/BrightnessButton;->getBrightnessState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 216
    iput v5, p0, Lcom/android/settings/widget/buttons/BrightnessButton;->currentIcon:I

    .line 217
    iput v3, p0, Lcom/android/settings/widget/buttons/BrightnessButton;->currentState:I

    goto :goto_0

    .line 218
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/widget/buttons/BrightnessButton;->getBrightnessState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 219
    iput v4, p0, Lcom/android/settings/widget/buttons/BrightnessButton;->currentIcon:I

    .line 220
    iput v3, p0, Lcom/android/settings/widget/buttons/BrightnessButton;->currentState:I

    goto :goto_0

    .line 222
    :cond_3
    iput v4, p0, Lcom/android/settings/widget/buttons/BrightnessButton;->currentIcon:I

    .line 223
    iput v2, p0, Lcom/android/settings/widget/buttons/BrightnessButton;->currentState:I

    goto :goto_0
.end method
