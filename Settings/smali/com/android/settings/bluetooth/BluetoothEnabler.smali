.class public Lcom/android/settings/bluetooth/BluetoothEnabler;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mCheckBox:Landroid/preference/CheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private final mOriginalSummary:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 2
    .parameter "context"
    .parameter "checkBox"

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    .line 70
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 71
    invoke-virtual {p2, v1}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 73
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 74
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 83
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 84
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    return-void

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->enableBluetoothCheckBox()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->enableBluetoothCheckBox()V

    return-void
.end method

.method private enableBluetoothCheckBox()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 113
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v0, v4

    .line 115
    .local v0, isAirplaneMode:Z
    :goto_0
    if-nez v0, :cond_1

    .line 116
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 120
    :goto_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 121
    return-void

    .end local v0           #isAirplaneMode:Z
    :cond_0
    move v0, v3

    .line 113
    goto :goto_0

    .line 118
    .restart local v0       #isAirplaneMode:Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private handleStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 142
    packed-switch p1, :pswitch_data_0

    .line 166
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f08015e

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 170
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->enableBluetoothCheckBox()V

    .line 172
    :goto_0
    return-void

    .line 144
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f08015c

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 148
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 152
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->enableBluetoothCheckBox()V

    goto :goto_0

    .line 155
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f08015d

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 159
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 162
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->enableBluetoothCheckBox()V

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 124
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 127
    .local v0, enable:Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth"

    invoke-static {v1, v2}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f08015f

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move v1, v3

    .line 138
    :goto_0
    return v1

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setBluetoothEnabled(Z)V

    .line 135
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    move v1, v3

    .line 138
    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->enableBluetoothCheckBox()V

    .line 100
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method
