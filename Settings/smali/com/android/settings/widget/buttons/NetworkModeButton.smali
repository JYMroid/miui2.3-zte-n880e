.class public Lcom/android/settings/widget/buttons/NetworkModeButton;
.super Lcom/android/settings/widget/buttons/WidgetButton;
.source "NetworkModeButton.java"


# static fields
.field private static final DEFAULT_SETTTING:I = 0x0

.field private static final MODE_3G2G:I = 0x0

.field private static final MODE_3GONLY:I = 0x1

.field private static final MODE_BOTH:I = 0x2

.field public static final MODIFY_NETWORK_MODE:Ljava/lang/String; = "com.android.internal.telephony.MODIFY_NETWORK_MODE"

.field public static final NETWORK_MODE:Ljava/lang/String; = "networkMode"

.field public static final NETWORK_MODE_CHANGED:Ljava/lang/String; = "com.android.internal.telephony.NETWORK_MODE_CHANGED"

.field private static final NETWORK_MODE_UNKNOWN:I = -0x64

.field private static final NO_NETWORK_MODE_YET:I = -0x63

.field public static final REQUEST_NETWORK_MODE:Ljava/lang/String; = "com.android.internal.telephony.REQUEST_NETWORK_MODE"

.field private static currentInternalState:I

.field private static intendedNetworkMode:I

.field private static networkMode:I

.field static ownButton:Lcom/android/settings/widget/buttons/NetworkModeButton;


# instance fields
.field private currentMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, -0x63

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/widget/buttons/NetworkModeButton;->ownButton:Lcom/android/settings/widget/buttons/NetworkModeButton;

    .line 39
    sput v1, Lcom/android/settings/widget/buttons/NetworkModeButton;->networkMode:I

    .line 41
    sput v1, Lcom/android/settings/widget/buttons/NetworkModeButton;->intendedNetworkMode:I

    .line 43
    const/4 v0, 0x5

    sput v0, Lcom/android/settings/widget/buttons/NetworkModeButton;->currentInternalState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/settings/widget/buttons/WidgetButton;-><init>()V

    return-void
.end method

.method private get2G3G(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 71
    const/16 v1, 0x63

    .line 73
    .local v1, state:I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 78
    :goto_0
    return v1

    .line 75
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 76
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "Settings not found"

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/settings/widget/buttons/NetworkModeButton;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/settings/widget/buttons/NetworkModeButton;->ownButton:Lcom/android/settings/widget/buttons/NetworkModeButton;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/android/settings/widget/buttons/NetworkModeButton;

    invoke-direct {v0}, Lcom/android/settings/widget/buttons/NetworkModeButton;-><init>()V

    sput-object v0, Lcom/android/settings/widget/buttons/NetworkModeButton;->ownButton:Lcom/android/settings/widget/buttons/NetworkModeButton;

    .line 84
    :cond_0
    sget-object v0, Lcom/android/settings/widget/buttons/NetworkModeButton;->ownButton:Lcom/android/settings/widget/buttons/NetworkModeButton;

    return-object v0
.end method

.method private networkModeToState(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x5

    .line 48
    sget v0, Lcom/android/settings/widget/buttons/NetworkModeButton;->currentInternalState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/settings/widget/buttons/NetworkModeButton;->currentInternalState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v2

    .line 60
    :goto_0
    return v0

    .line 52
    :cond_1
    sget v0, Lcom/android/settings/widget/buttons/NetworkModeButton;->networkMode:I

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 60
    goto :goto_0

    .line 56
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 58
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method initButton()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/settings/widget/buttons/NetworkModeButton;->buttonID:I

    .line 90
    const-string v0, "toggle2G3G"

    iput-object v0, p0, Lcom/android/settings/widget/buttons/NetworkModeButton;->preferenceName:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public isDisabled(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/android/settings/widget/buttons/NetworkModeButton;->networkModeToState(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 187
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "networkMode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/settings/widget/buttons/NetworkModeButton;->networkMode:I

    .line 190
    sget v1, Lcom/android/settings/widget/buttons/NetworkModeButton;->networkMode:I

    sput v1, Lcom/android/settings/widget/buttons/NetworkModeButton;->intendedNetworkMode:I

    .line 194
    :cond_0
    sput v3, Lcom/android/settings/widget/buttons/NetworkModeButton;->currentInternalState:I

    .line 196
    invoke-direct {p0, p1}, Lcom/android/settings/widget/buttons/NetworkModeButton;->networkModeToState(Landroid/content/Context;)I

    move-result v0

    .line 197
    .local v0, widgetState:I
    sput v0, Lcom/android/settings/widget/buttons/NetworkModeButton;->currentInternalState:I

    .line 198
    if-ne v0, v3, :cond_1

    .line 199
    invoke-static {}, Lcom/android/settings/widget/buttons/MobileDataButton;->getInstance()Lcom/android/settings/widget/buttons/MobileDataButton;

    move-result-object v1

    sget v2, Lcom/android/settings/widget/buttons/NetworkModeButton;->networkMode:I

    invoke-virtual {v1, p1, v2}, Lcom/android/settings/widget/buttons/MobileDataButton;->networkModeChanged(Landroid/content/Context;I)V

    .line 201
    :cond_1
    return-void
.end method

.method public toggleState(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/buttons/NetworkModeButton;->toggleState(Landroid/content/Context;Z)V

    .line 96
    return-void
.end method

.method public toggleState(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "newState"

    .prologue
    const/4 v2, 0x5

    .line 99
    iget v1, p0, Lcom/android/settings/widget/buttons/NetworkModeButton;->currentState:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/settings/widget/buttons/NetworkModeButton;->currentState:I

    if-eq v1, p2, :cond_1

    .line 101
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/widget/buttons/NetworkModeButton;->toggleState(Landroid/content/Context;Z)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget v1, p0, Lcom/android/settings/widget/buttons/NetworkModeButton;->currentState:I

    if-ne v1, v2, :cond_0

    .line 103
    const-string v1, "Network mode state unknown. Please change it manually!"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 105
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public toggleState(Landroid/content/Context;Z)V
    .locals 7
    .parameter "context"
    .parameter "switchModes"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    const-string v4, "networkMode"

    .line 110
    const-string v1, "NetworkMode: toggleState"

    invoke-static {v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->logD(Ljava/lang/String;)V

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.telephony.MODIFY_NETWORK_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, intent:Landroid/content/Intent;
    sget v1, Lcom/android/settings/widget/buttons/NetworkModeButton;->networkMode:I

    packed-switch v1, :pswitch_data_0

    .line 143
    :goto_0
    const/16 v1, -0x64

    sput v1, Lcom/android/settings/widget/buttons/NetworkModeButton;->networkMode:I

    .line 144
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 145
    return-void

    .line 115
    :pswitch_0
    const-string v1, "networkMode"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    sput v6, Lcom/android/settings/widget/buttons/NetworkModeButton;->currentInternalState:I

    .line 117
    sput v2, Lcom/android/settings/widget/buttons/NetworkModeButton;->intendedNetworkMode:I

    goto :goto_0

    .line 120
    :pswitch_1
    iget v1, p0, Lcom/android/settings/widget/buttons/NetworkModeButton;->currentMode:I

    if-eq v1, v2, :cond_0

    if-eqz p2, :cond_1

    .line 121
    :cond_0
    const-string v1, "networkMode"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    sput v6, Lcom/android/settings/widget/buttons/NetworkModeButton;->currentInternalState:I

    .line 123
    sput v2, Lcom/android/settings/widget/buttons/NetworkModeButton;->intendedNetworkMode:I

    goto :goto_0

    .line 125
    :cond_1
    const-string v1, "networkMode"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    sput v3, Lcom/android/settings/widget/buttons/NetworkModeButton;->currentInternalState:I

    .line 127
    sput v5, Lcom/android/settings/widget/buttons/NetworkModeButton;->intendedNetworkMode:I

    goto :goto_0

    .line 131
    :pswitch_2
    iget v1, p0, Lcom/android/settings/widget/buttons/NetworkModeButton;->currentMode:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/settings/widget/buttons/NetworkModeButton;->currentMode:I

    if-ne v1, v3, :cond_3

    .line 132
    :cond_2
    const-string v1, "networkMode"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    sput v3, Lcom/android/settings/widget/buttons/NetworkModeButton;->currentInternalState:I

    .line 134
    sput v3, Lcom/android/settings/widget/buttons/NetworkModeButton;->intendedNetworkMode:I

    goto :goto_0

    .line 136
    :cond_3
    const-string v1, "networkMode"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    sput v3, Lcom/android/settings/widget/buttons/NetworkModeButton;->currentInternalState:I

    .line 138
    sput v5, Lcom/android/settings/widget/buttons/NetworkModeButton;->intendedNetworkMode:I

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateState(Landroid/content/Context;Landroid/content/SharedPreferences;[I)V
    .locals 6
    .parameter "context"
    .parameter "globalPreferences"
    .parameter "appWidgetIds"

    .prologue
    const v5, 0x7f020030

    const v4, 0x7f02002f

    const v3, 0x7f02002e

    const/4 v2, 0x2

    .line 150
    const-string v0, "networkModeSpinner"

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/buttons/NetworkModeButton;->currentMode:I

    .line 152
    invoke-direct {p0, p1}, Lcom/android/settings/widget/buttons/NetworkModeButton;->get2G3G(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/settings/widget/buttons/NetworkModeButton;->networkMode:I

    .line 153
    invoke-direct {p0, p1}, Lcom/android/settings/widget/buttons/NetworkModeButton;->networkModeToState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/buttons/NetworkModeButton;->currentState:I

    .line 155
    iget v0, p0, Lcom/android/settings/widget/buttons/NetworkModeButton;->currentState:I

    packed-switch v0, :pswitch_data_0

    .line 184
    :goto_0
    :pswitch_0
    return-void

    .line 157
    :pswitch_1
    iput v3, p0, Lcom/android/settings/widget/buttons/NetworkModeButton;->currentIcon:I

    goto :goto_0

    .line 160
    :pswitch_2
    sget v0, Lcom/android/settings/widget/buttons/NetworkModeButton;->networkMode:I

    if-ne v0, v2, :cond_0

    .line 161
    iput v5, p0, Lcom/android/settings/widget/buttons/NetworkModeButton;->currentIcon:I

    goto :goto_0

    .line 164
    :cond_0
    iput v4, p0, Lcom/android/settings/widget/buttons/NetworkModeButton;->currentIcon:I

    goto :goto_0

    .line 173
    :pswitch_3
    sget v0, Lcom/android/settings/widget/buttons/NetworkModeButton;->currentInternalState:I

    if-ne v0, v2, :cond_2

    .line 174
    sget v0, Lcom/android/settings/widget/buttons/NetworkModeButton;->intendedNetworkMode:I

    if-ne v0, v2, :cond_1

    .line 175
    iput v5, p0, Lcom/android/settings/widget/buttons/NetworkModeButton;->currentIcon:I

    goto :goto_0

    .line 177
    :cond_1
    iput v4, p0, Lcom/android/settings/widget/buttons/NetworkModeButton;->currentIcon:I

    goto :goto_0

    .line 180
    :cond_2
    iput v3, p0, Lcom/android/settings/widget/buttons/NetworkModeButton;->currentIcon:I

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
