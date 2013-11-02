.class public Lcom/android/phone/CellBroadcast;
.super Landroid/preference/PreferenceActivity;
.source "CellBroadcast.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CellBroadcast$MyHandler;,
        Lcom/android/phone/CellBroadcast$ChannelPreference;
    }
.end annotation


# static fields
.field private static final DIALOG_ADD:I = 0x3

.field private static final DIALOG_EDIT:I = 0x2

.field private static final DIALOG_MENU:I = 0x1

.field private static final KEY_CB_ADD_CHANNEL:Ljava/lang/String; = "add_channel"

.field private static final KEY_CB_CHANNEL_LIST:Ljava/lang/String; = "channel_list"

.field private static final KEY_CB_ENABLED:Ljava/lang/String; = "cb_enabled"

.field private static final KEY_CB_LANGUAGE:Ljava/lang/String; = "cb_language"

.field private static final MESSAGE_ACTIVATE_CB_SMS:I = 0x1

.field private static final MESSAGE_GET_CB_SMS_CONFIG:I = 0x2

.field private static final MESSAGE_SET_CB_SMS_CONFIG:I = 0x3


# instance fields
.field private mAddChanel:Landroid/preference/PreferenceScreen;

.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mCancelButton:Landroid/widget/Button;

.field private mCancelButtonAdd:Landroid/widget/Button;

.field private mChannelList:Landroid/preference/PreferenceCategory;

.field private mChannelListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/phone/CellBroadcast$ChannelPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelNameEdit:Landroid/widget/EditText;

.field private mChannelNameEditAdd:Landroid/widget/EditText;

.field private mChannelNumberEdit:Landroid/widget/EditText;

.field private mChannelNumberEditAdd:Landroid/widget/EditText;

.field private mChannelStateCheckBox:Landroid/widget/CheckBox;

.field private mChannelStateCheckBoxAdd:Landroid/widget/CheckBox;

.field private mConfigInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentChannelName:Ljava/lang/String;

.field private mCurrentChannelNumber:I

.field private mCurrentChannelState:Z

.field private mEnableCB:Landroid/preference/CheckBoxPreference;

.field private mHandler:Lcom/android/phone/CellBroadcast$MyHandler;

.field private mLanguageIndex:I

.field private mListLanguage:Landroid/preference/ListPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRes:Landroid/content/res/Resources;

.field private mSaveButton:Landroid/widget/Button;

.field private mSaveButtonAdd:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/CellBroadcast;->mLanguageIndex:I

    .line 582
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CellBroadcast;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/CellBroadcast;->mChannelNameEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/CellBroadcast;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/phone/CellBroadcast;->mLanguageIndex:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/CellBroadcast;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/CellBroadcast;->mChannelNameEditAdd:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/CellBroadcast;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/CellBroadcast;->mChannelNumberEditAdd:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/CellBroadcast;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/CellBroadcast;->mChannelStateCheckBoxAdd:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/CellBroadcast;)Landroid/preference/PreferenceCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/CellBroadcast;->mChannelList:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CellBroadcast;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/CellBroadcast;->mChannelNumberEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/CellBroadcast;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/phone/CellBroadcast;->mCurrentChannelNumber:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/CellBroadcast;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/CellBroadcast;->mCurrentChannelName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/CellBroadcast;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/CellBroadcast;->mChannelListMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/CellBroadcast;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/CellBroadcast;->mConfigInfoMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/CellBroadcast;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/CellBroadcast;->mChannelStateCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/CellBroadcast;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/CellBroadcast;->mRes:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/CellBroadcast;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/phone/CellBroadcast;->checkTrim0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkTrim0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    const-string v2, "0"

    .line 681
    const-string v0, "CellBroadcast.java"

    const-string v1, "checkTrim0()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const-string v0, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "00"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 683
    :cond_0
    const-string v0, "0"

    move-object v0, v2

    .line 685
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/CellBroadcast;->trim0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/phone/CellBroadcast;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 165
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v3, "cb_enabled"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/CellBroadcast;->mEnableCB:Landroid/preference/CheckBoxPreference;

    .line 166
    const-string v3, "cb_language"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/CellBroadcast;->mListLanguage:Landroid/preference/ListPreference;

    .line 167
    const-string v3, "add_channel"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/CellBroadcast;->mAddChanel:Landroid/preference/PreferenceScreen;

    .line 168
    const-string v3, "channel_list"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/phone/CellBroadcast;->mChannelList:Landroid/preference/PreferenceCategory;

    .line 170
    iget-object v3, p0, Lcom/android/phone/CellBroadcast;->mListLanguage:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    iget-object v3, p0, Lcom/android/phone/CellBroadcast;->mListLanguage:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 175
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/CellBroadcast;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "cell_broadcast_language"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 182
    .local v0, languageCode:I
    :goto_0
    iget-object v3, p0, Lcom/android/phone/CellBroadcast;->mListLanguage:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 183
    iget-object v3, p0, Lcom/android/phone/CellBroadcast;->mListLanguage:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/phone/CellBroadcast;->mListLanguage:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 185
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/phone/CellBroadcast;->mChannelListMap:Ljava/util/Map;

    .line 186
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/phone/CellBroadcast;->mConfigInfoMap:Ljava/util/Map;

    .line 188
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CellBroadcast;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 189
    new-instance v3, Lcom/android/phone/CellBroadcast$MyHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/phone/CellBroadcast$MyHandler;-><init>(Lcom/android/phone/CellBroadcast;Lcom/android/phone/CellBroadcast$1;)V

    iput-object v3, p0, Lcom/android/phone/CellBroadcast;->mHandler:Lcom/android/phone/CellBroadcast$MyHandler;

    .line 190
    return-void

    .line 177
    .end local v0           #languageCode:I
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 178
    .local v2, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v0, 0xf

    .line 179
    .restart local v0       #languageCode:I
    const-string v3, "CellBroadcast.java"

    const-string v4, "shenzhan init() SettingNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private trim0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 690
    const-string v1, "CellBroadcast.java"

    const-string v2, "trim0()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 692
    :cond_0
    const/4 v1, 0x0

    .line 699
    :goto_0
    return-object v1

    .line 695
    :cond_1
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 696
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 697
    .local v0, tmpStr:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/phone/CellBroadcast;->trim0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .end local v0           #tmpStr:Ljava/lang/String;
    :cond_2
    move-object v1, p1

    .line 699
    goto :goto_0
.end method


# virtual methods
.method public initChannelList()V
    .locals 22

    .prologue
    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast;->mConfigInfoMap:Ljava/util/Map;

    move-object v6, v0

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast;->mConfigInfoMap:Ljava/util/Map;

    move-object v6, v0

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 630
    :cond_0
    const-string v6, "CellBroadcast.java"

    const-string v7, "shenzhan initChannelList() mConfigInfoMap == null || mConfigInfoMap.isEmpty()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_1
    :goto_0
    return-void

    .line 633
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast;->mChannelListMap:Ljava/util/Map;

    move-object v6, v0

    if-nez v6, :cond_3

    .line 634
    const-string v6, "CellBroadcast.java"

    const-string v7, "shenzhan initChannelList() mChannelListMap == null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 639
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CellBroadcast;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 644
    .local v5, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast;->mConfigInfoMap:Ljava/util/Map;

    move-object v6, v0

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    .line 645
    .local v15, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;>;"
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 646
    .local v14, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 647
    .local v12, configInfo:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    const-string v6, "CellBroadcast.java"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " shen initChannelList() configInfo.getFromServiceId()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v18

    .line 649
    .local v18, serviceId:I
    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v17

    .line 650
    .local v17, isSelected:Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 651
    .local v19, title:Ljava/lang/String;
    new-instance v20, Lcom/android/phone/CellBroadcast$ChannelPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move/from16 v3, v18

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CellBroadcast$ChannelPreference;-><init>(Lcom/android/phone/CellBroadcast;Landroid/content/Context;IZ)V

    .line 655
    .local v20, tmpChannelPreference:Lcom/android/phone/CellBroadcast$ChannelPreference;
    const-string v6, "content://settings/cellbroadcast"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "channelnumber=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 657
    .local v13, cursor:Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 658
    const-string v6, "CellBroadcast.java"

    const-string v7, "shenzhan initChannelList() cursor is  not empty"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const-string v6, "channelname"

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 660
    .local v11, channelNumberIndex:I
    invoke-interface {v13, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 669
    .end local v11           #channelNumberIndex:I
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/phone/CellBroadcast$ChannelPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 670
    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast;->mRes:Landroid/content/res/Resources;

    move-object v6, v0

    const v7, 0x7f0c0334

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_3
    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/phone/CellBroadcast$ChannelPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 671
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/phone/CellBroadcast$ChannelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast;->mChannelListMap:Ljava/util/Map;

    move-object v6, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast;->mChannelList:Landroid/preference/PreferenceCategory;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast;->mEnableCB:Landroid/preference/CheckBoxPreference;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/phone/CellBroadcast$ChannelPreference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 662
    :cond_4
    const-string v6, "CellBroadcast.java"

    const-string v7, "shenzhan initChannelList() cursor is  empty, insert new value"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 664
    .local v21, value:Landroid/content/ContentValues;
    const-string v6, "channelnumber"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v6, "channelname"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string v6, "content://settings/cellbroadcast"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_2

    .line 670
    .end local v21           #value:Landroid/content/ContentValues;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast;->mRes:Landroid/content/res/Resources;

    move-object v6, v0

    const v7, 0x7f0c0335

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    const/4 v12, 0x0

    const/4 v2, 0x0

    const-string v11, "CellBroadcast.java"

    .line 522
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 523
    const-string v1, "CellBroadcast.java"

    const-string v1, "shenzhan onClick()"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v1, p0, Lcom/android/phone/CellBroadcast;->mChannelListMap:Ljava/util/Map;

    iget v3, p0, Lcom/android/phone/CellBroadcast;->mCurrentChannelNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/phone/CellBroadcast$ChannelPreference;

    .line 527
    .local v6, channelPref:Lcom/android/phone/CellBroadcast$ChannelPreference;
    packed-switch p2, :pswitch_data_0

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 529
    :pswitch_0
    const-string v1, "CellBroadcast.java"

    const-string v1, "shenzhan onClick() which==0 Enable/disable"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v1, p0, Lcom/android/phone/CellBroadcast;->mConfigInfoMap:Ljava/util/Map;

    iget v2, p0, Lcom/android/phone/CellBroadcast;->mCurrentChannelNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 531
    .local v7, configInfo:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    iget-boolean v1, p0, Lcom/android/phone/CellBroadcast;->mCurrentChannelState:Z

    if-nez v1, :cond_1

    move v1, v4

    :goto_1
    iput-boolean v1, v6, Lcom/android/phone/CellBroadcast$ChannelPreference;->mChannelState:Z

    .line 532
    iget-boolean v1, p0, Lcom/android/phone/CellBroadcast;->mCurrentChannelState:Z

    if-nez v1, :cond_2

    move v1, v4

    :goto_2
    invoke-virtual {v7, v1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->setSelected(Z)V

    .line 533
    iget-boolean v1, p0, Lcom/android/phone/CellBroadcast;->mCurrentChannelState:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/CellBroadcast;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0334

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v6, v1}, Lcom/android/phone/CellBroadcast$ChannelPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move v1, v12

    .line 531
    goto :goto_1

    :cond_2
    move v1, v12

    .line 532
    goto :goto_2

    .line 533
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CellBroadcast;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0335

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 536
    .end local v7           #configInfo:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :pswitch_1
    const-string v1, "CellBroadcast.java"

    const-string v1, "shenzhan onClick() which==1 Edit"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/phone/CellBroadcast;->showDialog(I)V

    goto :goto_0

    .line 540
    :pswitch_2
    const-string v1, "CellBroadcast.java"

    const-string v1, "shenzhan onClick() which==2 Delete"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v1, p0, Lcom/android/phone/CellBroadcast;->mChannelList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 542
    iget-object v1, p0, Lcom/android/phone/CellBroadcast;->mChannelListMap:Ljava/util/Map;

    iget v3, p0, Lcom/android/phone/CellBroadcast;->mCurrentChannelNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    iget-object v1, p0, Lcom/android/phone/CellBroadcast;->mConfigInfoMap:Ljava/util/Map;

    iget v3, p0, Lcom/android/phone/CellBroadcast;->mCurrentChannelNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    invoke-virtual {p0}, Lcom/android/phone/CellBroadcast;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 546
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "content://settings/cellbroadcast"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "channelnumber=?"

    new-array v4, v4, [Ljava/lang/String;

    iget v5, p0, Lcom/android/phone/CellBroadcast;->mCurrentChannelNumber:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 547
    .local v8, cursor:Landroid/database/Cursor;
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 548
    .local v10, idIndex:I
    :goto_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 550
    .local v9, deleteId:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://settings/cellbroadcast/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 551
    const-string v1, "CellBroadcast.java"

    const-string v1, "shen onClick() cr.delete()"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 527
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/android/phone/CellBroadcast;->addPreferencesFromResource(I)V

    .line 96
    invoke-virtual {p0}, Lcom/android/phone/CellBroadcast;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CellBroadcast;->mRes:Landroid/content/res/Resources;

    .line 97
    invoke-direct {p0}, Lcom/android/phone/CellBroadcast;->init()V

    .line 98
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "id"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v5, "CellBroadcast.java"

    const-string v6, ""

    .line 220
    const-string v3, "CellBroadcast.java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shenzhan onCreateDialog() before switch id =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    if-ne p1, v7, :cond_1

    .line 223
    const-string v3, "CellBroadcast.java"

    const-string v3, "shenzhan onCreateDialog() MENU"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/CharSequence;

    .line 225
    .local v0, channelItems:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/phone/CellBroadcast;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0c0339

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    .line 226
    iget-object v3, p0, Lcom/android/phone/CellBroadcast;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0c033a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    .line 227
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/phone/CellBroadcast;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0c033b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 228
    iget-boolean v3, p0, Lcom/android/phone/CellBroadcast;->mCurrentChannelState:Z

    if-eqz v3, :cond_0

    .line 229
    iget-object v3, p0, Lcom/android/phone/CellBroadcast;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0c0339

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    .line 231
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/CellBroadcast;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 233
    iget-object v3, p0, Lcom/android/phone/CellBroadcast;->mBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/CellBroadcast;->mCurrentChannelNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0, p0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 455
    .end local v0           #channelItems:[Ljava/lang/CharSequence;
    :goto_0
    return-object v3

    .line 235
    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    .line 236
    const-string v3, "CellBroadcast.java"

    const-string v3, "shenzhan onCreateDialog() EDIT"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/high16 v4, 0x7f03

    invoke-virtual {v3, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 239
    .local v1, view:Landroid/view/View;
    const v3, 0x7f07001c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/phone/CellBroadcast;->mChannelNameEdit:Landroid/widget/EditText;

    .line 240
    const v3, 0x7f07001e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/phone/CellBroadcast;->mChannelNumberEdit:Landroid/widget/EditText;

    .line 241
    const v3, 0x7f070020

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/phone/CellBroadcast;->mChannelStateCheckBox:Landroid/widget/CheckBox;

    .line 243
    const v3, 0x7f070021

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/CellBroadcast;->mSaveButton:Landroid/widget/Button;

    .line 244
    const v3, 0x7f070022

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/CellBroadcast;->mCancelButton:Landroid/widget/Button;

    .line 246
    iget-object v3, p0, Lcom/android/phone/CellBroadcast;->mCancelButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/phone/CellBroadcast$1;

    invoke-direct {v4, p0}, Lcom/android/phone/CellBroadcast$1;-><init>(Lcom/android/phone/CellBroadcast;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v3, p0, Lcom/android/phone/CellBroadcast;->mSaveButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/phone/CellBroadcast$2;

    invoke-direct {v4, p0}, Lcom/android/phone/CellBroadcast$2;-><init>(Lcom/android/phone/CellBroadcast;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    iget-object v3, p0, Lcom/android/phone/CellBroadcast;->mChannelNameEdit:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/CellBroadcast;->mCurrentChannelNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v3, p0, Lcom/android/phone/CellBroadcast;->mChannelNumberEdit:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/CellBroadcast;->mCurrentChannelNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v3, p0, Lcom/android/phone/CellBroadcast;->mChannelStateCheckBox:Landroid/widget/CheckBox;

    iget-boolean v4, p0, Lcom/android/phone/CellBroadcast;->mCurrentChannelState:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 354
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/CellBroadcast;->mCurrentChannelNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 358
    .end local v1           #view:Landroid/view/View;
    :cond_2
    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    .line 359
    const-string v3, "CellBroadcast.java"

    const-string v3, "shenzhan onCreateDialog() ADD"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/high16 v4, 0x7f03

    invoke-virtual {v3, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 362
    .local v2, viewAdd:Landroid/view/View;
    const v3, 0x7f07001c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/phone/CellBroadcast;->mChannelNameEditAdd:Landroid/widget/EditText;

    .line 363
    const v3, 0x7f07001e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/phone/CellBroadcast;->mChannelNumberEditAdd:Landroid/widget/EditText;

    .line 364
    const v3, 0x7f070020

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/phone/CellBroadcast;->mChannelStateCheckBoxAdd:Landroid/widget/CheckBox;

    .line 366
    const v3, 0x7f070021

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/CellBroadcast;->mSaveButtonAdd:Landroid/widget/Button;

    .line 367
    const v3, 0x7f070022

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/CellBroadcast;->mCancelButtonAdd:Landroid/widget/Button;

    .line 369
    iget-object v3, p0, Lcom/android/phone/CellBroadcast;->mCancelButtonAdd:Landroid/widget/Button;

    new-instance v4, Lcom/android/phone/CellBroadcast$3;

    invoke-direct {v4, p0}, Lcom/android/phone/CellBroadcast$3;-><init>(Lcom/android/phone/CellBroadcast;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object v3, p0, Lcom/android/phone/CellBroadcast;->mSaveButtonAdd:Landroid/widget/Button;

    new-instance v4, Lcom/android/phone/CellBroadcast$4;

    invoke-direct {v4, p0}, Lcom/android/phone/CellBroadcast$4;-><init>(Lcom/android/phone/CellBroadcast;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    iget-object v3, p0, Lcom/android/phone/CellBroadcast;->mChannelNameEditAdd:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v3, p0, Lcom/android/phone/CellBroadcast;->mChannelNumberEditAdd:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v3, p0, Lcom/android/phone/CellBroadcast;->mChannelStateCheckBoxAdd:Landroid/widget/CheckBox;

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 450
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/phone/CellBroadcast;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0c0331

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .end local v2           #viewAdd:Landroid/view/View;
    :cond_3
    move-object v3, v8

    .line 455
    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 10

    .prologue
    const-string v9, "CellBroadcast.java"

    .line 116
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 118
    iget-object v7, p0, Lcom/android/phone/CellBroadcast;->mConfigInfoMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v5

    .line 119
    .local v5, numConfigInfo:I
    mul-int/lit8 v7, v5, 0x5

    new-array v6, v7, [I

    .line 120
    .local v6, setConfigInfo:[I
    const/4 v4, 0x0

    .line 121
    .local v4, index:I
    const-string v7, "CellBroadcast.java"

    const-string v7, "shenzhan onPause()"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v7, "CellBroadcast.java"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " shen onPreferenceChange() numConfigInfo =="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v7, p0, Lcom/android/phone/CellBroadcast;->mConfigInfoMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 125
    .local v2, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 126
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 127
    .local v0, configInfo:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v7

    aput v7, v6, v4

    .line 128
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v8

    aput v8, v6, v7

    .line 129
    add-int/lit8 v7, v4, 0x2

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v8

    aput v8, v6, v7

    .line 130
    add-int/lit8 v7, v4, 0x3

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v8

    aput v8, v6, v7

    .line 131
    add-int/lit8 v7, v4, 0x4

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    :goto_1
    aput v8, v6, v7

    .line 132
    add-int/lit8 v4, v4, 0x5

    .line 133
    const-string v7, "CellBroadcast.java"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shenzhan onPause() MESSAGE_GET_CB_SMS_CONFIG configInfo.getFromServiceId() =="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v7, "CellBroadcast.java"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shenzhan onPause() MESSAGE_GET_CB_SMS_CONFIG configInfo.getToServiceId() =="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v7, "CellBroadcast.java"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shenzhan onPause() MESSAGE_GET_CB_SMS_CONFIG configInfo.getFromCodeScheme() =="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v7, "CellBroadcast.java"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shenzhan onPause() MESSAGE_GET_CB_SMS_CONFIG configInfo.getToCodeScheme() =="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v7, "CellBroadcast.java"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shenzhan onPause() MESSAGE_GET_CB_SMS_CONFIG configInfo.isSelected() =="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "true"

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 131
    :cond_0
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 137
    :cond_1
    const-string v8, "false"

    goto :goto_2

    .line 140
    .end local v0           #configInfo:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    :cond_2
    iget-object v7, p0, Lcom/android/phone/CellBroadcast;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v8, p0, Lcom/android/phone/CellBroadcast;->mHandler:Lcom/android/phone/CellBroadcast$MyHandler;

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    .line 143
    iget-object v7, p0, Lcom/android/phone/CellBroadcast;->mChannelListMap:Ljava/util/Map;

    if-eqz v7, :cond_3

    .line 144
    iget-object v7, p0, Lcom/android/phone/CellBroadcast;->mChannelListMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 146
    :cond_3
    iget-object v7, p0, Lcom/android/phone/CellBroadcast;->mChannelListMap:Ljava/util/Map;

    if-eqz v7, :cond_4

    .line 147
    iget-object v7, p0, Lcom/android/phone/CellBroadcast;->mConfigInfoMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 149
    :cond_4
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 500
    iget-object v4, p0, Lcom/android/phone/CellBroadcast;->mListLanguage:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_0

    .line 501
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 502
    .local v3, languageCode:I
    invoke-virtual {p0}, Lcom/android/phone/CellBroadcast;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "cell_broadcast_language"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 503
    iget-object v4, p0, Lcom/android/phone/CellBroadcast;->mListLanguage:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v4, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 504
    .local v2, indexOfValue:I
    iget-object v4, p0, Lcom/android/phone/CellBroadcast;->mListLanguage:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 505
    .local v1, entries:[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/phone/CellBroadcast;->mListLanguage:Landroid/preference/ListPreference;

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 506
    const-string v4, "CellBroadcast.java"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " shen onPreferenceChange() languageCode =="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    .end local v1           #entries:[Ljava/lang/CharSequence;
    .end local v2           #indexOfValue:I
    .end local v3           #languageCode:I
    :cond_0
    const/4 v4, 0x1

    return v4
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 13
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    const-string v10, "CellBroadcast.java"

    .line 193
    const-string v2, "CellBroadcast.java"

    const-string v2, "shenzhanonPreferenceClick()"

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    instance-of v2, p1, Lcom/android/phone/CellBroadcast$ChannelPreference;

    if-eqz v2, :cond_1

    .line 195
    move-object v0, p1

    check-cast v0, Lcom/android/phone/CellBroadcast$ChannelPreference;

    move-object v8, v0

    .line 196
    .local v8, channelNumberPref:Lcom/android/phone/CellBroadcast$ChannelPreference;
    iget v2, v8, Lcom/android/phone/CellBroadcast$ChannelPreference;->mChannelNumber:I

    iput v2, p0, Lcom/android/phone/CellBroadcast;->mCurrentChannelNumber:I

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/phone/CellBroadcast;->mCurrentChannelNumber:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CellBroadcast;->mCurrentChannelName:Ljava/lang/String;

    .line 199
    invoke-virtual {p0}, Lcom/android/phone/CellBroadcast;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 200
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v2, "content://settings/cellbroadcast"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "channelnumber=?"

    new-array v5, v11, [Ljava/lang/String;

    iget v6, p0, Lcom/android/phone/CellBroadcast;->mCurrentChannelNumber:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    move-object v6, v3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 201
    .local v9, cursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    const-string v2, "CellBroadcast.java"

    const-string v2, "shenzhan initChannelList() cursor is  not empty"

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v2, "channelname"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 204
    .local v7, channelNumberIndex:I
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CellBroadcast;->mCurrentChannelName:Ljava/lang/String;

    .line 207
    .end local v7           #channelNumberIndex:I
    :cond_0
    iget-boolean v2, v8, Lcom/android/phone/CellBroadcast$ChannelPreference;->mChannelState:Z

    iput-boolean v2, p0, Lcom/android/phone/CellBroadcast;->mCurrentChannelState:Z

    .line 208
    const-string v2, "CellBroadcast.java"

    const-string v2, "shenzhan onPreferenceClick() preference instanceof ChannelPreference"

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v2, "CellBroadcast.java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shenzhan onPreferenceClick() mCurrentChannelNumber=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/CellBroadcast;->mCurrentChannelNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v2, "CellBroadcast.java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shenzhan onPreferenceClick() mCurrentChannelState=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/CellBroadcast;->mCurrentChannelState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p0, v11}, Lcom/android/phone/CellBroadcast;->showDialog(I)V

    move v2, v11

    .line 214
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v8           #channelNumberPref:Lcom/android/phone/CellBroadcast$ChannelPreference;
    .end local v9           #cursor:Landroid/database/Cursor;
    :goto_0
    return v2

    :cond_1
    move v2, v12

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v5, "cell_broadcast_enabled"

    const-string v4, "CellBroadcast.java"

    .line 561
    iget-object v0, p0, Lcom/android/phone/CellBroadcast;->mAddChanel:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_0

    .line 562
    const-string v0, "CellBroadcast.java"

    const-string v0, "shenzhan onPreferenceTreeClick() preference == mAddChanel"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/phone/CellBroadcast;->showDialog(I)V

    move v0, v2

    .line 579
    :goto_0
    return v0

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CellBroadcast;->mEnableCB:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 567
    iget-object v0, p0, Lcom/android/phone/CellBroadcast;->mEnableCB:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 568
    invoke-virtual {p0}, Lcom/android/phone/CellBroadcast;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cell_broadcast_enabled"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 570
    iget-object v0, p0, Lcom/android/phone/CellBroadcast;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CellBroadcast;->mHandler:Lcom/android/phone/CellBroadcast$MyHandler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    .line 571
    const-string v0, "CellBroadcast.java"

    const-string v0, "shenzhan onPreferenceTreeClick() preference == mEnableCB enable"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    move v0, v3

    .line 579
    goto :goto_0

    .line 573
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CellBroadcast;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cell_broadcast_enabled"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 575
    iget-object v0, p0, Lcom/android/phone/CellBroadcast;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CellBroadcast;->mHandler:Lcom/android/phone/CellBroadcast$MyHandler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    .line 576
    const-string v0, "CellBroadcast.java"

    const-string v0, "shenzhan onPreferenceTreeClick() preference == mEnableCB disable"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 10
    .parameter "id"
    .parameter "dialog"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v6, 0x1

    const-string v7, "CellBroadcast.java"

    const-string v5, ""

    .line 460
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/high16 v3, 0x7f03

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 462
    .local v1, view:Landroid/view/View;
    if-ne p1, v6, :cond_2

    .line 463
    const-string v2, "CellBroadcast.java"

    const-string v2, "shenzhan onPrepareDialog() MENU"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/CharSequence;

    .line 465
    .local v0, channelItems:[Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/phone/CellBroadcast;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0339

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    .line 466
    iget-object v2, p0, Lcom/android/phone/CellBroadcast;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c033a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    .line 467
    iget-object v2, p0, Lcom/android/phone/CellBroadcast;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c033b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v9

    .line 468
    iget-boolean v2, p0, Lcom/android/phone/CellBroadcast;->mCurrentChannelState:Z

    if-eqz v2, :cond_0

    .line 469
    iget-object v2, p0, Lcom/android/phone/CellBroadcast;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0339

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    .line 471
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/CellBroadcast;->mCurrentChannelNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 472
    iget-object v2, p0, Lcom/android/phone/CellBroadcast;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v0, p0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 497
    .end local v0           #channelItems:[Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-void

    .line 473
    :cond_2
    if-ne p1, v9, :cond_3

    .line 474
    const-string v2, "CellBroadcast.java"

    const-string v2, "shenzhan onPrepareDialog() EDIT"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v2, p0, Lcom/android/phone/CellBroadcast;->mChannelNameEdit:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CellBroadcast;->mCurrentChannelName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v2, p0, Lcom/android/phone/CellBroadcast;->mChannelNumberEdit:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/CellBroadcast;->mCurrentChannelNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 490
    iget-object v2, p0, Lcom/android/phone/CellBroadcast;->mChannelStateCheckBox:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/android/phone/CellBroadcast;->mCurrentChannelState:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 491
    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 492
    const-string v2, "CellBroadcast.java"

    const-string v2, "shenzhan onPrepareDialog() ADD"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v2, p0, Lcom/android/phone/CellBroadcast;->mChannelNameEditAdd:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v2, p0, Lcom/android/phone/CellBroadcast;->mChannelNumberEditAdd:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v2, p0, Lcom/android/phone/CellBroadcast;->mChannelStateCheckBoxAdd:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 102
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 104
    iget-object v1, p0, Lcom/android/phone/CellBroadcast;->mChannelList:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/phone/CellBroadcast;->mChannelList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CellBroadcast;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cell_broadcast_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 109
    .local v0, isCellBroadcastEnabled:Z
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CellBroadcast;->mEnableCB:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 111
    iget-object v1, p0, Lcom/android/phone/CellBroadcast;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CellBroadcast;->mHandler:Lcom/android/phone/CellBroadcast$MyHandler;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    .line 112
    return-void

    .end local v0           #isCellBroadcastEnabled:Z
    :cond_1
    move v0, v3

    .line 107
    goto :goto_0
.end method
