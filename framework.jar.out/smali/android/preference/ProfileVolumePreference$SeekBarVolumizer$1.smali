.class Landroid/preference/ProfileVolumePreference$SeekBarVolumizer$1;
.super Landroid/database/ContentObserver;
.source "ProfileVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;


# direct methods
.method constructor <init>(Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    iput-object p1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    #getter for: Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->access$000(Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    #getter for: Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->access$100(Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, volume:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    #getter for: Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->access$000(Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .end local v0           #volume:I
    :cond_0
    return-void
.end method
