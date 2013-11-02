.class public Lcom/android/phone/GsmUmtsCallOptions;
.super Landroid/preference/PreferenceActivity;
.source "GsmUmtsCallOptions.java"


# static fields
.field private static final BUTTON_CF_EXPAND_KEY:Ljava/lang/String; = "button_cf_expand_key"

.field private static final BUTTON_MORE_EXPAND_KEY:Ljava/lang/String; = "button_more_expand_key"

.field private static final LOG_TAG:Ljava/lang/String; = "GsmUmtsCallOptions"

.field public static final SUBSCRIPTION_ID:Ljava/lang/String; = "SUBSCRIPTION_ID"


# instance fields
.field private final DBG:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSubscription:I

.field private subscriptionPrefCFE:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/GsmUmtsCallOptions;->DBG:Z

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/GsmUmtsCallOptions;->mSubscription:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    const-string v5, "GsmUmtsCallOptions"

    const-string v3, "SUBSCRIPTION_ID"

    .line 46
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v1, 0x7f050010

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsCallOptions;->addPreferencesFromResource(I)V

    .line 51
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallOptions;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SUBSCRIPTION_ID"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/GsmUmtsCallOptions;->mSubscription:I

    .line 53
    const-string v1, "button_cf_expand_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/GsmUmtsCallOptions;->subscriptionPrefCFE:Landroid/preference/PreferenceScreen;

    .line 54
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallOptions;->subscriptionPrefCFE:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SUBSCRIPTION_ID"

    iget v2, p0, Lcom/android/phone/GsmUmtsCallOptions;->mSubscription:I

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    const-string v1, "button_more_expand_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 58
    .local v0, subscriptionPrefAdditionSettings:Landroid/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SUBSCRIPTION_ID"

    iget v2, p0, Lcom/android/phone/GsmUmtsCallOptions;->mSubscription:I

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    const-string v1, "GsmUmtsCallOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting GsmUmtsCallOptions subscription ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/GsmUmtsCallOptions;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget v1, p0, Lcom/android/phone/GsmUmtsCallOptions;->mSubscription:I

    invoke-static {v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/GsmUmtsCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 62
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 63
    const-string v1, "GsmUmtsCallOptions"

    const-string v1, "Non GSM Phone!"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 67
    :cond_0
    return-void
.end method
