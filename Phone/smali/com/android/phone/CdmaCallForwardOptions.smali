.class public Lcom/android/phone/CdmaCallForwardOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "CdmaCallForwardOptions.java"


# static fields
.field private static final BUTTON_CFB_KEY:Ljava/lang/String; = "button_cfb_key"

.field private static final BUTTON_CFCA_KEY:Ljava/lang/String; = "button_cfca_key"

.field private static final BUTTON_CFNRC_KEY:Ljava/lang/String; = "button_cfnrc_key"

.field private static final BUTTON_CFNRY_KEY:Ljava/lang/String; = "button_cfnry_key"

.field private static final BUTTON_CFU_KEY:Ljava/lang/String; = "button_cfu_key"

.field private static final KEY_NUMBER:Ljava/lang/String; = "number"

.field private static final KEY_STATUS:Ljava/lang/String; = "status"

.field private static final KEY_TOGGLE:Ljava/lang/String; = "toggle"

.field private static final LOG_TAG:Ljava/lang/String; = "CdmaNewCallOptions"

.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final DBG:Z

.field private mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFCA:Lcom/android/phone/CanelCallForwardPreference;

.field private mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

.field private mInitIndex:I

.field private mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/CallForwardEditPreference;",
            ">;"
        }
    .end annotation
.end field

.field private modeNo:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CdmaCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 20
    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    .line 41
    iput v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mInitIndex:I

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->modeNo:I

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 79
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 85
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v1, 0x7f050008

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaCallForwardOptions;->addPreferencesFromResource(I)V

    .line 51
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 52
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "button_cfu_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallForwardEditPreference;

    iput-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    .line 53
    const-string v1, "button_cfb_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallForwardEditPreference;

    iput-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    .line 54
    const-string v1, "button_cfnry_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallForwardEditPreference;

    iput-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    .line 55
    const-string v1, "button_cfnrc_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallForwardEditPreference;

    iput-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    .line 56
    const-string v1, "button_cfca_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CanelCallForwardPreference;

    iput-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCA:Lcom/android/phone/CanelCallForwardPreference;

    .line 58
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v1, p0, v2}, Lcom/android/phone/CallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 59
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v1, p0, v2}, Lcom/android/phone/CallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 60
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v1, p0, v2}, Lcom/android/phone/CallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 61
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v1, p0, v2}, Lcom/android/phone/CallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 63
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    iget v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->modeNo:I

    invoke-virtual {v1, v2}, Lcom/android/phone/CallForwardEditPreference;->setMode(I)V

    .line 64
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    iget v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->modeNo:I

    invoke-virtual {v1, v2}, Lcom/android/phone/CallForwardEditPreference;->setMode(I)V

    .line 65
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    iget v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->modeNo:I

    invoke-virtual {v1, v2}, Lcom/android/phone/CallForwardEditPreference;->setMode(I)V

    .line 66
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    iget v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->modeNo:I

    invoke-virtual {v1, v2}, Lcom/android/phone/CallForwardEditPreference;->setMode(I)V

    .line 70
    const-string v1, "CdmaNewCallOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mq~~~~CdmaCallForwardOptions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->modeNo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method
