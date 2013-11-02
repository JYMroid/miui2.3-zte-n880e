.class Lcom/android/phone/InCallScreen$15;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;

.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4329
    iput-object p1, p0, Lcom/android/phone/InCallScreen$15;->this$0:Lcom/android/phone/InCallScreen;

    iput-object p2, p0, Lcom/android/phone/InCallScreen$15;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 4331
    iget-object v0, p0, Lcom/android/phone/InCallScreen$15;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v1, p0, Lcom/android/phone/InCallScreen$15;->val$phone:Lcom/android/internal/telephony/Phone;

    #calls: Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect(Lcom/android/internal/telephony/Phone;)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$1500(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Phone;)V

    .line 4332
    return-void
.end method
