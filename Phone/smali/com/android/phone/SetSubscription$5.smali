.class Lcom/android/phone/SetSubscription$5;
.super Ljava/lang/Object;
.source "SetSubscription.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SetSubscription;->errorMutipleDeactivate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SetSubscription;


# direct methods
.method constructor <init>(Lcom/android/phone/SetSubscription;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/phone/SetSubscription$5;->this$0:Lcom/android/phone/SetSubscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 424
    const-string v0, "SetSubscription"

    const-string v1, "errorMutipleDeactivate:  onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/android/phone/SetSubscription$5;->this$0:Lcom/android/phone/SetSubscription;

    #calls: Lcom/android/phone/SetSubscription;->updateCheckBoxes()V
    invoke-static {v0}, Lcom/android/phone/SetSubscription;->access$000(Lcom/android/phone/SetSubscription;)V

    .line 426
    return-void
.end method
