.class Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$9;
.super Ljava/lang/Object;
.source "OpenvpnEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$9;->this$0:Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 374
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 375
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 376
    iget-object v2, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$9;->this$0:Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;

    #getter for: Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;
    invoke-static {v2}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->access$300(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/net/vpn/OpenvpnProfile;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/vpn/OpenvpnProfile;->setCipher(Ljava/lang/String;)V

    .line 377
    iget-object v2, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$9;->this$0:Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;

    #getter for: Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;
    invoke-static {v2}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->access$300(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/net/vpn/OpenvpnProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/vpn/OpenvpnProfile;->getCipher()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    iget-object v2, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$9;->this$0:Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;

    #getter for: Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mCipher:Landroid/preference/EditTextPreference;
    invoke-static {v2}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->access$900(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/preference/EditTextPreference;

    move-result-object v2

    const v3, 0x7f080492

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(I)V

    .line 381
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 380
    :cond_0
    iget-object v2, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$9;->this$0:Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;

    #getter for: Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mCipher:Landroid/preference/EditTextPreference;
    invoke-static {v2}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->access$900(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/preference/EditTextPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$9;->this$0:Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;

    #getter for: Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;
    invoke-static {v3}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->access$300(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/net/vpn/OpenvpnProfile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/vpn/OpenvpnProfile;->getCipher()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
