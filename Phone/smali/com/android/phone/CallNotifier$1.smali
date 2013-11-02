.class Lcom/android/phone/CallNotifier$1;
.super Landroid/telephony/PhoneStateListener;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallNotifier;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 2
    .parameter "cfi"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    iget v1, p0, Lcom/android/phone/CallNotifier$1;->mSubscription:I

    #calls: Lcom/android/phone/CallNotifier;->onCfiChanged(ZI)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;ZI)V

    .line 453
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 2
    .parameter "mwi"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    iget v1, p0, Lcom/android/phone/CallNotifier$1;->mSubscription:I

    invoke-static {v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    #calls: Lcom/android/phone/CallNotifier;->onMwiChanged(ZLcom/android/internal/telephony/Phone;)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;ZLcom/android/internal/telephony/Phone;)V

    .line 448
    return-void
.end method
