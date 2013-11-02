.class public Lcom/android/settings/BrightnessPreference;
.super Landroid/preference/SeekBarPreference;
.source "BrightnessPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final MAXIMUM_BACKLIGHT:I = 0xff

.field private static final MINIMUM_BACKLIGHT:I = 0x1e


# instance fields
.field private mAutomaticAvailable:Z

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mOldAutomatic:I

.field private mOldBrightness:I

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    .line 57
    const v0, 0x7f03002f

    invoke-virtual {p0, v0}, Lcom/android/settings/BrightnessPreference;->setDialogLayoutResource(I)V

    .line 58
    const v0, 0x7f02007a

    invoke-virtual {p0, v0}, Lcom/android/settings/BrightnessPreference;->setDialogIcon(I)V

    .line 59
    return-void
.end method

.method private setBrightness(I)V
    .locals 2
    .parameter "brightness"

    .prologue
    .line 132
    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 134
    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v0           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 143
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 148
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 150
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onBindDialogView(Landroid/view/View;)V

    .line 65
    invoke-static {p1}, Lcom/android/settings/BrightnessPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 66
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 67
    const/16 v2, 0xe1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    const/16 v3, 0x1e

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 75
    const v1, 0x7f0b0093

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 76
    iget-boolean v1, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 79
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    :goto_1
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 88
    :goto_3
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 89
    return-void

    .line 70
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 71
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    goto :goto_0

    .line 81
    .end local v0           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 82
    .restart local v0       #snfe:Landroid/provider/Settings$SettingNotFoundException;
    iput v4, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    goto :goto_1

    .end local v0           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    move v2, v4

    .line 84
    goto :goto_2

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_3
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 105
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessPreference;->setMode(I)V

    .line 107
    if-nez p2, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, 0x1e

    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessPreference;->setBrightness(I)V

    .line 110
    :cond_0
    return-void

    .line 105
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onDialogClosed(Z)V

    .line 116
    if-eqz p1, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_2

    .line 122
    iget v0, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessPreference;->setMode(I)V

    .line 124
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    if-nez v0, :cond_0

    .line 125
    :cond_3
    iget v0, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessPreference;->setBrightness(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 93
    add-int/lit8 v0, p2, 0x1e

    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessPreference;->setBrightness(I)V

    .line 94
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 98
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 102
    return-void
.end method
