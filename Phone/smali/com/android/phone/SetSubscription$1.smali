.class Lcom/android/phone/SetSubscription$1;
.super Ljava/lang/Object;
.source "SetSubscription.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SetSubscription;->notifyNewCardAvailable()V
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
    .line 155
    iput-object p1, p0, Lcom/android/phone/SetSubscription$1;->this$0:Lcom/android/phone/SetSubscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 157
    const-string v0, "SetSubscription"

    const-string v1, "new card dialog box:  onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/android/phone/SetSubscription$1;->this$0:Lcom/android/phone/SetSubscription;

    invoke-virtual {v0}, Lcom/android/phone/SetSubscription;->finish()V

    .line 159
    return-void
.end method
