.class public Lcom/android/settings/widget/buttons/PowerButton;
.super Lcom/android/settings/widget/buttons/WidgetButton;
.source "PowerButton.java"


# static fields
.field private static ownButton:Lcom/android/settings/widget/buttons/PowerButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/settings/widget/buttons/WidgetButton;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/settings/widget/buttons/PowerButton;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/settings/widget/buttons/PowerButton;->ownButton:Lcom/android/settings/widget/buttons/PowerButton;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/android/settings/widget/buttons/PowerButton;

    invoke-direct {v0}, Lcom/android/settings/widget/buttons/PowerButton;-><init>()V

    sput-object v0, Lcom/android/settings/widget/buttons/PowerButton;->ownButton:Lcom/android/settings/widget/buttons/PowerButton;

    .line 60
    :cond_0
    sget-object v0, Lcom/android/settings/widget/buttons/PowerButton;->ownButton:Lcom/android/settings/widget/buttons/PowerButton;

    return-object v0
.end method


# virtual methods
.method initButton()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v5, "android.intent.action.ACTION_POWER_DISCONNECTED"

    const-string v4, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 34
    const-string v1, "widget_MAIN"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 37
    .local v0, globalPreferences:Landroid/content/SharedPreferences;
    const-string v1, "autoEnableBluetoothWithPower"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    invoke-static {}, Lcom/android/settings/widget/buttons/BluetoothButton;->getInstance()Lcom/android/settings/widget/buttons/BluetoothButton;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Lcom/android/settings/widget/buttons/BluetoothButton;->toggleState(Landroid/content/Context;I)V

    .line 47
    :cond_0
    :goto_0
    const-string v1, "autoEnableWifiWithPower"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 49
    invoke-static {}, Lcom/android/settings/widget/buttons/WifiButton;->getInstance()Lcom/android/settings/widget/buttons/WifiButton;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Lcom/android/settings/widget/buttons/WifiButton;->toggleState(Landroid/content/Context;I)V

    .line 54
    :cond_1
    :goto_1
    return-void

    .line 41
    :cond_2
    const-string v1, "autoDisableBluetoothWithPower"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-static {}, Lcom/android/settings/widget/buttons/BluetoothButton;->getInstance()Lcom/android/settings/widget/buttons/BluetoothButton;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Lcom/android/settings/widget/buttons/BluetoothButton;->toggleState(Landroid/content/Context;I)V

    goto :goto_0

    .line 50
    :cond_3
    const-string v1, "autoDisableWifiWithPower"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    invoke-static {}, Lcom/android/settings/widget/buttons/WifiButton;->getInstance()Lcom/android/settings/widget/buttons/WifiButton;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Lcom/android/settings/widget/buttons/WifiButton;->toggleState(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method public toggleState(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 25
    return-void
.end method

.method public updateState(Landroid/content/Context;Landroid/content/SharedPreferences;[I)V
    .locals 0
    .parameter "context"
    .parameter "globalPreferences"
    .parameter "appWidgetIds"

    .prologue
    .line 31
    return-void
.end method
