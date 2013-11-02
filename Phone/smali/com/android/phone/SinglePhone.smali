.class public Lcom/android/phone/SinglePhone;
.super Ljava/lang/Object;
.source "SinglePhone.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field static final DBG_LEVEL:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "SinglePhone"

.field private static final VDBG:Z


# instance fields
.field public mCdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

.field public mCdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

.field public mCdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

.field public mCdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

.field public mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

.field public mIsSimPinEnabled:Z

.field public mIsSimPukLocked:Z

.field public mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

.field public mPhone:Lcom/android/internal/telephony/Phone;

.field public mPhoneType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 48
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/phone/SinglePhone;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method constructor <init>(I)V
    .locals 4
    .parameter "subscription"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/phone/SinglePhone;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 62
    iput-object v2, p0, Lcom/android/phone/SinglePhone;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 70
    iput-object v2, p0, Lcom/android/phone/SinglePhone;->mCdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 71
    iput-object v2, p0, Lcom/android/phone/SinglePhone;->mCdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 72
    iput-object v2, p0, Lcom/android/phone/SinglePhone;->mCdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 73
    iput-object v2, p0, Lcom/android/phone/SinglePhone;->mCdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 79
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 80
    iget-object v1, p0, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    iput v1, p0, Lcom/android/phone/SinglePhone;->mPhoneType:I

    .line 82
    iget-object v1, p0, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 84
    .local v0, phoneIsCdma:Z
    :goto_0
    iget-object v1, p0, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/phone/SinglePhone;->initializeCdmaVariables()V

    .line 88
    :cond_0
    return-void

    .line 82
    .end local v0           #phoneIsCdma:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public initializeCdmaVariables()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 94
    new-instance v0, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v0}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/SinglePhone;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 95
    iget-object v0, p0, Lcom/android/phone/SinglePhone;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    .line 97
    iget-object v0, p0, Lcom/android/phone/SinglePhone;->mCdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;-><init>()V

    iput-object v0, p0, Lcom/android/phone/SinglePhone;->mCdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SinglePhone;->mCdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    if-nez v0, :cond_1

    .line 101
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;-><init>()V

    iput-object v0, p0, Lcom/android/phone/SinglePhone;->mCdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SinglePhone;->mCdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-nez v0, :cond_2

    .line 104
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/SinglePhone;->mCdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SinglePhone;->mCdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    if-nez v0, :cond_3

    .line 107
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/SinglePhone;->mCdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 110
    :cond_3
    return-void
.end method
