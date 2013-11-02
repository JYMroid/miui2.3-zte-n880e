.class Lcom/android/phone/EmergencyDialer$2;
.super Ljava/lang/Object;
.source "EmergencyDialer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyDialer;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyDialer;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyDialer;)V
    .locals 0
    .parameter

    .prologue
    .line 729
    iput-object p1, p0, Lcom/android/phone/EmergencyDialer$2;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$2;->this$0:Lcom/android/phone/EmergencyDialer;

    #getter for: Lcom/android/phone/EmergencyDialer;->isPlaceCallNow:Z
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$000(Lcom/android/phone/EmergencyDialer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$2;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyDialer;->finish()V

    .line 735
    :cond_0
    return-void
.end method
