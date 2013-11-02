.class public Lcom/android/phone/IPDialSettings;
.super Landroid/preference/PreferenceActivity;
.source "IPDialSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final IP_ENABLED_ARRAY:[Ljava/lang/String; = null

.field private static final IP_NUMBER_ARRAY:[Ljava/lang/String; = null

.field public static final LOG_TAG:Ljava/lang/String; = "IPDialSettings"

.field private static final mPrefIpDialEnabled:Ljava/lang/String; = "ip_dial_enabled"

.field private static final mPrefIpNumber:Ljava/lang/String; = "ip_number"


# instance fields
.field private mIpDialEnabled:Landroid/preference/CheckBoxPreference;

.field private mIpNumber:Landroid/preference/EditTextPreference;

.field private mSubscription:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ip_dial_enabled"

    aput-object v1, v0, v2

    const-string v1, "ip_dial_second_enabled"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/IPDialSettings;->IP_ENABLED_ARRAY:[Ljava/lang/String;

    .line 37
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ip_dial_number"

    aput-object v1, v0, v2

    const-string v1, "ip_dial_second_number"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/IPDialSettings;->IP_NUMBER_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 96
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/IPDialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private fillUi()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 77
    invoke-virtual {p0}, Lcom/android/phone/IPDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/phone/IPDialSettings;->IP_ENABLED_ARRAY:[Ljava/lang/String;

    iget v4, p0, Lcom/android/phone/IPDialSettings;->mSubscription:I

    aget-object v3, v3, v4

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 80
    .local v0, ipDialEnabled:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/IPDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/phone/IPDialSettings;->IP_NUMBER_ARRAY:[Ljava/lang/String;

    iget v4, p0, Lcom/android/phone/IPDialSettings;->mSubscription:I

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, ipDialNumber:Ljava/lang/String;
    const-string v2, "IPDialSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSubscription:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/IPDialSettings;->mSubscription:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ipDialEnabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ipDialNumber:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v2, p0, Lcom/android/phone/IPDialSettings;->mIpDialEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 89
    iget-object v2, p0, Lcom/android/phone/IPDialSettings;->mIpNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/android/phone/IPDialSettings;->mIpNumber:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/phone/IPDialSettings;->mIpNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/IPDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 93
    return-void

    .end local v0           #ipDialEnabled:Z
    .end local v1           #ipDialNumber:Ljava/lang/String;
    :cond_0
    move v0, v5

    .line 77
    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 48
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v1, 0x7f050012

    invoke-virtual {p0, v1}, Lcom/android/phone/IPDialSettings;->addPreferencesFromResource(I)V

    .line 54
    invoke-virtual {p0}, Lcom/android/phone/IPDialSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SUBSCRIPTION_ID"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/IPDialSettings;->mSubscription:I

    .line 56
    const-string v1, "IPDialSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSubscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/IPDialSettings;->mSubscription:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget v1, p0, Lcom/android/phone/IPDialSettings;->mSubscription:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 60
    iput v4, p0, Lcom/android/phone/IPDialSettings;->mSubscription:I

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/IPDialSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 65
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "ip_dial_enabled"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/IPDialSettings;->mIpDialEnabled:Landroid/preference/CheckBoxPreference;

    .line 66
    const-string v1, "ip_number"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/phone/IPDialSettings;->mIpNumber:Landroid/preference/EditTextPreference;

    .line 68
    iget-object v1, p0, Lcom/android/phone/IPDialSettings;->mIpDialEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 69
    iget-object v1, p0, Lcom/android/phone/IPDialSettings;->mIpNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 71
    invoke-direct {p0}, Lcom/android/phone/IPDialSettings;->fillUi()V

    .line 72
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v5, 0x1

    const-string v7, "mSubscription:"

    const-string v6, "IPDialSettings"

    .line 106
    iget-object v2, p0, Lcom/android/phone/IPDialSettings;->mIpDialEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_2

    .line 108
    iget-object v2, p0, Lcom/android/phone/IPDialSettings;->mIpDialEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 111
    .local v1, isPreferenceChecked:Z
    invoke-virtual {p0}, Lcom/android/phone/IPDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/phone/IPDialSettings;->IP_ENABLED_ARRAY:[Ljava/lang/String;

    iget v4, p0, Lcom/android/phone/IPDialSettings;->mSubscription:I

    aget-object v3, v3, v4

    if-nez v1, :cond_1

    move v4, v5

    :goto_0
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 114
    const-string v2, "IPDialSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSubscription:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/IPDialSettings;->mSubscription:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isPreferenceChecked:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v1           #isPreferenceChecked:Z
    :cond_0
    :goto_1
    return v5

    .line 111
    .restart local v1       #isPreferenceChecked:Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 118
    .end local v1           #isPreferenceChecked:Z
    :cond_2
    iget-object v2, p0, Lcom/android/phone/IPDialSettings;->mIpNumber:Landroid/preference/EditTextPreference;

    if-ne p1, v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/android/phone/IPDialSettings;->mIpNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, ipDialNumber:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/IPDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/phone/IPDialSettings;->IP_NUMBER_ARRAY:[Ljava/lang/String;

    iget v4, p0, Lcom/android/phone/IPDialSettings;->mSubscription:I

    aget-object v3, v3, v4

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 126
    const-string v2, "IPDialSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSubscription:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/IPDialSettings;->mSubscription:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ipDialNumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v2, p0, Lcom/android/phone/IPDialSettings;->mIpNumber:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v0}, Lcom/android/phone/IPDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
