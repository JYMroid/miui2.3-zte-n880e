.class Lcom/android/internal/telephony/MMDataConnection$QosIndication;
.super Ljava/lang/Object;
.source "MMDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MMDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QosIndication"
.end annotation


# instance fields
.field mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/internal/telephony/MMDataConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/MMDataConnection;)V
    .locals 3
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/MMDataConnection$QosIndication;->this$0:Lcom/android/internal/telephony/MMDataConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_QOS_STATE_IND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/MMDataConnection$QosIndication;->mIntent:Landroid/content/Intent;

    const-string v0, "persist.telephony.qosUnicast"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnection$QosIndication;->mIntent:Landroid/content/Intent;

    const-string v1, "com.android.server"

    const-string v2, "com.android.server.LinkManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-void
.end method


# virtual methods
.method sendIndication()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnection$QosIndication;->this$0:Lcom/android/internal/telephony/MMDataConnection;

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnection$QosIndication;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method setIndState(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "error"

    .prologue
    if-eqz p2, :cond_0

    const/16 p1, 0xe

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnection$QosIndication;->mIntent:Landroid/content/Intent;

    const-string v1, "QosIndicationState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method setQosId(I)V
    .locals 2
    .parameter "qosId"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnection$QosIndication;->mIntent:Landroid/content/Intent;

    const-string v1, "QosId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method setQosSpec(Lcom/android/internal/telephony/QosSpec;)V
    .locals 2
    .parameter "spec"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnection$QosIndication;->mIntent:Landroid/content/Intent;

    const-string v1, "QosSpec"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void
.end method

.method setQosState(I)V
    .locals 2
    .parameter "state"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnection$QosIndication;->mIntent:Landroid/content/Intent;

    const-string v1, "QosStatus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method setUserData(I)V
    .locals 2
    .parameter "userData"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnection$QosIndication;->mIntent:Landroid/content/Intent;

    const-string v1, "QosUserData"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method
