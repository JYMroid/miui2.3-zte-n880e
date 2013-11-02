.class public Lcom/android/phone/NotificationMgr$OnDeletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnDeletedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NotificationMgr;


# direct methods
.method public constructor <init>(Lcom/android/phone/NotificationMgr;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/phone/NotificationMgr$OnDeletedReceiver;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v3, "NotificationMgr"

    .line 157
    const-string v1, "NotificationMgr"

    const-string v1, "onReceive: Mark all new missed calls as not new anymore"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$OnDeletedReceiver;->this$0:Lcom/android/phone/NotificationMgr;

    #calls: Lcom/android/phone/NotificationMgr;->resetNewCallsFlag()V
    invoke-static {v1}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;)V

    .line 161
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.action.statusbarforcestop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$OnDeletedReceiver;->this$0:Lcom/android/phone/NotificationMgr;

    const/4 v2, 0x1

    #setter for: Lcom/android/phone/NotificationMgr;->isStatusbarStop:Z
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$102(Lcom/android/phone/NotificationMgr;Z)Z

    .line 164
    const-string v1, "NotificationMgr"

    const-string v1, "isStatusbarStop = true"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    return-void
.end method
