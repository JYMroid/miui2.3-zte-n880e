.class Lcom/android/systemui/usb/UsbModeSelection$3;
.super Ljava/lang/Thread;
.source "UsbModeSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/UsbModeSelection;->switchUsbMassStorage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/UsbModeSelection;

.field final synthetic val$_on:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/UsbModeSelection;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/systemui/usb/UsbModeSelection$3;->this$0:Lcom/android/systemui/usb/UsbModeSelection;

    iput-boolean p2, p0, Lcom/android/systemui/usb/UsbModeSelection$3;->val$_on:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/systemui/usb/UsbModeSelection$3;->val$_on:Z

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/systemui/usb/UsbModeSelection$3;->this$0:Lcom/android/systemui/usb/UsbModeSelection;

    #getter for: Lcom/android/systemui/usb/UsbModeSelection;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v0}, Lcom/android/systemui/usb/UsbModeSelection;->access$300(Lcom/android/systemui/usb/UsbModeSelection;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->enableUsbMassStorage()V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/usb/UsbModeSelection$3;->this$0:Lcom/android/systemui/usb/UsbModeSelection;

    #getter for: Lcom/android/systemui/usb/UsbModeSelection;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v0}, Lcom/android/systemui/usb/UsbModeSelection;->access$300(Lcom/android/systemui/usb/UsbModeSelection;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->disableUsbMassStorage()V

    goto :goto_0
.end method
