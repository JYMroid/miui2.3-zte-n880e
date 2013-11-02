.class public Lcom/android/settings/StreamVolumePreference;
.super Landroid/preference/Preference;
.source "StreamVolumePreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final TAG:Ljava/lang/String; = "StreamVolumePreference"

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private mBar:Landroid/widget/SeekBar;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mProtectFromCheckedChange:Z

.field private mStreamItem:Lcom/android/settings/ProfileConfig$StreamItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/StreamVolumePreference;->mSelectedKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/StreamVolumePreference;->mProtectFromCheckedChange:Z

    .line 73
    invoke-direct {p0}, Lcom/android/settings/StreamVolumePreference;->init()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/StreamVolumePreference;->mProtectFromCheckedChange:Z

    .line 65
    invoke-direct {p0}, Lcom/android/settings/StreamVolumePreference;->init()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/StreamVolumePreference;->mProtectFromCheckedChange:Z

    .line 56
    invoke-direct {p0}, Lcom/android/settings/StreamVolumePreference;->init()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/StreamVolumePreference;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/StreamVolumePreference;->mBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/StreamVolumePreference;)Lcom/android/settings/ProfileConfig$StreamItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/StreamVolumePreference;->mStreamItem:Lcom/android/settings/ProfileConfig$StreamItem;

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 99
    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/android/settings/StreamVolumePreference;->setLayoutResource(I)V

    .line 100
    return-void
.end method


# virtual methods
.method protected createVolumeDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 126
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/StreamVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 128
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/StreamVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 129
    .local v0, am:Landroid/media/AudioManager;
    iget-object v2, p0, Lcom/android/settings/StreamVolumePreference;->mStreamItem:Lcom/android/settings/ProfileConfig$StreamItem;

    iget-object v2, v2, Lcom/android/settings/ProfileConfig$StreamItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 130
    new-instance v2, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/android/settings/StreamVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/StreamVolumePreference;->mBar:Landroid/widget/SeekBar;

    .line 131
    iget-object v2, p0, Lcom/android/settings/StreamVolumePreference;->mBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/android/settings/StreamVolumePreference;->mStreamItem:Lcom/android/settings/ProfileConfig$StreamItem;

    iget v3, v3, Lcom/android/settings/ProfileConfig$StreamItem;->mStreamId:I

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 132
    iget-object v2, p0, Lcom/android/settings/StreamVolumePreference;->mBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/android/settings/StreamVolumePreference;->mStreamItem:Lcom/android/settings/ProfileConfig$StreamItem;

    iget-object v3, v3, Lcom/android/settings/ProfileConfig$StreamItem;->mSettings:Landroid/app/StreamSettings;

    invoke-virtual {v3}, Landroid/app/StreamSettings;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 133
    iget-object v2, p0, Lcom/android/settings/StreamVolumePreference;->mBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 134
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/StreamVolumePreference$1;

    invoke-direct {v3, p0}, Lcom/android/settings/StreamVolumePreference$1;-><init>(Lcom/android/settings/StreamVolumePreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 140
    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/StreamVolumePreference$2;

    invoke-direct {v3, p0}, Lcom/android/settings/StreamVolumePreference$2;-><init>(Lcom/android/settings/StreamVolumePreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 145
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public getStreamItem()Lcom/android/settings/ProfileConfig$StreamItem;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/StreamVolumePreference;->mStreamItem:Lcom/android/settings/ProfileConfig$StreamItem;

    return-object v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 80
    .local v1, view:Landroid/view/View;
    const v3, 0x1010004

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 81
    .local v2, widget:Landroid/view/View;
    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/widget/CheckBox;

    if-eqz v3, :cond_0

    .line 82
    check-cast v2, Landroid/widget/CheckBox;

    .end local v2           #widget:Landroid/view/View;
    iput-object v2, p0, Lcom/android/settings/StreamVolumePreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 83
    iget-object v3, p0, Lcom/android/settings/StreamVolumePreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 85
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/StreamVolumePreference;->mProtectFromCheckedChange:Z

    .line 86
    iget-object v3, p0, Lcom/android/settings/StreamVolumePreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/settings/StreamVolumePreference;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 87
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/StreamVolumePreference;->mProtectFromCheckedChange:Z

    .line 90
    :cond_0
    const/high16 v3, 0x101

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, textLayout:Landroid/view/View;
    if-eqz v0, :cond_1

    instance-of v3, v0, Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_1

    .line 92
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    :cond_1
    return-object v1
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/StreamVolumePreference;->mStreamItem:Lcom/android/settings/ProfileConfig$StreamItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/StreamVolumePreference;->mStreamItem:Lcom/android/settings/ProfileConfig$StreamItem;

    iget-object v0, v0, Lcom/android/settings/ProfileConfig$StreamItem;->mSettings:Landroid/app/StreamSettings;

    invoke-virtual {v0}, Landroid/app/StreamSettings;->isOverride()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 115
    const-string v0, "StreamVolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/StreamVolumePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-boolean v0, p0, Lcom/android/settings/StreamVolumePreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/settings/StreamVolumePreference;->mStreamItem:Lcom/android/settings/ProfileConfig$StreamItem;

    iget-object v0, v0, Lcom/android/settings/ProfileConfig$StreamItem;->mSettings:Landroid/app/StreamSettings;

    invoke-virtual {v0, p2}, Landroid/app/StreamSettings;->setOverride(Z)V

    .line 122
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/StreamVolumePreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 154
    if-eqz p1, :cond_0

    const/high16 v1, 0x101

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/StreamVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 156
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/StreamVolumePreference;->createVolumeDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 158
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    return-void
.end method

.method public setStreamItem(Lcom/android/settings/ProfileConfig$StreamItem;)V
    .locals 2
    .parameter "streamItem"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/settings/StreamVolumePreference;->mStreamItem:Lcom/android/settings/ProfileConfig$StreamItem;

    .line 109
    iget-object v0, p0, Lcom/android/settings/StreamVolumePreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/settings/StreamVolumePreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/StreamVolumePreference;->mStreamItem:Lcom/android/settings/ProfileConfig$StreamItem;

    iget-object v1, v1, Lcom/android/settings/ProfileConfig$StreamItem;->mSettings:Landroid/app/StreamSettings;

    invoke-virtual {v1}, Landroid/app/StreamSettings;->isOverride()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 112
    :cond_0
    return-void
.end method
