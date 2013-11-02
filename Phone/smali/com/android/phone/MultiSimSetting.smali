.class public Lcom/android/phone/MultiSimSetting;
.super Landroid/preference/PreferenceActivity;
.source "MultiSimSetting.java"


# static fields
.field private static final DBG:Z = false

.field private static final KEY_SUBSCRIPTION_0:Ljava/lang/String; = "button_sub_id_00"

.field private static final KEY_SUBSCRIPTION_1:Ljava/lang/String; = "button_sub_id_01"

.field private static final LOG_TAG:Ljava/lang/String; = "MultiSimSetting"

.field public static final PACKAGE:Ljava/lang/String; = "PACKAGE"

.field public static final SUBSCRIPTION_ID:Ljava/lang/String; = "SUBSCRIPTION_ID"

.field public static final TARGET_CLASS:Ljava/lang/String; = "TARGET_CLASS"


# instance fields
.field private subscriptionPref0:Landroid/preference/PreferenceScreen;

.field private subscriptionPref1:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 77
    const-string v0, "MultiSimSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const-string v6, "SUBSCRIPTION_ID"

    .line 50
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v4, 0x7f050016

    invoke-virtual {p0, v4}, Lcom/android/phone/MultiSimSetting;->addPreferencesFromResource(I)V

    .line 55
    invoke-virtual {p0}, Lcom/android/phone/MultiSimSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 57
    .local v2, prefSet:Landroid/preference/PreferenceScreen;
    const-string v4, "button_sub_id_00"

    invoke-virtual {p0, v4}, Lcom/android/phone/MultiSimSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/MultiSimSetting;->subscriptionPref0:Landroid/preference/PreferenceScreen;

    .line 58
    const-string v4, "button_sub_id_01"

    invoke-virtual {p0, v4}, Lcom/android/phone/MultiSimSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/MultiSimSetting;->subscriptionPref1:Landroid/preference/PreferenceScreen;

    .line 60
    invoke-virtual {p0}, Lcom/android/phone/MultiSimSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 61
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "PACKAGE"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, pkg:Ljava/lang/String;
    const-string v4, "TARGET_CLASS"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, targetClass:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/MultiSimSetting;->subscriptionPref0:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    iget-object v4, p0, Lcom/android/phone/MultiSimSetting;->subscriptionPref1:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    iget-object v4, p0, Lcom/android/phone/MultiSimSetting;->subscriptionPref0:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "SUBSCRIPTION_ID"

    const/4 v5, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    iget-object v4, p0, Lcom/android/phone/MultiSimSetting;->subscriptionPref1:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "SUBSCRIPTION_ID"

    const/4 v5, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 42
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 74
    return-void
.end method
