.class public Lcom/android/settings/ProfileConfig;
.super Landroid/preference/PreferenceActivity;
.source "ProfileConfig.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ProfileConfig$ConnectionItem;,
        Lcom/android/settings/ProfileConfig$StreamItem;
    }
.end annotation


# static fields
.field private static final DELETE_CONFIRM:I = 0x0

.field static final TAG:Ljava/lang/String; = "ProfileConfig"


# instance fields
.field private mConnections:[Lcom/android/settings/ProfileConfig$ConnectionItem;

.field private mDeletePreference:Landroid/preference/PreferenceScreen;

.field private mNamePreference:Landroid/preference/EditTextPreference;

.field private mProfile:Landroid/app/Profile;

.field private mProfileManager:Landroid/app/ProfileManager;

.field private mStreams:[Lcom/android/settings/ProfileConfig$StreamItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 303
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ProfileConfig;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/ProfileConfig;->doDelete()V

    return-void
.end method

.method private deleteProfile()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 245
    iget-object v1, p0, Lcom/android/settings/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ProfileConfig;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v2}, Landroid/app/ProfileManager;->getActiveProfile()Landroid/app/Profile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    const v1, 0x7f0804f1

    invoke-virtual {p0, v1}, Lcom/android/settings/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 248
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 252
    .end local v0           #toast:Landroid/widget/Toast;
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings/ProfileConfig;->showDialog(I)V

    goto :goto_0
.end method

.method private doDelete()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/settings/ProfileConfig;->mProfileManager:Landroid/app/ProfileManager;

    iget-object v1, p0, Lcom/android/settings/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v0, v1}, Landroid/app/ProfileManager;->removeProfile(Landroid/app/Profile;)V

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ProfileConfig;->mProfile:Landroid/app/Profile;

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/ProfileConfig;->finish()V

    .line 258
    return-void
.end method

.method private fillList()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 120
    const-string v12, "profile_delete"

    invoke-virtual {p0, v12}, Lcom/android/settings/ProfileConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceScreen;

    iput-object v12, p0, Lcom/android/settings/ProfileConfig;->mDeletePreference:Landroid/preference/PreferenceScreen;

    .line 122
    const-string v12, "profile_name"

    invoke-virtual {p0, v12}, Lcom/android/settings/ProfileConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/EditTextPreference;

    iput-object v12, p0, Lcom/android/settings/ProfileConfig;->mNamePreference:Landroid/preference/EditTextPreference;

    .line 124
    iget-object v12, p0, Lcom/android/settings/ProfileConfig;->mNamePreference:Landroid/preference/EditTextPreference;

    iget-object v13, p0, Lcom/android/settings/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v13}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 125
    iget-object v12, p0, Lcom/android/settings/ProfileConfig;->mNamePreference:Landroid/preference/EditTextPreference;

    iget-object v13, p0, Lcom/android/settings/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v13}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v12, p0, Lcom/android/settings/ProfileConfig;->mNamePreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v12, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 133
    const-string v12, "profile_connectionoverrides"

    invoke-virtual {p0, v12}, Lcom/android/settings/ProfileConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 134
    .local v2, connectionList:Landroid/preference/PreferenceGroup;
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 136
    const-string v12, "profile_volumeoverrides"

    invoke-virtual {p0, v12}, Lcom/android/settings/ProfileConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceGroup;

    .line 137
    .local v10, streamList:Landroid/preference/PreferenceGroup;
    invoke-virtual {v10}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 139
    iget-object v0, p0, Lcom/android/settings/ProfileConfig;->mStreams:[Lcom/android/settings/ProfileConfig$StreamItem;

    .local v0, arr$:[Lcom/android/settings/ProfileConfig$StreamItem;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v9, v0, v4

    .line 140
    .local v9, stream:Lcom/android/settings/ProfileConfig$StreamItem;
    iget-object v12, p0, Lcom/android/settings/ProfileConfig;->mProfile:Landroid/app/Profile;

    iget v13, v9, Lcom/android/settings/ProfileConfig$StreamItem;->mStreamId:I

    invoke-virtual {v12, v13}, Landroid/app/Profile;->getSettingsForStream(I)Landroid/app/StreamSettings;

    move-result-object v8

    .line 141
    .local v8, settings:Landroid/app/StreamSettings;
    if-nez v8, :cond_0

    .line 142
    new-instance v8, Landroid/app/StreamSettings;

    .end local v8           #settings:Landroid/app/StreamSettings;
    iget v12, v9, Lcom/android/settings/ProfileConfig$StreamItem;->mStreamId:I

    invoke-direct {v8, v12}, Landroid/app/StreamSettings;-><init>(I)V

    .line 143
    .restart local v8       #settings:Landroid/app/StreamSettings;
    iget-object v12, p0, Lcom/android/settings/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v12, v8}, Landroid/app/Profile;->setStreamSettings(Landroid/app/StreamSettings;)V

    .line 145
    :cond_0
    iput-object v8, v9, Lcom/android/settings/ProfileConfig$StreamItem;->mSettings:Landroid/app/StreamSettings;

    .line 146
    new-instance v6, Lcom/android/settings/StreamVolumePreference;

    invoke-direct {v6, p0}, Lcom/android/settings/StreamVolumePreference;-><init>(Landroid/content/Context;)V

    .line 147
    .local v6, pref:Lcom/android/settings/StreamVolumePreference;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "stream_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/android/settings/ProfileConfig$StreamItem;->mStreamId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/android/settings/StreamVolumePreference;->setKey(Ljava/lang/String;)V

    .line 148
    iget-object v12, v9, Lcom/android/settings/ProfileConfig$StreamItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v6, v12}, Lcom/android/settings/StreamVolumePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 149
    const v12, 0x7f0804e4

    invoke-virtual {p0, v12}, Lcom/android/settings/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/android/settings/StreamVolumePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {v6, v14}, Lcom/android/settings/StreamVolumePreference;->setPersistent(Z)V

    .line 151
    invoke-virtual {v6, v9}, Lcom/android/settings/StreamVolumePreference;->setStreamItem(Lcom/android/settings/ProfileConfig$StreamItem;)V

    .line 153
    iput-object v6, v9, Lcom/android/settings/ProfileConfig$StreamItem;->mCheckbox:Lcom/android/settings/StreamVolumePreference;

    .line 154
    invoke-virtual {v10, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 139
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 157
    .end local v6           #pref:Lcom/android/settings/StreamVolumePreference;
    .end local v8           #settings:Landroid/app/StreamSettings;
    .end local v9           #stream:Lcom/android/settings/ProfileConfig$StreamItem;
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ProfileConfig;->mConnections:[Lcom/android/settings/ProfileConfig$ConnectionItem;

    .local v0, arr$:[Lcom/android/settings/ProfileConfig$ConnectionItem;
    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v1, v0, v4

    .line 158
    .local v1, connection:Lcom/android/settings/ProfileConfig$ConnectionItem;
    iget-object v12, p0, Lcom/android/settings/ProfileConfig;->mProfile:Landroid/app/Profile;

    iget v13, v1, Lcom/android/settings/ProfileConfig$ConnectionItem;->mConnectionId:I

    invoke-virtual {v12, v13}, Landroid/app/Profile;->getSettingsForConnection(I)Landroid/app/ConnectionSettings;

    move-result-object v8

    .line 159
    .local v8, settings:Landroid/app/ConnectionSettings;
    if-nez v8, :cond_2

    .line 160
    new-instance v8, Landroid/app/ConnectionSettings;

    .end local v8           #settings:Landroid/app/ConnectionSettings;
    iget v12, v1, Lcom/android/settings/ProfileConfig$ConnectionItem;->mConnectionId:I

    invoke-direct {v8, v12}, Landroid/app/ConnectionSettings;-><init>(I)V

    .line 161
    .restart local v8       #settings:Landroid/app/ConnectionSettings;
    iget-object v12, p0, Lcom/android/settings/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v12, v8}, Landroid/app/Profile;->setConnectionSettings(Landroid/app/ConnectionSettings;)V

    .line 163
    :cond_2
    iput-object v8, v1, Lcom/android/settings/ProfileConfig$ConnectionItem;->mSettings:Landroid/app/ConnectionSettings;

    .line 164
    new-instance v6, Lcom/android/settings/ProfileConnectionPreference;

    invoke-direct {v6, p0}, Lcom/android/settings/ProfileConnectionPreference;-><init>(Landroid/content/Context;)V

    .line 165
    .local v6, pref:Lcom/android/settings/ProfileConnectionPreference;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "connection_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v1, Lcom/android/settings/ProfileConfig$ConnectionItem;->mConnectionId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/android/settings/ProfileConnectionPreference;->setKey(Ljava/lang/String;)V

    .line 166
    iget-object v12, v1, Lcom/android/settings/ProfileConfig$ConnectionItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v6, v12}, Lcom/android/settings/ProfileConnectionPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 167
    const v12, 0x7f0804e2

    invoke-virtual {p0, v12}, Lcom/android/settings/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/android/settings/ProfileConnectionPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v6, v14}, Lcom/android/settings/ProfileConnectionPreference;->setPersistent(Z)V

    .line 169
    invoke-virtual {v6, v1}, Lcom/android/settings/ProfileConnectionPreference;->setConnectionItem(Lcom/android/settings/ProfileConfig$ConnectionItem;)V

    .line 171
    iput-object v6, v1, Lcom/android/settings/ProfileConfig$ConnectionItem;->mCheckbox:Lcom/android/settings/ProfileConnectionPreference;

    .line 172
    invoke-virtual {v2, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 157
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 175
    .end local v1           #connection:Lcom/android/settings/ProfileConfig$ConnectionItem;
    .end local v6           #pref:Lcom/android/settings/ProfileConnectionPreference;
    .end local v8           #settings:Landroid/app/ConnectionSettings;
    :cond_3
    const-string v12, "profile_appgroups"

    invoke-virtual {p0, v12}, Lcom/android/settings/ProfileConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 176
    .local v3, groupList:Landroid/preference/PreferenceGroup;
    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 178
    iget-object v12, p0, Lcom/android/settings/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v12}, Landroid/app/Profile;->getProfileGroups()[Landroid/app/ProfileGroup;

    move-result-object v0

    .local v0, arr$:[Landroid/app/ProfileGroup;
    array-length v5, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_4

    aget-object v7, v0, v4

    .line 179
    .local v7, profileGroup:Landroid/app/ProfileGroup;
    new-instance v6, Landroid/preference/PreferenceScreen;

    const/4 v12, 0x0

    invoke-direct {v6, p0, v12}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 180
    .local v6, pref:Landroid/preference/PreferenceScreen;
    invoke-virtual {v7}, Landroid/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v11

    .line 182
    .local v11, uuid:Ljava/util/UUID;
    invoke-virtual {v11}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 183
    iget-object v12, p0, Lcom/android/settings/ProfileConfig;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v12, v11}, Landroid/app/ProfileManager;->getNotificationGroup(Ljava/util/UUID;)Landroid/app/NotificationGroup;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {v6, v14}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 188
    invoke-virtual {v3, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 178
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 190
    .end local v6           #pref:Landroid/preference/PreferenceScreen;
    .end local v7           #profileGroup:Landroid/app/ProfileGroup;
    .end local v11           #uuid:Ljava/util/UUID;
    :cond_4
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 63
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    new-array v2, v8, [Lcom/android/settings/ProfileConfig$StreamItem;

    new-instance v3, Lcom/android/settings/ProfileConfig$StreamItem;

    const v4, 0x7f0801dd

    invoke-virtual {p0, v4}, Lcom/android/settings/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v8, v4}, Lcom/android/settings/ProfileConfig$StreamItem;-><init>(ILjava/lang/String;)V

    aput-object v3, v2, v10

    new-instance v3, Lcom/android/settings/ProfileConfig$StreamItem;

    const v4, 0x7f0801db

    invoke-virtual {p0, v4}, Lcom/android/settings/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v9, v4}, Lcom/android/settings/ProfileConfig$StreamItem;-><init>(ILjava/lang/String;)V

    aput-object v3, v2, v6

    new-instance v3, Lcom/android/settings/ProfileConfig$StreamItem;

    const v4, 0x7f0801d7

    invoke-virtual {p0, v4}, Lcom/android/settings/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v7, v4}, Lcom/android/settings/ProfileConfig$StreamItem;-><init>(ILjava/lang/String;)V

    aput-object v3, v2, v7

    new-instance v3, Lcom/android/settings/ProfileConfig$StreamItem;

    const/4 v4, 0x5

    const v5, 0x7f0801d8

    invoke-virtual {p0, v5}, Lcom/android/settings/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/settings/ProfileConfig$StreamItem;-><init>(ILjava/lang/String;)V

    aput-object v3, v2, v9

    iput-object v2, p0, Lcom/android/settings/ProfileConfig;->mStreams:[Lcom/android/settings/ProfileConfig$StreamItem;

    .line 74
    new-array v2, v8, [Lcom/android/settings/ProfileConfig$ConnectionItem;

    new-instance v3, Lcom/android/settings/ProfileConfig$ConnectionItem;

    const/4 v4, 0x7

    const v5, 0x7f080518

    invoke-virtual {p0, v5}, Lcom/android/settings/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/settings/ProfileConfig$ConnectionItem;-><init>(ILjava/lang/String;)V

    aput-object v3, v2, v10

    new-instance v3, Lcom/android/settings/ProfileConfig$ConnectionItem;

    const v4, 0x7f080519

    invoke-virtual {p0, v4}, Lcom/android/settings/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v8, v4}, Lcom/android/settings/ProfileConfig$ConnectionItem;-><init>(ILjava/lang/String;)V

    aput-object v3, v2, v6

    new-instance v3, Lcom/android/settings/ProfileConfig$ConnectionItem;

    const v4, 0x7f080516

    invoke-virtual {p0, v4}, Lcom/android/settings/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lcom/android/settings/ProfileConfig$ConnectionItem;-><init>(ILjava/lang/String;)V

    aput-object v3, v2, v7

    new-instance v3, Lcom/android/settings/ProfileConfig$ConnectionItem;

    const v4, 0x7f080517

    invoke-virtual {p0, v4}, Lcom/android/settings/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v7, v4}, Lcom/android/settings/ProfileConfig$ConnectionItem;-><init>(ILjava/lang/String;)V

    aput-object v3, v2, v9

    iput-object v2, p0, Lcom/android/settings/ProfileConfig;->mConnections:[Lcom/android/settings/ProfileConfig$ConnectionItem;

    .line 82
    const v2, 0x7f040019

    invoke-virtual {p0, v2}, Lcom/android/settings/ProfileConfig;->addPreferencesFromResource(I)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/ProfileConfig;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 85
    const-string v2, "profile"

    invoke-virtual {p0, v2}, Lcom/android/settings/ProfileConfig;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProfileManager;

    iput-object v2, p0, Lcom/android/settings/ProfileConfig;->mProfileManager:Landroid/app/ProfileManager;

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/ProfileConfig;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 88
    .local v1, input:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 89
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 90
    const-string v2, "Profile"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/Profile;

    iput-object v2, p0, Lcom/android/settings/ProfileConfig;->mProfile:Landroid/app/Profile;

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/android/settings/ProfileConfig;->mProfile:Landroid/app/Profile;

    if-nez v2, :cond_1

    .line 94
    new-instance v2, Landroid/app/Profile;

    const v3, 0x7f0804dc

    invoke-virtual {p0, v3}, Lcom/android/settings/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/Profile;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings/ProfileConfig;->mProfile:Landroid/app/Profile;

    .line 95
    iget-object v2, p0, Lcom/android/settings/ProfileConfig;->mProfileManager:Landroid/app/ProfileManager;

    iget-object v3, p0, Lcom/android/settings/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v2, v3}, Landroid/app/ProfileManager;->addProfile(Landroid/app/Profile;)V

    .line 98
    :cond_1
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 262
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 264
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 283
    const/4 v1, 0x0

    .line 285
    .local v1, dialog:Landroid/app/Dialog;
    :goto_0
    return-object v1

    .line 266
    .end local v1           #dialog:Landroid/app/Dialog;
    :pswitch_0
    const v2, 0x7f0804e8

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 267
    const v2, 0x1040013

    new-instance v3, Lcom/android/settings/ProfileConfig$1;

    invoke-direct {v3, p0}, Lcom/android/settings/ProfileConfig$1;-><init>(Lcom/android/settings/ProfileConfig;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 274
    const v2, 0x1040009

    new-instance v3, Lcom/android/settings/ProfileConfig$2;

    invoke-direct {v3, p0}, Lcom/android/settings/ProfileConfig$2;-><init>(Lcom/android/settings/ProfileConfig;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 280
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 281
    .restart local v1       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 113
    iget-object v0, p0, Lcom/android/settings/ProfileConfig;->mProfile:Landroid/app/Profile;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settings/ProfileConfig;->mProfileManager:Landroid/app/ProfileManager;

    iget-object v1, p0, Lcom/android/settings/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v0, v1}, Landroid/app/ProfileManager;->updateProfile(Landroid/app/Profile;)V

    .line 116
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 194
    instance-of v7, p1, Lcom/android/settings/StreamVolumePreference;

    if-eqz v7, :cond_1

    .line 195
    iget-object v1, p0, Lcom/android/settings/ProfileConfig;->mStreams:[Lcom/android/settings/ProfileConfig$StreamItem;

    .local v1, arr$:[Lcom/android/settings/ProfileConfig$StreamItem;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v5, v1, v3

    .line 196
    .local v5, stream:Lcom/android/settings/ProfileConfig$StreamItem;
    iget-object v7, v5, Lcom/android/settings/ProfileConfig$StreamItem;->mCheckbox:Lcom/android/settings/StreamVolumePreference;

    if-ne p1, v7, :cond_0

    .line 197
    iget-object v8, v5, Lcom/android/settings/ProfileConfig$StreamItem;->mSettings:Landroid/app/StreamSettings;

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Landroid/app/StreamSettings;->setOverride(Z)V

    .line 195
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 200
    .end local v1           #arr$:[Lcom/android/settings/ProfileConfig$StreamItem;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #stream:Lcom/android/settings/ProfileConfig$StreamItem;
    :cond_1
    instance-of v7, p1, Lcom/android/settings/ProfileConnectionPreference;

    if-eqz v7, :cond_3

    .line 201
    iget-object v1, p0, Lcom/android/settings/ProfileConfig;->mConnections:[Lcom/android/settings/ProfileConfig$ConnectionItem;

    .local v1, arr$:[Lcom/android/settings/ProfileConfig$ConnectionItem;
    array-length v4, v1

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v2, v1, v3

    .line 202
    .local v2, connection:Lcom/android/settings/ProfileConfig$ConnectionItem;
    iget-object v7, v2, Lcom/android/settings/ProfileConfig$ConnectionItem;->mCheckbox:Lcom/android/settings/ProfileConnectionPreference;

    if-ne p1, v7, :cond_2

    .line 203
    iget-object v8, v2, Lcom/android/settings/ProfileConfig$ConnectionItem;->mSettings:Landroid/app/ConnectionSettings;

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Landroid/app/ConnectionSettings;->setOverride(Z)V

    .line 201
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 208
    .end local v1           #arr$:[Lcom/android/settings/ProfileConfig$ConnectionItem;
    .end local v2           #connection:Lcom/android/settings/ProfileConfig$ConnectionItem;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_3
    iget-object v7, p0, Lcom/android/settings/ProfileConfig;->mNamePreference:Landroid/preference/EditTextPreference;

    if-ne p1, v7, :cond_5

    .line 209
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 210
    .local v6, value:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/ProfileConfig;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v7, v6}, Landroid/app/ProfileManager;->profileExists(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 212
    const/4 v7, 0x0

    .line 224
    .end local v6           #value:Ljava/lang/String;
    :goto_2
    return v7

    .line 214
    .restart local v6       #value:Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/android/settings/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v7, v6}, Landroid/app/Profile;->setName(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 224
    .end local v6           #value:Ljava/lang/String;
    :cond_5
    const/4 v7, 0x1

    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 229
    instance-of v1, p2, Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_1

    .line 230
    iget-object v1, p0, Lcom/android/settings/ProfileConfig;->mDeletePreference:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/android/settings/ProfileConfig;->deleteProfile()V

    .line 238
    :goto_0
    const/4 v1, 0x1

    .line 241
    :goto_1
    return v1

    .line 233
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/ProfileGroupConfig;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ProfileGroup"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const-string v1, "Profile"

    iget-object v2, p0, Lcom/android/settings/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 236
    invoke-virtual {p0, v0}, Lcom/android/settings/ProfileConfig;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 241
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 104
    iget-object v0, p0, Lcom/android/settings/ProfileConfig;->mProfileManager:Landroid/app/ProfileManager;

    iget-object v1, p0, Lcom/android/settings/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProfileManager;->getProfile(Ljava/util/UUID;)Landroid/app/Profile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ProfileConfig;->mProfile:Landroid/app/Profile;

    .line 106
    invoke-direct {p0}, Lcom/android/settings/ProfileConfig;->fillList()V

    .line 107
    return-void
.end method
