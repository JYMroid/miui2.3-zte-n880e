.class public Lcom/android/phone/SetSubscription;
.super Landroid/preference/PreferenceActivity;
.source "SetSubscription.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final PREF_PARENT_KEY:Ljava/lang/String; = "subscr_parent"

.field public static final SUBSCRIPTION_INDEX_INVALID:I = 0x1869f

.field private static final TAG:Ljava/lang/String; = "SetSubscription"


# instance fields
.field private final DIALOG_SET_SUBSCRIPTION_IN_PROGRESS:I

.field private final EVENT_SET_SUBSCRIPTION_DONE:I

.field private final EVENT_SIM_STATE_CHANGED:I

.field private final MAX_SUBSCRIPTIONS:I

.field private mCancelButton:Landroid/widget/TextView;

.field private mCardSubscrInfo:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

.field mCheckBoxListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mCurrentSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

.field private mHandler:Landroid/os/Handler;

.field private mOkButton:Landroid/widget/TextView;

.field private mProxyManager:Lcom/android/internal/telephony/ProxyManager;

.field private mSubscrInfo:Landroid/os/Bundle;

.field private mUserSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

.field subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

.field private subErr:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 51
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SetSubscription;->subErr:Z

    .line 69
    iput v1, p0, Lcom/android/phone/SetSubscription;->MAX_SUBSCRIPTIONS:I

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/SetSubscription;->EVENT_SET_SUBSCRIPTION_DONE:I

    .line 73
    iput v1, p0, Lcom/android/phone/SetSubscription;->EVENT_SIM_STATE_CHANGED:I

    .line 75
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/SetSubscription;->DIALOG_SET_SUBSCRIPTION_IN_PROGRESS:I

    .line 254
    new-instance v0, Lcom/android/phone/SetSubscription$3;

    invoke-direct {v0, p0}, Lcom/android/phone/SetSubscription$3;-><init>(Lcom/android/phone/SetSubscription;)V

    iput-object v0, p0, Lcom/android/phone/SetSubscription;->mCheckBoxListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 437
    new-instance v0, Lcom/android/phone/SetSubscription$6;

    invoke-direct {v0, p0}, Lcom/android/phone/SetSubscription$6;-><init>(Lcom/android/phone/SetSubscription;)V

    iput-object v0, p0, Lcom/android/phone/SetSubscription;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SetSubscription;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/phone/SetSubscription;->updateCheckBoxes()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/SetSubscription;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/SetSubscription;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/SetSubscription;)Lcom/android/internal/telephony/ProxyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/SetSubscription;->mProxyManager:Lcom/android/internal/telephony/ProxyManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/SetSubscription;)[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/SetSubscription;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/phone/SetSubscription;->populateList()V

    return-void
.end method

.method private errorMutipleDeactivate()V
    .locals 3

    .prologue
    .line 416
    const-string v0, "SetSubscription"

    const-string v1, "errorMutipleDeactivate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c02d6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02d7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/phone/SetSubscription$5;

    invoke-direct {v2, p0}, Lcom/android/phone/SetSubscription$5;-><init>(Lcom/android/phone/SetSubscription;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/phone/SetSubscription$4;

    invoke-direct {v1, p0}, Lcom/android/phone/SetSubscription$4;-><init>(Lcom/android/phone/SetSubscription;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 435
    return-void
.end method

.method private isFailed(Ljava/lang/String;)Z
    .locals 3
    .parameter "status"

    .prologue
    .line 501
    const-string v0, "SetSubscription"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFailed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    const-string v0, "DEACTIVATE FAILED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DEACTIVATE NOT SUPPORTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ACTIVATE FAILED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ACTIVATE NOT SUPPORTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    :cond_0
    const/4 v0, 0x1

    .line 510
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mapSub(I)Lcom/android/phone/SubscriptionID;
    .locals 2
    .parameter "sub"

    .prologue
    .line 207
    sget-object v0, Lcom/android/phone/SubscriptionID;->NONE:Lcom/android/phone/SubscriptionID;

    .line 208
    .local v0, ret:Lcom/android/phone/SubscriptionID;
    if-nez p1, :cond_0

    sget-object v0, Lcom/android/phone/SubscriptionID;->SUB_0:Lcom/android/phone/SubscriptionID;

    .line 209
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    sget-object v0, Lcom/android/phone/SubscriptionID;->SUB_1:Lcom/android/phone/SubscriptionID;

    .line 210
    :cond_1
    return-object v0
.end method

.method private notifyNewCardAvailable()V
    .locals 3

    .prologue
    .line 143
    const-string v0, "SetSubscription"

    const-string v1, "notifyNewCardAvailable()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c02d5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02d6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/phone/SetSubscription$2;

    invoke-direct {v2, p0}, Lcom/android/phone/SetSubscription$2;-><init>(Lcom/android/phone/SetSubscription;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/phone/SetSubscription$1;

    invoke-direct {v1, p0}, Lcom/android/phone/SetSubscription$1;-><init>(Lcom/android/phone/SetSubscription;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 161
    return-void
.end method

.method private populateList()V
    .locals 22

    .prologue
    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/SetSubscription;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    const-string v20, "subscr_parent"

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceScreen;

    .line 216
    .local v14, prefParent:Landroid/preference/PreferenceScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/SetSubscription;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 217
    .local v6, display:Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v18

    .line 218
    .local v18, width:I
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    .line 220
    .local v17, subGroupTitle:[I
    const-string v19, "SetSubscription"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "populateList:  mCardSubscrInfo.length = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v10, 0x0

    .line 224
    .local v10, k:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-object v3, v0

    .local v3, arr$:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    array-length v11, v3

    .local v11, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    move v9, v8

    .end local v3           #arr$:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    .end local v8           #i$:I
    .end local v11           #len$:I
    .local v9, i$:I
    :goto_0
    if-ge v9, v11, :cond_2

    aget-object v5, v3, v9

    .line 225
    .local v5, cardSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->getLength()I

    move-result v19

    if-lez v19, :cond_1

    .line 226
    const/4 v7, 0x0

    .line 229
    .local v7, i:I
    new-instance v16, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 230
    .local v16, subGroup:Landroid/preference/PreferenceCategory;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "sub_group_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 231
    aget v19, v17, v10

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 232
    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 235
    iget-object v4, v5, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    .local v4, arr$:[Lcom/android/internal/telephony/ProxyManager$Subscription;
    array-length v12, v4

    .local v12, len$:I
    const/4 v8, 0x0

    .end local v9           #i$:I
    .restart local v8       #i$:I
    :goto_1
    if-ge v8, v12, :cond_1

    aget-object v15, v4, v8

    .line 236
    .local v15, sub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    if-eqz v15, :cond_0

    move-object v0, v15

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 237
    const-string v19, "SetSubscription"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "populateList:  mCardSubscrInfo["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "].subscription["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v13, Lcom/android/phone/SubscriptionCheckBoxPreference;

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/phone/SubscriptionCheckBoxPreference;-><init>(Landroid/content/Context;I)V

    .line 241
    .local v13, newCheckBox:Lcom/android/phone/SubscriptionCheckBoxPreference;
    move-object v0, v15

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/phone/SubscriptionCheckBoxPreference;->setTitleText(Ljava/lang/String;)V

    .line 243
    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "slot"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " index"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/phone/SubscriptionCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/SetSubscription;->mCheckBoxListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v19, v0

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/phone/SubscriptionCheckBoxPreference;->setOnSubPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 245
    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 247
    .end local v13           #newCheckBox:Lcom/android/phone/SubscriptionCheckBoxPreference;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 235
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 250
    .end local v4           #arr$:[Lcom/android/internal/telephony/ProxyManager$Subscription;
    .end local v7           #i:I
    .end local v8           #i$:I
    .end local v12           #len$:I
    .end local v15           #sub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    .end local v16           #subGroup:Landroid/preference/PreferenceCategory;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 224
    add-int/lit8 v8, v9, 0x1

    .restart local v8       #i$:I
    move v9, v8

    .end local v8           #i$:I
    .restart local v9       #i$:I
    goto/16 :goto_0

    .line 252
    .end local v5           #cardSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    :cond_2
    return-void

    .line 218
    :array_0
    .array-data 0x4
        0xbet 0x2t 0xct 0x7ft
        0xbft 0x2t 0xct 0x7ft
    .end array-data
.end method

.method private setSubscription()V
    .locals 15

    .prologue
    .line 316
    const-string v11, "SetSubscription"

    const-string v12, "setSubscription"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v3, 0x0

    .line 319
    .local v3, numSubSelected:I
    const/4 v0, 0x0

    .line 320
    .local v0, deactRequiredCount:I
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/phone/SetSubscription;->subErr:Z

    .line 322
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v11, p0, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    array-length v11, v11

    if-ge v1, v11, :cond_1

    .line 323
    iget-object v11, p0, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v11, v11, v1

    if-eqz v11, :cond_0

    .line 324
    add-int/lit8 v3, v3, 0x1

    .line 322
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    :cond_1
    const-string v11, "SetSubscription"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setSubscription: numSubSelected = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    if-nez v3, :cond_2

    .line 332
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0c02c6

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    .line 335
    .local v10, toast:Landroid/widget/Toast;
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 409
    .end local v10           #toast:Landroid/widget/Toast;
    :goto_1
    return-void

    .line 337
    :cond_2
    const/4 v1, 0x0

    :goto_2
    const/4 v11, 0x2

    if-ge v1, v11, :cond_9

    .line 338
    iget-object v11, p0, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v11, v11, v1

    if-nez v11, :cond_4

    .line 339
    const-string v11, "SetSubscription"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setSubscription: Sub "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not selected. Setting 99999"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v11, p0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v11, v11, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v11, v11, v1

    const v12, 0x1869f

    iput v12, v11, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    .line 341
    iget-object v11, p0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v11, v11, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v11, v11, v1

    const v12, 0x1869f

    iput v12, v11, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    .line 342
    iget-object v11, p0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v11, v11, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v11, v11, v1

    const v12, 0x1869f

    iput v12, v11, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    .line 343
    iget-object v11, p0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v11, v11, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v11, v11, v1

    iput v1, v11, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    .line 344
    iget-object v11, p0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v11, v11, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v11, v11, v1

    const/4 v12, 0x0

    iput v12, v11, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    .line 346
    iget-object v11, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v11, v11, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v11, v11, v1

    iget v11, v11, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    .line 347
    add-int/lit8 v0, v0, 0x1

    .line 337
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 352
    :cond_4
    iget-object v11, p0, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v11, v11, v1

    invoke-virtual {v11}, Lcom/android/phone/SubscriptionCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, key:Ljava/lang/String;
    const-string v11, "SetSubscription"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setSubscription: key = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-string v11, " "

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 355
    .local v7, splitKey:[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v11, v7, v11

    const/4 v12, 0x0

    aget-object v12, v7, v12

    const-string v13, "slot"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, 0x4

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 356
    .local v5, sSlotId:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 357
    .local v6, slotId:I
    const/4 v11, 0x1

    aget-object v11, v7, v11

    const/4 v12, 0x1

    aget-object v12, v7, v12

    const-string v13, "index"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, 0x5

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 358
    .local v4, sIndexId:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 360
    .local v8, subIndex:I
    iget-object v11, p0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v11, v11, v6

    if-nez v11, :cond_5

    .line 361
    const-string v11, "SetSubscription"

    const-string v12, "setSubscription: mCardSubscrInfo is not in sync with ProxyManager"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v11, p0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v11, v11, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v11, v11, v1

    const v12, 0x1869f

    iput v12, v11, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    .line 363
    iget-object v11, p0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v11, v11, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v11, v11, v1

    const v12, 0x1869f

    iput v12, v11, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    .line 364
    iget-object v11, p0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v11, v11, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v11, v11, v1

    const v12, 0x1869f

    iput v12, v11, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    .line 365
    iget-object v11, p0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v11, v11, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v11, v11, v1

    iput v1, v11, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    .line 366
    iget-object v11, p0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v11, v11, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v11, v11, v1

    const/4 v12, 0x0

    iput v12, v11, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    .line 368
    iget-object v11, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v11, v11, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v11, v11, v1

    iget v11, v11, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 377
    :cond_5
    iget-object v11, p0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v11, v11, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v11, v11, v1

    iget-object v12, p0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v12, v12, v6

    iget-object v12, v12, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v12, v12, v8

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/ProxyManager$Subscription;->copyFrom(Lcom/android/internal/telephony/ProxyManager$Subscription;)Lcom/android/internal/telephony/ProxyManager$Subscription;

    .line 378
    iget-object v11, p0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v11, v11, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v11, v11, v1

    iput v1, v11, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    .line 379
    iget-object v11, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    if-eqz v11, :cond_8

    .line 382
    iget-object v11, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v11, v11, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v11, v11, v1

    iget v9, v11, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    .line 383
    .local v9, subStatus:I
    iget-object v11, p0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v11, v11, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v11, v11, v1

    iput v9, v11, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    .line 384
    const/4 v11, 0x2

    if-ne v9, v11, :cond_6

    iget-object v11, p0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v11, v11, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v11, v11, v1

    iget-object v12, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v12, v12, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v12, v12, v1

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/ProxyManager$Subscription;->equals(Lcom/android/internal/telephony/ProxyManager$Subscription;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 387
    :cond_6
    iget-object v11, p0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v11, v11, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v11, v11, v1

    const/4 v12, 0x1

    iput v12, v11, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    .line 390
    :cond_7
    iget-object v11, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v11, v11, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v11, v11, v1

    iget v11, v11, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    iget-object v11, p0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v11, v11, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v11, v11, v1

    iget v11, v11, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 395
    .end local v9           #subStatus:I
    :cond_8
    iget-object v11, p0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v11, v11, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v11, v11, v1

    const/4 v12, 0x1

    iput v12, v11, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    goto/16 :goto_3

    .line 400
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #sIndexId:Ljava/lang/String;
    .end local v5           #sSlotId:Ljava/lang/String;
    .end local v6           #slotId:I
    .end local v7           #splitKey:[Ljava/lang/String;
    .end local v8           #subIndex:I
    :cond_9
    const/4 v11, 0x2

    if-lt v0, v11, :cond_a

    .line 401
    invoke-direct {p0}, Lcom/android/phone/SetSubscription;->errorMutipleDeactivate()V

    goto/16 :goto_1

    .line 403
    :cond_a
    const/16 v11, 0x64

    invoke-virtual {p0, v11}, Lcom/android/phone/SetSubscription;->showDialog(I)V

    .line 404
    iget-object v11, p0, Lcom/android/phone/SetSubscription;->mProxyManager:Lcom/android/internal/telephony/ProxyManager;

    iget-object v12, p0, Lcom/android/phone/SetSubscription;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/internal/telephony/ProxyManager;->registerForSetSubscriptionCompleted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 406
    iget-object v11, p0, Lcom/android/phone/SetSubscription;->mProxyManager:Lcom/android/internal/telephony/ProxyManager;

    iget-object v12, p0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/ProxyManager;->setSubscription(Lcom/android/internal/telephony/ProxyManager$SubscriptionData;)V

    goto/16 :goto_1
.end method

.method private updateCheckBoxes()V
    .locals 12

    .prologue
    const/4 v10, 0x2

    const-string v11, "sub_group_"

    const-string v9, "SetSubscription"

    .line 164
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "subscr_parent"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    .line 166
    .local v5, prefParent:Landroid/preference/PreferenceScreen;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v7, p0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    array-length v7, v7

    if-ge v2, v7, :cond_1

    .line 167
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sub_group_"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 169
    .local v6, subGroup:Landroid/preference/PreferenceCategory;
    if-eqz v6, :cond_0

    .line 170
    invoke-virtual {v6}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    .line 171
    .local v1, count:I
    const-string v7, "SetSubscription"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateCheckBoxes count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 173
    invoke-virtual {v6, v3}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SubscriptionCheckBoxPreference;

    .line 175
    .local v0, checkBoxPref:Lcom/android/phone/SubscriptionCheckBoxPreference;
    invoke-virtual {v0}, Lcom/android/phone/SubscriptionCheckBoxPreference;->markAllUnChecked()V

    .line 172
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 166
    .end local v0           #checkBoxPref:Lcom/android/phone/SubscriptionCheckBoxPreference;
    .end local v1           #count:I
    .end local v3           #j:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    .end local v6           #subGroup:Landroid/preference/PreferenceCategory;
    :cond_1
    iget-object v7, p0, Lcom/android/phone/SetSubscription;->mProxyManager:Lcom/android/internal/telephony/ProxyManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/ProxyManager;->getCurrentSubscriptions()Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    .line 181
    iget-object v7, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    if-eqz v7, :cond_4

    .line 182
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v10, :cond_3

    .line 183
    const-string v7, "SetSubscription"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateCheckBoxes: mCurrentSelSub.subscription["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v7, p0, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    const/4 v8, 0x0

    aput-object v8, v7, v2

    .line 186
    iget-object v7, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v7, v7, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    if-ne v7, v10, :cond_2

    .line 187
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "slot"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v8, v8, v2

    iget v8, v8, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " index"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/ProxyManager$Subscription;->getAppIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, key:Ljava/lang/String;
    const-string v7, "SetSubscription"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateCheckBoxes: key = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sub_group_"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v8, v8, v2

    iget v8, v8, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 194
    .restart local v6       #subGroup:Landroid/preference/PreferenceCategory;
    if-eqz v6, :cond_2

    .line 195
    invoke-virtual {v6, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SubscriptionCheckBoxPreference;

    .line 197
    .restart local v0       #checkBoxPref:Lcom/android/phone/SubscriptionCheckBoxPreference;
    invoke-direct {p0, v2}, Lcom/android/phone/SetSubscription;->mapSub(I)Lcom/android/phone/SubscriptionID;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/phone/SubscriptionCheckBoxPreference;->markChecked(Lcom/android/phone/SubscriptionID;)V

    .line 198
    iget-object v7, p0, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aput-object v0, v7, v2

    .line 182
    .end local v0           #checkBoxPref:Lcom/android/phone/SubscriptionCheckBoxPreference;
    .end local v4           #key:Ljava/lang/String;
    .end local v6           #subGroup:Landroid/preference/PreferenceCategory;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 202
    :cond_3
    iget-object v7, p0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v8, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->copyFrom(Lcom/android/internal/telephony/ProxyManager$SubscriptionData;)Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    .line 204
    :cond_4
    return-void
.end method


# virtual methods
.method displayAlertDialog([Ljava/lang/String;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 534
    const/4 v4, 0x2

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    .line 535
    .local v2, resSubId:[I
    const-string v0, ""

    .line 536
    .local v0, dispMsg:Ljava/lang/String;
    const v3, 0x7f0c02cb

    .line 538
    .local v3, title:I
    aget-object v4, p1, v6

    if-eqz v4, :cond_0

    aget-object v4, p1, v6

    invoke-direct {p0, v4}, Lcom/android/phone/SetSubscription;->isFailed(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 539
    iput-boolean v5, p0, Lcom/android/phone/SetSubscription;->subErr:Z

    .line 541
    :cond_0
    aget-object v4, p1, v5

    if-eqz v4, :cond_1

    aget-object v4, p1, v5

    invoke-direct {p0, v4}, Lcom/android/phone/SetSubscription;->isFailed(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 542
    iput-boolean v5, p0, Lcom/android/phone/SetSubscription;->subErr:Z

    .line 545
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_3

    .line 546
    aget-object v4, p1, v1

    if-eqz v4, :cond_2

    .line 547
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    aget v6, v2, v1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v1

    invoke-virtual {p0, v5}, Lcom/android/phone/SetSubscription;->setSubscriptionStatusToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 545
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 552
    :cond_3
    iget-boolean v4, p0, Lcom/android/phone/SetSubscription;->subErr:Z

    if-nez v4, :cond_4

    .line 553
    const v3, 0x7f0c02ca

    .line 556
    :cond_4
    const-string v4, "SetSubscription"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "displayAlertDialog:  dispMsg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040013

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 563
    return-void

    .line 534
    nop

    :array_0
    .array-data 0x4
        0xcct 0x2t 0xct 0x7ft
        0xcdt 0x2t 0xct 0x7ft
    .end array-data
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/android/phone/SetSubscription;->subErr:Z

    if-nez v0, :cond_0

    .line 580
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->finish()V

    .line 582
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/SetSubscription;->updateCheckBoxes()V

    .line 583
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/phone/SetSubscription;->mOkButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 309
    invoke-direct {p0}, Lcom/android/phone/SetSubscription;->setSubscription()V

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SetSubscription;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x4b

    const/4 v10, 0x2

    const/4 v9, -0x2

    const-string v11, "SetSubscription"

    .line 78
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "NOTIFY_NEW_CARD_AVAILABLE"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 79
    .local v1, newCardNotify:Z
    if-nez v1, :cond_0

    .line 80
    const v6, 0x1030005

    invoke-virtual {p0, v6}, Lcom/android/phone/SetSubscription;->setTheme(I)V

    .line 82
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-static {}, Lcom/android/internal/telephony/ProxyManager;->getInstance()Lcom/android/internal/telephony/ProxyManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/SetSubscription;->mProxyManager:Lcom/android/internal/telephony/ProxyManager;

    .line 86
    if-eqz v1, :cond_2

    .line 87
    const-string v6, "SetSubscription"

    const-string v6, "onCreate: Notify new cards are available!!!!"

    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-direct {p0}, Lcom/android/phone/SetSubscription;->notifyNewCardAvailable()V

    .line 134
    :cond_1
    :goto_0
    return-void

    .line 91
    :cond_2
    iget-object v6, p0, Lcom/android/phone/SetSubscription;->mProxyManager:Lcom/android/internal/telephony/ProxyManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/ProxyManager;->getCardSubscriptions()[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    .line 93
    const v6, 0x7f050019

    invoke-virtual {p0, v6}, Lcom/android/phone/SetSubscription;->addPreferencesFromResource(I)V

    .line 94
    const v6, 0x7f030021

    invoke-virtual {p0, v6}, Lcom/android/phone/SetSubscription;->setContentView(I)V

    .line 96
    const v6, 0x7f0700c5

    invoke-virtual {p0, v6}, Lcom/android/phone/SetSubscription;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/phone/SetSubscription;->mOkButton:Landroid/widget/TextView;

    .line 97
    iget-object v6, p0, Lcom/android/phone/SetSubscription;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v6, 0x7f0700c6

    invoke-virtual {p0, v6}, Lcom/android/phone/SetSubscription;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/phone/SetSubscription;->mCancelButton:Landroid/widget/TextView;

    .line 99
    iget-object v6, p0, Lcom/android/phone/SetSubscription;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v6, 0x7f0700c3

    invoke-virtual {p0, v6}, Lcom/android/phone/SetSubscription;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 102
    .local v2, t1:Landroid/widget/TextView;
    const v6, 0x7f0700c4

    invoke-virtual {p0, v6}, Lcom/android/phone/SetSubscription;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 103
    .local v3, t2:Landroid/widget/TextView;
    const v6, 0x7f0700c2

    invoke-virtual {p0, v6}, Lcom/android/phone/SetSubscription;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 106
    .local v4, t3:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 107
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 108
    .local v5, width:I
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v12, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v12, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x96

    sub-int v7, v5, v7

    invoke-direct {v6, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    new-array v6, v10, [Lcom/android/phone/SubscriptionCheckBoxPreference;

    iput-object v6, p0, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    .line 116
    iget-object v6, p0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    if-eqz v6, :cond_3

    .line 117
    invoke-direct {p0}, Lcom/android/phone/SetSubscription;->populateList()V

    .line 120
    new-instance v6, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    invoke-direct {v6, v10}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;-><init>(I)V

    iput-object v6, p0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    .line 122
    invoke-direct {p0}, Lcom/android/phone/SetSubscription;->updateCheckBoxes()V

    .line 127
    :goto_1
    iget-object v6, p0, Lcom/android/phone/SetSubscription;->mProxyManager:Lcom/android/internal/telephony/ProxyManager;

    iget-object v7, p0, Lcom/android/phone/SetSubscription;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v10, v13}, Lcom/android/internal/telephony/ProxyManager;->registerForSimStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 128
    iget-object v6, p0, Lcom/android/phone/SetSubscription;->mProxyManager:Lcom/android/internal/telephony/ProxyManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/ProxyManager;->isSetSubscriptionInProgress()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 129
    const-string v6, "SetSubscription"

    const-string v6, "onCreate: SetSubscription is in progress when started this activity"

    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/16 v6, 0x64

    invoke-virtual {p0, v6}, Lcom/android/phone/SetSubscription;->showDialog(I)V

    .line 131
    iget-object v6, p0, Lcom/android/phone/SetSubscription;->mProxyManager:Lcom/android/internal/telephony/ProxyManager;

    iget-object v7, p0, Lcom/android/phone/SetSubscription;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8, v13}, Lcom/android/internal/telephony/ProxyManager;->registerForSetSubscriptionCompleted(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 124
    :cond_3
    const-string v6, "SetSubscription"

    const-string v6, "onCreate: Card info not available: mCardSubscrInfo == NULL"

    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 480
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 481
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 483
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 484
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 485
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    move-object v1, v0

    .line 489
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 138
    iget-object v0, p0, Lcom/android/phone/SetSubscription;->mProxyManager:Lcom/android/internal/telephony/ProxyManager;

    iget-object v1, p0, Lcom/android/phone/SetSubscription;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ProxyManager;->unRegisterForSimStateChanged(Landroid/os/Handler;)V

    .line 139
    iget-object v0, p0, Lcom/android/phone/SetSubscription;->mProxyManager:Lcom/android/internal/telephony/ProxyManager;

    iget-object v1, p0, Lcom/android/phone/SetSubscription;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ProxyManager;->unRegisterForSetSubscriptionCompleted(Landroid/os/Handler;)V

    .line 140
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/android/phone/SetSubscription;->subErr:Z

    if-nez v0, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->finish()V

    .line 572
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 494
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 499
    :cond_0
    return-void
.end method

.method setSubscriptionStatusToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "status"

    .prologue
    .line 514
    const/4 v0, 0x0

    .line 515
    .local v0, retStr:Ljava/lang/String;
    const-string v1, "ACTIVATE SUCCESS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 516
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 530
    :cond_0
    :goto_0
    return-object v0

    .line 517
    :cond_1
    const-string v1, "DEACTIVATE SUCCESS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 518
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 519
    :cond_2
    const-string v1, "DEACTIVATE FAILED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 520
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 521
    :cond_3
    const-string v1, "DEACTIVATE NOT SUPPORTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 522
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 523
    :cond_4
    const-string v1, "ACTIVATE FAILED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 524
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 525
    :cond_5
    const-string v1, "ACTIVATE NOT SUPPORTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 526
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 527
    :cond_6
    const-string v1, "NO CHANGE IN SUBSCRIPTION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
