.class Lcom/android/systemui/statusbar/StatusBarPolicy$2;
.super Ljava/lang/Object;
.source "StatusBarPolicy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/StatusBarPolicy;->showLowBatteryWarning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 840
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    iput-object p2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #getter for: Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$1600(Lcom/android/systemui/statusbar/StatusBarPolicy;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 843
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #getter for: Lcom/android/systemui/statusbar/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$1700(Lcom/android/systemui/statusbar/StatusBarPolicy;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #getter for: Lcom/android/systemui/statusbar/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$1700(Lcom/android/systemui/statusbar/StatusBarPolicy;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 846
    :cond_0
    return-void
.end method
