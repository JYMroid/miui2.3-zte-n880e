.class public Lcom/android/settings/widget/buttons/SoundButton;
.super Lcom/android/settings/widget/buttons/WidgetButton;
.source "SoundButton.java"


# static fields
.field private static final DEFAULT_SETTTING:I = 0x0

.field public static final MODE_SOUNDVIB_VIB:I = 0x0

.field public static final MODE_SOUNDVIB_VIB_SILENT:I = 0x3

.field public static final MODE_SOUND_SILENT:I = 0x2

.field public static final MODE_SOUND_VIB:I = 0x1

.field public static final MODE_SOUND_VIB_SILENT:I = 0x4

.field public static final RINGER_MODE_SILENT:I = 0x1

.field public static final RINGER_MODE_SOUND_AND_VIBRATE:I = 0x4

.field public static final RINGER_MODE_SOUND_ONLY:I = 0x3

.field public static final RINGER_MODE_UNKNOWN:I = 0x0

.field public static final RINGER_MODE_VIBRATE_ONLY:I = 0x2

.field private static currentMode:I

.field static ownButton:Lcom/android/settings/widget/buttons/SoundButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/widget/buttons/SoundButton;->ownButton:Lcom/android/settings/widget/buttons/SoundButton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/settings/widget/buttons/WidgetButton;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/settings/widget/buttons/SoundButton;
    .locals 1

    .prologue
    .line 218
    sget-object v0, Lcom/android/settings/widget/buttons/SoundButton;->ownButton:Lcom/android/settings/widget/buttons/SoundButton;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Lcom/android/settings/widget/buttons/SoundButton;

    invoke-direct {v0}, Lcom/android/settings/widget/buttons/SoundButton;-><init>()V

    sput-object v0, Lcom/android/settings/widget/buttons/SoundButton;->ownButton:Lcom/android/settings/widget/buttons/SoundButton;

    .line 221
    :cond_0
    sget-object v0, Lcom/android/settings/widget/buttons/SoundButton;->ownButton:Lcom/android/settings/widget/buttons/SoundButton;

    return-object v0
.end method

.method private static getSoundState(Landroid/content/Context;)I
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 42
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 44
    .local v0, mAudioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 45
    .local v1, ringMode:I
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v2

    .line 47
    .local v2, vibrateMode:I
    if-ne v1, v5, :cond_0

    if-ne v2, v4, :cond_0

    .line 49
    const/4 v3, 0x4

    .line 57
    :goto_0
    return v3

    .line 50
    :cond_0
    if-ne v1, v5, :cond_1

    .line 51
    const/4 v3, 0x3

    goto :goto_0

    .line 52
    :cond_1
    if-ne v1, v4, :cond_2

    move v3, v5

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    if-nez v1, :cond_3

    move v3, v4

    .line 55
    goto :goto_0

    :cond_3
    move v3, v6

    .line 57
    goto :goto_0
.end method

.method private supports(I)Z
    .locals 5
    .parameter "ringerMode"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 192
    packed-switch p1, :pswitch_data_0

    .line 214
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 194
    :pswitch_0
    sget v0, Lcom/android/settings/widget/buttons/SoundButton;->currentMode:I

    if-eq v0, v4, :cond_1

    sget v0, Lcom/android/settings/widget/buttons/SoundButton;->currentMode:I

    if-eq v0, v2, :cond_1

    sget v0, Lcom/android/settings/widget/buttons/SoundButton;->currentMode:I

    if-ne v0, v3, :cond_0

    :cond_1
    move v0, v1

    .line 196
    goto :goto_0

    .line 199
    :pswitch_1
    sget v0, Lcom/android/settings/widget/buttons/SoundButton;->currentMode:I

    if-eq v0, v1, :cond_2

    sget v0, Lcom/android/settings/widget/buttons/SoundButton;->currentMode:I

    if-eqz v0, :cond_2

    sget v0, Lcom/android/settings/widget/buttons/SoundButton;->currentMode:I

    if-eq v0, v2, :cond_2

    sget v0, Lcom/android/settings/widget/buttons/SoundButton;->currentMode:I

    if-ne v0, v3, :cond_0

    :cond_2
    move v0, v1

    .line 202
    goto :goto_0

    .line 205
    :pswitch_2
    sget v0, Lcom/android/settings/widget/buttons/SoundButton;->currentMode:I

    if-eq v0, v1, :cond_3

    sget v0, Lcom/android/settings/widget/buttons/SoundButton;->currentMode:I

    if-eq v0, v4, :cond_3

    sget v0, Lcom/android/settings/widget/buttons/SoundButton;->currentMode:I

    if-ne v0, v3, :cond_0

    :cond_3
    move v0, v1

    .line 207
    goto :goto_0

    .line 210
    :pswitch_3
    sget v0, Lcom/android/settings/widget/buttons/SoundButton;->currentMode:I

    if-eqz v0, :cond_4

    sget v0, Lcom/android/settings/widget/buttons/SoundButton;->currentMode:I

    if-ne v0, v2, :cond_0

    :cond_4
    move v0, v1

    .line 211
    goto :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method initButton()V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/settings/widget/buttons/SoundButton;->buttonID:I

    .line 227
    const-string v0, "toggleSound"

    iput-object v0, p0, Lcom/android/settings/widget/buttons/SoundButton;->preferenceName:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public toggleState(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v7, "vibrate_in_silent"

    .line 67
    invoke-static {p1}, Lcom/android/settings/widget/buttons/SoundButton;->getSoundState(Landroid/content/Context;)I

    move-result v0

    .line 69
    .local v0, currentMode:I
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 71
    .local v1, mAudioManager:Landroid/media/AudioManager;
    packed-switch v0, :pswitch_data_0

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    invoke-static {v2, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 184
    invoke-virtual {v1, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 185
    invoke-virtual {v1, v5, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 189
    :goto_0
    return-void

    .line 73
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/android/settings/widget/buttons/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    invoke-static {v2, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 76
    invoke-virtual {v1, v5, v6}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 78
    invoke-virtual {v1, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-direct {p0, v6}, Lcom/android/settings/widget/buttons/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    invoke-static {v2, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 82
    invoke-virtual {v1, v5, v6}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 84
    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 85
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/settings/widget/buttons/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    invoke-static {v2, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 88
    invoke-virtual {v1, v5, v5}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 90
    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    invoke-static {v2, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 94
    invoke-virtual {v1, v5, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 96
    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 100
    :pswitch_1
    invoke-direct {p0, v6}, Lcom/android/settings/widget/buttons/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    invoke-static {v2, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 103
    invoke-virtual {v1, v5, v6}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 105
    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 106
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/settings/widget/buttons/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    invoke-static {v2, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    invoke-virtual {v1, v5, v5}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 111
    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 112
    :cond_4
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/settings/widget/buttons/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    invoke-static {v2, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    invoke-virtual {v1, v5, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 117
    invoke-virtual {v1, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto/16 :goto_0

    .line 119
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    invoke-static {v2, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 121
    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 122
    invoke-virtual {v1, v5, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto/16 :goto_0

    .line 128
    :pswitch_2
    invoke-direct {p0, v4}, Lcom/android/settings/widget/buttons/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    invoke-static {v2, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 132
    invoke-virtual {v1, v5, v5}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto/16 :goto_0

    .line 134
    :cond_6
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/settings/widget/buttons/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    invoke-static {v2, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 137
    invoke-virtual {v1, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 138
    invoke-virtual {v1, v5, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto/16 :goto_0

    .line 140
    :cond_7
    invoke-direct {p0, v3}, Lcom/android/settings/widget/buttons/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    invoke-static {v2, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    invoke-virtual {v1, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 144
    invoke-virtual {v1, v5, v6}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto/16 :goto_0

    .line 147
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    invoke-static {v2, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 149
    invoke-virtual {v1, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 150
    invoke-virtual {v1, v5, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto/16 :goto_0

    .line 155
    :pswitch_3
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/settings/widget/buttons/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    invoke-static {v2, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 158
    invoke-virtual {v1, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 159
    invoke-virtual {v1, v5, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto/16 :goto_0

    .line 161
    :cond_9
    invoke-direct {p0, v3}, Lcom/android/settings/widget/buttons/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    invoke-static {v2, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 164
    invoke-virtual {v1, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 165
    invoke-virtual {v1, v5, v6}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto/16 :goto_0

    .line 167
    :cond_a
    invoke-direct {p0, v6}, Lcom/android/settings/widget/buttons/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    invoke-static {v2, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 170
    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 171
    invoke-virtual {v1, v5, v6}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto/16 :goto_0

    .line 174
    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    invoke-static {v2, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 176
    invoke-virtual {v1, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 177
    invoke-virtual {v1, v5, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto/16 :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateState(Landroid/content/Context;Landroid/content/SharedPreferences;[I)V
    .locals 7
    .parameter "context"
    .parameter "globalPreferences"
    .parameter "appWidgetIds"

    .prologue
    const v6, 0x7f020045

    const/4 v5, 0x1

    const/4 v4, 0x5

    const/4 v2, 0x0

    const-string v3, "ringModeVibrateAsOn"

    .line 232
    invoke-static {p1}, Lcom/android/settings/widget/buttons/SoundButton;->getSoundState(Landroid/content/Context;)I

    move-result v0

    .line 233
    .local v0, soundState:I
    const-string v1, "ringModeSpinner"

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/settings/widget/buttons/SoundButton;->currentMode:I

    .line 235
    packed-switch v0, :pswitch_data_0

    .line 274
    :goto_0
    return-void

    .line 237
    :pswitch_0
    const-string v1, "ringModeVibrateAsOn"

    invoke-interface {p2, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    iput v6, p0, Lcom/android/settings/widget/buttons/SoundButton;->currentIcon:I

    .line 239
    iput v2, p0, Lcom/android/settings/widget/buttons/SoundButton;->currentState:I

    goto :goto_0

    .line 241
    :cond_0
    const v1, 0x7f020046

    iput v1, p0, Lcom/android/settings/widget/buttons/SoundButton;->currentIcon:I

    .line 242
    iput v5, p0, Lcom/android/settings/widget/buttons/SoundButton;->currentState:I

    goto :goto_0

    .line 246
    :pswitch_1
    const-string v1, "ringModeVibrateAsOn"

    invoke-interface {p2, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    iput v6, p0, Lcom/android/settings/widget/buttons/SoundButton;->currentIcon:I

    .line 248
    iput v4, p0, Lcom/android/settings/widget/buttons/SoundButton;->currentState:I

    goto :goto_0

    .line 250
    :cond_1
    const v1, 0x7f020046

    iput v1, p0, Lcom/android/settings/widget/buttons/SoundButton;->currentIcon:I

    .line 251
    iput v4, p0, Lcom/android/settings/widget/buttons/SoundButton;->currentState:I

    goto :goto_0

    .line 255
    :pswitch_2
    const-string v1, "ringModeVibrateAsOn"

    invoke-interface {p2, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 256
    const v1, 0x7f020049

    iput v1, p0, Lcom/android/settings/widget/buttons/SoundButton;->currentIcon:I

    .line 257
    iput v5, p0, Lcom/android/settings/widget/buttons/SoundButton;->currentState:I

    goto :goto_0

    .line 259
    :cond_2
    const v1, 0x7f020048

    iput v1, p0, Lcom/android/settings/widget/buttons/SoundButton;->currentIcon:I

    .line 260
    iput v2, p0, Lcom/android/settings/widget/buttons/SoundButton;->currentState:I

    goto :goto_0

    .line 264
    :pswitch_3
    const-string v1, "ringModeVibrateAsOn"

    invoke-interface {p2, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 265
    const v1, 0x7f020047

    iput v1, p0, Lcom/android/settings/widget/buttons/SoundButton;->currentIcon:I

    .line 266
    iput v4, p0, Lcom/android/settings/widget/buttons/SoundButton;->currentState:I

    goto :goto_0

    .line 268
    :cond_3
    const v1, 0x7f020047

    iput v1, p0, Lcom/android/settings/widget/buttons/SoundButton;->currentIcon:I

    .line 269
    iput v2, p0, Lcom/android/settings/widget/buttons/SoundButton;->currentState:I

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
