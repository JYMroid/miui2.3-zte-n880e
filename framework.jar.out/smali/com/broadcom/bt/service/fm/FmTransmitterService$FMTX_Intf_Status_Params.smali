.class Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;
.super Ljava/lang/Object;
.source "FmTransmitterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmTransmitterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FMTX_Intf_Status_Params"
.end annotation


# instance fields
.field private m_channel_status:I

.field private m_rssi:I

.field private m_status:I

.field final synthetic this$0:Lcom/broadcom/bt/service/fm/FmTransmitterService;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmTransmitterService;III)V
    .locals 0
    .parameter
    .parameter "status"
    .parameter "rssi"
    .parameter "channel_status"

    .prologue
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;->m_status:I

    iput p3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;->m_rssi:I

    iput p4, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;->m_channel_status:I

    return-void
.end method

.method static synthetic access$1000(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;->m_rssi:I

    return v0
.end method

.method static synthetic access$1100(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;->m_channel_status:I

    return v0
.end method

.method static synthetic access$900(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;->m_status:I

    return v0
.end method
