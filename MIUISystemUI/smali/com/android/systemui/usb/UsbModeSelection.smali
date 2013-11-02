.class public Lcom/android/systemui/usb/UsbModeSelection;
.super Landroid/app/Activity;
.source "UsbModeSelection.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mCurrentMode:I

.field private mDialog:Landroid/app/Dialog;

.field private mDontAsk:Landroid/widget/CheckBox;

.field private mResolver:Landroid/content/ContentResolver;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUsbStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    new-instance v0, Lcom/android/systemui/usb/UsbModeSelection$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/UsbModeSelection$1;-><init>(Lcom/android/systemui/usb/UsbModeSelection;)V

    iput-object v0, p0, Lcom/android/systemui/usb/UsbModeSelection;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/usb/UsbModeSelection;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/usb/UsbModeSelection;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/usb/UsbModeSelection;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/usb/UsbModeSelection;->mDontAsk:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/usb/UsbModeSelection;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/usb/UsbModeSelection;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/usb/UsbModeSelection;)Landroid/os/storage/StorageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/usb/UsbModeSelection;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method private switchUsbMassStorage(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 140
    iget-object v2, p0, Lcom/android/systemui/usb/UsbModeSelection;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v1

    .line 141
    .local v1, enabled:Z
    if-ne p1, v1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 144
    :cond_0
    move v0, p1

    .line 145
    .local v0, _on:Z
    new-instance v2, Lcom/android/systemui/usb/UsbModeSelection$3;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/usb/UsbModeSelection$3;-><init>(Lcom/android/systemui/usb/UsbModeSelection;Z)V

    invoke-virtual {v2}, Lcom/android/systemui/usb/UsbModeSelection$3;->start()V

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 121
    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/usb/UsbModeSelection;->onClick(Landroid/content/DialogInterface;I)V

    .line 122
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 126
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 127
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/usb/UsbModeSelection;->mCurrentMode:I

    .line 128
    invoke-direct {p0, v1}, Lcom/android/systemui/usb/UsbModeSelection;->switchUsbMassStorage(Z)V

    .line 133
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/usb/UsbModeSelection;->mDontAsk:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/systemui/usb/UsbModeSelection;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "usb_mode"

    iget v2, p0, Lcom/android/systemui/usb/UsbModeSelection;->mCurrentMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbModeSelection;->finish()V

    .line 137
    return-void

    .line 129
    :cond_2
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 130
    iput v1, p0, Lcom/android/systemui/usb/UsbModeSelection;->mCurrentMode:I

    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/usb/UsbModeSelection;->switchUsbMassStorage(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "UsbModeSelection.action.CHARGE_ONLY"

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0, v6}, Lcom/android/systemui/usb/UsbModeSelection;->requestWindowFeature(I)Z

    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbModeSelection;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/usb/UsbModeSelection;->mResolver:Landroid/content/ContentResolver;

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbModeSelection;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/usb/UsbModeSelection;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "usb_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/usb/UsbModeSelection;->mCurrentMode:I

    .line 64
    iget-object v3, p0, Lcom/android/systemui/usb/UsbModeSelection;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v3, :cond_0

    .line 65
    const-string v3, "storage"

    invoke-virtual {p0, v3}, Lcom/android/systemui/usb/UsbModeSelection;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    iput-object v3, p0, Lcom/android/systemui/usb/UsbModeSelection;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 66
    iget-object v3, p0, Lcom/android/systemui/usb/UsbModeSelection;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v3, :cond_0

    .line 67
    const-string v3, "UsbModeSelection"

    const-string v4, "Failed to get StorageManager"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    const-string v3, "UsbModeSelection.action.CHARGE_ONLY"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "UsbModeSelection.action.MOUNT_STORAGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 72
    :cond_1
    const-string v3, "UsbModeSelection.action.CHARGE_ONLY"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 73
    .local v2, isChargeOnly:Z
    if-nez v2, :cond_2

    move v3, v6

    :goto_0
    invoke-direct {p0, v3}, Lcom/android/systemui/usb/UsbModeSelection;->switchUsbMassStorage(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbModeSelection;->finish()V

    .line 100
    .end local v2           #isChargeOnly:Z
    :goto_1
    return-void

    .restart local v2       #isChargeOnly:Z
    :cond_2
    move v3, v5

    .line 73
    goto :goto_0

    .line 76
    .end local v2           #isChargeOnly:Z
    :cond_3
    new-instance v3, Landroid/widget/CheckBox;

    invoke-direct {v3, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/usb/UsbModeSelection;->mDontAsk:Landroid/widget/CheckBox;

    .line 77
    iget-object v3, p0, Lcom/android/systemui/usb/UsbModeSelection;->mDontAsk:Landroid/widget/CheckBox;

    const v4, 0x7f0a0016

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(I)V

    .line 78
    iget-object v3, p0, Lcom/android/systemui/usb/UsbModeSelection;->mDontAsk:Landroid/widget/CheckBox;

    new-instance v4, Lcom/android/systemui/usb/UsbModeSelection$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/usb/UsbModeSelection$2;-><init>(Lcom/android/systemui/usb/UsbModeSelection;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 92
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0a0017

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 93
    iget-object v3, p0, Lcom/android/systemui/usb/UsbModeSelection;->mDontAsk:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 94
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    const v3, 0x7f0a0018

    invoke-virtual {p0, v3}, Lcom/android/systemui/usb/UsbModeSelection;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 96
    const v3, 0x7f0a0019

    invoke-virtual {p0, v3}, Lcom/android/systemui/usb/UsbModeSelection;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 97
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/usb/UsbModeSelection;->mDialog:Landroid/app/Dialog;

    .line 98
    iget-object v3, p0, Lcom/android/systemui/usb/UsbModeSelection;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 111
    iget-object v0, p0, Lcom/android/systemui/usb/UsbModeSelection;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/UsbModeSelection;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/usb/UsbModeSelection;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/systemui/usb/UsbModeSelection;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbModeSelection;->finish()V

    .line 117
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/usb/UsbModeSelection;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/usb/UsbModeSelection;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    return-void
.end method
