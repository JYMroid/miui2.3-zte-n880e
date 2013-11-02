.class public Lcom/android/settings/widget/buttons/AutoRotateButton;
.super Lcom/android/settings/widget/buttons/WidgetButton;
.source "AutoRotateButton.java"


# static fields
.field static ownButton:Lcom/android/settings/widget/buttons/AutoRotateButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/widget/buttons/AutoRotateButton;->ownButton:Lcom/android/settings/widget/buttons/AutoRotateButton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/settings/widget/buttons/WidgetButton;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/settings/widget/buttons/AutoRotateButton;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/settings/widget/buttons/AutoRotateButton;->ownButton:Lcom/android/settings/widget/buttons/AutoRotateButton;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/android/settings/widget/buttons/AutoRotateButton;

    invoke-direct {v0}, Lcom/android/settings/widget/buttons/AutoRotateButton;-><init>()V

    sput-object v0, Lcom/android/settings/widget/buttons/AutoRotateButton;->ownButton:Lcom/android/settings/widget/buttons/AutoRotateButton;

    .line 47
    :cond_0
    sget-object v0, Lcom/android/settings/widget/buttons/AutoRotateButton;->ownButton:Lcom/android/settings/widget/buttons/AutoRotateButton;

    return-object v0
.end method

.method public static getOrientationState(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method initButton()V
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/settings/widget/buttons/AutoRotateButton;->buttonID:I

    .line 54
    const-string v0, "toggleAutoRotate"

    iput-object v0, p0, Lcom/android/settings/widget/buttons/AutoRotateButton;->preferenceName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public toggleState(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const-string v2, "accelerometer_rotation"

    .line 18
    invoke-static {p1}, Lcom/android/settings/widget/buttons/AutoRotateButton;->getOrientationState(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 25
    :goto_0
    return-void

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public updateState(Landroid/content/Context;Landroid/content/SharedPreferences;[I)V
    .locals 2
    .parameter "context"
    .parameter "globalPreferences"
    .parameter "appWidgetIds"

    .prologue
    const/4 v1, 0x1

    .line 29
    invoke-static {p1}, Lcom/android/settings/widget/buttons/AutoRotateButton;->getOrientationState(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 30
    const v0, 0x7f020042

    iput v0, p0, Lcom/android/settings/widget/buttons/AutoRotateButton;->currentIcon:I

    .line 31
    iput v1, p0, Lcom/android/settings/widget/buttons/AutoRotateButton;->currentState:I

    .line 36
    :goto_0
    return-void

    .line 33
    :cond_0
    const v0, 0x7f020041

    iput v0, p0, Lcom/android/settings/widget/buttons/AutoRotateButton;->currentIcon:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/widget/buttons/AutoRotateButton;->currentState:I

    goto :goto_0
.end method
