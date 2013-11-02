.class Lcom/android/settings/widget/buttons/BluetoothButton$BluetoothStateTracker$1;
.super Landroid/os/AsyncTask;
.source "BluetoothButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/buttons/BluetoothButton$BluetoothStateTracker;->requestStateChange(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/buttons/BluetoothButton$BluetoothStateTracker;

.field final synthetic val$desiredState:Z


# direct methods
.method constructor <init>(Lcom/android/settings/widget/buttons/BluetoothButton$BluetoothStateTracker;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/settings/widget/buttons/BluetoothButton$BluetoothStateTracker$1;->this$0:Lcom/android/settings/widget/buttons/BluetoothButton$BluetoothStateTracker;

    iput-boolean p2, p0, Lcom/android/settings/widget/buttons/BluetoothButton$BluetoothStateTracker$1;->val$desiredState:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/buttons/BluetoothButton$BluetoothStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "args"

    .prologue
    .line 55
    invoke-static {}, Lcom/android/settings/widget/buttons/BluetoothButton;->access$100()Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/widget/buttons/BluetoothButton$BluetoothStateTracker$1;->val$desiredState:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setBluetoothEnabled(Z)V

    .line 56
    const/4 v0, 0x0

    return-object v0
.end method
