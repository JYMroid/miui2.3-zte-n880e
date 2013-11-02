.class public Lcom/android/phone/PlusCodeDialSettings;
.super Landroid/preference/PreferenceActivity;
.source "PlusCodeDialSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final mPrefPlusCodeDialEnabled:Ljava/lang/String; = "plus_code_dial_enabled"

.field private static final mPrefPlusCodeNumber:Ljava/lang/String; = "plus_code_number"


# instance fields
.field private mPlusCodeDialEnabled:Landroid/preference/CheckBoxPreference;

.field private mPlusCodeNumber:Landroid/preference/EditTextPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 51
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PlusCodeDialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c034d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private fillUi()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 37
    invoke-virtual {p0}, Lcom/android/phone/PlusCodeDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "plus_code_dial_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 39
    .local v0, plusCodeDialEnabled:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/PlusCodeDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "plus_code_number"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, plusCodeNumber:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/PlusCodeDialSettings;->mPlusCodeDialEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 43
    iget-object v2, p0, Lcom/android/phone/PlusCodeDialSettings;->mPlusCodeNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 48
    return-void

    .end local v0           #plusCodeDialEnabled:Z
    .end local v1           #plusCodeNumber:Ljava/lang/String;
    :cond_0
    move v0, v4

    .line 37
    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v1, 0x7f050018

    invoke-virtual {p0, v1}, Lcom/android/phone/PlusCodeDialSettings;->addPreferencesFromResource(I)V

    .line 26
    invoke-virtual {p0}, Lcom/android/phone/PlusCodeDialSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 27
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "plus_code_dial_enabled"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/PlusCodeDialSettings;->mPlusCodeDialEnabled:Landroid/preference/CheckBoxPreference;

    .line 28
    const-string v1, "plus_code_number"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/phone/PlusCodeDialSettings;->mPlusCodeNumber:Landroid/preference/EditTextPreference;

    .line 30
    iget-object v1, p0, Lcom/android/phone/PlusCodeDialSettings;->mPlusCodeDialEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 31
    iget-object v1, p0, Lcom/android/phone/PlusCodeDialSettings;->mPlusCodeNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 33
    invoke-direct {p0}, Lcom/android/phone/PlusCodeDialSettings;->fillUi()V

    .line 34
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v5, 0x1

    .line 60
    iget-object v2, p0, Lcom/android/phone/PlusCodeDialSettings;->mPlusCodeDialEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_2

    .line 61
    iget-object v2, p0, Lcom/android/phone/PlusCodeDialSettings;->mPlusCodeDialEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 62
    .local v0, isPreferenceChecked:Z
    invoke-virtual {p0}, Lcom/android/phone/PlusCodeDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "plus_code_dial_enabled"

    if-nez v0, :cond_1

    move v4, v5

    :goto_0
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 70
    .end local v0           #isPreferenceChecked:Z
    :cond_0
    :goto_1
    return v5

    .line 62
    .restart local v0       #isPreferenceChecked:Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 64
    .end local v0           #isPreferenceChecked:Z
    :cond_2
    iget-object v2, p0, Lcom/android/phone/PlusCodeDialSettings;->mPlusCodeNumber:Landroid/preference/EditTextPreference;

    if-ne p1, v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/android/phone/PlusCodeDialSettings;->mPlusCodeNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, plusCodeNumber:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/PlusCodeDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "plus_code_number"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method
