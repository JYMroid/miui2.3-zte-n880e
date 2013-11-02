.class Lcom/android/systemui/usb/UsbModeSelection$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbModeSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/UsbModeSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/UsbModeSelection;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/UsbModeSelection;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/systemui/usb/UsbModeSelection$1;->this$0:Lcom/android/systemui/usb/UsbModeSelection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "connected"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 42
    .local v0, connected:Z
    if-nez v0, :cond_1

    .line 43
    iget-object v1, p0, Lcom/android/systemui/usb/UsbModeSelection$1;->this$0:Lcom/android/systemui/usb/UsbModeSelection;

    #getter for: Lcom/android/systemui/usb/UsbModeSelection;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/systemui/usb/UsbModeSelection;->access$000(Lcom/android/systemui/usb/UsbModeSelection;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/android/systemui/usb/UsbModeSelection$1;->this$0:Lcom/android/systemui/usb/UsbModeSelection;

    #getter for: Lcom/android/systemui/usb/UsbModeSelection;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/systemui/usb/UsbModeSelection;->access$000(Lcom/android/systemui/usb/UsbModeSelection;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/usb/UsbModeSelection$1;->this$0:Lcom/android/systemui/usb/UsbModeSelection;

    invoke-virtual {v1}, Lcom/android/systemui/usb/UsbModeSelection;->finish()V

    .line 49
    .end local v0           #connected:Z
    :cond_1
    return-void
.end method
