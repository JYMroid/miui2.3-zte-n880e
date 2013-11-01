.class Lcom/android/internal/widget/CarrierGroupView$1;
.super Landroid/os/Handler;
.source "CarrierGroupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/CarrierGroupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/CarrierGroupView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/CarrierGroupView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/CarrierGroupView$1;->this$0:Lcom/android/internal/widget/CarrierGroupView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/widget/CarrierGroupView$1;->this$0:Lcom/android/internal/widget/CarrierGroupView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/widget/CarrierGroupView;->handleCarrierInfoUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/internal/widget/CarrierGroupView;->access$000(Lcom/android/internal/widget/CarrierGroupView;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x378
        :pswitch_0
    .end packed-switch
.end method
