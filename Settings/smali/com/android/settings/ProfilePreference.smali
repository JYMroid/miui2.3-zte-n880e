.class public Lcom/android/settings/ProfilePreference;
.super Landroid/preference/Preference;
.source "ProfilePreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final TAG:Ljava/lang/String; = "ProfilePreference"

.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private mProfile:Landroid/app/Profile;

.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    sput-object v0, Lcom/android/settings/ProfilePreference;->mSelectedKey:Ljava/lang/String;

    .line 65
    sput-object v0, Lcom/android/settings/ProfilePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ProfilePreference;->mProtectFromCheckedChange:Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ProfilePreference;->mSelectable:Z

    .line 60
    invoke-direct {p0}, Lcom/android/settings/ProfilePreference;->init()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ProfilePreference;->mProtectFromCheckedChange:Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ProfilePreference;->mSelectable:Z

    .line 52
    invoke-direct {p0}, Lcom/android/settings/ProfilePreference;->init()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ProfilePreference;->mProtectFromCheckedChange:Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ProfilePreference;->mSelectable:Z

    .line 43
    invoke-direct {p0}, Lcom/android/settings/ProfilePreference;->init()V

    .line 44
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 104
    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lcom/android/settings/ProfilePreference;->setLayoutResource(I)V

    .line 105
    return-void
.end method


# virtual methods
.method public getSelectable()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/settings/ProfilePreference;->mSelectable:Z

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 75
    .local v4, view:Landroid/view/View;
    const v6, 0x1010003

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 76
    .local v5, widget:Landroid/view/View;
    if-eqz v5, :cond_1

    instance-of v6, v5, Landroid/widget/RadioButton;

    if-eqz v6, :cond_1

    .line 77
    move-object v0, v5

    check-cast v0, Landroid/widget/RadioButton;

    move-object v2, v0

    .line 78
    .local v2, rb:Landroid/widget/RadioButton;
    iget-boolean v6, p0, Lcom/android/settings/ProfilePreference;->mSelectable:Z

    if-eqz v6, :cond_3

    .line 79
    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/ProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/settings/ProfilePreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 82
    .local v1, isChecked:Z
    if-eqz v1, :cond_0

    .line 83
    sput-object v2, Lcom/android/settings/ProfilePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/ProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/settings/ProfilePreference;->mSelectedKey:Ljava/lang/String;

    .line 87
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/ProfilePreference;->mProtectFromCheckedChange:Z

    .line 88
    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 89
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/settings/ProfilePreference;->mProtectFromCheckedChange:Z

    .line 95
    .end local v1           #isChecked:Z
    .end local v2           #rb:Landroid/widget/RadioButton;
    :cond_1
    :goto_0
    const/high16 v6, 0x101

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 96
    .local v3, textLayout:Landroid/view/View;
    if-eqz v3, :cond_2

    instance-of v6, v3, Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_2

    .line 97
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    :cond_2
    return-object v4

    .line 91
    .end local v3           #textLayout:Landroid/view/View;
    .restart local v2       #rb:Landroid/widget/RadioButton;
    :cond_3
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/settings/ProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settings/ProfilePreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 122
    const-string v0, "ProfilePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ProfilePreference;->getKey()Ljava/lang/String;

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

    .line 123
    iget-boolean v0, p0, Lcom/android/settings/ProfilePreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 127
    :cond_0
    if-eqz p2, :cond_2

    .line 128
    sget-object v0, Lcom/android/settings/ProfilePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 129
    sget-object v0, Lcom/android/settings/ProfilePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 131
    :cond_1
    sput-object p1, Lcom/android/settings/ProfilePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/ProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ProfilePreference;->mSelectedKey:Ljava/lang/String;

    .line 133
    sget-object v0, Lcom/android/settings/ProfilePreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/ProfilePreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_2
    sput-object v3, Lcom/android/settings/ProfilePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 136
    sput-object v3, Lcom/android/settings/ProfilePreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 141
    if-eqz p1, :cond_0

    const/high16 v2, 0x101

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/ProfilePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 143
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 144
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/ProfileConfig;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "Profile"

    iget-object v3, p0, Lcom/android/settings/ProfilePreference;->mProfile:Landroid/app/Profile;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 149
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public setChecked()V
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/settings/ProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ProfilePreference;->mSelectedKey:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setProfile(Landroid/app/Profile;)V
    .locals 0
    .parameter "profile"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/settings/ProfilePreference;->mProfile:Landroid/app/Profile;

    .line 119
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .parameter "selectable"

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/android/settings/ProfilePreference;->mSelectable:Z

    .line 153
    return-void
.end method
