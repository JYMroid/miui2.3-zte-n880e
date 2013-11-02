.class public abstract Lcom/android/settings/widget/buttons/WidgetButton;
.super Ljava/lang/Object;
.source "WidgetButton.java"


# static fields
.field public static final BUTTON_2G3G:I = 0x7

.field public static final BUTTON_AIRPLANE:I = 0xb

.field public static final BUTTON_AUTO_ROTATE:I = 0x9

.field public static final BUTTON_BLUETOOTH:I = 0x4

.field public static final BUTTON_BRIGHTNESS:I = 0x1

.field public static final BUTTON_DATA:I = 0x5

.field public static final BUTTON_FLASHLIGHT:I = 0xa

.field public static final BUTTON_GPS:I = 0x3

.field public static final BUTTON_LOCK_SCREEN:I = 0xc

.field public static final BUTTON_SCREEN_TIMEOUT:I = 0x8

.field public static final BUTTON_SOUND:I = 0x6

.field public static final BUTTON_SYNC:I = 0x2

.field public static final BUTTON_WIFI:I = 0x0

.field public static final BUTTON_WIFI_AP:I = 0xd

.field public static final BUTTON_WIMAX:I = 0xe


# instance fields
.field buttonID:I

.field currentIcon:I

.field currentState:I

.field preferenceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/widget/buttons/WidgetButton;->preferenceName:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/widget/buttons/WidgetButton;->initButton()V

    .line 70
    return-void
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 5
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "buttonId"

    .prologue
    const/4 v4, 0x0

    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 134
    .local v0, launchIntent:Landroid/content/Intent;
    const-class v2, Lcom/android/settings/widget/SettingsAppWidgetProvider;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 135
    const-string v2, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "custom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 137
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 144
    .local v1, pi:Landroid/app/PendingIntent;
    return-object v1
.end method

.method private isLeft(Landroid/content/SharedPreferences;)Z
    .locals 3
    .parameter "widgetPreferences"

    .prologue
    const/4 v2, 0x1

    .line 215
    iget-object v0, p0, Lcom/android/settings/widget/buttons/WidgetButton;->preferenceName:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRight(Landroid/content/SharedPreferences;)Z
    .locals 3
    .parameter "widgetPreferences"

    .prologue
    .line 210
    const-string v0, "lastButton"

    const/4 v1, 0x6

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/buttons/WidgetButton;->preferenceName:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)I
    .locals 1
    .parameter "posi"

    .prologue
    .line 302
    packed-switch p1, :pswitch_data_0

    .line 324
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 304
    :pswitch_0
    const v0, 0x7f0b00e8

    goto :goto_0

    .line 306
    :pswitch_1
    const v0, 0x7f0b00ec

    goto :goto_0

    .line 308
    :pswitch_2
    const v0, 0x7f0b00f0

    goto :goto_0

    .line 310
    :pswitch_3
    const v0, 0x7f0b00f4

    goto :goto_0

    .line 312
    :pswitch_4
    const v0, 0x7f0b00f8

    goto :goto_0

    .line 314
    :pswitch_5
    const v0, 0x7f0b00fc

    goto :goto_0

    .line 316
    :pswitch_6
    const v0, 0x7f0b0100

    goto :goto_0

    .line 318
    :pswitch_7
    const v0, 0x7f0b0104

    goto :goto_0

    .line 320
    :pswitch_8
    const v0, 0x7f0b0108

    goto :goto_0

    .line 322
    :pswitch_9
    const v0, 0x7f0b010c

    goto :goto_0

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public getButtonState(Landroid/content/SharedPreferences;)I
    .locals 6
    .parameter "widgetPreferences"

    .prologue
    const/16 v5, 0xb

    const/16 v4, 0xa

    const/4 v3, 0x1

    .line 149
    const-string v2, "useRoundCorners"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 151
    .local v0, useRoundCorners:Z
    const-string v2, "useVertical"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 153
    .local v1, useVerticalLayout:Z
    if-eqz v0, :cond_13

    .line 154
    invoke-direct {p0, p1}, Lcom/android/settings/widget/buttons/WidgetButton;->isLeft(Landroid/content/SharedPreferences;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 155
    iget v2, p0, Lcom/android/settings/widget/buttons/WidgetButton;->currentState:I

    if-ne v2, v3, :cond_1

    .line 156
    if-eqz v1, :cond_0

    const v2, 0x7f02002a

    .line 204
    :goto_0
    return v2

    .line 156
    :cond_0
    const v2, 0x7f020021

    goto :goto_0

    .line 158
    :cond_1
    iget v2, p0, Lcom/android/settings/widget/buttons/WidgetButton;->currentState:I

    if-nez v2, :cond_3

    .line 159
    if-eqz v1, :cond_2

    const v2, 0x7f02001e

    goto :goto_0

    :cond_2
    const v2, 0x7f02001b

    goto :goto_0

    .line 161
    :cond_3
    iget v2, p0, Lcom/android/settings/widget/buttons/WidgetButton;->currentState:I

    if-ne v2, v5, :cond_5

    .line 162
    if-eqz v1, :cond_4

    const v2, 0x7f020027

    goto :goto_0

    :cond_4
    const v2, 0x7f020024

    goto :goto_0

    .line 164
    :cond_5
    iget v2, p0, Lcom/android/settings/widget/buttons/WidgetButton;->currentState:I

    if-ne v2, v4, :cond_7

    .line 165
    if-eqz v1, :cond_6

    const v2, 0x7f020015

    goto :goto_0

    :cond_6
    const v2, 0x7f020012

    goto :goto_0

    .line 168
    :cond_7
    if-eqz v1, :cond_8

    const v2, 0x7f020018

    goto :goto_0

    :cond_8
    const v2, 0x7f02000f

    goto :goto_0

    .line 171
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/settings/widget/buttons/WidgetButton;->isRight(Landroid/content/SharedPreferences;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 172
    iget v2, p0, Lcom/android/settings/widget/buttons/WidgetButton;->currentState:I

    if-ne v2, v3, :cond_b

    .line 173
    if-eqz v1, :cond_a

    const v2, 0x7f02002b

    goto :goto_0

    :cond_a
    const v2, 0x7f020022

    goto :goto_0

    .line 175
    :cond_b
    iget v2, p0, Lcom/android/settings/widget/buttons/WidgetButton;->currentState:I

    if-nez v2, :cond_d

    .line 176
    if-eqz v1, :cond_c

    const v2, 0x7f02001f

    goto :goto_0

    :cond_c
    const v2, 0x7f02001c

    goto :goto_0

    .line 178
    :cond_d
    iget v2, p0, Lcom/android/settings/widget/buttons/WidgetButton;->currentState:I

    if-ne v2, v5, :cond_f

    .line 179
    if-eqz v1, :cond_e

    const v2, 0x7f020028

    goto :goto_0

    :cond_e
    const v2, 0x7f020025

    goto :goto_0

    .line 181
    :cond_f
    iget v2, p0, Lcom/android/settings/widget/buttons/WidgetButton;->currentState:I

    if-ne v2, v4, :cond_11

    .line 182
    if-eqz v1, :cond_10

    const v2, 0x7f020016

    goto :goto_0

    :cond_10
    const v2, 0x7f020013

    goto :goto_0

    .line 185
    :cond_11
    if-eqz v1, :cond_12

    const v2, 0x7f020019

    goto :goto_0

    :cond_12
    const v2, 0x7f020010

    goto :goto_0

    .line 191
    :cond_13
    iget v2, p0, Lcom/android/settings/widget/buttons/WidgetButton;->currentState:I

    if-ne v2, v3, :cond_15

    .line 192
    if-eqz v1, :cond_14

    const v2, 0x7f020029

    goto/16 :goto_0

    :cond_14
    const v2, 0x7f020020

    goto/16 :goto_0

    .line 194
    :cond_15
    iget v2, p0, Lcom/android/settings/widget/buttons/WidgetButton;->currentState:I

    if-nez v2, :cond_17

    .line 195
    if-eqz v1, :cond_16

    const v2, 0x7f02001d

    goto/16 :goto_0

    :cond_16
    const v2, 0x7f02001a

    goto/16 :goto_0

    .line 197
    :cond_17
    iget v2, p0, Lcom/android/settings/widget/buttons/WidgetButton;->currentState:I

    if-ne v2, v5, :cond_19

    .line 198
    if-eqz v1, :cond_18

    const v2, 0x7f020026

    goto/16 :goto_0

    :cond_18
    const v2, 0x7f020023

    goto/16 :goto_0

    .line 200
    :cond_19
    iget v2, p0, Lcom/android/settings/widget/buttons/WidgetButton;->currentState:I

    if-ne v2, v4, :cond_1b

    .line 201
    if-eqz v1, :cond_1a

    const v2, 0x7f020014

    goto/16 :goto_0

    :cond_1a
    const v2, 0x7f020011

    goto/16 :goto_0

    .line 204
    :cond_1b
    if-eqz v1, :cond_1c

    const v2, 0x7f020017

    goto/16 :goto_0

    :cond_1c
    const v2, 0x7f02000e

    goto/16 :goto_0
.end method

.method public getImg(I)I
    .locals 1
    .parameter "posi"

    .prologue
    .line 276
    packed-switch p1, :pswitch_data_0

    .line 298
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 278
    :pswitch_0
    const v0, 0x7f0b00e9

    goto :goto_0

    .line 280
    :pswitch_1
    const v0, 0x7f0b00ed

    goto :goto_0

    .line 282
    :pswitch_2
    const v0, 0x7f0b00f1

    goto :goto_0

    .line 284
    :pswitch_3
    const v0, 0x7f0b00f5

    goto :goto_0

    .line 286
    :pswitch_4
    const v0, 0x7f0b00f9

    goto :goto_0

    .line 288
    :pswitch_5
    const v0, 0x7f0b00fd

    goto :goto_0

    .line 290
    :pswitch_6
    const v0, 0x7f0b0101

    goto :goto_0

    .line 292
    :pswitch_7
    const v0, 0x7f0b0105

    goto :goto_0

    .line 294
    :pswitch_8
    const v0, 0x7f0b0109

    goto :goto_0

    .line 296
    :pswitch_9
    const v0, 0x7f0b010d

    goto :goto_0

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public getInd(I)I
    .locals 1
    .parameter "posi"

    .prologue
    .line 250
    packed-switch p1, :pswitch_data_0

    .line 272
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 252
    :pswitch_0
    const v0, 0x7f0b00ea

    goto :goto_0

    .line 254
    :pswitch_1
    const v0, 0x7f0b00ee

    goto :goto_0

    .line 256
    :pswitch_2
    const v0, 0x7f0b00f2

    goto :goto_0

    .line 258
    :pswitch_3
    const v0, 0x7f0b00f6

    goto :goto_0

    .line 260
    :pswitch_4
    const v0, 0x7f0b00fa

    goto :goto_0

    .line 262
    :pswitch_5
    const v0, 0x7f0b00fe

    goto :goto_0

    .line 264
    :pswitch_6
    const v0, 0x7f0b0102

    goto :goto_0

    .line 266
    :pswitch_7
    const v0, 0x7f0b0106

    goto :goto_0

    .line 268
    :pswitch_8
    const v0, 0x7f0b010a

    goto :goto_0

    .line 270
    :pswitch_9
    const v0, 0x7f0b010e

    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public getSep(I)Ljava/lang/Integer;
    .locals 1
    .parameter "posi"

    .prologue
    .line 223
    packed-switch p1, :pswitch_data_0

    .line 245
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 225
    :pswitch_0
    const v0, 0x7f0b00eb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 227
    :pswitch_1
    const v0, 0x7f0b00ef

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 229
    :pswitch_2
    const v0, 0x7f0b00f3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 231
    :pswitch_3
    const v0, 0x7f0b00f7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 233
    :pswitch_4
    const v0, 0x7f0b00fb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 235
    :pswitch_5
    const v0, 0x7f0b00ff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 237
    :pswitch_6
    const v0, 0x7f0b0103

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 239
    :pswitch_7
    const v0, 0x7f0b0107

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 241
    :pswitch_8
    const v0, 0x7f0b010b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method abstract initButton()V
.end method

.method protected isVisible(Landroid/content/SharedPreferences;I)Z
    .locals 2
    .parameter "preferences"
    .parameter "appWidgetId"

    .prologue
    const/4 v1, -0x1

    .line 219
    iget-object v0, p0, Lcom/android/settings/widget/buttons/WidgetButton;->preferenceName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract toggleState(Landroid/content/Context;)V
.end method

.method public abstract updateState(Landroid/content/Context;Landroid/content/SharedPreferences;[I)V
.end method

.method public updateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;I)V
    .locals 8
    .parameter "context"
    .parameter "views"
    .parameter "globalPreferences"
    .parameter "widgetPreferences"
    .parameter "appWidgetId"

    .prologue
    const/4 v7, 0x0

    .line 91
    iget-object v5, p0, Lcom/android/settings/widget/buttons/WidgetButton;->preferenceName:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-interface {p4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 93
    .local v2, buttonPosi:I
    if-lez v2, :cond_1

    .line 95
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/buttons/WidgetButton;->getButton(I)I

    move-result v1

    .line 96
    .local v1, buttonLayout:I
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/buttons/WidgetButton;->getSep(I)Ljava/lang/Integer;

    move-result-object v3

    .line 97
    .local v3, buttonSep:Ljava/lang/Integer;
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/buttons/WidgetButton;->getImg(I)I

    move-result v0

    .line 98
    .local v0, buttonIcon:I
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/buttons/WidgetButton;->getInd(I)I

    move-result v4

    .line 105
    .local v4, buttonState:I
    invoke-virtual {p2, v1, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 106
    if-eqz v3, :cond_0

    .line 107
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p2, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 112
    :cond_0
    iget v5, p0, Lcom/android/settings/widget/buttons/WidgetButton;->buttonID:I

    invoke-static {p1, p5, v5}, Lcom/android/settings/widget/buttons/WidgetButton;->getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {p2, v1, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 117
    iget v5, p0, Lcom/android/settings/widget/buttons/WidgetButton;->currentIcon:I

    invoke-virtual {p2, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 120
    invoke-virtual {p0, p4}, Lcom/android/settings/widget/buttons/WidgetButton;->getButtonState(Landroid/content/SharedPreferences;)I

    move-result v5

    invoke-virtual {p2, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 122
    .end local v0           #buttonIcon:I
    .end local v1           #buttonLayout:I
    .end local v3           #buttonSep:Ljava/lang/Integer;
    .end local v4           #buttonState:I
    :cond_1
    return-void
.end method
