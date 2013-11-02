.class Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$13;
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
    .line 432
    iput-object p1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$13;->this$0:Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 434
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 435
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 436
    iget-object v2, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$13;->this$0:Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;

    #getter for: Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;
    invoke-static {v2}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->access$300(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/net/vpn/OpenvpnProfile;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/vpn/OpenvpnProfile;->setTlsAuthKeyDirection(Ljava/lang/String;)V

    .line 437
    iget-object v2, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$13;->this$0:Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;

    #getter for: Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mTlsAuthKeyDirection:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->access$1200(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$13;->this$0:Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;

    #getter for: Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;
    invoke-static {v3}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->access$300(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/net/vpn/OpenvpnProfile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/vpn/OpenvpnProfile;->getTlsAuthKeyDirection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 438
    iget-object v2, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$13;->this$0:Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;

    #getter for: Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mTlsAuthKeyDirection:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->access$1200(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$13;->this$0:Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;

    #getter for: Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mTlsAuthKeyDirection:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->access$1200(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/preference/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 440
    const/4 v2, 0x1

    return v2
.end method
