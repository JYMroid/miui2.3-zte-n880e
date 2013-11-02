.class Lcom/android/systemui/statusbar/StatusBarPolicy$3;
.super Ljava/lang/Object;
.source "StatusBarPolicy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 899
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$3;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 901
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$3;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #setter for: Lcom/android/systemui/statusbar/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$1702(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 902
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$3;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #setter for: Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$1802(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 903
    return-void
.end method
