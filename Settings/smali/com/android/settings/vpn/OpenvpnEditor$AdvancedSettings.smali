.class public Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;
.super Landroid/preference/PreferenceActivity;
.source "OpenvpnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/vpn/OpenvpnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdvancedSettings"
.end annotation


# static fields
.field private static final KEY_CIPHER:Ljava/lang/String; = "set_cipher"

.field private static final KEY_COMP_LZO:Ljava/lang/String; = "set_comp_lzo"

.field private static final KEY_DEVICE:Ljava/lang/String; = "set_device"

.field private static final KEY_EXTRA:Ljava/lang/String; = "set_extra"

.field private static final KEY_KEYSIZE:Ljava/lang/String; = "set_keysize"

.field private static final KEY_LOCAL_ADDR:Ljava/lang/String; = "set_local_addr"

.field private static final KEY_PORT:Ljava/lang/String; = "set_port"

.field private static final KEY_PROTO:Ljava/lang/String; = "set_protocol"

.field private static final KEY_REDIRECT_GATEWAY:Ljava/lang/String; = "set_redirect_gateway"

.field private static final KEY_REMOTE_ADDR:Ljava/lang/String; = "set_remote_addr"

.field private static final KEY_SET_ADDR:Ljava/lang/String; = "set_addr"

.field private static final KEY_TLS_AUTH_KEY_DIRECTION:Ljava/lang/String; = "set_tls_auth_key_direction"

.field private static final KEY_TLS_KEY:Ljava/lang/String; = "set_tls_auth_key"

.field private static final KEY_USE_TLS_AUTH:Ljava/lang/String; = "set_use_tls_auth"


# instance fields
.field private mCipher:Landroid/preference/EditTextPreference;

.field private mCompLzo:Landroid/preference/CheckBoxPreference;

.field private mDevice:Landroid/preference/ListPreference;

.field private mExtra:Landroid/preference/EditTextPreference;

.field private mKeySize:Landroid/preference/EditTextPreference;

.field private mLocalAddr:Landroid/preference/EditTextPreference;

.field private mPort:Landroid/preference/EditTextPreference;

.field private mProto:Landroid/preference/ListPreference;

.field private mRedirectGateway:Landroid/preference/CheckBoxPreference;

.field private mRemoteAddr:Landroid/preference/EditTextPreference;

.field private mSetAddr:Landroid/preference/CheckBoxPreference;

.field private mTlsAuthKey:Landroid/preference/EditTextPreference;

.field private mTlsAuthKeyDirection:Landroid/preference/ListPreference;

.field private mUseTlsAuth:Landroid/preference/CheckBoxPreference;

.field private profile:Landroid/net/vpn/OpenvpnProfile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mKeySize:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mTlsAuthKey:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mTlsAuthKeyDirection:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mExtra:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/net/vpn/OpenvpnProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mProto:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mDevice:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mLocalAddr:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mRemoteAddr:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mCipher:Landroid/preference/EditTextPreference;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const-string v2, ""

    .line 249
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "openvpn_profile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/vpn/OpenvpnProfile;

    iput-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    .line 253
    const v0, 0x7f040015

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->addPreferencesFromResource(I)V

    .line 255
    const-string v0, "set_port"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    .line 256
    const-string v0, "set_protocol"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mProto:Landroid/preference/ListPreference;

    .line 257
    const-string v0, "set_device"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mDevice:Landroid/preference/ListPreference;

    .line 258
    const-string v0, "set_comp_lzo"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mCompLzo:Landroid/preference/CheckBoxPreference;

    .line 259
    const-string v0, "set_redirect_gateway"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mRedirectGateway:Landroid/preference/CheckBoxPreference;

    .line 260
    const-string v0, "set_addr"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mSetAddr:Landroid/preference/CheckBoxPreference;

    .line 261
    const-string v0, "set_local_addr"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mLocalAddr:Landroid/preference/EditTextPreference;

    .line 262
    const-string v0, "set_remote_addr"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mRemoteAddr:Landroid/preference/EditTextPreference;

    .line 263
    const-string v0, "set_cipher"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mCipher:Landroid/preference/EditTextPreference;

    .line 264
    const-string v0, "set_keysize"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mKeySize:Landroid/preference/EditTextPreference;

    .line 265
    const-string v0, "set_extra"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mExtra:Landroid/preference/EditTextPreference;

    .line 266
    const-string v0, "set_use_tls_auth"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mUseTlsAuth:Landroid/preference/CheckBoxPreference;

    .line 267
    const-string v0, "set_tls_auth_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mTlsAuthKey:Landroid/preference/EditTextPreference;

    .line 268
    const-string v0, "set_tls_auth_key_direction"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mTlsAuthKeyDirection:Landroid/preference/ListPreference;

    .line 270
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getPort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getPort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$1;-><init>(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 283
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mProto:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getProto()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mProto:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getProto()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mProto:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$2;-><init>(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 296
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mDevice:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getDevice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mDevice:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getDevice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mDevice:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$3;-><init>(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 309
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mCompLzo:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getUseCompLzo()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 310
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mCompLzo:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$4;-><init>(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 319
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mRedirectGateway:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getRedirectGateway()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 320
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mRedirectGateway:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$5;-><init>(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 331
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mSetAddr:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getSupplyAddr()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 332
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mSetAddr:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$6;-><init>(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 341
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mLocalAddr:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getLocalAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mLocalAddr:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getLocalAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mLocalAddr:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$7;-><init>(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 354
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mRemoteAddr:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getRemoteAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mRemoteAddr:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getRemoteAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mRemoteAddr:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$8;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$8;-><init>(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 367
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v0}, Landroid/net/vpn/OpenvpnProfile;->getCipher()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v0}, Landroid/net/vpn/OpenvpnProfile;->getCipher()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mCipher:Landroid/preference/EditTextPreference;

    const v1, 0x7f080492

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    .line 371
    :goto_1
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mCipher:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getCipher()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mCipher:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$9;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$9;-><init>(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 385
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v0}, Landroid/net/vpn/OpenvpnProfile;->getKeySize()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v0}, Landroid/net/vpn/OpenvpnProfile;->getKeySize()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mKeySize:Landroid/preference/EditTextPreference;

    const v1, 0x7f080495

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    .line 387
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mKeySize:Landroid/preference/EditTextPreference;

    const-string v1, ""

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 392
    :goto_2
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mKeySize:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$10;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$10;-><init>(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 407
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mUseTlsAuth:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getUseTlsAuth()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 408
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mUseTlsAuth:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$11;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$11;-><init>(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 417
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mTlsAuthKey:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getTlsAuthKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mTlsAuthKey:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getTlsAuthKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mTlsAuthKey:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$12;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$12;-><init>(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 430
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mTlsAuthKeyDirection:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getTlsAuthKeyDirection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mTlsAuthKeyDirection:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mTlsAuthKeyDirection:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mTlsAuthKeyDirection:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$13;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$13;-><init>(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 444
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mExtra:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mExtra:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mExtra:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$14;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings$14;-><init>(Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 455
    return-void

    .line 331
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 370
    :cond_3
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mCipher:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getCipher()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 389
    :cond_4
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mKeySize:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getKeySize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v0, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->mKeySize:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/OpenvpnProfile;->getKeySize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 459
    packed-switch p1, :pswitch_data_0

    .line 468
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 461
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/vpn/VpnEditor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 462
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "openvpn_profile"

    iget-object v2, p0, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->profile:Landroid/net/vpn/OpenvpnProfile;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 463
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->setResult(ILandroid/content/Intent;)V

    .line 465
    invoke-virtual {p0}, Lcom/android/settings/vpn/OpenvpnEditor$AdvancedSettings;->finish()V

    .line 466
    const/4 v1, 0x1

    goto :goto_0

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
