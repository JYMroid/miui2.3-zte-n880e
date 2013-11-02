.class public Lcom/android/settings/AppGroupList;
.super Landroid/preference/PreferenceActivity;
.source "AppGroupList.java"


# static fields
.field private static final DIALOG_NAME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AppGroupSettings"


# instance fields
.field mAddPreference:Landroid/preference/Preference;

.field private mProfileManager:Landroid/app/ProfileManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AppGroupList;)Landroid/app/ProfileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/AppGroupList;->mProfileManager:Landroid/app/ProfileManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/AppGroupList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/AppGroupList;->fillList()V

    return-void
.end method

.method private addNewAppGroup()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/AppGroupList;->showDialog(I)V

    .line 62
    return-void
.end method

.method private editGroup(Landroid/app/NotificationGroup;)V
    .locals 2
    .parameter "group"

    .prologue
    .line 137
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/AppGroupConfig;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "NotificationGroup"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/settings/AppGroupList;->startActivity(Landroid/content/Intent;)V

    .line 140
    return-void
.end method

.method private fillList()V
    .locals 7

    .prologue
    .line 68
    const-string v6, "profile_new_appgroup"

    invoke-virtual {p0, v6}, Lcom/android/settings/AppGroupList;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/AppGroupList;->mAddPreference:Landroid/preference/Preference;

    .line 70
    const-string v6, "profile_appgroup_list_title"

    invoke-virtual {p0, v6}, Lcom/android/settings/AppGroupList;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 71
    .local v0, appgroupList:Landroid/preference/PreferenceGroup;
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 73
    iget-object v6, p0, Lcom/android/settings/AppGroupList;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v6}, Landroid/app/ProfileManager;->getNotificationGroups()[Landroid/app/NotificationGroup;

    move-result-object v1

    .local v1, arr$:[Landroid/app/NotificationGroup;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v1, v3

    .line 75
    .local v2, group:Landroid/app/NotificationGroup;
    new-instance v5, Landroid/preference/PreferenceScreen;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    .local v5, pref:Landroid/preference/PreferenceScreen;
    invoke-virtual {v2}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v2}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 81
    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 73
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    .end local v2           #group:Landroid/app/NotificationGroup;
    .end local v5           #pref:Landroid/preference/PreferenceScreen;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Lcom/android/settings/AppGroupList;->addPreferencesFromResource(I)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/AppGroupList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 49
    const v0, 0x7f0804e0

    invoke-virtual {p0, v0}, Lcom/android/settings/AppGroupList;->setTitle(I)V

    .line 51
    const-string v0, "profile"

    invoke-virtual {p0, v0}, Lcom/android/settings/AppGroupList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileManager;

    iput-object v0, p0, Lcom/android/settings/AppGroupList;->mProfileManager:Landroid/app/ProfileManager;

    .line 52
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/16 v3, 0xa

    .line 89
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 91
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 116
    const/4 v1, 0x0

    .line 118
    .local v1, dialog:Landroid/app/Dialog;
    :goto_0
    return-object v1

    .line 93
    .end local v1           #dialog:Landroid/app/Dialog;
    :pswitch_0
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 94
    .local v2, entry:Landroid/widget/EditText;
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 95
    const v3, 0x7f0804e6

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 96
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 97
    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/AppGroupList$1;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/AppGroupList$1;-><init>(Lcom/android/settings/AppGroupList;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 107
    const/high16 v3, 0x104

    new-instance v4, Lcom/android/settings/AppGroupList$2;

    invoke-direct {v4, p0}, Lcom/android/settings/AppGroupList$2;-><init>(Lcom/android/settings/AppGroupList;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 113
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 114
    .restart local v1       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 123
    instance-of v1, p2, Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/settings/AppGroupList;->mAddPreference:Landroid/preference/Preference;

    if-ne v1, p2, :cond_1

    .line 125
    invoke-direct {p0}, Lcom/android/settings/AppGroupList;->addNewAppGroup()V

    .line 133
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/android/settings/AppGroupList;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProfileManager;->getNotificationGroup(Ljava/util/UUID;)Landroid/app/NotificationGroup;

    move-result-object v0

    .line 130
    .local v0, group:Landroid/app/NotificationGroup;
    invoke-direct {p0, v0}, Lcom/android/settings/AppGroupList;->editGroup(Landroid/app/NotificationGroup;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 57
    invoke-direct {p0}, Lcom/android/settings/AppGroupList;->fillList()V

    .line 58
    return-void
.end method
