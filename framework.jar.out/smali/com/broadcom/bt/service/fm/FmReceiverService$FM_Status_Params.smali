.class Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;
.super Ljava/lang/Object;
.source "FmReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FM_Status_Params"
.end annotation


# instance fields
.field private mStFreq:I

.field private mStIsMute:Z

.field private mStRadioIsOn:Z

.field private mStRdsProgramService:Ljava/lang/String;

.field private mStRdsProgramType:I

.field private mStRdsProgramTypeName:Ljava/lang/String;

.field private mStRdsRadioText:Ljava/lang/String;

.field private mStRssi:I

.field final synthetic this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter "Freq"
    .parameter "Rssi"
    .parameter "RadioIsOn"
    .parameter "RdsProgramType"
    .parameter "RdsProgramService"
    .parameter "RdsRadioText"
    .parameter "RdsProgramTypeName"
    .parameter "IsMute"

    .prologue
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->mStFreq:I

    iput p3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->mStRssi:I

    iput-boolean p4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->mStRadioIsOn:Z

    iput p5, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->mStRdsProgramType:I

    iput-object p6, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->mStRdsProgramService:Ljava/lang/String;

    iput-object p7, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->mStRdsRadioText:Ljava/lang/String;

    iput-object p8, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->mStRdsProgramTypeName:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->mStIsMute:Z

    return-void
.end method

.method static synthetic access$1000(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->mStRdsRadioText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->mStRdsProgramTypeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->mStIsMute:Z

    return v0
.end method

.method static synthetic access$500(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->mStFreq:I

    return v0
.end method

.method static synthetic access$600(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->mStRssi:I

    return v0
.end method

.method static synthetic access$700(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->mStRadioIsOn:Z

    return v0
.end method

.method static synthetic access$800(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->mStRdsProgramType:I

    return v0
.end method

.method static synthetic access$900(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->mStRdsProgramService:Ljava/lang/String;

    return-object v0
.end method