.class public Lcom/android/phone/GsmUmtsOptions;
.super Ljava/lang/Object;
.source "GsmUmtsOptions.java"


# static fields
.field private static final BUTTON_OPERATOR_SELECTION_EXPAND_KEY:Ljava/lang/String; = "button_carrier_sel_key"

.field private static final BUTTON_PREFER_2G_KEY:Ljava/lang/String; = "button_prefer_2g_key"

.field private static final LOG_TAG:Ljava/lang/String; = "GsmUmtsOptions"


# instance fields
.field private mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

.field private mPrefActivity:Landroid/preference/PreferenceActivity;

.field private mPrefScreen:Landroid/preference/PreferenceScreen;

.field private mSubscription:I


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;I)V
    .locals 1
    .parameter "prefActivity"
    .parameter "prefScreen"
    .parameter "subscription"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/GsmUmtsOptions;->mSubscription:I

    .line 49
    iput-object p1, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    .line 50
    iput-object p2, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 51
    iput p3, p0, Lcom/android/phone/GsmUmtsOptions;->mSubscription:I

    .line 52
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsOptions;->create()V

    .line 53
    return-void
.end method


# virtual methods
.method protected create()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const-string v5, "button_carrier_sel_key"

    .line 56
    iget-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    const v2, 0x7f050011

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 61
    iget-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v2, "button_carrier_sel_key"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    .line 63
    iget-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SUBSCRIPTION_ID"

    iget v3, p0, Lcom/android/phone/GsmUmtsOptions;->mSubscription:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    iget v1, p0, Lcom/android/phone/GsmUmtsOptions;->mSubscription:I

    invoke-static {v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 67
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 68
    const-string v1, "Not a GSM phone"

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    const-string v1, "[CSP] Enabling Operator Selection menu."

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 77
    :cond_2
    const-string v1, "[CSP] Disabling Operator Selection menu."

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "button_carrier_sel_key"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 106
    const-string v0, "GsmUmtsOptions"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method public preferenceTreeClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "button_prefer_2g_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "preferenceTreeClick: return true"

    invoke-virtual {p0, v0}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    .line 101
    :cond_0
    const-string v0, "preferenceTreeClick: return false"

    invoke-virtual {p0, v0}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x0

    goto :goto_0
.end method
