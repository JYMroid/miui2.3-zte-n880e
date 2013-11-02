.class public Lcom/android/settings/widget/buttons/GPSButton;
.super Lcom/android/settings/widget/buttons/WidgetButton;
.source "GPSButton.java"


# static fields
.field static ownButton:Lcom/android/settings/widget/buttons/GPSButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/widget/buttons/GPSButton;->ownButton:Lcom/android/settings/widget/buttons/GPSButton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/settings/widget/buttons/WidgetButton;-><init>()V

    return-void
.end method

.method private static getGpsState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 49
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static getInstance()Lcom/android/settings/widget/buttons/GPSButton;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/settings/widget/buttons/GPSButton;->ownButton:Lcom/android/settings/widget/buttons/GPSButton;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/android/settings/widget/buttons/GPSButton;

    invoke-direct {v0}, Lcom/android/settings/widget/buttons/GPSButton;-><init>()V

    sput-object v0, Lcom/android/settings/widget/buttons/GPSButton;->ownButton:Lcom/android/settings/widget/buttons/GPSButton;

    .line 56
    :cond_0
    sget-object v0, Lcom/android/settings/widget/buttons/GPSButton;->ownButton:Lcom/android/settings/widget/buttons/GPSButton;

    return-object v0
.end method


# virtual methods
.method initButton()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/widget/buttons/GPSButton;->buttonID:I

    .line 62
    const-string v0, "toggleGPS"

    iput-object v0, p0, Lcom/android/settings/widget/buttons/GPSButton;->preferenceName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public toggleState(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 36
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/settings/widget/buttons/GPSButton;->getGpsState(Landroid/content/Context;)Z

    move-result v0

    .line 37
    .local v0, enabled:Z
    const-string v2, "gps"

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 39
    return-void

    .line 37
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public updateState(Landroid/content/Context;Landroid/content/SharedPreferences;[I)V
    .locals 1
    .parameter "context"
    .parameter "globalPreferences"
    .parameter "appWidgetIds"

    .prologue
    .line 19
    invoke-static {p1}, Lcom/android/settings/widget/buttons/GPSButton;->getGpsState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    const v0, 0x7f02003e

    iput v0, p0, Lcom/android/settings/widget/buttons/GPSButton;->currentIcon:I

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/widget/buttons/GPSButton;->currentState:I

    .line 27
    :goto_0
    return-void

    .line 23
    :cond_0
    const v0, 0x7f02003d

    iput v0, p0, Lcom/android/settings/widget/buttons/GPSButton;->currentIcon:I

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/widget/buttons/GPSButton;->currentState:I

    goto :goto_0
.end method
