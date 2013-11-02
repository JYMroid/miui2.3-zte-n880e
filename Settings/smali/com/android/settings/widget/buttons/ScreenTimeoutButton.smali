.class public Lcom/android/settings/widget/buttons/ScreenTimeoutButton;
.super Lcom/android/settings/widget/buttons/WidgetButton;
.source "ScreenTimeoutButton.java"


# static fields
.field private static final DEFAULT_SETTTING:I = 0x0

.field private static final MODE_15_60_300:I = 0x0

.field private static final MODE_30_120_300:I = 0x1

.field public static final SCREEN_HI_TIMEOUT:I = 0x1d4c0

.field public static final SCREEN_LOW_TIMEOUT:I = 0x7530

.field public static final SCREEN_MAX_TIMEOUT:I = 0x493e0

.field public static final SCREEN_MINIMUM_TIMEOUT:I = 0x3a98

.field public static final SCREEN_NORMAL_TIMEOUT:I = 0xea60

.field static ownButton:Lcom/android/settings/widget/buttons/ScreenTimeoutButton;


# instance fields
.field private currentMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/widget/buttons/ScreenTimeoutButton;->ownButton:Lcom/android/settings/widget/buttons/ScreenTimeoutButton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/settings/widget/buttons/WidgetButton;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/settings/widget/buttons/ScreenTimeoutButton;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/settings/widget/buttons/ScreenTimeoutButton;->ownButton:Lcom/android/settings/widget/buttons/ScreenTimeoutButton;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/android/settings/widget/buttons/ScreenTimeoutButton;

    invoke-direct {v0}, Lcom/android/settings/widget/buttons/ScreenTimeoutButton;-><init>()V

    sput-object v0, Lcom/android/settings/widget/buttons/ScreenTimeoutButton;->ownButton:Lcom/android/settings/widget/buttons/ScreenTimeoutButton;

    .line 80
    :cond_0
    sget-object v0, Lcom/android/settings/widget/buttons/ScreenTimeoutButton;->ownButton:Lcom/android/settings/widget/buttons/ScreenTimeoutButton;

    return-object v0
.end method

.method public static getScreenTtimeout(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method initButton()V
    .locals 1

    .prologue
    .line 85
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/settings/widget/buttons/ScreenTimeoutButton;->buttonID:I

    .line 86
    const-string v0, "toggleScreenTimeout"

    iput-object v0, p0, Lcom/android/settings/widget/buttons/ScreenTimeoutButton;->preferenceName:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public toggleState(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 40
    invoke-static {p1}, Lcom/android/settings/widget/buttons/ScreenTimeoutButton;->getScreenTtimeout(Landroid/content/Context;)I

    move-result v0

    .line 41
    .local v0, screentimeout:I
    const/16 v1, 0x3a98

    if-ge v0, v1, :cond_1

    .line 42
    iget v1, p0, Lcom/android/settings/widget/buttons/ScreenTimeoutButton;->currentMode:I

    if-nez v1, :cond_0

    .line 43
    const/16 v0, 0x3a98

    .line 72
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 74
    return-void

    .line 45
    :cond_0
    const/16 v0, 0x7530

    goto :goto_0

    .line 47
    :cond_1
    const/16 v1, 0x7530

    if-ge v0, v1, :cond_3

    .line 48
    iget v1, p0, Lcom/android/settings/widget/buttons/ScreenTimeoutButton;->currentMode:I

    if-nez v1, :cond_2

    .line 49
    const v0, 0xea60

    goto :goto_0

    .line 51
    :cond_2
    const/16 v0, 0x7530

    goto :goto_0

    .line 53
    :cond_3
    const v1, 0xea60

    if-ge v0, v1, :cond_5

    .line 54
    iget v1, p0, Lcom/android/settings/widget/buttons/ScreenTimeoutButton;->currentMode:I

    if-nez v1, :cond_4

    .line 55
    const v0, 0xea60

    goto :goto_0

    .line 57
    :cond_4
    const v0, 0x1d4c0

    goto :goto_0

    .line 59
    :cond_5
    const v1, 0x1d4c0

    if-ge v0, v1, :cond_7

    .line 60
    iget v1, p0, Lcom/android/settings/widget/buttons/ScreenTimeoutButton;->currentMode:I

    if-nez v1, :cond_6

    .line 61
    const v0, 0x493e0

    goto :goto_0

    .line 63
    :cond_6
    const v0, 0x1d4c0

    goto :goto_0

    .line 65
    :cond_7
    const v1, 0x493e0

    if-ge v0, v1, :cond_8

    .line 66
    const v0, 0x493e0

    goto :goto_0

    .line 67
    :cond_8
    iget v1, p0, Lcom/android/settings/widget/buttons/ScreenTimeoutButton;->currentMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 68
    const/16 v0, 0x7530

    goto :goto_0

    .line 70
    :cond_9
    const/16 v0, 0x3a98

    goto :goto_0
.end method

.method public updateState(Landroid/content/Context;Landroid/content/SharedPreferences;[I)V
    .locals 4
    .parameter "context"
    .parameter "globalPreferences"
    .parameter "appWidgetIds"

    .prologue
    const v3, 0x7f020043

    const/4 v2, 0x0

    .line 92
    const-string v1, "screenTimeoutSpinner"

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/buttons/ScreenTimeoutButton;->currentMode:I

    .line 95
    invoke-static {p1}, Lcom/android/settings/widget/buttons/ScreenTimeoutButton;->getScreenTtimeout(Landroid/content/Context;)I

    move-result v0

    .line 97
    .local v0, timeout:I
    const/16 v1, 0x7530

    if-gt v0, v1, :cond_0

    .line 98
    iput v3, p0, Lcom/android/settings/widget/buttons/ScreenTimeoutButton;->currentIcon:I

    .line 99
    iput v2, p0, Lcom/android/settings/widget/buttons/ScreenTimeoutButton;->currentState:I

    .line 107
    :goto_0
    return-void

    .line 100
    :cond_0
    const v1, 0x1d4c0

    if-gt v0, v1, :cond_1

    .line 101
    iput v3, p0, Lcom/android/settings/widget/buttons/ScreenTimeoutButton;->currentIcon:I

    .line 102
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/settings/widget/buttons/ScreenTimeoutButton;->currentState:I

    goto :goto_0

    .line 104
    :cond_1
    const v1, 0x7f020044

    iput v1, p0, Lcom/android/settings/widget/buttons/ScreenTimeoutButton;->currentIcon:I

    .line 105
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/settings/widget/buttons/ScreenTimeoutButton;->currentState:I

    goto :goto_0
.end method
