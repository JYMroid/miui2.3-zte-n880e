.class public final Lcom/android/internal/telephony/gsm/SIMRecords;
.super Lcom/android/internal/telephony/UiccApplicationRecords;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SIMRecords$1;,
        Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;
    }
.end annotation


# static fields
.field static final CFF_LINE1_MASK:I = 0xf

.field static final CFF_LINE1_RESET:I = 0xf0

.field static final CFF_UNCONDITIONAL_ACTIVE:I = 0xa

.field static final CFF_UNCONDITIONAL_DEACTIVE:I = 0x5

.field private static final CPHS_SST_MBN_ENABLED:I = 0x30

.field private static final CPHS_SST_MBN_MASK:I = 0x30

.field private static final DBG:Z = true

.field private static final EVENT_GET_AD_DONE:I = 0x9

.field private static final EVENT_GET_ALL_OPL_RECORDS_DONE:I = 0x22

.field private static final EVENT_GET_ALL_PNN_RECORDS_DONE:I = 0x23

.field private static final EVENT_GET_CFF_DONE:I = 0x18

.field private static final EVENT_GET_CFIS_DONE:I = 0x20

.field private static final EVENT_GET_CPHS_MAILBOX_DONE:I = 0xb

.field private static final EVENT_GET_CSP_CPHS_DONE:I = 0x21

.field private static final EVENT_GET_GID1_DONE:I = 0x1b

.field private static final EVENT_GET_ICCID_DONE:I = 0x4

.field private static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_INFO_CPHS_DONE:I = 0x1a

.field private static final EVENT_GET_MBDN_DONE:I = 0x6

.field private static final EVENT_GET_MBI_DONE:I = 0x5

.field private static final EVENT_GET_MSISDN_DONE:I = 0xa

.field private static final EVENT_GET_MWIS_DONE:I = 0x7

.field private static final EVENT_GET_PNN_DONE:I = 0xf

.field private static final EVENT_GET_SPDI_DONE:I = 0xd

.field private static final EVENT_GET_SPN:I = 0x24

.field private static final EVENT_GET_SPN_CPHS_DONE:I = 0x64

.field private static final EVENT_GET_SPN_DONE:I = 0xc

.field private static final EVENT_GET_SPN_SHORT_CPHS_DONE:I = 0x65

.field private static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE:I = 0x8

.field private static final EVENT_SET_CPHS_MAILBOX_DONE:I = 0x19

.field private static final EVENT_SET_CPHS_MWIS_DONE:I = 0x26

.field private static final EVENT_SET_MBDN_DONE:I = 0x14

.field private static final EVENT_SET_MSISDN_DONE:I = 0x1e

.field private static final EVENT_SET_MWIS_DONE:I = 0x25

.field private static final EVENT_SIM_REFRESH:I = 0x1f

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String; = null

.field static final SPN_RULE_SHOW_PLMN:I = 0x2

.field static final SPN_RULE_SHOW_SPN:I = 0x1

.field static final TAG_FULL_NETWORK_NAME:I = 0x43

.field static final TAG_SHORT_NETWORK_NAME:I = 0x45

.field static final TAG_SPDI_PLMN_LIST:I = 0x80


# instance fields
.field EfCfPresent:Z

.field callForwardingEnabled:Z

.field efCPHS_MWI:[B

.field efMWIS:[B

.field private mCphsInfo:[B

.field mCspPlmnEnabled:Z

.field mEfCff:[B

.field mEfCfis:[B

.field mEons:Lcom/android/internal/telephony/gsm/Eons;

.field mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

.field mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

.field pnnHomeName:Ljava/lang/String;

.field spdiNetworks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field spnDisplayCondition:I

.field private spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v0, 0x6b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "405025"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "405026"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "405027"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "405028"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "405029"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "405030"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "405031"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "405032"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "405033"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "405034"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "405035"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "405036"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "405037"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "405038"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "405039"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "405040"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "405041"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "405042"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "405043"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "405044"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "405045"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "405046"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "405047"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "405750"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "405751"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "405752"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "405753"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "405754"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "405755"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "405756"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "405799"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "405800"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "405801"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "405802"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "405803"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "405804"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "405805"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "405806"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "405807"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "405808"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "405809"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "405810"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "405811"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "405812"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "405813"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "405814"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "405815"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "405816"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "405817"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "405818"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "405819"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "405820"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "405821"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "405822"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "405823"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "405824"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "405825"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "405826"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "405827"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "405828"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "405829"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "405830"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "405831"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "405832"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "405833"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "405834"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "405835"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "405836"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "405837"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "405838"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "405839"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "405840"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "405841"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "405842"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "405843"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "405844"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "405845"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "405846"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "405847"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "405848"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "405849"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "405850"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "405851"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "405852"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "405853"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "405875"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "405876"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "405877"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "405878"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "405879"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "405880"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "405881"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "405882"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "405883"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "405884"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "405885"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "405886"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "405908"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "405909"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "405910"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "405911"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "405925"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "405926"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "405927"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "405928"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "405929"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "405932"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/UiccCardApplication;Lcom/android/internal/telephony/UiccRecords;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .parameter "parent"
    .parameter "ur"
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p3, p4, p2}, Lcom/android/internal/telephony/UiccApplicationRecords;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/UiccRecords;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->EfCfPresent:Z

    new-instance v0, Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    new-instance v0, Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    new-instance v0, Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SpnOverride;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    new-instance v0, Lcom/android/internal/telephony/gsm/Eons;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/Eons;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEons:Lcom/android/internal/telephony/gsm/Eons;

    iput-boolean v3, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsRequested:Z

    iput v3, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1f

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->resetRecords()V

    return-void
.end method

.method private fetchSimRecords()V
    .locals 8

    .prologue
    const/16 v5, 0x6fc5

    const/4 v4, 0x1

    const-string v7, "SIMRecords:fetchSimRecords "

    const-string v6, "GSM"

    iput-boolean v4, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsRequested:Z

    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIMRecords:fetchSimRecords "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Ljava/lang/String;Landroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x2fe2

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v1, 0x6f40

    const/16 v2, 0x6f4a

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fc9

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fad

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fca

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f11

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fcb

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f13

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    const/4 v0, 0x0

    invoke-direct {p0, v4, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fcd

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v5, v4, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fc6

    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x23

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f14

    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f18

    const/16 v2, 0x65

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f38

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f16

    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f15

    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIMRecords:fetchSimRecords "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getSpnFsm(ZLandroid/os/AsyncResult;)V
    .locals 7
    .parameter "start"
    .parameter "ar"

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->INIT:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    :cond_0
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$1;->$SwitchMap$com$android$internal$telephony$gsm$SIMRecords$Get_Spn_Fsm_State:[I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    :goto_0
    return-void

    :pswitch_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->spn:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v3, 0x6f46

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_3GPP:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto :goto_0

    :pswitch_1
    if-eqz p2, :cond_1

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v1, v0

    .local v1, data:[B
    aget-byte v2, v1, v5

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    array-length v2, v1

    sub-int/2addr v2, v4

    invoke-static {v1, v4, v2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->spn:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load EF_SPN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->spn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " spnDisplayCondition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto :goto_0

    .end local v1           #data:[B
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v3, 0x6f14

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_CPHS:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_2

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v1, v0

    .restart local v1       #data:[B
    array-length v2, v1

    sub-int/2addr v2, v4

    invoke-static {v1, v5, v2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->spn:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load EF_SPN_CPHS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->spn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .end local v1           #data:[B
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v3, 0x6f18

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    :pswitch_3
    if-eqz p2, :cond_3

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v1, v0

    .restart local v1       #data:[B
    array-length v2, v1

    sub-int/2addr v2, v4

    invoke-static {v1, v5, v2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->spn:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->spn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .end local v1           #data:[B
    :goto_1
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    :cond_3
    const-string v2, "No SPN loaded in either CHPS or 3GPP"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleEfCspData([B)V
    .locals 8
    .parameter "data"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const-string v6, "GSM"

    array-length v3, p1

    div-int/lit8 v1, v3, 0x2

    .local v1, usedCspGroups:I
    const/16 v2, -0x40

    .local v2, valueAddedServicesGroup:B
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    mul-int/lit8 v3, v0, 0x2

    aget-byte v3, p1, v3

    if-ne v3, v2, :cond_1

    const-string v3, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CSP] found ValueAddedServicesGroup, value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    :goto_1
    return-void

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    iget-object v3, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    invoke-direct {v4, v5, v5, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    const-string v3, "GSM"

    const-string v3, "[CSP] Set Automatic Network Selection"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "GSM"

    const-string v3, "[CSP] Value Added Service Group (0xC0), not found!"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleFileUpdate(I)V
    .locals 5
    .parameter "efid"

    .prologue
    const/16 v4, 0x6f4a

    const/4 v3, 0x1

    const-string v1, "GSM"

    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    :goto_0
    return-void

    :sswitch_0
    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v1, 0x6fc7

    const/16 v2, 0x6fc8

    iget v3, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mailboxIndex:I

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v1, 0x6f17

    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    const-string v0, "GSM"

    const-string v0, "CSP: SIM Refresh called for EF_CSP_CPHS"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f15

    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    const-string v0, "GSM"

    const-string v0, "SIM Refresh called for EF_MSISDN"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v1, 0x6f40

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    :sswitch_4
    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    const-string v0, "GSM"

    const-string v0, "SIM Refresh called for EF_CFIS"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fcb

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_5
    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    const-string v0, "GSM"

    const-string v0, "SIM Refresh called for EF_CFF_CPHS"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f13

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "[EONS] SIM Refresh for EF_OPL"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fc6

    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "[EONS] SIM Refresh for EF_PNN"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fc5

    const/16 v2, 0x23

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "[EONS] SIM Refresh for EF_SPN"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f46

    const/16 v2, 0x24

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6f13 -> :sswitch_5
        0x6f15 -> :sswitch_2
        0x6f17 -> :sswitch_1
        0x6f40 -> :sswitch_3
        0x6f46 -> :sswitch_8
        0x6fc5 -> :sswitch_7
        0x6fc6 -> :sswitch_6
        0x6fc7 -> :sswitch_0
        0x6fcb -> :sswitch_4
    .end sparse-switch
.end method

.method private handleSimRefresh(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/SimRefreshResponse;

    .local v1, state:Lcom/android/internal/telephony/SimRefreshResponse;
    if-nez v1, :cond_1

    const-string v2, "handleSimRefresh received without input"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$1;->$SwitchMap$com$android$internal$telephony$SimRefreshResponse$Result:[I

    iget-object v3, v1, Lcom/android/internal/telephony/SimRefreshResponse;->refreshResult:Lcom/android/internal/telephony/SimRefreshResponse$Result;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SimRefreshResponse$Result;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const-string v2, "handleSimRefresh with unknown operation"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string v2, "handleSimRefresh with SIM_FILE_UPDATED"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/internal/telephony/SimRefreshResponse;->efId:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleFileUpdate(I)V

    goto :goto_0

    :pswitch_1
    const-string v2, "handleSimRefresh with SIM_INIT, Delay SIM IO until SIM_READY"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v2}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    goto :goto_0

    :pswitch_2
    const-string v2, "handleSimRefresh with SIM_RESET"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v2}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    iget-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10d0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .local v0, skipRadioPowerOff:Z
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isCphsMailboxEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    aget-byte v0, v0, v3

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x30

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private isOnMatchingPlmn(Ljava/lang/String;)Z
    .locals 5
    .parameter "plmn"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, spdiNet:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #spdiNet:Ljava/lang/String;
    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method private isOnNationalPlmn(Ljava/lang/String;)Z
    .locals 4
    .parameter "plmn"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    if-nez v0, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method private onSimReady()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    return-void
.end method

.method private parseEfSpdi([B)V
    .locals 6
    .parameter "data"

    .prologue
    new-instance v3, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v4, 0x0

    array-length v5, p1

    invoke-direct {v3, p1, v4, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .local v3, tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    const/4 v2, 0x0

    .local v2, plmnEntries:[B
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v4

    const/16 v5, 0x80

    if-ne v4, v5, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v2

    :cond_0
    if-nez v2, :cond_3

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v2

    div-int/lit8 v5, v5, 0x3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    add-int/lit8 v4, v0, 0x2

    array-length v5, v2

    if-ge v4, v5, :cond_1

    const/4 v4, 0x3

    invoke-static {v2, v0, v4}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v1

    .local v1, plmnCode:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_SPDI network: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x3

    goto :goto_1
.end method

.method private setSpnFromConfig(Ljava/lang/String;)V
    .locals 1
    .parameter "carrier"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->spn:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setVoiceMailByCountry(Ljava/lang/String;)V
    .locals 1
    .parameter "spn"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->isVoiceMailFixed:Z

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->voiceMailNum:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->voiceMailTag:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disposing SIMRecords "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->resetRecords()V

    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    const-string v0, "GSM"

    const-string v1, "SIMRecords finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getDisplayRule(Ljava/lang/String;)I
    .locals 3
    .parameter "plmn"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->spn:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x2

    .local v0, rule:I
    :cond_1
    :goto_0
    return v0

    .end local v0           #rule:I
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->isOnMatchingPlmn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .restart local v0       #rule:I
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    .end local v0           #rule:I
    :cond_3
    const/4 v0, 0x2

    .restart local v0       #rule:I
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getEons()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEons:Lcom/android/internal/telephony/gsm/Eons;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/Eons;->getEons()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEonsForAvailableNetworks(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, avlNetworks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfo;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEons:Lcom/android/internal/telephony/gsm/Eons;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/Eons;->getEonsForAvailableNetworks(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->msisdnTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getSIMOperatorNumeric()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVoiceCallForwardingFlag()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->voiceMailTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->voiceMailNum:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "GSM"

    const/4 v2, 0x0

    .local v2, voiceMailWaiting:Z
    const/4 v0, 0x0

    .local v0, countVoiceMessages:I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    move v2, v5

    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    aget-byte v3, v3, v5

    and-int/lit16 v0, v3, 0xff

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :cond_0
    const-string v3, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " VoiceMessageCount from SIM MWIS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return v0

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    aget-byte v3, v3, v4

    and-int/lit8 v1, v3, 0xf

    .local v1, indicator:I
    const/16 v3, 0xa

    if-ne v1, v3, :cond_5

    const/4 v0, -0x1

    :cond_4
    :goto_2
    const-string v3, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " VoiceMessageCount from SIM CPHS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const/4 v3, 0x5

    if-ne v1, v3, :cond_4

    const/4 v0, 0x0

    goto :goto_2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 28
    .parameter "msg"

    .prologue
    const/16 v18, 0x0

    .local v18, isRecordLoadResponse:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mDestroyed:Z

    move v4, v0

    if-eqz v4, :cond_1

    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] while being destroyed. Ignoring."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local p1
    :cond_0
    :goto_0
    return-void

    .restart local p1
    :cond_1
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    sparse-switch v4, :sswitch_data_0

    .end local p1
    :cond_2
    :goto_1
    if-eqz v18, :cond_0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRecordLoaded()V

    goto :goto_0

    .restart local p1
    :sswitch_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onSimReady()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .end local p1
    :catch_0
    move-exception v4

    move-object/from16 v16, v4

    .local v16, exc:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v4, "GSM"

    const-string v5, "Exception parsing SIM record"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v18, :cond_0

    goto :goto_2

    .end local v16           #exc:Ljava/lang/RuntimeException;
    .restart local p1
    :sswitch_1
    const/16 v18, 0x1

    :try_start_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .local v11, ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_4

    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception querying IMSI, Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local p1
    :catchall_0
    move-exception v4

    if-eqz v18, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRecordLoaded()V

    :cond_3
    throw v4

    .restart local v11       #ar:Landroid/os/AsyncResult;
    .restart local p1
    :cond_4
    :try_start_4
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xf

    if-le v4, v5, :cond_6

    :cond_5
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid IMSI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    :cond_6
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMSI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "xxxxxxx"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .local v23, mccmncCode:Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .local v12, arr$:[Ljava/lang/String;
    move-object v0, v12

    array-length v0, v0

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    aget-object v22, v12, v17

    .local v22, mccmnc:Ljava/lang/String;
    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x3

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    .end local v12           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v20           #len$:I
    .end local v22           #mccmnc:Ljava/lang/String;
    .end local v23           #mccmncCode:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v4, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v4, :cond_9

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .local v21, mcc:I
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v21           #mcc:I
    :cond_9
    :goto_4
    :try_start_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v7, v0

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_1

    .restart local v12       #arr$:[Ljava/lang/String;
    .restart local v17       #i$:I
    .restart local v20       #len$:I
    .restart local v22       #mccmnc:Ljava/lang/String;
    .restart local v23       #mccmncCode:Ljava/lang/String;
    :cond_b
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .end local v12           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v20           #len$:I
    .end local v22           #mccmnc:Ljava/lang/String;
    .end local v23           #mccmncCode:Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object v14, v4

    .local v14, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    const-string v4, "GSM"

    const-string v5, "SIMRecords: Corrupt IMSI!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v14           #e:Ljava/lang/NumberFormatException;
    .restart local p1
    :sswitch_2
    const/16 v18, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .local v13, data:[B
    const/16 v19, 0x0

    .local v19, isValidMbdn:Z
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_c

    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_MBI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    aget-byte v4, v13, v4

    and-int/lit16 v4, v4, 0xff

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->mailboxIndex:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mailboxIndex:I

    move v4, v0

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mailboxIndex:I

    move v4, v0

    const/16 v5, 0xff

    if-eq v4, v5, :cond_c

    const-string v4, "GSM"

    const-string v5, "Got valid mailbox number for MBDN"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x1

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    if-eqz v19, :cond_d

    new-instance v4, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v5, 0x6fc7

    const/16 v6, 0x6fc8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mailboxIndex:I

    move v7, v0

    const/4 v8, 0x6

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    :cond_d
    new-instance v4, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v5, 0x6f17

    const/16 v6, 0x6f4a

    const/4 v7, 0x1

    const/16 v8, 0xb

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v19           #isValidMbdn:Z
    .restart local p1
    :sswitch_3
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->voiceMailNum:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->voiceMailTag:Ljava/lang/String;

    const/16 v18, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_f

    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid or missing EF"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v6, v0

    const/16 v7, 0xb

    if-ne v6, v7, :cond_e

    const-string v6, "[MAILBOX]"

    :goto_5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    new-instance v4, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v5, 0x6f17

    const/16 v6, 0x6f4a

    const/4 v7, 0x1

    const/16 v8, 0xb

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    :cond_e
    const-string v6, "[MBDN]"

    goto :goto_5

    :cond_f
    iget-object v5, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/AdnRecord;

    .local v5, adn:Lcom/android/internal/telephony/AdnRecord;
    const-string v4, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VM: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v7, v0

    const/16 v8, 0xb

    if-ne v7, v8, :cond_10

    const-string v7, " EF[MAILBOX]"

    :goto_6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_11

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0

    const/4 v6, 0x6

    if-ne v4, v6, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    new-instance v4, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object v5, v0

    .end local v5           #adn:Lcom/android/internal/telephony/AdnRecord;
    invoke-direct {v4, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v5, 0x6f17

    const/16 v6, 0x6f4a

    const/4 v7, 0x1

    const/16 v8, 0xb

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .restart local v5       #adn:Lcom/android/internal/telephony/AdnRecord;
    :cond_10
    const-string v7, " EF[MBDN]"

    goto :goto_6

    :cond_11
    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->voiceMailNum:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->voiceMailTag:Ljava/lang/String;

    goto/16 :goto_1

    .end local v5           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_4
    const/16 v18, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_12

    const-string v4, "GSM"

    const-string v5, "Invalid or missing EF[MSISDN]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_12
    iget-object v5, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/AdnRecord;

    .restart local v5       #adn:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->msisdnTag:Ljava/lang/String;

    const-string v4, "GSM"

    const-string v5, "MSISDN: xxxxxxx"

    .end local v5           #adn:Lcom/android/internal/telephony/AdnRecord;
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_5
    const/16 v18, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_2

    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/Message;

    invoke-static/range {p1 .. p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Landroid/os/Message;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .end local v11           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :sswitch_6
    const/16 v18, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .restart local v13       #data:[B
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_MWIS : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_13

    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_GET_MWIS_DONE exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_13
    const/4 v4, 0x0

    aget-byte v4, v13, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xff

    if-ne v4, v5, :cond_14

    const-string v4, "GSM"

    const-string v5, "SIMRecords: Uninitialized record MWIS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_14
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    goto/16 :goto_1

    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/Message;

    .local v25, onComplete:Landroid/os/Message;
    if-eqz v25, :cond_2

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_15

    invoke-static/range {v25 .. v25}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/IccVmNotSupportedException;

    const-string v6, "SIM update failed for EF_MWIS/EF_CPHS_MWIS"

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    :goto_7
    invoke-virtual/range {v25 .. v25}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :cond_15
    invoke-static/range {v25 .. v25}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_7

    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v25           #onComplete:Landroid/os/Message;
    :sswitch_8
    const/16 v18, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .restart local v13       #data:[B
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CPHS_MWI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_16

    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_16
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    goto/16 :goto_1

    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :sswitch_9
    const/16 v18, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .restart local v13       #data:[B
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    const/4 v4, 0x0

    array-length v5, v13

    invoke-static {v13, v4, v5}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->iccid:Ljava/lang/String;

    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iccid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->iccid:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :sswitch_a
    const/16 v18, 0x1

    :try_start_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .restart local v13       #data:[B
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v4, :cond_1b

    :try_start_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_18

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .restart local v23       #mccmncCode:Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v12       #arr$:[Ljava/lang/String;
    move-object v0, v12

    array-length v0, v0

    move/from16 v20, v0

    .restart local v20       #len$:I
    const/16 v17, 0x0

    .restart local v17       #i$:I
    :goto_8
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_18

    aget-object v22, v12, v17

    .restart local v22       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    const/4 v4, 0x3

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    .end local v12           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v20           #len$:I
    .end local v22           #mccmnc:Ljava/lang/String;
    .end local v23           #mccmncCode:Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v4, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1a

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    if-eqz v4, :cond_43

    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .restart local v21       #mcc:I
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .end local v21           #mcc:I
    :cond_1a
    :goto_9
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v7, v0

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_1

    :cond_1b
    :try_start_b
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_AD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v4, v13

    const/4 v5, 0x3

    if-ge v4, v5, :cond_20

    const-string v4, "GSM"

    const-string v5, "SIMRecords: Corrupt AD data on SIM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1d

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .restart local v23       #mccmncCode:Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v12       #arr$:[Ljava/lang/String;
    move-object v0, v12

    array-length v0, v0

    move/from16 v20, v0

    .restart local v20       #len$:I
    const/16 v17, 0x0

    .restart local v17       #i$:I
    :goto_a
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_1d

    aget-object v22, v12, v17

    .restart local v22       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    const/4 v4, 0x3

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    .end local v12           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v20           #len$:I
    .end local v22           #mccmnc:Ljava/lang/String;
    .end local v23           #mccmncCode:Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v4, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1f

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    if-eqz v4, :cond_45

    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .restart local v21       #mcc:I
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0

    .end local v21           #mcc:I
    :cond_1f
    :goto_b
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v7, v0

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_1

    :cond_20
    :try_start_f
    array-length v4, v13

    const/4 v5, 0x3

    if-ne v4, v5, :cond_25

    const-string v4, "GSM"

    const-string v5, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_22

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .restart local v23       #mccmncCode:Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v12       #arr$:[Ljava/lang/String;
    move-object v0, v12

    array-length v0, v0

    move/from16 v20, v0

    .restart local v20       #len$:I
    const/16 v17, 0x0

    .restart local v17       #i$:I
    :goto_c
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_22

    aget-object v22, v12, v17

    .restart local v22       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    const/4 v4, 0x3

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    .end local v12           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v20           #len$:I
    .end local v22           #mccmnc:Ljava/lang/String;
    .end local v23           #mccmncCode:Ljava/lang/String;
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v4, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_24

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0

    if-eqz v4, :cond_47

    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .restart local v21       #mcc:I
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0

    .end local v21           #mcc:I
    :cond_24
    :goto_d
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v7, v0

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0

    goto/16 :goto_1

    :cond_25
    const/4 v4, 0x3

    :try_start_13
    aget-byte v4, v13, v4

    and-int/lit8 v4, v4, 0xf

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v4, v0

    const/16 v5, 0xf

    if-ne v4, v5, :cond_26

    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :cond_26
    :try_start_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_28

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .restart local v23       #mccmncCode:Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v12       #arr$:[Ljava/lang/String;
    move-object v0, v12

    array-length v0, v0

    move/from16 v20, v0

    .restart local v20       #len$:I
    const/16 v17, 0x0

    .restart local v17       #i$:I
    :goto_e
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_28

    aget-object v22, v12, v17

    .restart local v22       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    const/4 v4, 0x3

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    .end local v12           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v20           #len$:I
    .end local v22           #mccmnc:Ljava/lang/String;
    .end local v23           #mccmncCode:Ljava/lang/String;
    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v4, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2a

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0

    if-eqz v4, :cond_49

    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .restart local v21       #mcc:I
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_0

    .end local v21           #mcc:I
    :cond_2a
    :goto_f
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v7, v0

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :catchall_1
    move-exception v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v5, v0

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v5, v0

    if-eqz v5, :cond_2b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2c

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-lt v5, v6, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .restart local v23       #mccmncCode:Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v12       #arr$:[Ljava/lang/String;
    move-object v0, v12

    array-length v0, v0

    move/from16 v20, v0

    .restart local v20       #len$:I
    const/16 v17, 0x0

    .restart local v17       #i$:I
    :goto_10
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_2c

    aget-object v22, v12, v17

    .restart local v22       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    const/4 v5, 0x3

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    .end local v12           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v20           #len$:I
    .end local v22           #mccmnc:Ljava/lang/String;
    .end local v23           #mccmncCode:Ljava/lang/String;
    :cond_2c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v5, v0

    if-eqz v5, :cond_2d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v5, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2e

    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v5, v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_0

    if-eqz v5, :cond_41

    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .restart local v21       #mcc:I
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_0

    .end local v21           #mcc:I
    :cond_2e
    :goto_11
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_2f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v5, v0

    if-eqz v5, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v8, v0

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2f
    throw v4

    .restart local p1
    :sswitch_b
    const/16 v18, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    goto/16 :goto_1

    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_c
    const/16 v18, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .restart local v13       #data:[B
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->EfCfPresent:Z

    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CFF_CPHS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    move-object v4, v0

    if-nez v4, :cond_2

    const/4 v4, 0x0

    aget-byte v4, v13, v4

    and-int/lit8 v4, v4, 0xf

    const/16 v5, 0xa

    if-ne v4, v5, :cond_30

    const/4 v4, 0x1

    :goto_12
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_30
    const/4 v4, 0x0

    goto :goto_12

    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :sswitch_d
    const/16 v18, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .restart local v13       #data:[B
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->parseEfSpdi([B)V

    goto/16 :goto_1

    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    const-string v4, "GSM"

    const-string v5, "SIMRecords update failed"

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v4, v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_f
    const/16 v18, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .restart local v13       #data:[B
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    new-instance v27, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v4, 0x0

    array-length v5, v13

    move-object/from16 v0, v27

    move-object v1, v13

    move v2, v4

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .local v27, tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :goto_13
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v4

    const/16 v5, 0x43

    if-ne v4, v5, :cond_31

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-static {v4, v5, v6}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    goto/16 :goto_1

    :cond_31
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_13

    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v27           #tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    .restart local p1
    :sswitch_10
    const/16 v18, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .restart local v13       #data:[B
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    goto/16 :goto_1

    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :sswitch_11
    const/16 v18, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    check-cast p1, [B

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iCPHS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    move-object v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v11           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :sswitch_12
    const/16 v18, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->voiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->voiceMailTag:Ljava/lang/String;

    :cond_32
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v4

    if-eqz v4, :cond_34

    new-instance v5, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->voiceMailTag:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->voiceMailNum:Ljava/lang/String;

    move-object v6, v0

    invoke-direct {v5, v4, v6}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Message;

    .local v26, onCphsCompleted:Landroid/os/Message;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_33

    iget-object v4, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_33

    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/Message;

    invoke-static/range {p1 .. p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    const/4 v6, 0x0

    iput-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Landroid/os/Message;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->sendToTarget()V

    const-string v4, "Callback with MBDN successful."

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    const/16 v26, 0x0

    :cond_33
    new-instance v4, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object v6, v0

    invoke-direct {v4, v6}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v6, 0x6f17

    const/16 v7, 0x6f4a

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x19

    move-object/from16 v0, p0

    move v1, v10

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    .end local v5           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v26           #onCphsCompleted:Landroid/os/Message;
    .restart local p1
    :cond_34
    iget-object v4, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_2

    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/Message;

    invoke-static/range {p1 .. p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Landroid/os/Message;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .end local v11           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :sswitch_13
    const/16 v18, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->voiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->voiceMailTag:Ljava/lang/String;

    :goto_14
    iget-object v4, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_2

    const-string v4, "Callback with CPHS MB successful."

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/Message;

    invoke-static/range {p1 .. p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Landroid/os/Message;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .restart local p1
    :cond_35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set CPHS MailBox with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_14

    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_14
    const/16 v18, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sim REFRESH with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSimRefresh(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_15
    const/16 v18, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .restart local v13       #data:[B
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->EfCfPresent:Z

    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CFIS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v4, 0x1

    aget-byte v4, v13, v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_36

    const/4 v4, 0x1

    :goto_15
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_36
    const/4 v4, 0x0

    goto :goto_15

    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :sswitch_16
    const/16 v18, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_37

    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in fetching EF_CSP data "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_37
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .restart local v13       #data:[B
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CSP: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleEfCspData([B)V

    goto/16 :goto_1

    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :sswitch_17
    const/16 v18, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_38

    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[EONS] Exception in fetching OPL Records: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEons:Lcom/android/internal/telephony/gsm/Eons;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/Eons;->resetOplData()V

    goto/16 :goto_1

    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEons:Lcom/android/internal/telephony/gsm/Eons;

    move-object v4, v0

    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/util/ArrayList;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/Eons;->setOplData(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    move-object v4, v0

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1

    .end local v11           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :sswitch_18
    const/16 v18, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_39

    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[EONS] Exception in fetching PNN Records: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEons:Lcom/android/internal/telephony/gsm/Eons;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/Eons;->resetPnnData()V

    goto/16 :goto_1

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEons:Lcom/android/internal/telephony/gsm/Eons;

    move-object v4, v0

    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/util/ArrayList;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/Eons;->setPnnData(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    move-object v4, v0

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1

    .end local v11           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :sswitch_19
    const/16 v18, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_3a

    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[EONS] Exception in reading EF_SPN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    goto/16 :goto_1

    :cond_3a
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .restart local v13       #data:[B
    const/4 v4, 0x0

    aget-byte v4, v13, v4

    and-int/lit16 v4, v4, 0xff

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    const/4 v4, 0x1

    array-length v5, v13

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-static {v13, v4, v5}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->spn:Ljava/lang/String;

    const-string v4, "gsm.sim.operator.alpha"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccCardApplication;->getSubscription()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->spn:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v4, v5, v6}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    move-object v4, v0

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1

    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :sswitch_1a
    const-string v4, "GSM"

    const-string v5, "wsh : EVENT_GET_SPN_CPHS_DONE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_3b

    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[EONS] Exception in reading EF_SPN_CPHS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEons:Lcom/android/internal/telephony/gsm/Eons;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/gsm/Eons$CphsType;->LONG:Lcom/android/internal/telephony/gsm/Eons$CphsType;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/Eons;->resetCphsData(Lcom/android/internal/telephony/gsm/Eons$CphsType;)V

    goto/16 :goto_1

    :cond_3b
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .restart local v13       #data:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEons:Lcom/android/internal/telephony/gsm/Eons;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/gsm/Eons$CphsType;->LONG:Lcom/android/internal/telephony/gsm/Eons$CphsType;

    invoke-virtual {v4, v5, v13}, Lcom/android/internal/telephony/gsm/Eons;->setCphsData(Lcom/android/internal/telephony/gsm/Eons$CphsType;[B)V

    goto/16 :goto_1

    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :sswitch_1b
    const-string v4, "GSM"

    const-string v5, "wsh : EVENT_GET_SPN_SHORT_CPHS_DONE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_3c

    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[EONS] Exception in reading EF_SPN_SHORT_CPHS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEons:Lcom/android/internal/telephony/gsm/Eons;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/gsm/Eons$CphsType;->SHORT:Lcom/android/internal/telephony/gsm/Eons$CphsType;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/Eons;->resetCphsData(Lcom/android/internal/telephony/gsm/Eons$CphsType;)V

    goto/16 :goto_1

    :cond_3c
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .restart local v13       #data:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEons:Lcom/android/internal/telephony/gsm/Eons;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/gsm/Eons$CphsType;->SHORT:Lcom/android/internal/telephony/gsm/Eons$CphsType;

    invoke-virtual {v4, v5, v13}, Lcom/android/internal/telephony/gsm/Eons;->setCphsData(Lcom/android/internal/telephony/gsm/Eons$CphsType;[B)V

    goto/16 :goto_1

    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :sswitch_1c
    const-string v4, "GSM"

    const-string v5, "SIMRecords: EVENT_GET_GID1_DONE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x1

    const/4 v15, 0x0

    .local v15, efGID1:[B
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object v0, v11

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .restart local v13       #data:[B
    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_3d

    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in fetching GID1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3d
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_GID1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    aget-byte v4, v13, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xff

    if-ne v4, v5, :cond_3e

    const-string v4, "GSM"

    const-string v5, "SIMRecords: Uninitialized record GID1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3e
    move-object v15, v13

    if-eqz v15, :cond_2

    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIMRecords: EVENT_GET_GID1_DONE efGID1[0] ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-byte v6, v15, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_0

    const/16 v21, 0x0

    .restart local v21       #mcc:I
    const/16 v24, 0x0

    .local v24, mnc:I
    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v4, v0

    if-nez v4, :cond_3f

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    move v6, v0

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIMRecords: EVENT_GET_GID1_DONE mcc ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mnc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_19} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_0

    :goto_16
    const/16 v4, 0xea

    move/from16 v0, v21

    move v1, v4

    if-ne v0, v1, :cond_2

    const/16 v4, 0x1e

    move/from16 v0, v24

    move v1, v4

    if-ne v0, v1, :cond_2

    const/4 v4, 0x0

    :try_start_1a
    aget-byte v4, v15, v4

    const/16 v5, 0x28

    if-ne v4, v5, :cond_2

    const-string v4, "GSM"

    const-string v5, "SIMRecords: EVENT_GET_GID1_DONE set Virgin begin"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "gsm.sim.operator.alpha"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccApplicationRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccCardApplication;->getSubscription()I

    move-result v5

    const-string v6, "Virgin"

    invoke-static {v4, v5, v6}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "GSM"

    const-string v5, "SIMRecords: EVENT_GET_GID1_DONE set Virgin end"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_2
    move-exception v4

    move-object v14, v4

    .restart local v14       #e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    const-string v4, "GSM"

    const-string v5, "SIMRecords: Corrupt IMSI!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v14           #e:Ljava/lang/NumberFormatException;
    .end local v15           #efGID1:[B
    .end local v21           #mcc:I
    .end local v24           #mnc:I
    .restart local v12       #arr$:[Ljava/lang/String;
    .restart local v17       #i$:I
    .restart local v20       #len$:I
    .restart local v22       #mccmnc:Ljava/lang/String;
    .restart local v23       #mccmncCode:Ljava/lang/String;
    :cond_40
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_10

    .end local v12           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v20           #len$:I
    .end local v22           #mccmnc:Ljava/lang/String;
    .end local v23           #mccmncCode:Ljava/lang/String;
    :cond_41
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    const-string v5, "GSM"

    const-string v6, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :catch_3
    move-exception v5

    move-object v14, v5

    .restart local v14       #e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    const-string v5, "GSM"

    const-string v6, "SIMRecords: Corrupt IMSI!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .end local v14           #e:Ljava/lang/NumberFormatException;
    .restart local v11       #ar:Landroid/os/AsyncResult;
    .restart local v12       #arr$:[Ljava/lang/String;
    .restart local v13       #data:[B
    .restart local v17       #i$:I
    .restart local v20       #len$:I
    .restart local v22       #mccmnc:Ljava/lang/String;
    .restart local v23       #mccmncCode:Ljava/lang/String;
    :cond_42
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_8

    .end local v12           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v20           #len$:I
    .end local v22           #mccmnc:Ljava/lang/String;
    .end local v23           #mccmncCode:Ljava/lang/String;
    :cond_43
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    const-string v4, "GSM"

    const-string v5, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :catch_4
    move-exception v4

    move-object v14, v4

    .restart local v14       #e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    const-string v4, "GSM"

    const-string v5, "SIMRecords: Corrupt IMSI!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .end local v14           #e:Ljava/lang/NumberFormatException;
    .restart local v12       #arr$:[Ljava/lang/String;
    .restart local v17       #i$:I
    .restart local v20       #len$:I
    .restart local v22       #mccmnc:Ljava/lang/String;
    .restart local v23       #mccmncCode:Ljava/lang/String;
    :cond_44
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_a

    .end local v12           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v20           #len$:I
    .end local v22           #mccmnc:Ljava/lang/String;
    .end local v23           #mccmncCode:Ljava/lang/String;
    :cond_45
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    const-string v4, "GSM"

    const-string v5, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :catch_5
    move-exception v4

    move-object v14, v4

    .restart local v14       #e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    const-string v4, "GSM"

    const-string v5, "SIMRecords: Corrupt IMSI!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .end local v14           #e:Ljava/lang/NumberFormatException;
    .restart local v12       #arr$:[Ljava/lang/String;
    .restart local v17       #i$:I
    .restart local v20       #len$:I
    .restart local v22       #mccmnc:Ljava/lang/String;
    .restart local v23       #mccmncCode:Ljava/lang/String;
    :cond_46
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_c

    .end local v12           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v20           #len$:I
    .end local v22           #mccmnc:Ljava/lang/String;
    .end local v23           #mccmncCode:Ljava/lang/String;
    :cond_47
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    const-string v4, "GSM"

    const-string v5, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :catch_6
    move-exception v4

    move-object v14, v4

    .restart local v14       #e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    const-string v4, "GSM"

    const-string v5, "SIMRecords: Corrupt IMSI!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .end local v14           #e:Ljava/lang/NumberFormatException;
    .restart local v12       #arr$:[Ljava/lang/String;
    .restart local v17       #i$:I
    .restart local v20       #len$:I
    .restart local v22       #mccmnc:Ljava/lang/String;
    .restart local v23       #mccmncCode:Ljava/lang/String;
    :cond_48
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_e

    .end local v12           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v20           #len$:I
    .end local v22           #mccmnc:Ljava/lang/String;
    .end local v23           #mccmncCode:Ljava/lang/String;
    :cond_49
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    const-string v4, "GSM"

    const-string v5, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :catch_7
    move-exception v4

    move-object v14, v4

    .restart local v14       #e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    const-string v4, "GSM"

    const-string v5, "SIMRecords: Corrupt IMSI!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_0

    goto/16 :goto_f

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_9
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_6
        0x8 -> :sswitch_8
        0x9 -> :sswitch_a
        0xa -> :sswitch_4
        0xb -> :sswitch_3
        0xc -> :sswitch_b
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x11 -> :sswitch_10
        0x14 -> :sswitch_12
        0x18 -> :sswitch_c
        0x19 -> :sswitch_13
        0x1a -> :sswitch_11
        0x1b -> :sswitch_1c
        0x1e -> :sswitch_5
        0x1f -> :sswitch_14
        0x20 -> :sswitch_15
        0x21 -> :sswitch_16
        0x22 -> :sswitch_17
        0x23 -> :sswitch_18
        0x24 -> :sswitch_19
        0x25 -> :sswitch_7
        0x26 -> :sswitch_7
        0x64 -> :sswitch_1a
        0x65 -> :sswitch_1b
    .end sparse-switch
.end method

.method public isCallForwardStatusStored()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onAllRecordsLoaded()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-string v1, "GSM"

    const-string v2, "SIMRecords: record load complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .local v0, operator:Ljava/lang/String;
    const-string v1, "gsm.sim.operator.numeric"

    iget-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getSubscription()I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "gsm.sim.operator.iso-country"

    iget-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getSubscription()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->setSpnFromConfig(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v6, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    :cond_0
    const-string v1, "SIM"

    const-string v2, "[SIMRecords] onAllRecordsLoaded: imsi is NULL!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRecordLoaded()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const-string v3, "GSM"

    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIMRecords:onRecordLoaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsRequested:Z

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onAllRecordsLoaded()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    if-gez v0, :cond_0

    const-string v0, "GSM"

    const-string v0, "SIMRecords: recordsToLoad <0, programmer error suspected"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 0
    .parameter "fileChanged"
    .parameter "fileList"

    .prologue
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    :cond_0
    return-void
.end method

.method protected resetRecords()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->msisdn:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->voiceMailNum:Ljava/lang/String;

    iput v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->iccid:Ljava/lang/String;

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEons:Lcom/android/internal/telephony/gsm/Eons;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/Eons;->reset()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsRequested:Z

    return-void
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    iput-object p2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->msisdn:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->msisdnTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set MSISDN: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->msisdnTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "xxxxxxx"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->msisdnTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->msisdn:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v2, 0x6f40

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setVoiceCallForwardingFlag(IZ)V
    .locals 8
    .parameter "line"
    .parameter "enable"

    .prologue
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    if-eqz v0, :cond_2

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fcb

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v7, 0x6fcb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    if-eqz v0, :cond_0

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f13

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "GSM"

    const-string v1, "Error saving call fowarding flag to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xfe

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "voiceNumber"
    .parameter "onComplete"

    .prologue
    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->isVoiceMailFixed:Z

    if-eqz v0, :cond_0

    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmFixedException;

    const-string v3, "Voicemail number is fixed by operator"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmFixedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->newVoiceMailNum:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->newVoiceMailTag:Ljava/lang/String;

    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->newVoiceMailTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->newVoiceMailNum:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mailboxIndex:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mailboxIndex:I

    const/16 v2, 0xff

    if-eq v0, v2, :cond_1

    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v2, 0x6fc7

    const/16 v3, 0x6fc8

    iget v4, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mailboxIndex:I

    const/16 v6, 0x14

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v2, 0x6f17

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/16 v6, 0x19

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :cond_2
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmNotSupportedException;

    const-string v3, "Update SIM voice mailbox error"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setVoiceMessageWaiting(IILandroid/os/Message;)V
    .locals 9
    .parameter "line"
    .parameter "countWaiting"
    .parameter "onComplete"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eq p1, v5, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xfe

    if-nez p2, :cond_1

    move v3, v4

    :goto_1
    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    if-gez p2, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fca

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v4, 0x0

    const/16 v5, 0x25

    const/16 v7, 0x6fca

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v7, v8, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "GSM"

    const-string v1, "Error saving voice mail state to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    if-nez p2, :cond_4

    const/4 v3, 0x5

    :goto_3
    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f11

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/16 v3, 0x26

    const/16 v4, 0x6f11

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    goto :goto_0

    :cond_4
    const/16 v3, 0xa

    goto :goto_3

    :cond_5
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/IccVmNotSupportedException;

    const-string v2, "SIM does not support EF_MWIS & EF_CPHS_MWIS"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public updateEons(Ljava/lang/String;I)Z
    .locals 2
    .parameter "regOperator"
    .parameter "lac"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEons:Lcom/android/internal/telephony/gsm/Eons;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/telephony/gsm/Eons;->updateEons(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method
