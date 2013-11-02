.class public Lcom/android/systemui/toggles/ToggleManager;
.super Ljava/lang/Object;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/toggles/ToggleManager$WifiStateTracker;,
        Lcom/android/systemui/toggles/ToggleManager$StateTracker;,
        Lcom/android/systemui/toggles/ToggleManager$OnToggleOrderChangedListener;,
        Lcom/android/systemui/toggles/ToggleManager$OnToggleChangedListener;
    }
.end annotation


# static fields
.field private static sLongClickActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sToggleImages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sToggleNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccelerometer:Z

.field private mApnEnable:Z

.field private mBackgroundDataEnable:Z

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothEnable:Z

.field private mBluetoothEnabling:Z

.field private mBrightnessToggleIsTwoStates:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mFlightMode:Z

.field private mGpsEnable:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mMobileDataEnableObserver:Landroid/database/ContentObserver;

.field private final mPrivacyModeObserver:Landroid/database/ContentObserver;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mResource:Landroid/content/res/Resources;

.field private mSyncAutoEnable:Z

.field private mToast:Landroid/widget/Toast;

.field private final mTogglOrderObserver:Landroid/database/ContentObserver;

.field private mToggleChangedListener:Lcom/android/systemui/toggles/ToggleManager$OnToggleChangedListener;

.field private mToggleOrderChangedListener:Lcom/android/systemui/toggles/ToggleManager$OnToggleOrderChangedListener;

.field private mTorchEnable:Z

.field private final mTorchEnableObserver:Landroid/database/ContentObserver;

.field private final mWifiState:Lcom/android/systemui/toggles/ToggleManager$StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleNames:Landroid/util/SparseArray;

    .line 83
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleNames:Landroid/util/SparseArray;

    const v1, 0x7f0a0022

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleNames:Landroid/util/SparseArray;

    const/16 v1, 0xf

    const v2, 0x7f0a0023

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleNames:Landroid/util/SparseArray;

    const v1, 0x7f0a0024

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleNames:Landroid/util/SparseArray;

    const v1, 0x7f0a0025

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleNames:Landroid/util/SparseArray;

    const v1, 0x7f0a0026

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleNames:Landroid/util/SparseArray;

    const v1, 0x7f0a0027

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleNames:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const v2, 0x7f0a0028

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleNames:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const v2, 0x7f0a002b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleNames:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const v2, 0x7f0a0029

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleNames:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const v2, 0x7f0a002a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleNames:Landroid/util/SparseArray;

    const/16 v1, 0x9

    const v2, 0x7f0a002c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleNames:Landroid/util/SparseArray;

    const/16 v1, 0xa

    const v2, 0x7f0a002d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleNames:Landroid/util/SparseArray;

    const/16 v1, 0xb

    const v2, 0x7f0a0030

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleNames:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const v2, 0x7f0a0031

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleNames:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const v2, 0x7f0a0032

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleNames:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const v2, 0x7f0a0033

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/toggles/ToggleManager;->sLongClickActions:Landroid/util/SparseArray;

    .line 106
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sLongClickActions:Landroid/util/SparseArray;

    const-string v1, "com.android.systemui/.toggles.ToggleSettings"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sLongClickActions:Landroid/util/SparseArray;

    const-string v1, "com.android.phone/.Settings"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sLongClickActions:Landroid/util/SparseArray;

    const-string v1, "com.android.settings/.bluetooth.BluetoothSettings"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sLongClickActions:Landroid/util/SparseArray;

    const-string v1, "com.android.settings/.DisplaySettings"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sLongClickActions:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "com.android.settings/.SecuritySettings"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sLongClickActions:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "com.android.settings/.SoundSettings"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sLongClickActions:Landroid/util/SparseArray;

    const-string v1, "com.android.settings/.DisplaySettings"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sLongClickActions:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string v2, "com.android.providers.subscribedfeeds/com.android.settings.ManageAccountsSettings"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sLongClickActions:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v2, "com.android.settings/.SoundSettings"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sLongClickActions:Landroid/util/SparseArray;

    const/16 v1, 0xf

    const-string v2, "com.android.settings/.wifi.WifiSettings"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleImages:Landroid/util/SparseArray;

    .line 133
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleImages:Landroid/util/SparseArray;

    const v1, 0x7f0200c9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleImages:Landroid/util/SparseArray;

    const/16 v1, 0xf

    const v2, 0x7f0200ea

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleImages:Landroid/util/SparseArray;

    const v1, 0x7f0200c8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleImages:Landroid/util/SparseArray;

    const v1, 0x7f0200c1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 137
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleImages:Landroid/util/SparseArray;

    const v1, 0x7f0200d7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleImages:Landroid/util/SparseArray;

    const v1, 0x7f0200c6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 139
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleImages:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const v2, 0x7f0200d1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleImages:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const v2, 0x7f0200e7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 141
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleImages:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const v2, 0x7f0200ce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 142
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleImages:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const v2, 0x7f0200e3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleImages:Landroid/util/SparseArray;

    const/16 v1, 0x9

    const v2, 0x7f0200cc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleImages:Landroid/util/SparseArray;

    const/16 v1, 0xa

    const v2, 0x7f0200cf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 145
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleImages:Landroid/util/SparseArray;

    const/16 v1, 0xb

    const v2, 0x7f0200e5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleImages:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const v2, 0x7f0200d5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleImages:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const v2, 0x7f0200d9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleImages:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const v2, 0x7f0200d4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mHandler:Landroid/os/Handler;

    .line 378
    new-instance v1, Lcom/android/systemui/toggles/ToggleManager$1;

    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/toggles/ToggleManager$1;-><init>(Lcom/android/systemui/toggles/ToggleManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    .line 406
    iput-object v3, p0, Lcom/android/systemui/toggles/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 408
    new-instance v1, Lcom/android/systemui/toggles/ToggleManager$WifiStateTracker;

    invoke-direct {v1, v3}, Lcom/android/systemui/toggles/ToggleManager$WifiStateTracker;-><init>(Lcom/android/systemui/toggles/ToggleManager$1;)V

    iput-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mWifiState:Lcom/android/systemui/toggles/ToggleManager$StateTracker;

    .line 421
    new-instance v1, Lcom/android/systemui/toggles/ToggleManager$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/toggles/ToggleManager$2;-><init>(Lcom/android/systemui/toggles/ToggleManager;)V

    iput-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 438
    new-instance v1, Lcom/android/systemui/toggles/ToggleManager$3;

    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/toggles/ToggleManager$3;-><init>(Lcom/android/systemui/toggles/ToggleManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    .line 446
    new-instance v1, Lcom/android/systemui/toggles/ToggleManager$4;

    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/toggles/ToggleManager$4;-><init>(Lcom/android/systemui/toggles/ToggleManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mTorchEnableObserver:Landroid/database/ContentObserver;

    .line 454
    new-instance v1, Lcom/android/systemui/toggles/ToggleManager$5;

    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/toggles/ToggleManager$5;-><init>(Lcom/android/systemui/toggles/ToggleManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mPrivacyModeObserver:Landroid/database/ContentObserver;

    .line 905
    iput-boolean v4, p0, Lcom/android/systemui/toggles/ToggleManager;->mBrightnessToggleIsTwoStates:Z

    .line 1057
    iput-object v3, p0, Lcom/android/systemui/toggles/ToggleManager;->mToast:Landroid/widget/Toast;

    .line 161
    iput-object p1, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mResource:Landroid/content/res/Resources;

    .line 165
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 166
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "status_bar_toggle_list"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/toggles/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 177
    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "status_bar_toggle_page"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/toggles/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 181
    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/toggles/ToggleManager;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 186
    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "torch_state"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/toggles/ToggleManager;->mTorchEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/systemui/toggles/ToggleManager;->refreshAll()V

    .line 198
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/toggles/ToggleManager;)Lcom/android/systemui/toggles/ToggleManager$OnToggleOrderChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mToggleOrderChangedListener:Lcom/android/systemui/toggles/ToggleManager$OnToggleOrderChangedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/toggles/ToggleManager;)Lcom/android/systemui/toggles/ToggleManager$StateTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mWifiState:Lcom/android/systemui/toggles/ToggleManager$StateTracker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/toggles/ToggleManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/systemui/toggles/ToggleManager;->updateDataToggle()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/toggles/ToggleManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/systemui/toggles/ToggleManager;->updateTorchToggle()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/toggles/ToggleManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/systemui/toggles/ToggleManager;->updatePrivacyModeToggle()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/toggles/ToggleManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static addIfUnselected(Ljava/util/ArrayList;I)V
    .locals 1
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_0
    return-void
.end method

.method private ensureBluetoothAdapter()Z
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 871
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDividerFixedPosition(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 259
    invoke-static {p0}, Lcom/android/systemui/toggles/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xb

    goto :goto_0
.end method

.method public static getImage(I)I
    .locals 2
    .parameter "id"

    .prologue
    .line 350
    sget-object v1, Lcom/android/systemui/toggles/ToggleManager;->sToggleImages:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 351
    .local v0, result:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getName(I)I
    .locals 2
    .parameter "id"

    .prologue
    .line 345
    sget-object v1, Lcom/android/systemui/toggles/ToggleManager;->sToggleNames:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 346
    .local v0, result:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private static getToggleOrderSettingID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 263
    invoke-static {p0}, Lcom/android/systemui/toggles/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "status_bar_toggle_list"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "status_bar_toggle_page"

    goto :goto_0
.end method

.method public static getUserSelectedToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {p0}, Lcom/android/systemui/toggles/ToggleManager;->getToggleOrderSettingID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, toggleList:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 220
    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, toggles:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_1

    .line 223
    :try_start_0
    aget-object v6, v5, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 224
    .local v2, id:I
    invoke-static {v2}, Lcom/android/systemui/toggles/ToggleManager;->getName(I)I

    move-result v6

    if-eqz v6, :cond_0

    .line 225
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    .end local v2           #id:I
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 228
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 234
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:I
    .end local v5           #toggles:[Ljava/lang/String;
    :cond_1
    invoke-static {p0, v3}, Lcom/android/systemui/toggles/ToggleManager;->validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 235
    return-object v3
.end method

.method public static isListStyle(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 252
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_style"

    invoke-static {}, Lmiui/provider/ExtraSettings$System;->getDefaultStatusBarStyle()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shutdown(Z)V
    .locals 4
    .parameter

    .prologue
    .line 1291
    if-eqz p1, :cond_0

    const v0, 0x609001c

    .line 1294
    :goto_0
    if-eqz p1, :cond_1

    const v1, 0x6090019

    .line 1298
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/systemui/toggles/ToggleManager$7;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/toggles/ToggleManager$7;-><init>(Lcom/android/systemui/toggles/ToggleManager;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1316
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1317
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1318
    return-void

    .line 1291
    :cond_0
    const v0, 0x609001b

    goto :goto_0

    .line 1294
    :cond_1
    const v1, 0x609001d

    goto :goto_1
.end method

.method private toast(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mToast:Landroid/widget/Toast;

    .line 1065
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1066
    return-void

    .line 1062
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private toggle(I)Z
    .locals 6
    .parameter "id"

    .prologue
    .line 471
    const/4 v1, 0x0

    .line 472
    .local v1, result:Z
    packed-switch p1, :pswitch_data_0

    .line 543
    .end local p0
    :goto_0
    return v1

    .line 474
    .restart local p0
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleManager;->mWifiState:Lcom/android/systemui/toggles/ToggleManager$StateTracker;

    iget-object v3, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 477
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/toggles/ToggleManager;->toggleData()V

    goto :goto_0

    .line 480
    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/toggles/ToggleManager;->toggleBluetooth()V

    goto :goto_0

    .line 483
    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/toggles/ToggleManager;->toggleAccelerometer()V

    goto :goto_0

    .line 486
    :pswitch_4
    invoke-direct {p0}, Lcom/android/systemui/toggles/ToggleManager;->toggleBrightness()V

    goto :goto_0

    .line 489
    :pswitch_5
    invoke-direct {p0}, Lcom/android/systemui/toggles/ToggleManager;->toggleRinger()V

    goto :goto_0

    .line 492
    :pswitch_6
    invoke-direct {p0}, Lcom/android/systemui/toggles/ToggleManager;->toggleVibrate()V

    goto :goto_0

    .line 495
    :pswitch_7
    invoke-direct {p0}, Lcom/android/systemui/toggles/ToggleManager;->toggleGps()V

    goto :goto_0

    .line 498
    :pswitch_8
    invoke-direct {p0}, Lcom/android/systemui/toggles/ToggleManager;->toggleSync()V

    goto :goto_0

    .line 501
    :pswitch_9
    invoke-direct {p0}, Lcom/android/systemui/toggles/ToggleManager;->toggleFlightMode()V

    goto :goto_0

    .line 504
    :pswitch_a
    invoke-direct {p0}, Lcom/android/systemui/toggles/ToggleManager;->togglePrivacyMode()Z

    move-result v1

    .line 505
    goto :goto_0

    .line 520
    :pswitch_b
    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_0

    .line 524
    .restart local p0
    :pswitch_c
    invoke-direct {p0}, Lcom/android/systemui/toggles/ToggleManager;->toggleTorch()V

    goto :goto_0

    .line 527
    :pswitch_d
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/toggles/ToggleManager;->shutdown(Z)V

    goto :goto_0

    .line 530
    :pswitch_e
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/systemui/toggles/ToggleManager;->shutdown(Z)V

    goto :goto_0

    .line 533
    :pswitch_f
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 534
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.toggles.ToggleArrangement"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 536
    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 537
    const/4 v1, 0x1

    .line 538
    goto :goto_0

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_a
        :pswitch_0
    .end packed-switch
.end method

.method private toggleAccelerometer()V
    .locals 3

    .prologue
    .line 1025
    iget-boolean v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mAccelerometer:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 1026
    .local v0, intValue:I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1027
    return-void

    .line 1025
    .end local v0           #intValue:I
    :cond_0
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method private toggleBluetooth()V
    .locals 1

    .prologue
    .line 877
    invoke-direct {p0}, Lcom/android/systemui/toggles/ToggleManager;->ensureBluetoothAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    iget-boolean v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mBluetoothEnable:Z

    if-eqz v0, :cond_1

    .line 879
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 880
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mBluetoothEnabling:Z

    .line 886
    :cond_0
    :goto_0
    return-void

    .line 882
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 883
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mBluetoothEnabling:Z

    goto :goto_0
.end method

.method private toggleBrightness()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 947
    invoke-virtual {p0}, Lcom/android/systemui/toggles/ToggleManager;->getBrightnessLevel()I

    move-result v0

    .line 948
    .local v0, brightness:I
    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 953
    .local v1, brightnessMode:I
    iget-boolean v2, p0, Lcom/android/systemui/toggles/ToggleManager;->mBrightnessToggleIsTwoStates:Z

    if-nez v2, :cond_3

    .line 955
    if-ne v1, v5, :cond_0

    .line 956
    const/16 v0, 0x14

    .line 957
    const/4 v1, 0x0

    .line 975
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/toggles/ToggleManager;->setBrightness(II)V

    .line 976
    return-void

    .line 958
    :cond_0
    const/16 v2, 0x14

    if-gt v0, v2, :cond_1

    .line 959
    const/16 v0, 0x66

    goto :goto_0

    .line 960
    :cond_1
    const/16 v2, 0xff

    if-ge v0, v2, :cond_2

    .line 961
    const/16 v0, 0xff

    goto :goto_0

    .line 964
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 968
    :cond_3
    if-ne v1, v5, :cond_4

    .line 969
    const/4 v1, 0x0

    goto :goto_0

    .line 971
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private toggleData()V
    .locals 3

    .prologue
    .line 1006
    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1008
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-boolean v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mApnEnable:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1009
    return-void

    .line 1008
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private toggleFlightMode()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1211
    iget-boolean v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mFlightMode:Z

    if-nez v1, :cond_0

    move v1, v5

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mFlightMode:Z

    .line 1212
    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "airplane_mode_on"

    iget-boolean v3, p0, Lcom/android/systemui/toggles/ToggleManager;->mFlightMode:Z

    if-eqz v3, :cond_1

    move v3, v5

    :goto_1
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1213
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1214
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1215
    const-string v1, "state"

    iget-boolean v2, p0, Lcom/android/systemui/toggles/ToggleManager;->mFlightMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1216
    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1217
    return-void

    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    move v1, v4

    .line 1211
    goto :goto_0

    :cond_1
    move v3, v4

    .line 1212
    goto :goto_1
.end method

.method private toggleGps()V
    .locals 3

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "gps"

    iget-boolean v2, p0, Lcom/android/systemui/toggles/ToggleManager;->mGpsEnable:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1155
    return-void

    .line 1153
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private togglePrivacyMode()Z
    .locals 1

    .prologue
    .line 1228
    const/4 v0, 0x0

    .line 1268
    .local v0, result:Z
    return v0
.end method

.method private toggleRinger()V
    .locals 4

    .prologue
    .line 1042
    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/util/AudioManagerHelper;->toggleSilent(Landroid/content/Context;)V

    .line 1043
    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1044
    .local v0, am:Landroid/media/AudioManager;
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 1046
    return-void
.end method

.method private toggleSync()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1169
    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1174
    .local v0, connManager:Landroid/net/ConnectivityManager;
    iget-boolean v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mBackgroundDataEnable:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mSyncAutoEnable:Z

    if-nez v1, :cond_0

    .line 1175
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    .line 1176
    invoke-static {v3}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 1180
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mBackgroundDataEnable:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mSyncAutoEnable:Z

    if-eqz v1, :cond_1

    .line 1181
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    .line 1185
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mBackgroundDataEnable:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mSyncAutoEnable:Z

    if-nez v1, :cond_2

    .line 1186
    invoke-static {v3}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 1191
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mBackgroundDataEnable:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mSyncAutoEnable:Z

    if-eqz v1, :cond_3

    .line 1192
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 1194
    :cond_3
    return-void
.end method

.method private toggleTorch()V
    .locals 3

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "net.cactii.flash2.TOGGLE_FLASHLIGHT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1288
    return-void
.end method

.method private toggleVibrate()V
    .locals 14

    .prologue
    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 1072
    new-array v5, v10, [Ljava/lang/String;

    const-string v9, "vibrate_ringer"

    aput-object v9, v5, v13

    const-string v9, "vibrate_notification"

    aput-object v9, v5, v12

    const-string v9, "vibrate_mms"

    aput-object v9, v5, v11

    .line 1078
    .local v5, prefs:[Ljava/lang/String;
    new-array v1, v10, [I

    fill-array-data v1, :array_0

    .line 1084
    .local v1, hintIds:[I
    new-array v3, v10, [Z

    .line 1086
    .local v3, isPrefsOn:[Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v9, v5

    if-ge v2, v9, :cond_0

    .line 1087
    iget-object v9, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    aget-object v10, v5, v2

    invoke-static {v9, v10}, Lmiui/provider/ExtraSettings$System;->isVibratePrefOn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    aput-boolean v9, v3, v2

    .line 1086
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1090
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1091
    iget-object v9, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lmiui/util/AudioManagerHelper;->toggleVibrate(Landroid/content/Context;)V

    .line 1137
    :goto_1
    return-void

    .line 1093
    :cond_1
    aget-boolean v9, v3, v13

    if-eqz v9, :cond_2

    aget-boolean v9, v3, v12

    if-eqz v9, :cond_2

    aget-boolean v9, v3, v11

    if-eqz v9, :cond_2

    .line 1094
    iget-object v9, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lmiui/util/AudioManagerHelper;->toggleVibrate(Landroid/content/Context;)V

    goto :goto_1

    .line 1095
    :cond_2
    aget-boolean v9, v3, v13

    if-nez v9, :cond_3

    aget-boolean v9, v3, v12

    if-nez v9, :cond_3

    aget-boolean v9, v3, v11

    if-eqz v9, :cond_7

    .line 1096
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lmiui/util/AudioManagerHelper;->toggleVibrate(Landroid/content/Context;)V

    .line 1097
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1098
    .local v8, vibrate:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1099
    .local v4, noVibrate:Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    const v10, 0x7f0a0042

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1100
    .local v7, separator:Ljava/lang/String;
    const/4 v2, 0x0

    :goto_2
    array-length v9, v5

    if-ge v2, v9, :cond_6

    .line 1101
    aget-boolean v9, v3, v2

    if-eqz v9, :cond_5

    move-object v6, v8

    .line 1102
    .local v6, sb:Ljava/lang/StringBuilder;
    :goto_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 1103
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    :cond_4
    iget-object v9, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    aget v10, v1, v2

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v6           #sb:Ljava/lang/StringBuilder;
    :cond_5
    move-object v6, v4

    .line 1101
    goto :goto_3

    .line 1107
    :cond_6
    iget-object v9, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    const v10, 0x7f0a0046

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/systemui/toggles/ToggleManager;->toast(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1110
    .end local v4           #noVibrate:Ljava/lang/StringBuilder;
    .end local v7           #separator:Ljava/lang/String;
    .end local v8           #vibrate:Ljava/lang/StringBuilder;
    :cond_7
    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0a0047

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0a0048

    new-instance v11, Lcom/android/systemui/toggles/ToggleManager$6;

    invoke-direct {v11, p0}, Lcom/android/systemui/toggles/ToggleManager$6;-><init>(Lcom/android/systemui/toggles/ToggleManager;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/high16 v10, 0x104

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1133
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d8

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    .line 1134
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 1078
    :array_0
    .array-data 0x4
        0x43t 0x0t 0xat 0x7ft
        0x44t 0x0t 0xat 0x7ft
        0x45t 0x0t 0xat 0x7ft
    .end array-data
.end method

.method private updateAccelerometerToggle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1030
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mAccelerometer:Z

    .line 1031
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mAccelerometer:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0200d7

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/toggles/ToggleManager;->updateToggleImage(II)V

    .line 1034
    return-void

    :cond_0
    move v0, v2

    .line 1030
    goto :goto_0

    .line 1031
    :cond_1
    const v1, 0x7f0200d6

    goto :goto_1
.end method

.method private updateBrightnessToggle()V
    .locals 3

    .prologue
    .line 926
    const/4 v1, 0x0

    .line 927
    .local v1, resId:I
    invoke-virtual {p0}, Lcom/android/systemui/toggles/ToggleManager;->isAutoBrightnessMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 928
    const v1, 0x7f0200c2

    .line 943
    :goto_0
    const/4 v2, 0x4

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/toggles/ToggleManager;->updateToggleImage(II)V

    .line 944
    return-void

    .line 929
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/toggles/ToggleManager;->mBrightnessToggleIsTwoStates:Z

    if-eqz v2, :cond_1

    .line 930
    const v1, 0x7f0200c4

    goto :goto_0

    .line 932
    :cond_1
    const v1, 0x7f0200c5

    .line 933
    invoke-virtual {p0}, Lcom/android/systemui/toggles/ToggleManager;->getBrightnessLevel()I

    move-result v0

    .line 934
    .local v0, brightness:I
    const/16 v2, 0x14

    if-gt v0, v2, :cond_2

    .line 935
    const v1, 0x7f0200c5

    goto :goto_0

    .line 936
    :cond_2
    const/16 v2, 0xff

    if-ge v0, v2, :cond_3

    .line 937
    const v1, 0x7f0200c3

    goto :goto_0

    .line 939
    :cond_3
    const v1, 0x7f0200c6

    goto :goto_0
.end method

.method private updateDataToggle()V
    .locals 3

    .prologue
    .line 1012
    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1014
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mApnEnable:Z

    .line 1015
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/systemui/toggles/ToggleManager;->mApnEnable:Z

    if-eqz v2, :cond_0

    const v2, 0x7f0200c8

    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/toggles/ToggleManager;->updateToggleImage(II)V

    .line 1018
    return-void

    .line 1015
    :cond_0
    const v2, 0x7f0200c7

    goto :goto_0
.end method

.method private updateFlightModeToggle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1220
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mFlightMode:Z

    .line 1221
    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mFlightMode:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0200cc

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/toggles/ToggleManager;->updateToggleImage(II)V

    .line 1224
    return-void

    :cond_0
    move v0, v2

    .line 1220
    goto :goto_0

    .line 1221
    :cond_1
    const v1, 0x7f0200cb

    goto :goto_1
.end method

.method private updateGpsToggle()V
    .locals 2

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mGpsEnable:Z

    .line 1160
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mGpsEnable:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0200ce

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/toggles/ToggleManager;->updateToggleImage(II)V

    .line 1163
    return-void

    .line 1160
    :cond_0
    const v1, 0x7f0200cd

    goto :goto_0
.end method

.method private updatePrivacyModeToggle()V
    .locals 0

    .prologue
    .line 1276
    return-void
.end method

.method private updateSyncToggle()V
    .locals 3

    .prologue
    .line 1197
    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1199
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mBackgroundDataEnable:Z

    .line 1200
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mSyncAutoEnable:Z

    .line 1201
    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/android/systemui/toggles/ToggleManager;->mBackgroundDataEnable:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/toggles/ToggleManager;->mSyncAutoEnable:Z

    if-eqz v2, :cond_0

    const v2, 0x7f0200e3

    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/toggles/ToggleManager;->updateToggleImage(II)V

    .line 1204
    return-void

    .line 1201
    :cond_0
    const v2, 0x7f0200e2

    goto :goto_0
.end method

.method private updateToggle(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 547
    packed-switch p1, :pswitch_data_0

    .line 587
    :goto_0
    :pswitch_0
    return-void

    .line 549
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/toggles/ToggleManager;->updateWifiToggle()V

    goto :goto_0

    .line 552
    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/toggles/ToggleManager;->updateDataToggle()V

    goto :goto_0

    .line 555
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/toggles/ToggleManager;->updateBluetoothToggle()V

    goto :goto_0

    .line 558
    :pswitch_4
    invoke-direct {p0}, Lcom/android/systemui/toggles/ToggleManager;->updateAccelerometerToggle()V

    goto :goto_0

    .line 561
    :pswitch_5
    invoke-direct {p0}, Lcom/android/systemui/toggles/ToggleManager;->updateBrightnessToggle()V

    goto :goto_0

    .line 564
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/systemui/toggles/ToggleManager;->updateRingerToggle()V

    goto :goto_0

    .line 567
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/systemui/toggles/ToggleManager;->updateVibrateToggle()V

    goto :goto_0

    .line 570
    :pswitch_8
    invoke-direct {p0}, Lcom/android/systemui/toggles/ToggleManager;->updateGpsToggle()V

    goto :goto_0

    .line 573
    :pswitch_9
    invoke-direct {p0}, Lcom/android/systemui/toggles/ToggleManager;->updateSyncToggle()V

    goto :goto_0

    .line 576
    :pswitch_a
    invoke-direct {p0}, Lcom/android/systemui/toggles/ToggleManager;->updateFlightModeToggle()V

    goto :goto_0

    .line 582
    :pswitch_b
    invoke-direct {p0}, Lcom/android/systemui/toggles/ToggleManager;->updateTorchToggle()V

    goto :goto_0

    .line 547
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateToggleImage(II)V
    .locals 2
    .parameter "toggleId"
    .parameter "resId"

    .prologue
    .line 463
    sget-object v0, Lcom/android/systemui/toggles/ToggleManager;->sToggleImages:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 465
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mToggleChangedListener:Lcom/android/systemui/toggles/ToggleManager$OnToggleChangedListener;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mToggleChangedListener:Lcom/android/systemui/toggles/ToggleManager$OnToggleChangedListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/toggles/ToggleManager$OnToggleChangedListener;->OnToggleChanged(I)V

    .line 468
    :cond_0
    return-void
.end method

.method private updateTorchToggle()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1279
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "torch_state"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mTorchEnable:Z

    .line 1281
    const/16 v0, 0xb

    iget-boolean v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mTorchEnable:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0200e5

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/toggles/ToggleManager;->updateToggleImage(II)V

    .line 1284
    return-void

    :cond_0
    move v0, v2

    .line 1279
    goto :goto_0

    .line 1281
    :cond_1
    const v1, 0x7f0200e4

    goto :goto_1
.end method

.method private static validateToggleList(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 279
    const/16 v1, 0xf

    invoke-static {p0, v1}, Lcom/android/systemui/toggles/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 280
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/systemui/toggles/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 281
    const/4 v1, 0x7

    invoke-static {p0, v1}, Lcom/android/systemui/toggles/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 282
    invoke-static {p0, v3}, Lcom/android/systemui/toggles/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 283
    invoke-static {p0, v4}, Lcom/android/systemui/toggles/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 284
    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/android/systemui/toggles/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 285
    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/android/systemui/toggles/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 286
    const/16 v1, 0xa

    invoke-static {p0, v1}, Lcom/android/systemui/toggles/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 287
    const/16 v1, 0x9

    invoke-static {p0, v1}, Lcom/android/systemui/toggles/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 288
    invoke-static {p0, v2}, Lcom/android/systemui/toggles/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 289
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/systemui/toggles/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 290
    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/android/systemui/toggles/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 291
    const/16 v1, 0xb

    invoke-static {p0, v1}, Lcom/android/systemui/toggles/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 295
    const/16 v1, 0xc

    invoke-static {p0, v1}, Lcom/android/systemui/toggles/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 296
    const/16 v1, 0xd

    invoke-static {p0, v1}, Lcom/android/systemui/toggles/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 299
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 300
    .local v0, dividerIndex:I
    if-ge v0, v3, :cond_0

    .line 301
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 302
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 304
    :cond_0
    return-void
.end method

.method private static validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p0}, Lcom/android/systemui/toggles/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-static {p1}, Lcom/android/systemui/toggles/ToggleManager;->validateToggleList(Ljava/util/ArrayList;)V

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/toggles/ToggleManager;->validateTogglePage(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private static validateTogglePage(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v2, 0xb

    const/4 v1, 0x0

    .line 308
    const/16 v0, 0x9

    invoke-static {p0, v0}, Lcom/android/systemui/toggles/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 310
    const/16 v0, 0xc

    invoke-static {p0, v0}, Lcom/android/systemui/toggles/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 311
    const/16 v0, 0xd

    invoke-static {p0, v0}, Lcom/android/systemui/toggles/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 312
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/systemui/toggles/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 313
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/systemui/toggles/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 314
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/android/systemui/toggles/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 315
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/android/systemui/toggles/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 316
    const/16 v0, 0xf

    invoke-static {p0, v0}, Lcom/android/systemui/toggles/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 317
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/toggles/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 318
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/android/systemui/toggles/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 319
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/android/systemui/toggles/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 320
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/android/systemui/toggles/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 321
    invoke-static {p0, v2}, Lcom/android/systemui/toggles/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 325
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 326
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 327
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 328
    return-void
.end method


# virtual methods
.method public getBrightnessLevel()I
    .locals 4

    .prologue
    .line 920
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness"

    const/16 v3, 0x66

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public isAutoBrightnessMode()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 912
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 208
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 209
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 210
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mTorchEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mPrivacyModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 212
    return-void
.end method

.method public performToggle(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/android/systemui/toggles/ToggleManager;->toggle(I)Z

    move-result v0

    .line 356
    .local v0, result:Z
    invoke-direct {p0, p1}, Lcom/android/systemui/toggles/ToggleManager;->updateToggle(I)V

    .line 357
    return v0
.end method

.method public refreshAll()V
    .locals 3

    .prologue
    .line 201
    sget-object v1, Lcom/android/systemui/toggles/ToggleManager;->sToggleNames:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 202
    sget-object v1, Lcom/android/systemui/toggles/ToggleManager;->sToggleNames:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/toggles/ToggleManager;->updateToggle(I)V

    .line 201
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 204
    :cond_0
    return-void
.end method

.method public setBrightness(II)V
    .locals 5
    .parameter "brightnessMode"
    .parameter "brightness"

    .prologue
    .line 980
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleManager;->mResource:Landroid/content/res/Resources;

    const v3, 0x60a0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 983
    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 989
    :goto_0
    if-nez p1, :cond_0

    .line 990
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 991
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_0

    .line 992
    invoke-interface {v1, p2}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 993
    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness"

    invoke-static {v2, v3, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 999
    .end local v1           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_1
    return-void

    .line 986
    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    .line 996
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 997
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "ToggleManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBrightness: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setBrightnessToggleMode(Z)V
    .locals 0
    .parameter "isTwoStates"

    .prologue
    .line 907
    iput-boolean p1, p0, Lcom/android/systemui/toggles/ToggleManager;->mBrightnessToggleIsTwoStates:Z

    .line 908
    invoke-direct {p0}, Lcom/android/systemui/toggles/ToggleManager;->updateBrightnessToggle()V

    .line 909
    return-void
.end method

.method public setOnToggleChangedListener(Lcom/android/systemui/toggles/ToggleManager$OnToggleChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/systemui/toggles/ToggleManager;->mToggleChangedListener:Lcom/android/systemui/toggles/ToggleManager$OnToggleChangedListener;

    .line 338
    return-void
.end method

.method public setOnToggleOrderChangeListener(Lcom/android/systemui/toggles/ToggleManager$OnToggleOrderChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/systemui/toggles/ToggleManager;->mToggleOrderChangedListener:Lcom/android/systemui/toggles/ToggleManager$OnToggleOrderChangedListener;

    .line 342
    return-void
.end method

.method public setUserSelectedToggleOrder(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/systemui/toggles/ToggleManager;->validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x36

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 241
    .local v1, toggleList:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 242
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/toggles/ToggleManager;->getToggleOrderSettingID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 249
    return-void
.end method

.method public startLongClickAction(I)Z
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 361
    sget-object v3, Lcom/android/systemui/toggles/ToggleManager;->sLongClickActions:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 362
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_0

    move v3, v4

    .line 375
    :goto_0
    return v3

    .line 366
    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 367
    .local v1, component:Landroid/content/ComponentName;
    if-nez v1, :cond_1

    move v3, v4

    .line 368
    goto :goto_0

    .line 371
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 373
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 374
    iget-object v3, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 375
    const/4 v3, 0x1

    goto :goto_0
.end method

.method updateBluetoothToggle()V
    .locals 2

    .prologue
    .line 889
    invoke-direct {p0}, Lcom/android/systemui/toggles/ToggleManager;->ensureBluetoothAdapter()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 890
    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mBluetoothEnable:Z

    .line 893
    :cond_0
    const/4 v0, 0x0

    .line 894
    .local v0, resId:I
    iget-boolean v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mBluetoothEnable:Z

    if-eqz v1, :cond_1

    .line 895
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mBluetoothEnabling:Z

    .line 896
    const v0, 0x7f0200c1

    .line 902
    :goto_0
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/toggles/ToggleManager;->updateToggleImage(II)V

    .line 903
    return-void

    .line 898
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mBluetoothEnabling:Z

    if-eqz v1, :cond_2

    const v1, 0x7f0200bf

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_2
    const v1, 0x7f0200c0

    move v0, v1

    goto :goto_1
.end method

.method public updateRingerToggle()V
    .locals 2

    .prologue
    .line 1049
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/util/AudioManagerHelper;->isSilentEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0200d1

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/toggles/ToggleManager;->updateToggleImage(II)V

    .line 1054
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/util/AudioManagerHelper;->amendVibratePrefs(Landroid/content/Context;)V

    .line 1055
    return-void

    .line 1049
    :cond_0
    const v1, 0x7f0200d0

    goto :goto_0
.end method

.method public updateVibrateToggle()V
    .locals 2

    .prologue
    .line 1140
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0200e7

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/toggles/ToggleManager;->updateToggleImage(II)V

    .line 1145
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/util/AudioManagerHelper;->amendVibratePrefs(Landroid/content/Context;)V

    .line 1146
    return-void

    .line 1140
    :cond_0
    const v1, 0x7f0200e6

    goto :goto_0
.end method

.method updateWifiToggle()V
    .locals 3

    .prologue
    .line 844
    const/4 v0, 0x0

    .line 845
    .local v0, resId:I
    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mWifiState:Lcom/android/systemui/toggles/ToggleManager$StateTracker;

    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 866
    :goto_0
    :pswitch_0
    const/16 v1, 0xf

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/toggles/ToggleManager;->updateToggleImage(II)V

    .line 867
    return-void

    .line 847
    :pswitch_1
    const v0, 0x7f0200e9

    .line 848
    goto :goto_0

    .line 850
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mWifiState:Lcom/android/systemui/toggles/ToggleManager$StateTracker;

    check-cast v1, Lcom/android/systemui/toggles/ToggleManager$WifiStateTracker;

    iget-boolean v1, v1, Lcom/android/systemui/toggles/ToggleManager$WifiStateTracker;->zConnected:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0200ea

    move v0, v1

    .line 853
    :goto_1
    goto :goto_0

    .line 850
    :cond_0
    const v1, 0x7f0200eb

    move v0, v1

    goto :goto_1

    .line 860
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager;->mWifiState:Lcom/android/systemui/toggles/ToggleManager$StateTracker;

    invoke-virtual {v1}, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->isTurningOn()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0200e8

    move v0, v1

    :goto_2
    goto :goto_0

    :cond_1
    const v1, 0x7f0200e9

    move v0, v1

    goto :goto_2

    .line 845
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
