.class public Lcom/android/settings/widget/WidgetSettings;
.super Landroid/app/Activity;
.source "WidgetSettings.java"


# static fields
.field public static final AUTO_DISABLE_3G:Ljava/lang/String; = "autoDisable3G"

.field public static final AUTO_DISABLE_3G_WITH_WIFI:Ljava/lang/String; = "autoDisable3GWithWifi"

.field public static final AUTO_DISABLE_BLUETOOTH_WITH_POWER:Ljava/lang/String; = "autoDisableBluetoothWithPower"

.field public static final AUTO_DISABLE_SYNC_WITH_WIFI:Ljava/lang/String; = "autoDisableSyncWithWifi"

.field public static final AUTO_DISABLE_WIFI_WITH_POWER:Ljava/lang/String; = "autoDisableWifiWithPower"

.field public static final AUTO_ENABLE_3G:Ljava/lang/String; = "autoEnable3G"

.field public static final AUTO_ENABLE_3G_WITH_WIFI:Ljava/lang/String; = "autoEnable3GWithWifi"

.field public static final AUTO_ENABLE_BLUETOOTH_WITH_POWER:Ljava/lang/String; = "autoEnableBluetoothWithPower"

.field public static final AUTO_ENABLE_SYNC_WITH_WIFI:Ljava/lang/String; = "autoEnableSyncWithWifi"

.field public static final AUTO_ENABLE_WIFI_WITH_POWER:Ljava/lang/String; = "autoEnableWifiWithPower"

.field public static final BACKGROUND_IMAGE:Ljava/lang/String; = "backgrounImage"

.field public static final BRIGHTNESS_SPINNER:Ljava/lang/String; = "brightnessSpinner"

.field public static final FIRST_ICON_ID:Ljava/lang/String; = "firstIconId"

.field public static final LAST_BUTTON:Ljava/lang/String; = "lastButton"

.field public static final LAST_ICON_ID:Ljava/lang/String; = "lastIconId"

.field private static final MAX_BUTTONS:I = 0xa

.field public static final MONITOR_DATA_ROAMING:Ljava/lang/String; = "monitorDataRoaming"

.field public static final NETWORK_MODE_SPINNER:Ljava/lang/String; = "networkModeSpinner"

.field public static final RING_MODE_SPINNER:Ljava/lang/String; = "ringModeSpinner"

.field public static final RING_MODE_VIBRATE_AS_ON:Ljava/lang/String; = "ringModeVibrateAsOn"

.field public static final SAVED:Ljava/lang/String; = "saved"

.field public static final SCREEN_TIMEOUT_SPINNER:Ljava/lang/String; = "screenTimeoutSpinner"

.field public static final TOGGLE_2G3G:Ljava/lang/String; = "toggle2G3G"

.field public static final TOGGLE_AIRPLANE:Ljava/lang/String; = "toggleAirplane"

.field public static final TOGGLE_AUTO_ROTATE:Ljava/lang/String; = "toggleAutoRotate"

.field public static final TOGGLE_BLUETOOTH:Ljava/lang/String; = "toggleBluetooth"

.field public static final TOGGLE_BRIGHTNESS:Ljava/lang/String; = "toggleBrightness"

.field public static final TOGGLE_DATA:Ljava/lang/String; = "toggleData"

.field public static final TOGGLE_FLASHLIGHT:Ljava/lang/String; = "toggleFlashlight"

.field public static final TOGGLE_GPS:Ljava/lang/String; = "toggleGPS"

.field public static final TOGGLE_LOCK_SCREEN:Ljava/lang/String; = "toggleLockScreen"

.field public static final TOGGLE_SCREEN_TIMEOUT:Ljava/lang/String; = "toggleScreenTimeout"

.field public static final TOGGLE_SOUND:Ljava/lang/String; = "toggleSound"

.field public static final TOGGLE_SYNC:Ljava/lang/String; = "toggleSync"

.field public static final TOGGLE_WIFI:Ljava/lang/String; = "toggleWifi"

.field public static final TOGGLE_WIFI_AP:Ljava/lang/String; = "toggleWifiAp"

.field public static final TOGGLE_WIMAX:Ljava/lang/String; = "toggleWimax"

.field protected static final TRANSPARENT_BACKGROUND:I = 0x1

.field public static final USE_ROUND_CORNERS:Ljava/lang/String; = "useRoundCorners"

.field public static final USE_VERTICAL:Ljava/lang/String; = "useVertical"

.field public static final WIDGET_PREF_MAIN:Ljava/lang/String; = "widget_MAIN"

.field public static final WIDGET_PREF_NAME:Ljava/lang/String; = "widget_"


# instance fields
.field cancelClickListener:Landroid/view/View$OnClickListener;

.field listener:Landroid/view/View$OnClickListener;

.field okClickListener:Landroid/view/View$OnClickListener;

.field preferences:Landroid/content/SharedPreferences;

.field preferencesGeneral:Landroid/content/SharedPreferences;

.field private selectedButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field widgetId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/widget/WidgetSettings;->widgetId:I

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/WidgetSettings;->selectedButtons:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Lcom/android/settings/widget/WidgetSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/WidgetSettings$1;-><init>(Lcom/android/settings/widget/WidgetSettings;)V

    iput-object v0, p0, Lcom/android/settings/widget/WidgetSettings;->listener:Landroid/view/View$OnClickListener;

    .line 357
    new-instance v0, Lcom/android/settings/widget/WidgetSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/WidgetSettings$3;-><init>(Lcom/android/settings/widget/WidgetSettings;)V

    iput-object v0, p0, Lcom/android/settings/widget/WidgetSettings;->cancelClickListener:Landroid/view/View$OnClickListener;

    .line 363
    new-instance v0, Lcom/android/settings/widget/WidgetSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/WidgetSettings$4;-><init>(Lcom/android/settings/widget/WidgetSettings;)V

    iput-object v0, p0, Lcom/android/settings/widget/WidgetSettings;->okClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/WidgetSettings;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/settings/widget/WidgetSettings;->toogleButtonView(Landroid/widget/CheckBox;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/widget/WidgetSettings;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/widget/WidgetSettings;->selectedButtons:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getIcon(Landroid/widget/CheckBox;)I
    .locals 1
    .parameter "button"

    .prologue
    .line 570
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 602
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 572
    :pswitch_1
    const v0, 0x7f02004f

    goto :goto_0

    .line 574
    :pswitch_2
    const v0, 0x7f02004d

    goto :goto_0

    .line 576
    :pswitch_3
    const v0, 0x7f020034

    goto :goto_0

    .line 578
    :pswitch_4
    const v0, 0x7f02003e

    goto :goto_0

    .line 580
    :pswitch_5
    const v0, 0x7f02003a

    goto :goto_0

    .line 582
    :pswitch_6
    const v0, 0x7f02002f

    goto :goto_0

    .line 584
    :pswitch_7
    const v0, 0x7f02004b

    goto :goto_0

    .line 586
    :pswitch_8
    const v0, 0x7f020046

    goto :goto_0

    .line 588
    :pswitch_9
    const v0, 0x7f020044

    goto :goto_0

    .line 590
    :pswitch_a
    const v0, 0x7f020042

    goto :goto_0

    .line 592
    :pswitch_b
    const v0, 0x7f020040

    goto :goto_0

    .line 594
    :pswitch_c
    const v0, 0x7f02003c

    goto :goto_0

    .line 596
    :pswitch_d
    const v0, 0x7f020032

    goto :goto_0

    .line 598
    :pswitch_e
    const v0, 0x7f020038

    goto :goto_0

    .line 600
    :pswitch_f
    const v0, 0x7f020051

    goto :goto_0

    .line 570
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b013b
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_e
        :pswitch_c
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method private initControls()V
    .locals 2

    .prologue
    .line 265
    const v0, 0x7f0b0138

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/WidgetSettings;->okClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    const v0, 0x7f0b0139

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/WidgetSettings;->cancelClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    return-void
.end method

.method public static initDefaultSettings(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "globalPreferences"

    .prologue
    const/4 v2, 0x0

    .line 635
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 636
    .local v0, editorGeneral:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 637
    const-string v1, "autoDisable3G"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 638
    const-string v1, "autoEnable3G"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 639
    const-string v1, "autoDisableSyncWithWifi"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 640
    const-string v1, "autoEnableSyncWithWifi"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 641
    const-string v1, "autoDisable3GWithWifi"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 642
    const-string v1, "autoEnable3GWithWifi"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 643
    const-string v1, "autoEnableBluetoothWithPower"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 644
    const-string v1, "autoDisableBluetoothWithPower"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 645
    const-string v1, "autoEnableWifiWithPower"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 646
    const-string v1, "autoDisableWifiWithPower"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 647
    const-string v1, "monitorDataRoaming"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 648
    const-string v1, "ringModeVibrateAsOn"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 650
    const-string v1, "brightnessSpinner"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 651
    const-string v1, "screenTimeoutSpinner"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 652
    const-string v1, "networkModeSpinner"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 653
    const-string v1, "ringModeSpinner"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 654
    const-string v1, "saved"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 655
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 656
    return-void
.end method

.method public static initDefaultWidget(Landroid/content/SharedPreferences;)V
    .locals 7
    .parameter "widgetPreferences"

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 606
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 607
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 609
    const-string v1, "toggleWifi"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 610
    const-string v1, "toggleBluetooth"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 611
    const-string v1, "toggleGPS"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 612
    const-string v1, "toggleData"

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 613
    const-string v1, "toggle2G3G"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 614
    const-string v1, "toggleSync"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 615
    const-string v1, "toggleSound"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 616
    const-string v1, "toggleScreenTimeout"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 617
    const-string v1, "toggleAutoRotate"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 618
    const-string v1, "toggleBrightness"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 619
    const-string v1, "toggleAirplane"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 620
    const-string v1, "toggleLockScreen"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 621
    const-string v1, "toggleFlashlight"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 622
    const-string v1, "toggleWifiAp"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 623
    const-string v1, "toggleWimax"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 625
    const-string v1, "useRoundCorners"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 626
    const-string v1, "backgrounImage"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 627
    const-string v1, "useVertical"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 628
    const-string v1, "saved"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 629
    const-string v1, "lastButton"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 631
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 632
    return-void
.end method

.method private initSettings()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const v8, 0x1090009

    const v7, 0x1090008

    const/4 v6, 0x0

    .line 270
    const-string v3, "WidgetSettings: "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create preference for widget_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/widget/WidgetSettings;->widgetId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "widget_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/widget/WidgetSettings;->widgetId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v6}, Lcom/android/settings/widget/WidgetSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/widget/WidgetSettings;->preferences:Landroid/content/SharedPreferences;

    .line 272
    const-string v3, "widget_MAIN"

    invoke-virtual {p0, v3, v6}, Lcom/android/settings/widget/WidgetSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/widget/WidgetSettings;->preferencesGeneral:Landroid/content/SharedPreferences;

    .line 273
    const v3, 0x7f0b0158

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settings/widget/WidgetSettings;->preferencesGeneral:Landroid/content/SharedPreferences;

    const-string v5, "autoDisable3G"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 275
    const v3, 0x7f0b0159

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settings/widget/WidgetSettings;->preferencesGeneral:Landroid/content/SharedPreferences;

    const-string v5, "autoEnable3G"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 277
    const v3, 0x7f0b0155

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settings/widget/WidgetSettings;->preferencesGeneral:Landroid/content/SharedPreferences;

    const-string v5, "autoDisable3GWithWifi"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 279
    const v3, 0x7f0b0156

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settings/widget/WidgetSettings;->preferencesGeneral:Landroid/content/SharedPreferences;

    const-string v5, "autoEnable3GWithWifi"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 281
    const v3, 0x7f0b015b

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settings/widget/WidgetSettings;->preferencesGeneral:Landroid/content/SharedPreferences;

    const-string v5, "autoEnableBluetoothWithPower"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 283
    const v3, 0x7f0b015c

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settings/widget/WidgetSettings;->preferencesGeneral:Landroid/content/SharedPreferences;

    const-string v5, "autoDisableBluetoothWithPower"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 285
    const v3, 0x7f0b015d

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settings/widget/WidgetSettings;->preferencesGeneral:Landroid/content/SharedPreferences;

    const-string v5, "autoEnableWifiWithPower"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 287
    const v3, 0x7f0b015e

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settings/widget/WidgetSettings;->preferencesGeneral:Landroid/content/SharedPreferences;

    const-string v5, "autoDisableWifiWithPower"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 289
    const v3, 0x7f0b0153

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settings/widget/WidgetSettings;->preferencesGeneral:Landroid/content/SharedPreferences;

    const-string v5, "autoDisableSyncWithWifi"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 291
    const v3, 0x7f0b0154

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settings/widget/WidgetSettings;->preferencesGeneral:Landroid/content/SharedPreferences;

    const-string v5, "autoEnableSyncWithWifi"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 293
    const v3, 0x7f0b0160

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settings/widget/WidgetSettings;->preferencesGeneral:Landroid/content/SharedPreferences;

    const-string v5, "monitorDataRoaming"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 295
    const v3, 0x7f0b0161

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settings/widget/WidgetSettings;->preferencesGeneral:Landroid/content/SharedPreferences;

    const-string v5, "ringModeVibrateAsOn"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 299
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/WidgetSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 300
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-gtz v3, :cond_0

    .line 301
    const v3, 0x7f0b013c

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 302
    const v3, 0x7f0b013e

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 306
    :cond_0
    const/4 v3, 0x0

    if-nez v3, :cond_1

    .line 307
    const v3, 0x7f0b0143

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 308
    const v3, 0x7f0b0145

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 311
    :cond_1
    const v3, 0x7f0b0164

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 312
    .local v2, spinner:Landroid/widget/Spinner;
    const v3, 0x7f050033

    invoke-static {p0, v3, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 314
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 315
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 316
    iget-object v3, p0, Lcom/android/settings/widget/WidgetSettings;->preferencesGeneral:Landroid/content/SharedPreferences;

    const-string v4, "brightnessSpinner"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 318
    const v3, 0x7f0b0165

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #spinner:Landroid/widget/Spinner;
    check-cast v2, Landroid/widget/Spinner;

    .line 319
    .restart local v2       #spinner:Landroid/widget/Spinner;
    const v3, 0x7f050035

    invoke-static {p0, v3, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 321
    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 322
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 323
    iget-object v3, p0, Lcom/android/settings/widget/WidgetSettings;->preferencesGeneral:Landroid/content/SharedPreferences;

    const-string v4, "screenTimeoutSpinner"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 325
    const v3, 0x7f0b0162

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #spinner:Landroid/widget/Spinner;
    check-cast v2, Landroid/widget/Spinner;

    .line 326
    .restart local v2       #spinner:Landroid/widget/Spinner;
    const v3, 0x7f050034

    invoke-static {p0, v3, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 328
    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 329
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 330
    iget-object v3, p0, Lcom/android/settings/widget/WidgetSettings;->preferencesGeneral:Landroid/content/SharedPreferences;

    const-string v4, "networkModeSpinner"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 332
    const v3, 0x7f0b0163

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #spinner:Landroid/widget/Spinner;
    check-cast v2, Landroid/widget/Spinner;

    .line 333
    .restart local v2       #spinner:Landroid/widget/Spinner;
    const v3, 0x7f050036

    invoke-static {p0, v3, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 335
    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 336
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 337
    iget-object v3, p0, Lcom/android/settings/widget/WidgetSettings;->preferencesGeneral:Landroid/content/SharedPreferences;

    const-string v4, "ringModeSpinner"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 339
    const v3, 0x7f0b0150

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #spinner:Landroid/widget/Spinner;
    check-cast v2, Landroid/widget/Spinner;

    .line 340
    .restart local v2       #spinner:Landroid/widget/Spinner;
    const v3, 0x7f050037

    invoke-static {p0, v3, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 342
    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 343
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 344
    return-void
.end method

.method private initToggleButtons()V
    .locals 7

    .prologue
    const v6, 0x7f0b0146

    const v5, 0x7f0b0141

    const v4, 0x7f0b0140

    const v3, 0x7f0b013f

    const v2, 0x7f0b013b

    .line 145
    iget-object v1, p0, Lcom/android/settings/widget/WidgetSettings;->selectedButtons:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v1, p0, Lcom/android/settings/widget/WidgetSettings;->selectedButtons:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v1, p0, Lcom/android/settings/widget/WidgetSettings;->selectedButtons:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v1, p0, Lcom/android/settings/widget/WidgetSettings;->selectedButtons:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v1, p0, Lcom/android/settings/widget/WidgetSettings;->selectedButtons:Ljava/util/ArrayList;

    invoke-virtual {p0, v6}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v1, p0, Lcom/android/settings/widget/WidgetSettings;->selectedButtons:Ljava/util/ArrayList;

    const v0, 0x7f0b014a

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/WidgetSettings;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-virtual {p0, v3}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/WidgetSettings;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-virtual {p0, v4}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/WidgetSettings;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-virtual {p0, v5}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/WidgetSettings;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v0, 0x7f0b0142

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/WidgetSettings;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-virtual {p0, v6}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/WidgetSettings;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    const v0, 0x7f0b0147

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/WidgetSettings;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const v0, 0x7f0b0148

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/WidgetSettings;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    const v0, 0x7f0b0149

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/WidgetSettings;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    const v0, 0x7f0b014a

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/WidgetSettings;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v0, 0x7f0b014d

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/WidgetSettings;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    const v0, 0x7f0b014c

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/WidgetSettings;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v0, 0x7f0b014b

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/WidgetSettings;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const v0, 0x7f0b013d

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/WidgetSettings;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v0, 0x7f0b0144

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/WidgetSettings;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const v0, 0x7f0b0151

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/WidgetSettings;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    const v0, 0x7f0b0150

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    new-instance v1, Lcom/android/settings/widget/WidgetSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/WidgetSettings$2;-><init>(Lcom/android/settings/widget/WidgetSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 188
    return-void
.end method

.method private initWidgetSettings()V
    .locals 3

    .prologue
    .line 256
    const v1, 0x7f03004b

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/WidgetSettings;->setContentView(I)V

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/widget/WidgetSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 258
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 259
    const-string v1, "appWidgetId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/WidgetSettings;->widgetId:I

    .line 262
    :cond_0
    return-void
.end method

.method private setDefaultReturn()V
    .locals 3

    .prologue
    .line 347
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 348
    .local v0, returnIntent:Landroid/content/Intent;
    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/android/settings/widget/WidgetSettings;->widgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 349
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/widget/WidgetSettings;->setResult(ILandroid/content/Intent;)V

    .line 352
    iget v1, p0, Lcom/android/settings/widget/WidgetSettings;->widgetId:I

    if-nez v1, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/widget/WidgetSettings;->finish()V

    .line 355
    :cond_0
    return-void
.end method

.method private toogleButtonView(Landroid/widget/CheckBox;)V
    .locals 5
    .parameter "button"

    .prologue
    const v4, 0x7f0b00e7

    const/4 v3, 0x0

    .line 191
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getId()I

    move-result v1

    const v2, 0x7f0b0150

    if-ne v1, v2, :cond_2

    .line 192
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    invoke-virtual {p0, v4}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 217
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/widget/WidgetSettings;->updateState()V

    .line 218
    return-void

    .line 195
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f020002

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 197
    :cond_2
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getId()I

    move-result v1

    const v2, 0x7f0b0151

    if-eq v1, v2, :cond_0

    .line 198
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 201
    iget-object v1, p0, Lcom/android/settings/widget/WidgetSettings;->selectedButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    .line 202
    const-string v1, "Add button"

    invoke-static {v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/android/settings/widget/WidgetSettings;->selectedButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    :cond_3
    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 206
    const-string v1, "Button limit reached "

    invoke-static {v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 207
    const-string v1, "Limited to 10 buttons"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 209
    .local v0, message:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 212
    .end local v0           #message:Landroid/widget/Toast;
    :cond_4
    const-string v1, "Remove button"

    invoke-static {v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/android/settings/widget/WidgetSettings;->selectedButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateState()V
    .locals 12

    .prologue
    const v11, 0x7f0b0151

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 221
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Buttons present:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/widget/WidgetSettings;->selectedButtons:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 222
    const/4 v4, 0x1

    .local v4, posi:I
    :goto_0
    const/16 v6, 0xa

    if-gt v4, v6, :cond_5

    .line 224
    iget-object v6, p0, Lcom/android/settings/widget/WidgetSettings;->selectedButtons:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gt v4, v6, :cond_4

    .line 225
    iget-object v6, p0, Lcom/android/settings/widget/WidgetSettings;->selectedButtons:Ljava/util/ArrayList;

    sub-int v7, v4, v9

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 226
    .local v1, buttonPresent:Landroid/widget/CheckBox;
    invoke-virtual {p0, v4}, Lcom/android/settings/widget/WidgetSettings;->getButton(I)Landroid/view/View;

    move-result-object v0

    .line 227
    .local v0, btn:Landroid/view/View;
    invoke-virtual {p0, v4}, Lcom/android/settings/widget/WidgetSettings;->getSep(I)Landroid/view/View;

    move-result-object v5

    .line 228
    .local v5, sep:Landroid/view/View;
    invoke-virtual {p0, v4}, Lcom/android/settings/widget/WidgetSettings;->getImg(I)Landroid/widget/ImageView;

    move-result-object v2

    .line 229
    .local v2, img:Landroid/widget/ImageView;
    invoke-virtual {p0, v4}, Lcom/android/settings/widget/WidgetSettings;->getInd(I)Landroid/widget/ImageView;

    move-result-object v3

    .line 231
    .local v3, ind:Landroid/widget/ImageView;
    if-eqz v5, :cond_0

    .line 232
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 234
    :cond_0
    if-ne v4, v9, :cond_2

    invoke-virtual {p0, v11}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 235
    const v6, 0x7f020021

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 242
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/settings/widget/WidgetSettings;->getIcon(Landroid/widget/CheckBox;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 243
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 222
    .end local v1           #buttonPresent:Landroid/widget/CheckBox;
    .end local v2           #img:Landroid/widget/ImageView;
    .end local v3           #ind:Landroid/widget/ImageView;
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 236
    .restart local v1       #buttonPresent:Landroid/widget/CheckBox;
    .restart local v2       #img:Landroid/widget/ImageView;
    .restart local v3       #ind:Landroid/widget/ImageView;
    :cond_2
    iget-object v6, p0, Lcom/android/settings/widget/WidgetSettings;->selectedButtons:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v4, v6, :cond_3

    invoke-virtual {p0, v11}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 238
    const v6, 0x7f020022

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 240
    :cond_3
    const v6, 0x7f020020

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 245
    .end local v0           #btn:Landroid/view/View;
    .end local v1           #buttonPresent:Landroid/widget/CheckBox;
    .end local v2           #img:Landroid/widget/ImageView;
    .end local v3           #ind:Landroid/widget/ImageView;
    .end local v5           #sep:Landroid/view/View;
    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/settings/widget/WidgetSettings;->getButton(I)Landroid/view/View;

    move-result-object v0

    .line 246
    .restart local v0       #btn:Landroid/view/View;
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 247
    invoke-virtual {p0, v4}, Lcom/android/settings/widget/WidgetSettings;->getSep(I)Landroid/view/View;

    move-result-object v5

    .line 248
    .restart local v5       #sep:Landroid/view/View;
    if-eqz v5, :cond_1

    .line 249
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 253
    .end local v0           #btn:Landroid/view/View;
    .end local v5           #sep:Landroid/view/View;
    :cond_5
    return-void
.end method


# virtual methods
.method public getButton(I)Landroid/view/View;
    .locals 1
    .parameter "posi"

    .prologue
    .line 544
    packed-switch p1, :pswitch_data_0

    .line 566
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 546
    :pswitch_0
    const v0, 0x7f0b0110

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 548
    :pswitch_1
    const v0, 0x7f0b0114

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 550
    :pswitch_2
    const v0, 0x7f0b0118

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 552
    :pswitch_3
    const v0, 0x7f0b011c

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 554
    :pswitch_4
    const v0, 0x7f0b0120

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 556
    :pswitch_5
    const v0, 0x7f0b0124

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 558
    :pswitch_6
    const v0, 0x7f0b0128

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 560
    :pswitch_7
    const v0, 0x7f0b012c

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 562
    :pswitch_8
    const v0, 0x7f0b0130

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 564
    :pswitch_9
    const v0, 0x7f0b0134

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 544
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

.method public getImg(I)Landroid/widget/ImageView;
    .locals 1
    .parameter "posi"

    .prologue
    .line 518
    packed-switch p1, :pswitch_data_0

    .line 540
    const/4 v0, 0x0

    .end local p0
    :goto_0
    return-object v0

    .line 520
    .restart local p0
    :pswitch_0
    const v0, 0x7f0b0111

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    move-object v0, p0

    goto :goto_0

    .line 522
    .restart local p0
    :pswitch_1
    const v0, 0x7f0b0115

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    move-object v0, p0

    goto :goto_0

    .line 524
    .restart local p0
    :pswitch_2
    const v0, 0x7f0b0119

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    move-object v0, p0

    goto :goto_0

    .line 526
    .restart local p0
    :pswitch_3
    const v0, 0x7f0b011d

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    move-object v0, p0

    goto :goto_0

    .line 528
    .restart local p0
    :pswitch_4
    const v0, 0x7f0b0121

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    move-object v0, p0

    goto :goto_0

    .line 530
    .restart local p0
    :pswitch_5
    const v0, 0x7f0b0125

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    move-object v0, p0

    goto :goto_0

    .line 532
    .restart local p0
    :pswitch_6
    const v0, 0x7f0b0129

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    move-object v0, p0

    goto :goto_0

    .line 534
    .restart local p0
    :pswitch_7
    const v0, 0x7f0b012d

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    move-object v0, p0

    goto :goto_0

    .line 536
    .restart local p0
    :pswitch_8
    const v0, 0x7f0b0131

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    move-object v0, p0

    goto :goto_0

    .line 538
    .restart local p0
    :pswitch_9
    const v0, 0x7f0b0135

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    move-object v0, p0

    goto :goto_0

    .line 518
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

.method public getInd(I)Landroid/widget/ImageView;
    .locals 1
    .parameter "posi"

    .prologue
    .line 492
    packed-switch p1, :pswitch_data_0

    .line 514
    const/4 v0, 0x0

    .end local p0
    :goto_0
    return-object v0

    .line 494
    .restart local p0
    :pswitch_0
    const v0, 0x7f0b0112

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    move-object v0, p0

    goto :goto_0

    .line 496
    .restart local p0
    :pswitch_1
    const v0, 0x7f0b0116

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    move-object v0, p0

    goto :goto_0

    .line 498
    .restart local p0
    :pswitch_2
    const v0, 0x7f0b011a

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    move-object v0, p0

    goto :goto_0

    .line 500
    .restart local p0
    :pswitch_3
    const v0, 0x7f0b011e

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    move-object v0, p0

    goto :goto_0

    .line 502
    .restart local p0
    :pswitch_4
    const v0, 0x7f0b0122

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    move-object v0, p0

    goto :goto_0

    .line 504
    .restart local p0
    :pswitch_5
    const v0, 0x7f0b0126

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    move-object v0, p0

    goto :goto_0

    .line 506
    .restart local p0
    :pswitch_6
    const v0, 0x7f0b012a

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    move-object v0, p0

    goto :goto_0

    .line 508
    .restart local p0
    :pswitch_7
    const v0, 0x7f0b012e

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    move-object v0, p0

    goto :goto_0

    .line 510
    .restart local p0
    :pswitch_8
    const v0, 0x7f0b0132

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    move-object v0, p0

    goto :goto_0

    .line 512
    .restart local p0
    :pswitch_9
    const v0, 0x7f0b0136

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    move-object v0, p0

    goto :goto_0

    .line 492
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

.method public getSep(I)Landroid/view/View;
    .locals 1
    .parameter "posi"

    .prologue
    .line 465
    packed-switch p1, :pswitch_data_0

    .line 487
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 467
    :pswitch_0
    const v0, 0x7f0b0113

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 469
    :pswitch_1
    const v0, 0x7f0b0117

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 471
    :pswitch_2
    const v0, 0x7f0b011b

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 473
    :pswitch_3
    const v0, 0x7f0b011f

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 475
    :pswitch_4
    const v0, 0x7f0b0123

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 477
    :pswitch_5
    const v0, 0x7f0b0127

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 479
    :pswitch_6
    const v0, 0x7f0b012b

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 481
    :pswitch_7
    const v0, 0x7f0b012f

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 483
    :pswitch_8
    const v0, 0x7f0b0133

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 465
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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-direct {p0}, Lcom/android/settings/widget/WidgetSettings;->initWidgetSettings()V

    .line 137
    invoke-direct {p0}, Lcom/android/settings/widget/WidgetSettings;->initToggleButtons()V

    .line 138
    invoke-direct {p0}, Lcom/android/settings/widget/WidgetSettings;->setDefaultReturn()V

    .line 139
    invoke-direct {p0}, Lcom/android/settings/widget/WidgetSettings;->initControls()V

    .line 140
    invoke-direct {p0}, Lcom/android/settings/widget/WidgetSettings;->initSettings()V

    .line 141
    return-void
.end method
