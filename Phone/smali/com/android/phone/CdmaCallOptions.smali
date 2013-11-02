.class public Lcom/android/phone/CdmaCallOptions;
.super Landroid/preference/PreferenceActivity;
.source "CdmaCallOptions.java"


# static fields
.field private static final BUTTON_VP_KEY:Ljava/lang/String; = "button_voice_privacy_key"

.field private static final LOG_TAG:Ljava/lang/String; = "CdmaCallOptions"


# instance fields
.field private final DBG:Z

.field private mButtonVoicePrivacy:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallOptions;->DBG:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    .line 26
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v2, 0x7f050007

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallOptions;->addPreferencesFromResource(I)V

    .line 31
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallOptions;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "SUBSCRIPTION_ID"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 33
    .local v1, subscription:I
    const-string v2, "CdmaCallOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Getting CDMACallOptions subscription ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 36
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    const-string v2, "button_voice_privacy_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaCallOptions;->mButtonVoicePrivacy:Landroid/preference/CheckBoxPreference;

    .line 37
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 42
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 46
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "button_voice_privacy_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
