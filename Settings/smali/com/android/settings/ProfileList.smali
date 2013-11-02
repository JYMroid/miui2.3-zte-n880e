.class public Lcom/android/settings/ProfileList;
.super Landroid/preference/PreferenceActivity;
.source "ProfileList.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final EXTRA_POSITION:Ljava/lang/String; = "position"

.field public static final PREFERRED_APN_URI:Ljava/lang/String; = "content://telephony/carriers/preferapn"

.field public static final RESTORE_CARRIERS_URI:Ljava/lang/String; = "content://telephony/carriers/restore"

.field static final TAG:Ljava/lang/String; = "ProfileSettings"


# instance fields
.field private mProfileManager:Landroid/app/ProfileManager;

.field private mResetAllPref:Landroid/preference/Preference;

.field private mSelectedKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ProfileList;)Landroid/app/ProfileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/ProfileList;->mProfileManager:Landroid/app/ProfileManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/ProfileList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/ProfileList;->fillList()V

    return-void
.end method

.method private fillList()V
    .locals 8

    .prologue
    .line 74
    const-string v6, "profile_title"

    invoke-virtual {p0, v6}, Lcom/android/settings/ProfileList;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    .line 75
    .local v5, profileList:Landroid/preference/PreferenceGroup;
    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 77
    iget-object v6, p0, Lcom/android/settings/ProfileList;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v6}, Landroid/app/ProfileManager;->getActiveProfile()Landroid/app/Profile;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/ProfileList;->mSelectedKey:Ljava/lang/String;

    .line 79
    iget-object v6, p0, Lcom/android/settings/ProfileList;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v6}, Landroid/app/ProfileManager;->getProfiles()[Landroid/app/Profile;

    move-result-object v0

    .local v0, arr$:[Landroid/app/Profile;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 81
    .local v4, profile:Landroid/app/Profile;
    new-instance v3, Lcom/android/settings/ProfilePreference;

    invoke-direct {v3, p0}, Lcom/android/settings/ProfilePreference;-><init>(Landroid/content/Context;)V

    .line 83
    .local v3, pref:Lcom/android/settings/ProfilePreference;
    invoke-virtual {v4}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/settings/ProfilePreference;->setKey(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v4}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/settings/ProfilePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    const v6, 0x7f0804dd

    invoke-virtual {v3, v6}, Lcom/android/settings/ProfilePreference;->setSummary(I)V

    .line 86
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/settings/ProfilePreference;->setPersistent(Z)V

    .line 87
    invoke-virtual {v3, p0}, Lcom/android/settings/ProfilePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 88
    invoke-virtual {v3, v4}, Lcom/android/settings/ProfilePreference;->setProfile(Landroid/app/Profile;)V

    .line 90
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/android/settings/ProfilePreference;->setSelectable(Z)V

    .line 91
    iget-object v6, p0, Lcom/android/settings/ProfileList;->mSelectedKey:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/ProfileList;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/settings/ProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 92
    invoke-virtual {v3}, Lcom/android/settings/ProfilePreference;->setChecked()V

    .line 94
    :cond_0
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v3           #pref:Lcom/android/settings/ProfilePreference;
    .end local v4           #profile:Landroid/app/Profile;
    :cond_1
    return-void
.end method

.method private setSelectedProfile(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 132
    :try_start_0
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    .line 133
    .local v1, selectedUuid:Ljava/util/UUID;
    iget-object v2, p0, Lcom/android/settings/ProfileList;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v2, v1}, Landroid/app/ProfileManager;->setActiveProfile(Ljava/util/UUID;)V

    .line 134
    iput-object p1, p0, Lcom/android/settings/ProfileList;->mSelectedKey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v1           #selectedUuid:Ljava/util/UUID;
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 136
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lcom/android/settings/ProfileList;->addPreferencesFromResource(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/ProfileList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 55
    const-string v0, "profile_reset_all"

    invoke-virtual {p0, v0}, Lcom/android/settings/ProfileList;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ProfileList;->mResetAllPref:Landroid/preference/Preference;

    .line 57
    const-string v0, "profile"

    invoke-virtual {p0, v0}, Lcom/android/settings/ProfileList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileManager;

    iput-object v0, p0, Lcom/android/settings/ProfileList;->mProfileManager:Landroid/app/ProfileManager;

    .line 59
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 70
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 121
    const-string v0, "ProfileSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 124
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings/ProfileList;->setSelectedProfile(Ljava/lang/String;)V

    .line 127
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/settings/ProfileList;->mResetAllPref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_0

    .line 101
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 102
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0804f9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 103
    const v1, 0x7f0804fb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 104
    const v1, 0x7f08055d

    new-instance v2, Lcom/android/settings/ProfileList$1;

    invoke-direct {v2, p0}, Lcom/android/settings/ProfileList$1;-><init>(Lcom/android/settings/ProfileList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    const v1, 0x7f0800cb

    new-instance v2, Lcom/android/settings/ProfileList$2;

    invoke-direct {v2, p0}, Lcom/android/settings/ProfileList$2;-><init>(Lcom/android/settings/ProfileList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 115
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 117
    .end local v0           #alert:Landroid/app/AlertDialog$Builder;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 64
    invoke-direct {p0}, Lcom/android/settings/ProfileList;->fillList()V

    .line 65
    return-void
.end method
