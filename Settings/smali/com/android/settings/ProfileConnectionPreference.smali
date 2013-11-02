.class public Lcom/android/settings/ProfileConnectionPreference;
.super Landroid/preference/Preference;
.source "ProfileConnectionPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final TAG:Ljava/lang/String; = "ProfileConnectionPreference"

.field static final defaultChoice:I = -0x1


# instance fields
.field private currentChoice:I

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mConnectionItem:Lcom/android/settings/ProfileConfig$ConnectionItem;

.field private mProtectFromCheckedChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ProfileConnectionPreference;->mProtectFromCheckedChange:Z

    .line 70
    invoke-direct {p0}, Lcom/android/settings/ProfileConnectionPreference;->init()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ProfileConnectionPreference;->mProtectFromCheckedChange:Z

    .line 62
    invoke-direct {p0}, Lcom/android/settings/ProfileConnectionPreference;->init()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ProfileConnectionPreference;->mProtectFromCheckedChange:Z

    .line 53
    invoke-direct {p0}, Lcom/android/settings/ProfileConnectionPreference;->init()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ProfileConnectionPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/settings/ProfileConnectionPreference;->currentChoice:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/ProfileConnectionPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/settings/ProfileConnectionPreference;->currentChoice:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/ProfileConnectionPreference;)Lcom/android/settings/ProfileConfig$ConnectionItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/ProfileConnectionPreference;->mConnectionItem:Lcom/android/settings/ProfileConfig$ConnectionItem;

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 96
    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/android/settings/ProfileConnectionPreference;->setLayoutResource(I)V

    .line 97
    return-void
.end method


# virtual methods
.method protected createConnectionDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 123
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ProfileConnectionPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/ProfileConnectionPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, ConnectionValues:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/ProfileConnectionPreference;->mConnectionItem:Lcom/android/settings/ProfileConfig$ConnectionItem;

    iget-object v2, v2, Lcom/android/settings/ProfileConfig$ConnectionItem;->mSettings:Landroid/app/ConnectionSettings;

    invoke-virtual {v2}, Landroid/app/ConnectionSettings;->getValue()I

    move-result v2

    iput v2, p0, Lcom/android/settings/ProfileConnectionPreference;->currentChoice:I

    .line 129
    iget-object v2, p0, Lcom/android/settings/ProfileConnectionPreference;->mConnectionItem:Lcom/android/settings/ProfileConfig$ConnectionItem;

    iget-object v2, v2, Lcom/android/settings/ProfileConfig$ConnectionItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 130
    const v2, 0x7f050031

    iget v3, p0, Lcom/android/settings/ProfileConnectionPreference;->currentChoice:I

    new-instance v4, Lcom/android/settings/ProfileConnectionPreference$1;

    invoke-direct {v4, p0}, Lcom/android/settings/ProfileConnectionPreference$1;-><init>(Lcom/android/settings/ProfileConnectionPreference;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 137
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/ProfileConnectionPreference$2;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/ProfileConnectionPreference$2;-><init>(Lcom/android/settings/ProfileConnectionPreference;[Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 145
    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/ProfileConnectionPreference$3;

    invoke-direct {v3, p0}, Lcom/android/settings/ProfileConnectionPreference$3;-><init>(Lcom/android/settings/ProfileConnectionPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 150
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public getConnectionItem()Lcom/android/settings/ProfileConfig$ConnectionItem;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/ProfileConnectionPreference;->mConnectionItem:Lcom/android/settings/ProfileConfig$ConnectionItem;

    return-object v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 77
    .local v1, view:Landroid/view/View;
    const v3, 0x1010004

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 78
    .local v2, widget:Landroid/view/View;
    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/widget/CheckBox;

    if-eqz v3, :cond_0

    .line 79
    check-cast v2, Landroid/widget/CheckBox;

    .end local v2           #widget:Landroid/view/View;
    iput-object v2, p0, Lcom/android/settings/ProfileConnectionPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 80
    iget-object v3, p0, Lcom/android/settings/ProfileConnectionPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 82
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/ProfileConnectionPreference;->mProtectFromCheckedChange:Z

    .line 83
    iget-object v3, p0, Lcom/android/settings/ProfileConnectionPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/settings/ProfileConnectionPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 84
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/ProfileConnectionPreference;->mProtectFromCheckedChange:Z

    .line 87
    :cond_0
    const/high16 v3, 0x101

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, textLayout:Landroid/view/View;
    if-eqz v0, :cond_1

    instance-of v3, v0, Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_1

    .line 89
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    :cond_1
    return-object v1
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/ProfileConnectionPreference;->mConnectionItem:Lcom/android/settings/ProfileConfig$ConnectionItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ProfileConnectionPreference;->mConnectionItem:Lcom/android/settings/ProfileConfig$ConnectionItem;

    iget-object v0, v0, Lcom/android/settings/ProfileConfig$ConnectionItem;->mSettings:Landroid/app/ConnectionSettings;

    invoke-virtual {v0}, Landroid/app/ConnectionSettings;->isOverride()Z

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
    .line 112
    const-string v0, "ProfileConnectionPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ProfileConnectionPreference;->getKey()Ljava/lang/String;

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

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-boolean v0, p0, Lcom/android/settings/ProfileConnectionPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ProfileConnectionPreference;->mConnectionItem:Lcom/android/settings/ProfileConfig$ConnectionItem;

    iget-object v0, v0, Lcom/android/settings/ProfileConfig$ConnectionItem;->mSettings:Landroid/app/ConnectionSettings;

    invoke-virtual {v0, p2}, Landroid/app/ConnectionSettings;->setOverride(Z)V

    .line 119
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/ProfileConnectionPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 159
    if-eqz p1, :cond_0

    const/high16 v0, 0x101

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/ProfileConnectionPreference;->createConnectionDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 162
    :cond_0
    return-void
.end method

.method public setConnectionItem(Lcom/android/settings/ProfileConfig$ConnectionItem;)V
    .locals 2
    .parameter "connectionItem"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/settings/ProfileConnectionPreference;->mConnectionItem:Lcom/android/settings/ProfileConfig$ConnectionItem;

    .line 106
    iget-object v0, p0, Lcom/android/settings/ProfileConnectionPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/settings/ProfileConnectionPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/ProfileConnectionPreference;->mConnectionItem:Lcom/android/settings/ProfileConfig$ConnectionItem;

    iget-object v1, v1, Lcom/android/settings/ProfileConfig$ConnectionItem;->mSettings:Landroid/app/ConnectionSettings;

    invoke-virtual {v1}, Landroid/app/ConnectionSettings;->isOverride()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 109
    :cond_0
    return-void
.end method
