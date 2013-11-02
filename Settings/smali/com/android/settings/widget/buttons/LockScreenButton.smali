.class public Lcom/android/settings/widget/buttons/LockScreenButton;
.super Lcom/android/settings/widget/buttons/WidgetButton;
.source "LockScreenButton.java"


# static fields
.field public static final LOCK_SCREEN:Ljava/lang/String; = "lockScreen"

.field static lockScreen:Ljava/lang/Boolean;

.field static ownButton:Lcom/android/settings/widget/buttons/LockScreenButton;


# instance fields
.field lock:Landroid/app/KeyguardManager$KeyguardLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/android/settings/widget/buttons/LockScreenButton;->lockScreen:Ljava/lang/Boolean;

    .line 22
    sput-object v0, Lcom/android/settings/widget/buttons/LockScreenButton;->ownButton:Lcom/android/settings/widget/buttons/LockScreenButton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/settings/widget/buttons/WidgetButton;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/settings/widget/buttons/LockScreenButton;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/android/settings/widget/buttons/LockScreenButton;->ownButton:Lcom/android/settings/widget/buttons/LockScreenButton;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/android/settings/widget/buttons/LockScreenButton;

    invoke-direct {v0}, Lcom/android/settings/widget/buttons/LockScreenButton;-><init>()V

    sput-object v0, Lcom/android/settings/widget/buttons/LockScreenButton;->ownButton:Lcom/android/settings/widget/buttons/LockScreenButton;

    .line 101
    :cond_0
    sget-object v0, Lcom/android/settings/widget/buttons/LockScreenButton;->ownButton:Lcom/android/settings/widget/buttons/LockScreenButton;

    return-object v0
.end method

.method private getLock(Landroid/content/Context;)Landroid/app/KeyguardManager$KeyguardLock;
    .locals 3
    .parameter "context"

    .prologue
    const-string v2, "keyguard"

    .line 27
    iget-object v1, p0, Lcom/android/settings/widget/buttons/LockScreenButton;->lock:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v1, :cond_0

    .line 28
    const-string v1, "keyguard"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 30
    .local v0, keyguardManager:Landroid/app/KeyguardManager;
    const-string v1, "keyguard"

    invoke-virtual {v0, v2}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/buttons/LockScreenButton;->lock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 32
    .end local v0           #keyguardManager:Landroid/app/KeyguardManager;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/widget/buttons/LockScreenButton;->lock:Landroid/app/KeyguardManager$KeyguardLock;

    return-object v1
.end method

.method private static getState(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    sget-object v0, Lcom/android/settings/widget/buttons/LockScreenButton;->lockScreen:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/widget/buttons/LockScreenButton;->lockScreen:Ljava/lang/Boolean;

    .line 94
    :cond_0
    sget-object v0, Lcom/android/settings/widget/buttons/LockScreenButton;->lockScreen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method initButton()V
    .locals 1

    .prologue
    .line 106
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/settings/widget/buttons/LockScreenButton;->buttonID:I

    .line 107
    const-string v0, "toggleLockScreen"

    iput-object v0, p0, Lcom/android/settings/widget/buttons/LockScreenButton;->preferenceName:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public toggleState(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 55
    invoke-static {p1}, Lcom/android/settings/widget/buttons/LockScreenButton;->getState(Landroid/content/Context;)Z

    .line 56
    sget-object v1, Lcom/android/settings/widget/buttons/LockScreenButton;->lockScreen:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 57
    const-string v1, "Not yet initialized"

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 58
    .local v0, msg:Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0}, Landroid/widget/Toast;->getXOffset()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/widget/Toast;->getYOffset()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 59
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 72
    .end local v0           #msg:Landroid/widget/Toast;
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/widget/buttons/LockScreenButton;->getLock(Landroid/content/Context;)Landroid/app/KeyguardManager$KeyguardLock;

    .line 62
    sget-object v1, Lcom/android/settings/widget/buttons/LockScreenButton;->lockScreen:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/widget/buttons/LockScreenButton;->lock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v1, :cond_2

    .line 63
    iget-object v1, p0, Lcom/android/settings/widget/buttons/LockScreenButton;->lock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 64
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/settings/widget/buttons/LockScreenButton;->lockScreen:Ljava/lang/Boolean;

    goto :goto_0

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/android/settings/widget/buttons/LockScreenButton;->lock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/settings/widget/buttons/LockScreenButton;->lock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 68
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/settings/widget/buttons/LockScreenButton;->lockScreen:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public updateState(Landroid/content/Context;Landroid/content/SharedPreferences;[I)V
    .locals 2
    .parameter "context"
    .parameter "globalPreferences"
    .parameter "appWidgetIds"

    .prologue
    const v1, 0x7f02003f

    .line 36
    invoke-static {p1}, Lcom/android/settings/widget/buttons/LockScreenButton;->getState(Landroid/content/Context;)Z

    .line 37
    sget-object v0, Lcom/android/settings/widget/buttons/LockScreenButton;->lockScreen:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 38
    iput v1, p0, Lcom/android/settings/widget/buttons/LockScreenButton;->currentIcon:I

    .line 39
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/widget/buttons/LockScreenButton;->currentState:I

    .line 47
    :goto_0
    return-void

    .line 40
    :cond_0
    sget-object v0, Lcom/android/settings/widget/buttons/LockScreenButton;->lockScreen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    const v0, 0x7f020040

    iput v0, p0, Lcom/android/settings/widget/buttons/LockScreenButton;->currentIcon:I

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/widget/buttons/LockScreenButton;->currentState:I

    goto :goto_0

    .line 44
    :cond_1
    iput v1, p0, Lcom/android/settings/widget/buttons/LockScreenButton;->currentIcon:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/widget/buttons/LockScreenButton;->currentState:I

    goto :goto_0
.end method
