.class Lcom/android/phone/GetPin2Screen$MySupplyPin2Cmd;
.super Lcom/android/phone/SupplyPin2Cmd;
.source "GetPin2Screen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GetPin2Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySupplyPin2Cmd"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GetPin2Screen;


# direct methods
.method public constructor <init>(Lcom/android/phone/GetPin2Screen;Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "phone"
    .parameter "pin2"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/phone/GetPin2Screen$MySupplyPin2Cmd;->this$0:Lcom/android/phone/GetPin2Screen;

    .line 68
    invoke-direct {p0, p2, p3}, Lcom/android/phone/SupplyPin2Cmd;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    .line 69
    return-void
.end method


# virtual methods
.method OnCorrectPin2()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$MySupplyPin2Cmd;->this$0:Lcom/android/phone/GetPin2Screen;

    invoke-virtual {v0}, Lcom/android/phone/GetPin2Screen;->OnCorrectPin2Code()V

    .line 75
    return-void
.end method

.method OnErrorPin()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$MySupplyPin2Cmd;->this$0:Lcom/android/phone/GetPin2Screen;

    invoke-virtual {v0}, Lcom/android/phone/GetPin2Screen;->OnErrorPin2Code()V

    .line 81
    return-void
.end method
