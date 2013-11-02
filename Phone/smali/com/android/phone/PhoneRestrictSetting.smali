.class public Lcom/android/phone/PhoneRestrictSetting;
.super Landroid/preference/PreferenceActivity;
.source "PhoneRestrictSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;,
        Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;,
        Lcom/android/phone/PhoneRestrictSetting$GroupControl;
    }
.end annotation


# static fields
.field private static final CB_EXECUTE_SUCCESS:I = 0x73

.field static final CB_FACILITY_BAIC:Ljava/lang/String; = "AI"

.field static final CB_FACILITY_BAICr:Ljava/lang/String; = "IR"

.field static final CB_FACILITY_BAOC:Ljava/lang/String; = "AO"

.field static final CB_FACILITY_BAOIC:Ljava/lang/String; = "OI"

.field static final CB_FACILITY_BAOICxH:Ljava/lang/String; = "OX"

.field static final CB_FACILITY_BA_ALL:Ljava/lang/String; = "AB"

.field private static final CB_PWD_ERR:I = 0x77

.field private static final CB_PWD_LOCK:I = 0x78

.field private static final CB_RETRY:I = 0x72

.field private static final CB_SET_FACILITY:I = 0x74

.field private static final CB_SET_NEWPASS:I = 0x76

.field private static final CB_SET_OLDPASS:I = 0x75

.field private static final CB_WAIT:I = 0x71

.field private static final KEY_AllIncoming:Ljava/lang/String; = "barry_allincoming"

.field private static final KEY_AllOutgoing:Ljava/lang/String; = "barry_alloutgoing"

.field private static final KEY_CancelAll:Ljava/lang/String; = "barry_cancelall"

.field private static final KEY_ChangePassword:Ljava/lang/String; = "barry_changepassword"

.field private static final KEY_IncomeRoaming:Ljava/lang/String; = "barry_incomeroaming"

.field private static final KEY_OutgoingInter:Ljava/lang/String; = "barry_outgoinginter"

.field private static final KEY_OutgoingRoaming:Ljava/lang/String; = "barry_outgoingroaming"

.field private static final PASSWORD_REQUEST_CODE:I = 0x64

.field static final TAG:Ljava/lang/String; = "hubo_PhoneRestrictSetting"

.field private static final negativePasswordCheck:I = 0x26

.field private static final numberOfPW_AttemptsViolation:I = 0x2b

.field private static final passwordRegistrationFailure:I = 0x25


# instance fields
.field private mChangePassword:Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;

.field private mClickedUnit:Lcom/android/phone/FacilityLockCmd;

.field private mCmdRemaining:Z

.field private mConnector:Lcom/android/phone/RilConnector;

.field private mDeactiveAll:Lcom/android/phone/FacilityLockCmd;

.field private mHasExceptions:Z

.field protected mIsForeground:Z

.field private mIsQuerrying:Z

.field private mIsShowingDialog:Z

.field private mNetworkPassWord:Landroid/widget/EditText;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mQuerryUnitIndex:I

.field private mSubscription:I

.field private mUnits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 84
    iput-boolean v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mHasExceptions:Z

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mIsQuerrying:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mIsForeground:Z

    .line 91
    iput-boolean v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mCmdRemaining:Z

    .line 92
    iput v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mQuerryUnitIndex:I

    .line 97
    iput-boolean v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mIsShowingDialog:Z

    .line 106
    new-instance v0, Lcom/android/phone/PhoneRestrictSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneRestrictSetting$1;-><init>(Lcom/android/phone/PhoneRestrictSetting;)V

    iput-object v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mConnector:Lcom/android/phone/RilConnector;

    .line 311
    return-void
.end method

.method private ShowErrorMsg(Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 2
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 574
    const-string v0, "hubo_PhoneRestrictSetting"

    const-string v1, "ShowErrorMsg...to do"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PhoneRestrictSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mIsQuerrying:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/PhoneRestrictSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/phone/PhoneRestrictSetting;->mIsQuerrying:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/PhoneRestrictSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mCmdRemaining:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/PhoneRestrictSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/phone/PhoneRestrictSetting;->mCmdRemaining:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/PhoneRestrictSetting;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mUnits:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/PhoneRestrictSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/phone/PhoneRestrictSetting;->mHasExceptions:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/PhoneRestrictSetting;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mNetworkPassWord:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/PhoneRestrictSetting;)Lcom/android/phone/FacilityLockCmd;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mClickedUnit:Lcom/android/phone/FacilityLockCmd;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/PhoneRestrictSetting;)Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mChangePassword:Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;

    return-object v0
.end method


# virtual methods
.method AddBarryUnit(Lcom/android/phone/FacilityLockCmd;ZLcom/android/phone/PhoneRestrictSetting$GroupControl;)V
    .locals 3
    .parameter "unit"
    .parameter "isCheckBox"
    .parameter "group"

    .prologue
    .line 453
    iget-object v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mConnector:Lcom/android/phone/RilConnector;

    invoke-virtual {v1, p1}, Lcom/android/phone/RilConnector;->AddRilUnit(Lcom/android/phone/RilUnit;)V

    .line 454
    if-eqz p2, :cond_0

    .line 456
    iget-object v2, p0, Lcom/android/phone/PhoneRestrictSetting;->mUnits:Ljava/util/ArrayList;

    move-object v0, p1

    check-cast v0, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_0
    if-eqz p3, :cond_1

    .line 461
    check-cast p1, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;

    .end local p1
    invoke-virtual {p3, p1}, Lcom/android/phone/PhoneRestrictSetting$GroupControl;->AddUnit(Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;)V

    .line 463
    :cond_1
    return-void
.end method

.method CreateExecuteSuccessDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 689
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c02ef

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02f7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02f4

    new-instance v2, Lcom/android/phone/PhoneRestrictSetting$4;

    invoke-direct {v2, p0}, Lcom/android/phone/PhoneRestrictSetting$4;-><init>(Lcom/android/phone/PhoneRestrictSetting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method CreatePwdErrDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 718
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c02f6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0319

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02f4

    new-instance v2, Lcom/android/phone/PhoneRestrictSetting$6;

    invoke-direct {v2, p0}, Lcom/android/phone/PhoneRestrictSetting$6;-><init>(Lcom/android/phone/PhoneRestrictSetting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method CreatePwdLockDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 732
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c02f6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c031a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02f4

    new-instance v2, Lcom/android/phone/PhoneRestrictSetting$7;

    invoke-direct {v2, p0}, Lcom/android/phone/PhoneRestrictSetting$7;-><init>(Lcom/android/phone/PhoneRestrictSetting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method CreateRetryDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 703
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c02f6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02f8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02f4

    new-instance v2, Lcom/android/phone/PhoneRestrictSetting$5;

    invoke-direct {v2, p0}, Lcom/android/phone/PhoneRestrictSetting$5;-><init>(Lcom/android/phone/PhoneRestrictSetting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method CreateSetDialog(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 3
    .parameter "messageId"
    .parameter "reponsor"

    .prologue
    .line 671
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c02ef

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mNetworkPassWord:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02f4

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02f5

    new-instance v2, Lcom/android/phone/PhoneRestrictSetting$3;

    invoke-direct {v2, p0}, Lcom/android/phone/PhoneRestrictSetting$3;-><init>(Lcom/android/phone/PhoneRestrictSetting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method CreateWaitDialog()Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 661
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 662
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f0c02ed

    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneRestrictSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 663
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 664
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 665
    const v1, 0x7f0c02ee

    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneRestrictSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 666
    return-object v0
.end method

.method DismissMyDialog(I)V
    .locals 4
    .parameter "code"

    .prologue
    .line 518
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneRestrictSetting;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :goto_0
    return-void

    .line 520
    :catch_0
    move-exception v0

    .line 522
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "hubo_PhoneRestrictSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismissDialog Failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method GetSetNewPasswordListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 776
    new-instance v0, Lcom/android/phone/PhoneRestrictSetting$10;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneRestrictSetting$10;-><init>(Lcom/android/phone/PhoneRestrictSetting;)V

    return-object v0
.end method

.method GetSetOldPasswordListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 763
    new-instance v0, Lcom/android/phone/PhoneRestrictSetting$9;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneRestrictSetting$9;-><init>(Lcom/android/phone/PhoneRestrictSetting;)V

    return-object v0
.end method

.method GetSetPasswordListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 747
    new-instance v0, Lcom/android/phone/PhoneRestrictSetting$8;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneRestrictSetting$8;-><init>(Lcom/android/phone/PhoneRestrictSetting;)V

    return-object v0
.end method

.method GetUnitByKeyStr(Ljava/lang/String;)Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;
    .locals 5
    .parameter "key"

    .prologue
    .line 436
    iget-object v3, p0, Lcom/android/phone/PhoneRestrictSetting;->mUnits:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 438
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 440
    iget-object v3, p0, Lcom/android/phone/PhoneRestrictSetting;->mUnits:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;

    .line 441
    .local v2, unit:Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;
    invoke-virtual {v2}, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->GetKeyStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 448
    .end local v2           #unit:Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;
    :goto_1
    return-object v3

    .line 438
    .restart local v2       #unit:Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    .end local v2           #unit:Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;
    :cond_1
    const-string v3, "hubo_PhoneRestrictSetting"

    const-string v4, "GetUnitByKeyStr Failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/4 v3, 0x0

    goto :goto_1
.end method

.method InitBarryUnits()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const-string v9, "1234"

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mUnits:Ljava/util/ArrayList;

    .line 496
    new-instance v7, Lcom/android/phone/PhoneRestrictSetting$GroupControl;

    invoke-direct {v7, p0}, Lcom/android/phone/PhoneRestrictSetting$GroupControl;-><init>(Lcom/android/phone/PhoneRestrictSetting;)V

    .line 497
    .local v7, outGroup:Lcom/android/phone/PhoneRestrictSetting$GroupControl;
    new-instance v6, Lcom/android/phone/PhoneRestrictSetting$GroupControl;

    invoke-direct {v6, p0}, Lcom/android/phone/PhoneRestrictSetting$GroupControl;-><init>(Lcom/android/phone/PhoneRestrictSetting;)V

    .line 499
    .local v6, inGroup:Lcom/android/phone/PhoneRestrictSetting$GroupControl;
    new-instance v0, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;

    iget-object v2, p0, Lcom/android/phone/PhoneRestrictSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v3, "barry_alloutgoing"

    const-string v4, "AO"

    const-string v5, "55"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;-><init>(Lcom/android/phone/PhoneRestrictSetting;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v8, v7}, Lcom/android/phone/PhoneRestrictSetting;->AddBarryUnit(Lcom/android/phone/FacilityLockCmd;ZLcom/android/phone/PhoneRestrictSetting$GroupControl;)V

    .line 500
    new-instance v0, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;

    iget-object v2, p0, Lcom/android/phone/PhoneRestrictSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v3, "barry_outgoinginter"

    const-string v4, "OI"

    const-string v5, "6754"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;-><init>(Lcom/android/phone/PhoneRestrictSetting;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v8, v7}, Lcom/android/phone/PhoneRestrictSetting;->AddBarryUnit(Lcom/android/phone/FacilityLockCmd;ZLcom/android/phone/PhoneRestrictSetting$GroupControl;)V

    .line 501
    new-instance v0, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;

    iget-object v2, p0, Lcom/android/phone/PhoneRestrictSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v3, "barry_outgoingroaming"

    const-string v4, "OX"

    const-string v5, "2312"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;-><init>(Lcom/android/phone/PhoneRestrictSetting;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v8, v7}, Lcom/android/phone/PhoneRestrictSetting;->AddBarryUnit(Lcom/android/phone/FacilityLockCmd;ZLcom/android/phone/PhoneRestrictSetting$GroupControl;)V

    .line 502
    new-instance v0, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;

    iget-object v2, p0, Lcom/android/phone/PhoneRestrictSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v3, "barry_allincoming"

    const-string v4, "AI"

    const-string v1, "1234"

    move-object v1, p0

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;-><init>(Lcom/android/phone/PhoneRestrictSetting;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v8, v6}, Lcom/android/phone/PhoneRestrictSetting;->AddBarryUnit(Lcom/android/phone/FacilityLockCmd;ZLcom/android/phone/PhoneRestrictSetting$GroupControl;)V

    .line 503
    new-instance v0, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;

    iget-object v2, p0, Lcom/android/phone/PhoneRestrictSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v3, "barry_incomeroaming"

    const-string v4, "IR"

    const-string v1, "1234"

    move-object v1, p0

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;-><init>(Lcom/android/phone/PhoneRestrictSetting;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v8, v6}, Lcom/android/phone/PhoneRestrictSetting;->AddBarryUnit(Lcom/android/phone/FacilityLockCmd;ZLcom/android/phone/PhoneRestrictSetting$GroupControl;)V

    .line 504
    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting;->InitDeactiveAll()V

    .line 505
    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting;->InitChangePassword()V

    .line 506
    return-void
.end method

.method InitChangePassword()V
    .locals 3

    .prologue
    .line 489
    new-instance v0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;

    iget-object v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;-><init>(Lcom/android/phone/PhoneRestrictSetting;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mChangePassword:Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;

    .line 490
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mChangePassword:Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/PhoneRestrictSetting;->AddBarryUnit(Lcom/android/phone/FacilityLockCmd;ZLcom/android/phone/PhoneRestrictSetting$GroupControl;)V

    .line 491
    return-void
.end method

.method InitDeactiveAll()V
    .locals 4

    .prologue
    .line 467
    new-instance v0, Lcom/android/phone/PhoneRestrictSetting$2;

    iget-object v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v2, "AB"

    const-string v3, ""

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/phone/PhoneRestrictSetting$2;-><init>(Lcom/android/phone/PhoneRestrictSetting;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mDeactiveAll:Lcom/android/phone/FacilityLockCmd;

    .line 483
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mDeactiveAll:Lcom/android/phone/FacilityLockCmd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/FacilityLockCmd;->SetStatus(Z)V

    .line 484
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mDeactiveAll:Lcom/android/phone/FacilityLockCmd;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/PhoneRestrictSetting;->AddBarryUnit(Lcom/android/phone/FacilityLockCmd;ZLcom/android/phone/PhoneRestrictSetting$GroupControl;)V

    .line 485
    return-void
.end method

.method IsQuerryOver()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 430
    iget-boolean v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mIsQuerrying:Z

    if-nez v0, :cond_0

    move v0, v2

    .line 431
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mQuerryUnitIndex:I

    iget-object v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mUnits:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method OnExecuteException()V
    .locals 1

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mHasExceptions:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mIsForeground:Z

    if-eqz v0, :cond_0

    .line 405
    const/16 v0, 0x72

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneRestrictSetting;->ShowMyDialog(I)V

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mHasExceptions:Z

    .line 408
    :cond_0
    return-void
.end method

.method OnPasswordError()V
    .locals 1

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mHasExceptions:Z

    if-nez v0, :cond_0

    .line 415
    const/16 v0, 0x77

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneRestrictSetting;->ShowMyDialog(I)V

    .line 417
    :cond_0
    return-void
.end method

.method OnPasswordLocked()V
    .locals 1

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mHasExceptions:Z

    if-nez v0, :cond_0

    .line 423
    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneRestrictSetting;->ShowMyDialog(I)V

    .line 425
    :cond_0
    return-void
.end method

.method QuerryRecord()V
    .locals 2

    .prologue
    .line 541
    iget v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mQuerryUnitIndex:I

    iget-object v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mUnits:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 544
    :goto_0
    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mUnits:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mQuerryUnitIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;

    invoke-virtual {v0}, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->Get()Z

    .line 543
    iget v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mQuerryUnitIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mQuerryUnitIndex:I

    goto :goto_0
.end method

.method ShowMyDialog(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 510
    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneRestrictSetting;->showDialog(I)V

    .line 511
    return-void
.end method

.method StartQuerry()V
    .locals 2

    .prologue
    const-string v1, "hubo_PhoneRestrictSetting"

    .line 528
    const-string v0, "hubo_PhoneRestrictSetting"

    const-string v0, "StartQuerry"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-boolean v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mIsQuerrying:Z

    if-nez v0, :cond_0

    .line 531
    const-string v0, "hubo_PhoneRestrictSetting"

    const-string v0, "Second Enter here"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :goto_0
    return-void

    .line 535
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting;->QuerryRecord()V

    .line 536
    const/16 v0, 0x71

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneRestrictSetting;->ShowMyDialog(I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 580
    const-string v1, "hubo_PhoneRestrictSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 583
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    move-object v0, v1

    .line 584
    .local v0, extras:Landroid/os/Bundle;
    :goto_1
    iget-object v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mChangePassword:Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;

    const-string v2, "old"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->SetOldPassword(Ljava/lang/String;)V

    .line 585
    iget-object v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mChangePassword:Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;

    const-string v2, "new"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->SetNewPassword(Ljava/lang/String;)V

    .line 586
    iget-object v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mChangePassword:Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;

    invoke-virtual {v1}, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->Set()Z

    .line 587
    const/16 v1, 0x71

    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneRestrictSetting;->ShowMyDialog(I)V

    goto :goto_0

    .line 583
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_2
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "hubo_PhoneRestrictSetting"

    .line 594
    const-string v2, "hubo_PhoneRestrictSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 596
    const v2, 0x7f050004

    invoke-virtual {p0, v2}, Lcom/android/phone/PhoneRestrictSetting;->addPreferencesFromResource(I)V

    .line 600
    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "SUBSCRIPTION_ID"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/PhoneRestrictSetting;->mSubscription:I

    .line 601
    const-string v2, "hubo_PhoneRestrictSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSubscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/PhoneRestrictSetting;->mSubscription:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget v2, p0, Lcom/android/phone/PhoneRestrictSetting;->mSubscription:I

    invoke-static {v2}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/PhoneRestrictSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 606
    iget-object v2, p0, Lcom/android/phone/PhoneRestrictSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/PhoneRestrictSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 608
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 631
    :goto_0
    iput-boolean v4, p0, Lcom/android/phone/PhoneRestrictSetting;->mIsForeground:Z

    .line 633
    return-void

    .line 612
    :cond_1
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/PhoneRestrictSetting;->mNetworkPassWord:Landroid/widget/EditText;

    .line 613
    iget-object v2, p0, Lcom/android/phone/PhoneRestrictSetting;->mNetworkPassWord:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 617
    iget-object v2, p0, Lcom/android/phone/PhoneRestrictSetting;->mNetworkPassWord:Landroid/widget/EditText;

    invoke-static {v4}, Landroid/text/method/DigitsKeyListener;->getInstance(Z)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 621
    const/16 v0, 0x8

    .line 622
    .local v0, MAX_LENGTH:I
    new-array v1, v4, [Landroid/text/InputFilter;

    .line 623
    .local v1, fArray:[Landroid/text/InputFilter;
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v5

    .line 624
    iget-object v2, p0, Lcom/android/phone/PhoneRestrictSetting;->mNetworkPassWord:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 627
    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting;->InitBarryUnits()V

    .line 628
    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting;->StartQuerry()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 790
    const/16 v0, 0x71

    if-ne p1, v0, :cond_0

    .line 792
    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting;->CreateWaitDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 826
    :goto_0
    return-object v0

    .line 794
    :cond_0
    const/16 v0, 0x74

    if-ne p1, v0, :cond_1

    .line 796
    const v0, 0x7f0c02f0

    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting;->GetSetPasswordListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/PhoneRestrictSetting;->CreateSetDialog(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 798
    :cond_1
    const/16 v0, 0x75

    if-ne p1, v0, :cond_2

    .line 800
    const v0, 0x7f0c02f1

    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting;->GetSetOldPasswordListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/PhoneRestrictSetting;->CreateSetDialog(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 802
    :cond_2
    const/16 v0, 0x76

    if-ne p1, v0, :cond_3

    .line 804
    const v0, 0x7f0c02f2

    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting;->GetSetNewPasswordListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/PhoneRestrictSetting;->CreateSetDialog(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 806
    :cond_3
    const/16 v0, 0x73

    if-ne p1, v0, :cond_4

    .line 808
    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting;->CreateExecuteSuccessDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 810
    :cond_4
    const/16 v0, 0x72

    if-ne p1, v0, :cond_5

    .line 812
    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting;->CreateRetryDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 815
    :cond_5
    const/16 v0, 0x77

    if-ne p1, v0, :cond_6

    .line 817
    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting;->CreatePwdErrDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 819
    :cond_6
    const/16 v0, 0x78

    if-ne p1, v0, :cond_7

    .line 821
    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting;->CreatePwdLockDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 826
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 653
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 654
    const-string v0, "hubo_PhoneRestrictSetting"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mIsForeground:Z

    .line 656
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 646
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 647
    const-string v0, "hubo_PhoneRestrictSetting"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    .line 548
    const-string v2, "barry_changepassword"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 550
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 551
    .local v0, intent:Landroid/content/Intent;
    const-class v2, Lcom/android/phone/GetPassword;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 552
    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2}, Lcom/android/phone/PhoneRestrictSetting;->startActivityForResult(Landroid/content/Intent;I)V

    move v2, v4

    .line 569
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    .line 555
    :cond_0
    const-string v2, "barry_cancelall"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 557
    iget-object v2, p0, Lcom/android/phone/PhoneRestrictSetting;->mDeactiveAll:Lcom/android/phone/FacilityLockCmd;

    iput-object v2, p0, Lcom/android/phone/PhoneRestrictSetting;->mClickedUnit:Lcom/android/phone/FacilityLockCmd;

    .line 566
    :goto_1
    iget-object v2, p0, Lcom/android/phone/PhoneRestrictSetting;->mClickedUnit:Lcom/android/phone/FacilityLockCmd;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    .line 561
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/PhoneRestrictSetting;->GetUnitByKeyStr(Ljava/lang/String;)Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;

    move-result-object v1

    .line 562
    .local v1, unit:Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;
    invoke-virtual {v1}, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->OnClick()V

    .line 563
    iput-object v1, p0, Lcom/android/phone/PhoneRestrictSetting;->mClickedUnit:Lcom/android/phone/FacilityLockCmd;

    goto :goto_1

    .line 567
    .end local v1           #unit:Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;
    :cond_2
    const/16 v2, 0x74

    invoke-virtual {p0, v2}, Lcom/android/phone/PhoneRestrictSetting;->ShowMyDialog(I)V

    move v2, v4

    .line 569
    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 638
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 639
    const-string v0, "hubo_PhoneRestrictSetting"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/PhoneRestrictSetting;->mIsQuerrying:Z

    .line 641
    return-void
.end method
