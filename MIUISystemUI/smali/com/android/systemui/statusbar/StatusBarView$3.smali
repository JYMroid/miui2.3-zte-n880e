.class Lcom/android/systemui/statusbar/StatusBarView$3;
.super Ljava/lang/Object;
.source "StatusBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/StatusBarView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarView;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarView$3;->this$0:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 103
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarView$3;->this$0:Lcom/android/systemui/statusbar/StatusBarView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/StatusBarView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/StatusBarService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 104
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-nez v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarView$3;->this$0:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarView;->hideReturnToInCallScreenButton()V

    .line 114
    :goto_0
    return-void

    .line 108
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 109
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1084

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 112
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.InCallScreen"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarView$3;->this$0:Lcom/android/systemui/statusbar/StatusBarView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/StatusBarView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/StatusBarService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
