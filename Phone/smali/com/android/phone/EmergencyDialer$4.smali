.class Lcom/android/phone/EmergencyDialer$4;
.super Ljava/lang/Object;
.source "EmergencyDialer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 761
    iput-object p1, p0, Lcom/android/phone/EmergencyDialer$4;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$4;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyDialer;->finish()V

    .line 765
    return-void
.end method
