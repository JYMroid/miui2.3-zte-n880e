.class public Lcom/android/settings/AppGroupConfig;
.super Landroid/preference/PreferenceActivity;
.source "AppGroupConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AppGroupConfig$ViewHolder;,
        Lcom/android/settings/AppGroupConfig$PackageAdaptor;,
        Lcom/android/settings/AppGroupConfig$PackageItem;
    }
.end annotation


# static fields
.field private static final DELETE_CONFIRM:I = 0x1

.field private static final DIALOG_APPS:I


# instance fields
.field mAddPreference:Landroid/preference/Preference;

.field mDeletePreference:Landroid/preference/Preference;

.field private mInstalledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mNotificationGroup:Landroid/app/NotificationGroup;

.field private mPackageAdaptor:Lcom/android/settings/AppGroupConfig$PackageAdaptor;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageToDelete:Ljava/lang/String;

.field private mProfileManager:Landroid/app/ProfileManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 354
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AppGroupConfig;)Landroid/app/NotificationGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/AppGroupConfig;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/AppGroupConfig;->updatePackages()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/AppGroupConfig;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/AppGroupConfig;->doDelete()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/AppGroupConfig;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/AppGroupConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private addNewApp()V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/AppGroupConfig;->showDialog(I)V

    .line 181
    return-void
.end method

.method private deleteAppFromGroup(Lcom/android/settings/AppGroupConfig$PackageItem;)V
    .locals 2
    .parameter "selectedGroup"

    .prologue
    .line 143
    if-eqz p1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/settings/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    iget-object v1, p1, Lcom/android/settings/AppGroupConfig$PackageItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationGroup;->removePackage(Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lcom/android/settings/AppGroupConfig;->updatePackages()V

    .line 147
    :cond_0
    return-void
.end method

.method private doDelete()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/settings/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    iget-object v1, p0, Lcom/android/settings/AppGroupConfig;->mPackageToDelete:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationGroup;->removePackage(Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/android/settings/AppGroupConfig;->updatePackages()V

    .line 234
    return-void
.end method

.method private updatePackages()V
    .locals 11

    .prologue
    .line 98
    const-string v9, "profile_add_app"

    invoke-virtual {p0, v9}, Lcom/android/settings/AppGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/AppGroupConfig;->mAddPreference:Landroid/preference/Preference;

    .line 99
    const-string v9, "profile_delete_appgroup"

    invoke-virtual {p0, v9}, Lcom/android/settings/AppGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/AppGroupConfig;->mDeletePreference:Landroid/preference/Preference;

    .line 101
    const-string v9, "profile_applist_title"

    invoke-virtual {p0, v9}, Lcom/android/settings/AppGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceGroup;

    .line 102
    .local v8, profileList:Landroid/preference/PreferenceGroup;
    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 104
    iget-object v9, p0, Lcom/android/settings/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    invoke-virtual {v9}, Landroid/app/NotificationGroup;->getPackages()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v6, v0, v3

    .line 106
    .local v6, pkg:Ljava/lang/String;
    new-instance v7, Lcom/android/settings/ApplicationItemPreference;

    invoke-direct {v7, p0}, Lcom/android/settings/ApplicationItemPreference;-><init>(Landroid/content/Context;)V

    .line 109
    .local v7, pref:Lcom/android/settings/ApplicationItemPreference;
    :try_start_0
    iget-object v9, p0, Lcom/android/settings/AppGroupConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v6, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 110
    .local v2, group:Landroid/content/pm/PackageInfo;
    iget-object v9, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/android/settings/ApplicationItemPreference;->setKey(Ljava/lang/String;)V

    .line 111
    iget-object v9, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, p0, Lcom/android/settings/AppGroupConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/settings/ApplicationItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v9, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, p0, Lcom/android/settings/AppGroupConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 113
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v4}, Lcom/android/settings/ApplicationItemPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 114
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/android/settings/ApplicationItemPreference;->setSelectable(Z)V

    .line 115
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/android/settings/ApplicationItemPreference;->setPersistent(Z)V

    .line 117
    invoke-virtual {v8, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v2           #group:Landroid/content/pm/PackageInfo;
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 119
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 123
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6           #pkg:Ljava/lang/String;
    .end local v7           #pref:Lcom/android/settings/ApplicationItemPreference;
    :cond_0
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 132
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 133
    .local v0, aMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, p0, Lcom/android/settings/AppGroupConfig;->mListView:Landroid/widget/ListView;

    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/AppGroupConfig$PackageItem;

    .line 134
    .local v1, selectedGroup:Lcom/android/settings/AppGroupConfig$PackageItem;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 139
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 136
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/settings/AppGroupConfig;->deleteAppFromGroup(Lcom/android/settings/AppGroupConfig$PackageItem;)V

    .line 137
    const/4 v2, 0x1

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x7f0804f0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 73
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const-string v0, "profile"

    invoke-virtual {p0, v0}, Lcom/android/settings/AppGroupConfig;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileManager;

    iput-object v0, p0, Lcom/android/settings/AppGroupConfig;->mProfileManager:Landroid/app/ProfileManager;

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/AppGroupConfig;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "NotificationGroup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    iput-object v0, p0, Lcom/android/settings/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    .line 80
    const v0, 0x7f0804df

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    invoke-virtual {v2}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/AppGroupConfig;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/AppGroupConfig;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/AppGroupConfig;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AppGroupConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 84
    const v0, 0x7f040004

    invoke-virtual {p0, v0}, Lcom/android/settings/AppGroupConfig;->addPreferencesFromResource(I)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/AppGroupConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AppGroupConfig;->mInstalledPackages:Ljava/util/List;

    .line 88
    invoke-direct {p0}, Lcom/android/settings/AppGroupConfig;->updatePackages()V

    .line 90
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const v1, 0x7f0804f0

    const/4 v0, 0x0

    .line 127
    invoke-interface {p1, v0, v1, v0, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 128
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    .line 185
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 187
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 224
    const/4 v2, 0x0

    .line 226
    .local v2, dialog:Landroid/app/Dialog;
    :goto_0
    return-object v2

    .line 189
    .end local v2           #dialog:Landroid/app/Dialog;
    :pswitch_0
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 190
    .local v3, list:Landroid/widget/ListView;
    new-instance v0, Lcom/android/settings/AppGroupConfig$PackageAdaptor;

    iget-object v4, p0, Lcom/android/settings/AppGroupConfig;->mInstalledPackages:Ljava/util/List;

    invoke-direct {v0, p0, v4}, Lcom/android/settings/AppGroupConfig$PackageAdaptor;-><init>(Lcom/android/settings/AppGroupConfig;Ljava/util/List;)V

    .line 191
    .local v0, adapter:Lcom/android/settings/AppGroupConfig$PackageAdaptor;
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 192
    invoke-virtual {v0}, Lcom/android/settings/AppGroupConfig$PackageAdaptor;->update()V

    .line 193
    const v4, 0x7f0804ea

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 194
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 195
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 196
    .restart local v2       #dialog:Landroid/app/Dialog;
    new-instance v4, Lcom/android/settings/AppGroupConfig$1;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/AppGroupConfig$1;-><init>(Lcom/android/settings/AppGroupConfig;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 207
    .end local v0           #adapter:Lcom/android/settings/AppGroupConfig$PackageAdaptor;
    .end local v2           #dialog:Landroid/app/Dialog;
    .end local v3           #list:Landroid/widget/ListView;
    :pswitch_1
    const v4, 0x7f0804e9

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 208
    const v4, 0x1040013

    new-instance v5, Lcom/android/settings/AppGroupConfig$2;

    invoke-direct {v5, p0}, Lcom/android/settings/AppGroupConfig$2;-><init>(Lcom/android/settings/AppGroupConfig;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 215
    const v4, 0x1040009

    new-instance v5, Lcom/android/settings/AppGroupConfig$3;

    invoke-direct {v5, p0}, Lcom/android/settings/AppGroupConfig$3;-><init>(Lcom/android/settings/AppGroupConfig;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 221
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 222
    .restart local v2       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/settings/AppGroupConfig;->mProfileManager:Landroid/app/ProfileManager;

    iget-object v1, p0, Lcom/android/settings/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    invoke-virtual {v0, v1}, Landroid/app/ProfileManager;->addNotificationGroup(Landroid/app/NotificationGroup;)V

    .line 154
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 155
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    .line 159
    instance-of v2, p2, Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/android/settings/AppGroupConfig;->mAddPreference:Landroid/preference/Preference;

    if-ne v2, p2, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/android/settings/AppGroupConfig;->addNewApp()V

    move v2, v4

    .line 176
    :goto_0
    return v2

    .line 163
    :cond_0
    iget-object v2, p0, Lcom/android/settings/AppGroupConfig;->mDeletePreference:Landroid/preference/Preference;

    if-ne v2, p2, :cond_2

    .line 164
    iget-object v2, p0, Lcom/android/settings/AppGroupConfig;->mProfileManager:Landroid/app/ProfileManager;

    iget-object v3, p0, Lcom/android/settings/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    invoke-virtual {v2, v3}, Landroid/app/ProfileManager;->removeNotificationGroup(Landroid/app/NotificationGroup;)V

    .line 165
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/AppGroupConfig;->finish()V

    move v2, v4

    .line 167
    goto :goto_0

    .line 169
    :cond_1
    instance-of v2, p2, Lcom/android/settings/ApplicationItemPreference;

    if-eqz v2, :cond_2

    .line 170
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, deleteItem:Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 172
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0, v4, v0}, Lcom/android/settings/AppGroupConfig;->showDialog(ILandroid/os/Bundle;)Z

    move v2, v4

    .line 174
    goto :goto_0

    .line 176
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #deleteItem:Ljava/lang/String;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 238
    packed-switch p1, :pswitch_data_0

    .line 242
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 243
    return-void

    .line 240
    :pswitch_0
    const-string v0, "key"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AppGroupConfig;->mPackageToDelete:Ljava/lang/String;

    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
