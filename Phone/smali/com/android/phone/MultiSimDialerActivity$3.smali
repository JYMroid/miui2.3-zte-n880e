.class Lcom/android/phone/MultiSimDialerActivity$3;
.super Ljava/lang/Object;
.source "MultiSimDialerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MultiSimDialerActivity;->launchMSDialer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MultiSimDialerActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/MultiSimDialerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/phone/MultiSimDialerActivity$3;->this$0:Lcom/android/phone/MultiSimDialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/MultiSimDialerActivity$3;->this$0:Lcom/android/phone/MultiSimDialerActivity;

    #getter for: Lcom/android/phone/MultiSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/MultiSimDialerActivity;->access$000(Lcom/android/phone/MultiSimDialerActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 209
    :goto_0
    return-void

    .line 203
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/MultiSimDialerActivity$3;->this$0:Lcom/android/phone/MultiSimDialerActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/phone/MultiSimDialerActivity;->startOutgoingCall(I)V
    invoke-static {v0, v1}, Lcom/android/phone/MultiSimDialerActivity;->access$100(Lcom/android/phone/MultiSimDialerActivity;I)V

    goto :goto_0

    .line 206
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/MultiSimDialerActivity$3;->this$0:Lcom/android/phone/MultiSimDialerActivity;

    const/4 v1, 0x1

    #calls: Lcom/android/phone/MultiSimDialerActivity;->startOutgoingCall(I)V
    invoke-static {v0, v1}, Lcom/android/phone/MultiSimDialerActivity;->access$100(Lcom/android/phone/MultiSimDialerActivity;I)V

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x7f070052
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
