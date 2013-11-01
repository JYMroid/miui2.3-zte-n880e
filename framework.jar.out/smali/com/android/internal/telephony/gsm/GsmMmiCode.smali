.class public final Lcom/android/internal/telephony/gsm/GsmMmiCode;
.super Landroid/os/Handler;
.source "GsmMmiCode.java"

# interfaces
.implements Lcom/android/internal/telephony/MmiCode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmMmiCode$1;
    }
.end annotation


# static fields
.field static final ACTION_ACTIVATE:Ljava/lang/String; = "*"

.field static final ACTION_DEACTIVATE:Ljava/lang/String; = "#"

.field static final ACTION_ERASURE:Ljava/lang/String; = "##"

.field static final ACTION_INTERROGATE:Ljava/lang/String; = "*#"

.field static final ACTION_REGISTER:Ljava/lang/String; = "**"

.field static final EVENT_GET_CLIR_COMPLETE:I = 0x2

.field static final EVENT_QUERY_CF_COMPLETE:I = 0x3

.field static final EVENT_QUERY_COMPLETE:I = 0x5

.field static final EVENT_SET_CFF_COMPLETE:I = 0x6

.field static final EVENT_SET_COMPLETE:I = 0x1

.field static final EVENT_USSD_CANCEL_COMPLETE:I = 0x7

.field static final EVENT_USSD_COMPLETE:I = 0x4

.field static final GLOBALDEV_CS:Ljava/lang/String; = "+19085594899"

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MATCH_GROUP_ACTION:I = 0x2

.field static final MATCH_GROUP_DIALING_NUMBER:I = 0xc

.field static final MATCH_GROUP_POUND_STRING:I = 0x1

.field static final MATCH_GROUP_PWD_CONFIRM:I = 0xb

.field static final MATCH_GROUP_SERVICE_CODE:I = 0x3

.field static final MATCH_GROUP_SIA:I = 0x5

.field static final MATCH_GROUP_SIB:I = 0x7

.field static final MATCH_GROUP_SIC:I = 0x9

.field static final SC_BAIC:Ljava/lang/String; = "35"

.field static final SC_BAICr:Ljava/lang/String; = "351"

.field static final SC_BAOC:Ljava/lang/String; = "33"

.field static final SC_BAOIC:Ljava/lang/String; = "331"

.field static final SC_BAOICxH:Ljava/lang/String; = "332"

.field static final SC_BA_ALL:Ljava/lang/String; = "330"

.field static final SC_BA_MO:Ljava/lang/String; = "333"

.field static final SC_BA_MT:Ljava/lang/String; = "353"

.field static final SC_CFB:Ljava/lang/String; = "67"

.field static final SC_CFNR:Ljava/lang/String; = "62"

.field static final SC_CFNRy:Ljava/lang/String; = "61"

.field static final SC_CFU:Ljava/lang/String; = "21"

.field static final SC_CF_All:Ljava/lang/String; = "002"

.field static final SC_CF_All_Conditional:Ljava/lang/String; = "004"

.field static final SC_CLIP:Ljava/lang/String; = "30"

.field static final SC_CLIR:Ljava/lang/String; = "31"

.field static final SC_CNAP:Ljava/lang/String; = "300"

.field static final SC_COLP:Ljava/lang/String; = "76"

.field static final SC_COLR:Ljava/lang/String; = "77"

.field static final SC_GLOBALDEV_CLIR_INVK:Ljava/lang/String; = "67"

.field static final SC_GLOBALDEV_CLIR_SUPP:Ljava/lang/String; = "82"

.field static final SC_GLOBALDEV_CS:Ljava/lang/String; = "611"

.field static final SC_GLOBALDEV_VM:Ljava/lang/String; = "86"

.field static final SC_PIN:Ljava/lang/String; = "04"

.field static final SC_PIN2:Ljava/lang/String; = "042"

.field static final SC_PUK:Ljava/lang/String; = "05"

.field static final SC_PUK2:Ljava/lang/String; = "052"

.field static final SC_PWD:Ljava/lang/String; = "03"

.field static final SC_WAIT:Ljava/lang/String; = "43"

.field static sPatternSuppService:Ljava/util/regex/Pattern;

.field static sPatternSuppServiceGlobalDev:Ljava/util/regex/Pattern;

.field private static sTwoDigitNumberPattern:[Ljava/lang/String;


# instance fields
.field action:Ljava/lang/String;

.field context:Landroid/content/Context;

.field dialingNumber:Ljava/lang/String;

.field private isCallFwdRegister:Z

.field private isFisrtNwInitiatedUssd:Z

.field private isPendingUSSD:Z

.field private isSsInfo:Z

.field private isUssdRequest:Z

.field mUiccApp:Lcom/android/internal/telephony/UiccCardApplication;

.field message:Ljava/lang/CharSequence;

.field phone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field poundString:Ljava/lang/String;

.field pwd:Ljava/lang/String;

.field sc:Ljava/lang/String;

.field sia:Ljava/lang/String;

.field sib:Ljava/lang/String;

.field sic:Ljava/lang/String;

.field state:Lcom/android/internal/telephony/MmiCode$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "((\\*|#|\\*#|\\*\\*|##)(\\d{2,3})(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*))?)?)?)?#)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    const-string v0, "((\\*)(\\d{2,}))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sPatternSuppServiceGlobalDev:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/UiccCardApplication;)V
    .locals 2
    .parameter "phone"
    .parameter "app"

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isCallFwdRegister:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isSsInfo:Z

    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isFisrtNwInitiatedUssd:Z

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApp:Lcom/android/internal/telephony/UiccCardApplication;

    return-void
.end method

.method private createQueryCallBarringResultMessage(I)Ljava/lang/CharSequence;
    .locals 4
    .parameter "serviceClass"

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v3, 0x10400c1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .local v0, classMask:I
    :goto_0
    const/16 v2, 0x80

    if-gt v0, v2, :cond_1

    and-int v2, v0, p1

    if-eqz v2, :cond_0

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int v2, v0, p1

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;
    .locals 4
    .parameter "serviceClass"

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v3, 0x10400c1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .local v0, classMask:I
    :goto_0
    const/16 v2, 0x80

    if-gt v0, v2, :cond_1

    and-int v2, v0, p1

    if-eqz v2, :cond_0

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int v2, v0, p1

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getActionStringFromReqType(Lcom/android/internal/telephony/gsm/SsData$RequestType;)Ljava/lang/String;
    .locals 2
    .parameter "rType"

    .prologue
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode$1;->$SwitchMap$com$android$internal$telephony$gsm$SsData$RequestType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SsData$RequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "*"

    goto :goto_0

    :pswitch_1
    const-string v0, "#"

    goto :goto_0

    :pswitch_2
    const-string v0, "*#"

    goto :goto_0

    :pswitch_3
    const-string v0, "**"

    goto :goto_0

    :pswitch_4
    const-string v0, "##"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "ar"

    .prologue
    const-string v2, "GSM"

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_6

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_0

    const-string v1, "GSM"

    const-string v1, "FDN_CHECK_FAILURE"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v2, 0x10400b9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :goto_0
    return-object v1

    .restart local v0       #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_1

    const-string v1, "GSM"

    const-string v1, "USSD_MODIFIED_TO_DIAL"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v2, 0x10400ba

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_2

    const-string v1, "GSM"

    const-string v1, "USSD_MODIFIED_TO_SS"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v2, 0x10400bb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_3

    const-string v1, "GSM"

    const-string v1, "USSD_MODIFIED_TO_USSD"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v2, 0x10400bc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_4

    const-string v1, "GSM"

    const-string v1, "SS_MODIFIED_TO_DIAL"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v2, 0x10400bd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_5

    const-string v1, "GSM"

    const-string v1, "SS_MODIFIED_TO_USSD"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v2, 0x10400be

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_6

    const-string v1, "GSM"

    const-string v1, "SS_MODIFIED_TO_SS"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v2, 0x10400bf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v2, 0x10400b7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private getScString()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400d2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400d0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400d3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "43"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinCommand()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400d4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v0, ""

    goto :goto_0
.end method

.method private getScStringFromScType(Lcom/android/internal/telephony/gsm/SsData$ServiceType;)Ljava/lang/String;
    .locals 2
    .parameter "sType"

    .prologue
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode$1;->$SwitchMap$com$android$internal$telephony$gsm$SsData$ServiceType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "21"

    goto :goto_0

    :pswitch_1
    const-string v0, "67"

    goto :goto_0

    :pswitch_2
    const-string v0, "61"

    goto :goto_0

    :pswitch_3
    const-string v0, "62"

    goto :goto_0

    :pswitch_4
    const-string v0, "002"

    goto :goto_0

    :pswitch_5
    const-string v0, "004"

    goto :goto_0

    :pswitch_6
    const-string v0, "30"

    goto :goto_0

    :pswitch_7
    const-string v0, "31"

    goto :goto_0

    :pswitch_8
    const-string v0, "43"

    goto :goto_0

    :pswitch_9
    const-string v0, "33"

    goto :goto_0

    :pswitch_a
    const-string v0, "331"

    goto :goto_0

    :pswitch_b
    const-string v0, "332"

    goto :goto_0

    :pswitch_c
    const-string v0, "35"

    goto :goto_0

    :pswitch_d
    const-string v0, "351"

    goto :goto_0

    :pswitch_e
    const-string v0, "330"

    goto :goto_0

    :pswitch_f
    const-string v0, "333"

    goto :goto_0

    :pswitch_10
    const-string v0, "353"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private handlePasswordError(I)V
    .locals 2
    .parameter "res"

    .prologue
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    return-void
.end method

.method private static isEmptyOrNull(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "s"

    .prologue
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isExcludedShortCode(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialString"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x39

    if-gt v0, v1, :cond_1

    move v0, v3

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private isServiceClassVoiceorNone(I)Z
    .locals 1
    .parameter "serviceClass"

    .prologue
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isServiceCodeCallBarring(Ljava/lang/String;)Z
    .locals 1
    .parameter "sc"

    .prologue
    if-eqz p0, :cond_1

    const-string v0, "33"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "331"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "332"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "35"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "351"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "330"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "333"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "353"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isServiceCodeCallForwarding(Ljava/lang/String;)Z
    .locals 1
    .parameter "sc"

    .prologue
    if-eqz p0, :cond_1

    const-string v0, "21"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "67"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "61"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "62"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isServiceCodeUnsupported(Ljava/lang/String;)Z
    .locals 1
    .parameter "sc"

    .prologue
    if-eqz p0, :cond_1

    const-string v0, "76"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "77"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "300"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Z
    .locals 5
    .parameter "dialString"
    .parameter "phone"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, shortCodeExclusionFlag:Z
    const-string v1, "persist.cust.tel.adapt"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v4, :cond_0

    const-string v1, "GSM"

    const-string v2, "Adapt, Number needs to be checked for short code exclusion list"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isExcludedShortCode(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v4, :cond_3

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-eq v1, v2, :cond_3

    :cond_1
    if-nez v0, :cond_3

    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "00"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_3
    move v1, v3

    goto :goto_0
.end method

.method private static isTwoDigitShortCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "dialString"

    .prologue
    const/4 v7, 0x0

    const-string v6, "GSM"

    const-string v4, "GSM"

    const-string v4, "isTwoDigitShortCode"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    :cond_0
    move v4, v7

    :goto_0
    return v4

    :cond_1
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    if-nez v4, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .local v1, dialnumber:Ljava/lang/String;
    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Two Digit Number Pattern "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "GSM"

    const-string v4, "Two Digit Number Pattern -true"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #dialnumber:Ljava/lang/String;
    :cond_4
    const-string v4, "GSM"

    const-string v4, "Two Digit Number Pattern -false"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    goto :goto_0
.end method

.method private makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;
    .locals 10
    .parameter "info"
    .parameter "serviceClassMask"

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "{0}"

    aput-object v5, v3, v8

    const-string v5, "{1}"

    aput-object v5, v3, v7

    const-string v5, "{2}"

    aput-object v5, v3, v9

    .local v3, sources:[Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/CharSequence;

    .local v1, destinations:[Ljava/lang/CharSequence;
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v5, v9, :cond_1

    move v2, v7

    .local v2, needTimeTemplate:Z
    :goto_0
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v5, v7, :cond_3

    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v6, 0x1040102

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .local v4, template:Ljava/lang/CharSequence;
    :goto_1
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v5, p2

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v1, v8

    iget-object v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    invoke-static {v5, v6}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v7

    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v9

    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-nez v5, :cond_0

    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v5, p2

    if-ne v5, v7, :cond_0

    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v5, v7, :cond_6

    move v0, v7

    .local v0, cffEnabled:Z
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCallForwardingPreference(Z)V

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v5, v7, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceCallForwardingFlag(IZ)V

    .end local v0           #cffEnabled:Z
    :cond_0
    :goto_3
    invoke-static {v4, v3, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    return-object v5

    .end local v2           #needTimeTemplate:Z
    .end local v4           #template:Ljava/lang/CharSequence;
    :cond_1
    move v2, v8

    goto :goto_0

    .restart local v2       #needTimeTemplate:Z
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v6, 0x1040101

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4       #template:Ljava/lang/CharSequence;
    goto :goto_1

    .end local v4           #template:Ljava/lang/CharSequence;
    :cond_3
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v5, :cond_4

    iget-object v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v6, 0x1040100

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4       #template:Ljava/lang/CharSequence;
    goto :goto_1

    .end local v4           #template:Ljava/lang/CharSequence;
    :cond_4
    if-eqz v2, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v6, 0x1040104

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4       #template:Ljava/lang/CharSequence;
    goto :goto_1

    .end local v4           #template:Ljava/lang/CharSequence;
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v6, 0x1040103

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4       #template:Ljava/lang/CharSequence;
    goto :goto_1

    :cond_6
    move v0, v8

    goto :goto_2

    .restart local v0       #cffEnabled:Z
    :cond_7
    const-string v5, "GSM"

    const-string v6, "setVoiceCallForwardingFlag aborted. sim records is null."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private static makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method static newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .locals 11
    .parameter "dialString"
    .parameter "phone"
    .parameter "app"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const-string v10, "611"

    const-string v9, "#"

    const/4 v2, 0x0

    .local v2, ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const-string v4, "ro.config.multimode_cdma"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sPatternSuppServiceGlobalDev:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .end local v2           #ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {v2, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/UiccCardApplication;)V

    .restart local v2       #ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, DialCode:Ljava/lang/String;
    const-string v4, "86"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "86"

    iput-object v4, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMdn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    move-object v3, v2

    .end local v0           #DialCode:Ljava/lang/String;
    .end local v2           #ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .local v3, ret:Ljava/lang/Object;
    :goto_0
    return-object v3

    .end local v3           #ret:Ljava/lang/Object;
    .restart local v0       #DialCode:Ljava/lang/String;
    .restart local v2       #ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :cond_0
    const-string v4, "611"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "611"

    iput-object v10, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v4, "+19085594899"

    iput-object v4, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    move-object v3, v2

    .restart local v3       #ret:Ljava/lang/Object;
    goto :goto_0

    .end local v3           #ret:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v8, :cond_4

    const-string v4, "67"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#31#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local v0           #DialCode:Ljava/lang/String;
    .end local v1           #m:Ljava/util/regex/Matcher;
    :cond_2
    :goto_1
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .restart local v1       #m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .end local v2           #ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {v2, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/UiccCardApplication;)V

    .restart local v2       #ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->poundString:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sia:Ljava/lang/String;

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sic:Ljava/lang/String;

    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->pwd:Ljava/lang/String;

    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    const-string v5, "#"

    invoke-virtual {v4, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "GSM"

    const-string v5, "newFromDialString: convert to ussd"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->poundString:Ljava/lang/String;

    iput-object v6, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    iput-object v6, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    iput-object v6, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sia:Ljava/lang/String;

    iput-object v6, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    iput-object v6, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sic:Ljava/lang/String;

    iput-object v6, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->pwd:Ljava/lang/String;

    iput-object v6, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    :cond_3
    :goto_2
    move-object v3, v2

    .restart local v3       #ret:Ljava/lang/Object;
    goto/16 :goto_0

    .end local v3           #ret:Ljava/lang/Object;
    .restart local v0       #DialCode:Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v8, :cond_2

    const-string v4, "82"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*31#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .end local v0           #DialCode:Ljava/lang/String;
    :cond_5
    const-string v4, "#"

    invoke-virtual {p0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .end local v2           #ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {v2, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/UiccCardApplication;)V

    .restart local v2       #ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iput-object p0, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->poundString:Ljava/lang/String;

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTwoDigitShortCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v2, 0x0

    goto :goto_2

    :cond_7
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .end local v2           #ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {v2, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/UiccCardApplication;)V

    .restart local v2       #ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iput-object p0, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    goto :goto_2
.end method

.method static newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .locals 2
    .parameter "ussdMessge"
    .parameter "phone"
    .parameter "app"

    .prologue
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/UiccCardApplication;)V

    .local v0, ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iput-object p0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD:Z

    return-object v0
.end method

.method static newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .locals 3
    .parameter "ussdMessage"
    .parameter "isUssdRequest"
    .parameter "phone"
    .parameter "app"

    .prologue
    const/4 v2, 0x1

    new-instance v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/UiccCardApplication;)V

    .local v0, ret:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iput-object p0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    iput-boolean p1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isUssdRequest:Z

    if-eqz p1, :cond_0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD:Z

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    :goto_0
    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isFisrtNwInitiatedUssd:Z

    return-object v0

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0
.end method

.method private onGetClirComplete(Landroid/os/AsyncResult;)V
    .locals 7
    .parameter "ar"

    .prologue
    const v6, 0x10400de

    const v5, 0x10400db

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    return-void

    :cond_0
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object v1, v0

    .local v1, clirArgs:[I
    const/4 v3, 0x1

    aget v3, v1, v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v4, 0x10400df

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v4, 0x10400e0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v4, 0x10400b7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    :pswitch_3
    aget v3, v1, v4

    packed-switch v3, :pswitch_data_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_1
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    :pswitch_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_5
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v4, 0x10400dc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_6
    aget v3, v1, v4

    packed-switch v3, :pswitch_data_2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_2
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    :pswitch_7
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v4, 0x10400dd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_8
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private onQueryCfComplete(Landroid/os/AsyncResult;)V
    .locals 10
    .parameter "ar"

    .prologue
    const/4 v9, 0x0

    const-string v8, "\n"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .local v4, sb:Ljava/lang/StringBuilder;
    const-string v7, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_0
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    return-void

    :cond_0
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v7

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v2, v0

    .local v2, infos:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v7, v2

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v8, 0x10400c2

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCallForwardingPreference(Z)V

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceCallForwardingFlag(IZ)V

    :goto_1
    sget-object v7, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    :cond_1
    const-string v7, "GSM"

    const-string v8, "setVoiceCallForwardingFlag aborted. sim records is null."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .local v6, tb:Landroid/text/SpannableStringBuilder;
    const/4 v5, 0x1

    .local v5, serviceClassMask:I
    :goto_2
    const/16 v7, 0x80

    if-gt v5, v7, :cond_5

    const/4 v1, 0x0

    .local v1, i:I
    array-length v3, v2

    .local v3, s:I
    :goto_3
    if-ge v1, v3, :cond_4

    aget-object v7, v2, v1

    iget v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v7, v5

    if-eqz v7, :cond_3

    aget-object v7, v2, v1

    invoke-direct {p0, v7, v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    shl-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v1           #i:I
    .end local v3           #s:I
    :cond_5
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private onQueryComplete(Landroid/os/AsyncResult;)V
    .locals 8
    .parameter "ar"

    .prologue
    const v7, 0x10400b7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    return-void

    :cond_0
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object v1, v0

    .local v1, ints:[I
    array-length v3, v1

    if-eqz v3, :cond_5

    aget v3, v1, v5

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v4, 0x10400c2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_1
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v4, "43"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget v3, v1, v6

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    aget v3, v1, v5

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->createQueryCallBarringResultMessage(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    aget v3, v1, v5

    if-ne v3, v6, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v4, 0x10400c0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private onSetComplete(Landroid/os/AsyncResult;)V
    .locals 10
    .parameter "ar"

    .prologue
    const v8, 0x10400c7

    const v7, 0x10400c3

    const v5, 0x10400b7

    const/4 v6, 0x0

    const-string v9, "\n"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v4, "\n"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_7

    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_6

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .local v1, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v4, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinCommand()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v5, "05"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v5, "052"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v5, 0x10400c8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_1

    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v0, v4

    check-cast v0, [I

    move-object v2, v0

    .local v2, pukAttemptsRemaining:[I
    array-length v4, v2

    if-lez v4, :cond_1

    aget v4, v2, v6

    if-ltz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v5, 0x10400cd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    aget v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1           #err:Lcom/android/internal/telephony/CommandException$Error;
    .end local v2           #pukAttemptsRemaining:[I
    :cond_1
    :goto_0
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    return-void

    .restart local v1       #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v5, 0x10400c5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v5, 0x10400cc

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v1           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isCallFwdRegister:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isCallFwdRegister:Z

    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v5, "31"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveClirSetting(I)V

    goto :goto_0

    :cond_8
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v5, 0x10400c0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v5, 0x10400c2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v5, "31"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveClirSetting(I)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRegister()Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isErasure()Z

    move-result v4

    if-eqz v4, :cond_c

    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v5, 0x10400c4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_c
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method static scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "sc"

    .prologue
    const-string v2, "invalid call barring sc"

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call barring sc"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "33"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AO"

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "331"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "OI"

    goto :goto_0

    :cond_2
    const-string v0, "332"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "OX"

    goto :goto_0

    :cond_3
    const-string v0, "35"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "AI"

    goto :goto_0

    :cond_4
    const-string v0, "351"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "IR"

    goto :goto_0

    :cond_5
    const-string v0, "330"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "AB"

    goto :goto_0

    :cond_6
    const-string v0, "333"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "AG"

    goto :goto_0

    :cond_7
    const-string v0, "353"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "AC"

    goto :goto_0

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call barring sc"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static scToCallForwardReason(Ljava/lang/String;)I
    .locals 3
    .parameter "sc"

    .prologue
    const-string v2, "invalid call forward sc"

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call forward sc"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_1
    const-string v0, "21"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v0, "67"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "62"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const-string v0, "61"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    const-string v0, "004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call forward sc"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private serviceClassToCFString(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "serviceClass"

    .prologue
    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400ea

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400eb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400ec

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400ed

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400ee

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400f1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
    .end sparse-switch
.end method

.method private static siToServiceClass(Ljava/lang/String;)I
    .locals 4
    .parameter "si"

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/16 v1, 0xa

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .local v0, serviceCode:I
    sparse-switch v0, :sswitch_data_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported MMI service code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    const/16 v1, 0xd

    goto :goto_0

    :sswitch_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const/16 v1, 0xc

    goto :goto_0

    :sswitch_3
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const/16 v1, 0x8

    goto :goto_0

    :sswitch_5
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const/16 v1, 0x30

    goto :goto_0

    :sswitch_7
    const/16 v1, 0xa0

    goto :goto_0

    :sswitch_8
    const/16 v1, 0x50

    goto :goto_0

    :sswitch_9
    const/16 v1, 0x10

    goto :goto_0

    :sswitch_a
    const/16 v1, 0x20

    goto :goto_0

    :sswitch_b
    const/16 v1, 0x11

    goto :goto_0

    :sswitch_c
    const/16 v1, 0x40

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_3
        0x10 -> :sswitch_4
        0x13 -> :sswitch_5
        0x14 -> :sswitch_6
        0x15 -> :sswitch_7
        0x16 -> :sswitch_8
        0x18 -> :sswitch_9
        0x19 -> :sswitch_a
        0x1a -> :sswitch_b
        0x63 -> :sswitch_c
    .end sparse-switch
.end method

.method private static siToTime(Ljava/lang/String;)I
    .locals 1
    .parameter "si"

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x7

    invoke-virtual {p0, v1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->cancelPendingUssd(Landroid/os/Message;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto :goto_0
.end method

.method getCLIRMode()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/MmiCode$State;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    move-object v1, v0

    .local v1, ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onSetComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    move-object v1, v0

    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_1

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v4, :cond_2

    move v2, v4

    .local v2, cffEnabled:Z
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceCallForwardingFlag(IZ)V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCallForwardingPreference(Z)V

    .end local v2           #cffEnabled:Z
    :cond_1
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onSetComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    move v2, v3

    goto :goto_1

    .restart local v2       #cffEnabled:Z
    :cond_3
    const-string v3, "GSM"

    const-string v4, "setVoiceCallForwardingFlag aborted. sim records is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #cffEnabled:Z
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    move-object v1, v0

    .restart local v1       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onGetClirComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    move-object v1, v0

    .restart local v1       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onQueryCfComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    move-object v1, v0

    .restart local v1       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onQueryComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    move-object v1, v0

    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto/16 :goto_0

    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method isActivate()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCancelable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD:Z

    return v0
.end method

.method isDeactivate()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isErasure()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirstNeInitiated()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isFisrtNwInitiatedUssd:Z

    return v0
.end method

.method isGlobalDevMmi()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "611"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInterrogate()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    const-string v1, "*#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMMI()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->poundString:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPendingUSSD()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD:Z

    return v0
.end method

.method isPinCommand()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "042"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "052"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRegister()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    const-string v1, "**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isShortCode()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->poundString:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSsInfo()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isSsInfo:Z

    return v0
.end method

.method isTemporaryModeCLIR()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUssdRequest()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isUssdRequest:Z

    return v0
.end method

.method onUssdFinished(Ljava/lang/String;Z)V
    .locals 2
    .parameter "ussdMessage"
    .parameter "isUssdRequest"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400c6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    :goto_0
    iput-boolean p2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isUssdRequest:Z

    if-nez p2, :cond_0

    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    :cond_1
    return-void

    :cond_2
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method onUssdFinishedError()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400b7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    :cond_0
    return-void
.end method

.method parseSsData(Lcom/android/internal/telephony/gsm/SsData;)V
    .locals 7
    .parameter "ssData"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, "GSM"

    iget v2, p1, Lcom/android/internal/telephony/gsm/SsData;->result:I

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .local v1, ex:Lcom/android/internal/telephony/CommandException;
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScStringFromScType(Lcom/android/internal/telephony/gsm/SsData$ServiceType;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getActionStringFromReqType(Lcom/android/internal/telephony/gsm/SsData$RequestType;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    const-string v2, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseSsData sc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmMmiCode$1;->$SwitchMap$com$android$internal$telephony$gsm$SsData$RequestType:[I

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SsData$RequestType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const-string v2, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invaid requestType in SSData : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget v2, p1, Lcom/android/internal/telephony/gsm/SsData;->result:I

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->isTypeUnConditional()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    sget-object v3, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_ACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    if-eq v2, v3, :cond_0

    iget-object v2, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    sget-object v3, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_REGISTRATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    if-ne v2, v3, :cond_2

    :cond_0
    iget v2, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceClass:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceClassVoiceorNone(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v6

    .local v0, cffEnabled:Z
    :goto_1
    const-string v2, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVoiceCallForwardingFlag cffEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v2, v6, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceCallForwardingFlag(IZ)V

    const-string v2, "GSM"

    const-string v2, "setVoiceCallForwardingFlag done from SS Info."

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #cffEnabled:Z
    :cond_1
    :goto_2
    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v2, v5, v3, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onSetComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1

    .restart local v0       #cffEnabled:Z
    :cond_3
    const-string v2, "GSM"

    const-string v2, "setVoiceCallForwardingFlag aborted. sim records is null."

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v0           #cffEnabled:Z
    :pswitch_1
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->isTypeClir()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "GSM"

    const-string v2, "CLIR INTERROGATION"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    invoke-direct {v2, v5, v3, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onGetClirComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->isTypeCF()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "GSM"

    const-string v2, "CALL FORWARD INTERROGATION"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v2, v5, v3, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onQueryCfComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :cond_5
    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    invoke-direct {v2, v5, v3, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onQueryComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method processCode()V
    .locals 31

    .prologue
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isShortCode()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "GSM"

    const-string v6, "isShortCode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid or Unsupported MMI Code"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v5

    move-object/from16 v23, v5

    .local v23, exc:Ljava/lang/RuntimeException;
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    move-object v5, v0

    const v6, 0x10400b7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto :goto_0

    .end local v23           #exc:Ljava/lang/RuntimeException;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "30"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "GSM"

    const-string v6, "is CLIP"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v6

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->queryCLIP(Landroid/os/Message;)V

    goto :goto_0

    :cond_3
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid or Unsupported MMI Code"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "31"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "GSM"

    const-string v6, "is CLIR"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move v1, v7

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v5

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x2

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move v1, v7

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move v1, v6

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_7
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid or Unsupported MMI Code"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    const-string v5, "GSM"

    const-string v6, "is CF"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sia:Ljava/lang/String;

    move-object v9, v0

    .local v9, dialingNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v8

    .local v8, serviceClass:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->scToCallForwardReason(Ljava/lang/String;)I

    move-result v7

    .local v7, reason:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sic:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToTime(Ljava/lang/String;)I

    move-result v10

    .local v10, time:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v5

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move v1, v6

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v7, v8, v9, v6}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v5

    if-eqz v5, :cond_e

    if-eqz v9, :cond_d

    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isCallFwdRegister:Z

    const/4 v6, 0x3

    .local v6, cfAction:I
    :goto_1
    if-eqz v7, :cond_a

    const/4 v5, 0x4

    if-ne v7, v5, :cond_12

    :cond_a
    and-int/lit8 v5, v8, 0x1

    if-nez v5, :cond_b

    if-nez v8, :cond_12

    :cond_b
    const/4 v5, 0x1

    move/from16 v25, v5

    .local v25, isSettingUnconditionalVoice:I
    :goto_2
    const/4 v5, 0x1

    if-eq v6, v5, :cond_c

    const/4 v5, 0x3

    if-ne v6, v5, :cond_13

    :cond_c
    const/4 v5, 0x1

    move/from16 v24, v5

    .local v24, isEnableDesired:I
    :goto_3
    const-string v5, "GSM"

    const-string v11, "is CF setCallForward"

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v11, 0x6

    move-object/from16 v0, p0

    move v1, v11

    move/from16 v2, v25

    move/from16 v3, v24

    move-object/from16 v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-interface/range {v5 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .end local v6           #cfAction:I
    .end local v24           #isEnableDesired:I
    .end local v25           #isSettingUnconditionalVoice:I
    :cond_d
    const/4 v6, 0x1

    .restart local v6       #cfAction:I
    goto :goto_1

    .end local v6           #cfAction:I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v6, 0x0

    .restart local v6       #cfAction:I
    goto :goto_1

    .end local v6           #cfAction:I
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRegister()Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v6, 0x3

    .restart local v6       #cfAction:I
    goto :goto_1

    .end local v6           #cfAction:I
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isErasure()Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v6, 0x4

    .restart local v6       #cfAction:I
    goto :goto_1

    .end local v6           #cfAction:I
    :cond_11
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "invalid action"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .restart local v6       #cfAction:I
    :cond_12
    const/4 v5, 0x0

    move/from16 v25, v5

    goto :goto_2

    .restart local v25       #isSettingUnconditionalVoice:I
    :cond_13
    const/4 v5, 0x0

    move/from16 v24, v5

    goto :goto_3

    .end local v6           #cfAction:I
    .end local v7           #reason:I
    .end local v8           #serviceClass:I
    .end local v9           #dialingNumber:Ljava/lang/String;
    .end local v10           #time:I
    .end local v25           #isSettingUnconditionalVoice:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sia:Ljava/lang/String;

    move-object v14, v0

    .local v14, password:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v8

    .restart local v8       #serviceClass:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, facility:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v5

    if-eqz v5, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v12, ""

    const/4 v5, 0x5

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    move v15, v8

    invoke-interface/range {v11 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v5

    if-nez v5, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v5

    if-eqz v5, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    iget-object v15, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v16, ""

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v18

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    move-object/from16 v17, v13

    move-object/from16 v19, v14

    move/from16 v20, v8

    invoke-interface/range {v15 .. v21}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    :cond_17
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid or Unsupported MMI Code"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v8           #serviceClass:I
    .end local v13           #facility:Ljava/lang/String;
    .end local v14           #password:Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "03"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    move-object/from16 v29, v0

    .local v29, oldPwd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sic:Ljava/lang/String;

    move-object/from16 v27, v0

    .local v27, newPwd:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v5

    if-nez v5, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRegister()Z

    move-result v5

    if-eqz v5, :cond_1c

    :cond_19
    const-string v5, "**"

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->action:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sia:Ljava/lang/String;

    move-object v5, v0

    if-nez v5, :cond_1a

    const-string v13, "AB"

    .restart local v13       #facility:Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->pwd:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v6

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object v0, v5

    move-object v1, v13

    move-object/from16 v2, v29

    move-object/from16 v3, v27

    move-object v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v13           #facility:Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sia:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #facility:Ljava/lang/String;
    goto :goto_4

    :cond_1b
    const v5, 0x10400c5

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->handlePasswordError(I)V

    goto/16 :goto_0

    .end local v13           #facility:Ljava/lang/String;
    :cond_1c
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid or Unsupported MMI Code"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v27           #newPwd:Ljava/lang/String;
    .end local v29           #oldPwd:Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "43"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sia:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v8

    .restart local v8       #serviceClass:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v5

    if-nez v5, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v5

    if-eqz v5, :cond_1f

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move v1, v7

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v5, v6, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto/16 :goto_0

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v5

    if-eqz v5, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v6

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v8, v6}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto/16 :goto_0

    :cond_20
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid or Unsupported MMI Code"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v8           #serviceClass:I
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "76"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "77"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "300"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    :cond_22
    const-string v5, "GSM"

    const-string v6, "processCode () sc != null && sc.equals(SC_COLP)"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sia:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v8

    .restart local v8       #serviceClass:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "76"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    const-string v5, "GSM"

    const-string v6, "processCode () sc.equals(SC_COLP)"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x13

    .local v22, SSCode:I
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "GSM"

    const-string v6, "processCode () sc != null && sc.equals(SC_COLP)"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v6

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object v0, v5

    move v1, v8

    move/from16 v2, v22

    move-object v3, v6

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->queryCommonSSService(IILandroid/os/Message;)V

    goto/16 :goto_0

    .end local v22           #SSCode:I
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "77"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    const-string v5, "GSM"

    const-string v6, "processCode () sc.equals(SC_COLR)"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x14

    .restart local v22       #SSCode:I
    goto :goto_5

    .end local v22           #SSCode:I
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "300"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    const-string v5, "GSM"

    const-string v6, "processCode () sc.equals(SC_CNAP)"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x15

    .restart local v22       #SSCode:I
    goto :goto_5

    .end local v22           #SSCode:I
    :cond_25
    const-string v5, "GSM"

    const-string v6, "processCode () else"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x13

    .restart local v22       #SSCode:I
    goto :goto_5

    .end local v8           #serviceClass:I
    .end local v22           #SSCode:I
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinCommand()Z

    move-result v5

    if-eqz v5, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sia:Ljava/lang/String;

    move-object/from16 v28, v0

    .local v28, oldPinOrPuk:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sib:Ljava/lang/String;

    move-object/from16 v26, v0

    .local v26, newPin:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v30

    .local v30, pinLen:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRegister()Z

    move-result v5

    if-eqz v5, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sic:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    const v5, 0x10400c9

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->handlePasswordError(I)V

    goto/16 :goto_0

    :cond_27
    const/4 v5, 0x4

    move/from16 v0, v30

    move v1, v5

    if-lt v0, v1, :cond_28

    const/16 v5, 0x8

    move/from16 v0, v30

    move v1, v5

    if-le v0, v1, :cond_29

    :cond_28
    const v5, 0x10400ca

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->handlePasswordError(I)V

    goto/16 :goto_0

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "04"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->m3gppApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v5, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->m3gppApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccCardApplication;->getState()Lcom/android/internal/telephony/UiccConstants$AppState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-ne v5, v6, :cond_2a

    const v5, 0x10400cb

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->handlePasswordError(I)V

    goto/16 :goto_0

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "04"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApp:Lcom/android/internal/telephony/UiccCardApplication;

    move-object v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApp:Lcom/android/internal/telephony/UiccCardApplication;

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v6

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object v0, v5

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/UiccCardApplication;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "042"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApp:Lcom/android/internal/telephony/UiccCardApplication;

    move-object v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApp:Lcom/android/internal/telephony/UiccCardApplication;

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v6

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object v0, v5

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/UiccCardApplication;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "05"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApp:Lcom/android/internal/telephony/UiccCardApplication;

    move-object v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApp:Lcom/android/internal/telephony/UiccCardApplication;

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v6

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object v0, v5

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "052"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApp:Lcom/android/internal/telephony/UiccCardApplication;

    move-object v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApp:Lcom/android/internal/telephony/UiccCardApplication;

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v6

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object v0, v5

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_2e
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid or Unsupported MMI Code"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v26           #newPin:Ljava/lang/String;
    .end local v28           #oldPinOrPuk:Ljava/lang/String;
    .end local v30           #pinLen:I
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeUnsupported(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported MMI code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->context:Landroid/content/Context;

    move-object v5, v0

    const v6, 0x10400b8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->message:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto/16 :goto_0

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->poundString:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->poundString:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_31
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid or Unsupported MMI Code"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method processSsData(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "data"

    .prologue
    const-string v5, "Exception in parsing SS Data : "

    const-string v4, "GSM"

    const-string v2, "GSM"

    const-string v2, "In processSsData"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isSsInfo:Z

    :try_start_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gsm/SsData;

    .local v1, ssData:Lcom/android/internal/telephony/gsm/SsData;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->parseSsData(Lcom/android/internal/telephony/gsm/SsData;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1           #ssData:Lcom/android/internal/telephony/gsm/SsData;
    :goto_0
    return-void

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/ClassCastException;
    const-string v2, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in parsing SS Data : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #ex:Ljava/lang/ClassCastException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in parsing SS Data : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetNwInitiatedFlag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isFisrtNwInitiatedUssd:Z

    return-void
.end method

.method sendUssd(Ljava/lang/String;)V
    .locals 2
    .parameter "ussdMessage"

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD:Z

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendUSSD(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method
