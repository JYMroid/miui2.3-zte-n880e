.class public Landroid/preference/ProfileVolumePreference;
.super Landroid/preference/SeekBarPreference;
.source "ProfileVolumePreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;,
        Landroid/preference/ProfileVolumePreference$SavedState;,
        Landroid/preference/ProfileVolumePreference$VolumeStore;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProfileVolumePreference"


# instance fields
.field public mLastRingerVolume:I

.field public mRingerVolume:I

.field private mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

.field private mStreamType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Landroid/preference/ProfileVolumePreference;->mLastRingerVolume:I

    iput v1, p0, Landroid/preference/ProfileVolumePreference;->mRingerVolume:I

    sget-object v1, Lcom/android/internal/R$styleable;->VolumePreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/preference/ProfileVolumePreference;->mStreamType:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/preference/ProfileVolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->unregisterOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    iget-object v2, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/preference/ProfileVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x102022a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    iget-object v2, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->revertVolume()V

    .end local v1           #view:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->stop()V

    iput-object v4, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_2
    return-void
.end method


# virtual methods
.method public getSeekBarVolumizer()Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    return-object v0
.end method

.method public onActivityStop()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->stopSample()V

    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onBindDialogView(Landroid/view/View;)V

    const v0, 0x102022a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .local v3, seekBar:Landroid/widget/SeekBar;
    new-instance v0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Landroid/preference/ProfileVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p0, Landroid/preference/ProfileVolumePreference;->mStreamType:I

    iget v5, p0, Landroid/preference/ProfileVolumePreference;->mRingerVolume:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/ProfileVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;II)V

    iput-object v0, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Landroid/preference/ProfileVolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "positiveResult"

    .prologue
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onDialogClosed(Z)V

    iget-object v0, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->revertVolume()V

    :cond_0
    invoke-direct {p0}, Landroid/preference/ProfileVolumePreference;->cleanup()V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    move v0, v3

    .local v0, isdown:Z
    :goto_1
    packed-switch p2, :pswitch_data_0

    move v1, v2

    goto :goto_0

    .end local v0           #isdown:Z
    :cond_1
    move v0, v2

    goto :goto_1

    .restart local v0       #isdown:Z
    :pswitch_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    :cond_2
    move v1, v3

    goto :goto_0

    :pswitch_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    invoke-virtual {v1, v3}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    :cond_3
    move v1, v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/preference/ProfileVolumePreference$SavedState;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/preference/ProfileVolumePreference$SavedState;

    move-object v1, v0

    .local v1, myState:Landroid/preference/ProfileVolumePreference$SavedState;
    invoke-virtual {v1}, Landroid/preference/ProfileVolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/preference/SeekBarPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v2, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    invoke-virtual {v1}, Landroid/preference/ProfileVolumePreference$SavedState;->getVolumeStore()Landroid/preference/ProfileVolumePreference$VolumeStore;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Landroid/preference/ProfileVolumePreference$VolumeStore;)V

    goto :goto_0
.end method

.method protected onSampleStarting(Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;)V
    .locals 1
    .parameter "volumizer"

    .prologue
    iget-object v0, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->stopSample()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/preference/SeekBarPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/ProfileVolumePreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_0
    new-instance v0, Landroid/preference/ProfileVolumePreference$SavedState;

    invoke-direct {v0, v1}, Landroid/preference/ProfileVolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .local v0, myState:Landroid/preference/ProfileVolumePreference$SavedState;
    iget-object v2, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/preference/ProfileVolumePreference;->mSeekBarVolumizer:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/ProfileVolumePreference$SavedState;->getVolumeStore()Landroid/preference/ProfileVolumePreference$VolumeStore;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->onSaveInstanceState(Landroid/preference/ProfileVolumePreference$VolumeStore;)V

    :cond_1
    move-object v2, v0

    goto :goto_0
.end method

.method public setStreamType(I)V
    .locals 0
    .parameter "streamType"

    .prologue
    iput p1, p0, Landroid/preference/ProfileVolumePreference;->mStreamType:I

    return-void
.end method
