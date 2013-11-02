.class public Lcom/android/settings/widget/buttons/SyncButton;
.super Lcom/android/settings/widget/buttons/WidgetButton;
.source "SyncButton.java"


# static fields
.field static ownButton:Lcom/android/settings/widget/buttons/SyncButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/widget/buttons/SyncButton;->ownButton:Lcom/android/settings/widget/buttons/SyncButton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/settings/widget/buttons/WidgetButton;-><init>()V

    return-void
.end method

.method private static getBackgroundDataState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 68
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 70
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    return v1
.end method

.method public static getInstance()Lcom/android/settings/widget/buttons/SyncButton;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/android/settings/widget/buttons/SyncButton;->ownButton:Lcom/android/settings/widget/buttons/SyncButton;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/android/settings/widget/buttons/SyncButton;

    invoke-direct {v0}, Lcom/android/settings/widget/buttons/SyncButton;-><init>()V

    sput-object v0, Lcom/android/settings/widget/buttons/SyncButton;->ownButton:Lcom/android/settings/widget/buttons/SyncButton;

    .line 99
    :cond_0
    sget-object v0, Lcom/android/settings/widget/buttons/SyncButton;->ownButton:Lcom/android/settings/widget/buttons/SyncButton;

    return-object v0
.end method

.method private static getSync(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 80
    invoke-static {p0}, Lcom/android/settings/widget/buttons/SyncButton;->getBackgroundDataState(Landroid/content/Context;)Z

    move-result v0

    .line 81
    .local v0, backgroundData:Z
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    .line 82
    .local v1, sync:Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method initButton()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/widget/buttons/SyncButton;->buttonID:I

    .line 105
    const-string v0, "toggleSync"

    iput-object v0, p0, Lcom/android/settings/widget/buttons/SyncButton;->preferenceName:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public toggleState(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 23
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 25
    .local v1, connManager:Landroid/net/ConnectivityManager;
    invoke-static {p1}, Lcom/android/settings/widget/buttons/SyncButton;->getBackgroundDataState(Landroid/content/Context;)Z

    move-result v0

    .line 26
    .local v0, backgroundData:Z
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    .line 31
    .local v2, sync:Z
    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 32
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    .line 33
    invoke-static {v4}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 37
    :cond_0
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    .line 38
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    .line 42
    :cond_1
    if-eqz v0, :cond_2

    if-nez v2, :cond_2

    .line 43
    invoke-static {v4}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 48
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 49
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 51
    :cond_3
    return-void
.end method

.method public toggleState(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "newState"

    .prologue
    .line 54
    invoke-static {p1}, Lcom/android/settings/widget/buttons/SyncButton;->getSync(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/buttons/SyncButton;->toggleState(Landroid/content/Context;)V

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-static {p1}, Lcom/android/settings/widget/buttons/SyncButton;->getSync(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/buttons/SyncButton;->toggleState(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public updateState(Landroid/content/Context;Landroid/content/SharedPreferences;[I)V
    .locals 1
    .parameter "context"
    .parameter "globalPreferences"
    .parameter "appWidgetIds"

    .prologue
    .line 86
    invoke-static {p1}, Lcom/android/settings/widget/buttons/SyncButton;->getSync(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const v0, 0x7f02004b

    iput v0, p0, Lcom/android/settings/widget/buttons/SyncButton;->currentIcon:I

    .line 88
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/widget/buttons/SyncButton;->currentState:I

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    const v0, 0x7f02004a

    iput v0, p0, Lcom/android/settings/widget/buttons/SyncButton;->currentIcon:I

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/widget/buttons/SyncButton;->currentState:I

    goto :goto_0
.end method
