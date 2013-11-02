.class Lcom/android/systemui/statusbar/StatusBarPolicy$StatusBarHandler;
.super Landroid/os/Handler;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusBarHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/StatusBarPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 1482
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/StatusBarPolicy;Lcom/android/systemui/statusbar/StatusBarPolicy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1482
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy$StatusBarHandler;-><init>(Lcom/android/systemui/statusbar/StatusBarPolicy;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1485
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1492
    :cond_0
    :goto_0
    return-void

    .line 1487
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #getter for: Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryViewSequence:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$2500(Lcom/android/systemui/statusbar/StatusBarPolicy;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1488
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->closeLastBatteryView()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$2600(Lcom/android/systemui/statusbar/StatusBarPolicy;)V

    goto :goto_0

    .line 1485
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
