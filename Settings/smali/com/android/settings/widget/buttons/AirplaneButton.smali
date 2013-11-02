.class public Lcom/android/settings/widget/buttons/AirplaneButton;
.super Lcom/android/settings/widget/buttons/WidgetButton;
.source "AirplaneButton.java"


# static fields
.field static ownButton:Lcom/android/settings/widget/buttons/AirplaneButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/widget/buttons/AirplaneButton;->ownButton:Lcom/android/settings/widget/buttons/AirplaneButton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/settings/widget/buttons/WidgetButton;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/settings/widget/buttons/AirplaneButton;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/settings/widget/buttons/AirplaneButton;->ownButton:Lcom/android/settings/widget/buttons/AirplaneButton;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/android/settings/widget/buttons/AirplaneButton;

    invoke-direct {v0}, Lcom/android/settings/widget/buttons/AirplaneButton;-><init>()V

    sput-object v0, Lcom/android/settings/widget/buttons/AirplaneButton;->ownButton:Lcom/android/settings/widget/buttons/AirplaneButton;

    .line 58
    :cond_0
    sget-object v0, Lcom/android/settings/widget/buttons/AirplaneButton;->ownButton:Lcom/android/settings/widget/buttons/AirplaneButton;

    return-object v0
.end method

.method private static getState(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method initButton()V
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/settings/widget/buttons/AirplaneButton;->buttonID:I

    .line 64
    const-string v0, "toggleAirplane"

    iput-object v0, p0, Lcom/android/settings/widget/buttons/AirplaneButton;->preferenceName:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public toggleState(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 34
    invoke-static {p1}, Lcom/android/settings/widget/buttons/AirplaneButton;->getState(Landroid/content/Context;)Z

    move-result v1

    .line 35
    .local v1, state:Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz v1, :cond_0

    move v4, v5

    :goto_0
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "state"

    if-nez v1, :cond_1

    move v3, v6

    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 41
    return-void

    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    move v4, v6

    .line 35
    goto :goto_0

    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    move v3, v5

    .line 39
    goto :goto_1
.end method

.method public updateState(Landroid/content/Context;Landroid/content/SharedPreferences;[I)V
    .locals 1
    .parameter "context"
    .parameter "globalPreferences"
    .parameter "appWidgetIds"

    .prologue
    .line 18
    invoke-static {p1}, Lcom/android/settings/widget/buttons/AirplaneButton;->getState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    const v0, 0x7f020032

    iput v0, p0, Lcom/android/settings/widget/buttons/AirplaneButton;->currentIcon:I

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/widget/buttons/AirplaneButton;->currentState:I

    .line 26
    :goto_0
    return-void

    .line 22
    :cond_0
    const v0, 0x7f020031

    iput v0, p0, Lcom/android/settings/widget/buttons/AirplaneButton;->currentIcon:I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/widget/buttons/AirplaneButton;->currentState:I

    goto :goto_0
.end method
