.class Lzte/com/cn/numberlocator/IPDialSettings$PhonenumberChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IPDialSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/numberlocator/IPDialSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhonenumberChangedBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/numberlocator/IPDialSettings;


# direct methods
.method private constructor <init>(Lzte/com/cn/numberlocator/IPDialSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lzte/com/cn/numberlocator/IPDialSettings$PhonenumberChangedBroadcastReceiver;->this$0:Lzte/com/cn/numberlocator/IPDialSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzte/com/cn/numberlocator/IPDialSettings;Lzte/com/cn/numberlocator/IPDialSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lzte/com/cn/numberlocator/IPDialSettings$PhonenumberChangedBroadcastReceiver;-><init>(Lzte/com/cn/numberlocator/IPDialSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v3, "mq"

    .line 376
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, action:Ljava/lang/String;
    const-string v1, "Intent_ACTION_SMART_IP_DIAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    const-string v1, "mq"

    const-string v1, "mq~~~~onReceive action.phonenumber.changed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-string v1, "mq"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mq~~~~onReceive local"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/numberlocator/IPDialSettings$PhonenumberChangedBroadcastReceiver;->this$0:Lzte/com/cn/numberlocator/IPDialSettings;

    #getter for: Lzte/com/cn/numberlocator/IPDialSettings;->local:Ljava/lang/String;
    invoke-static {v2}, Lzte/com/cn/numberlocator/IPDialSettings;->access$100(Lzte/com/cn/numberlocator/IPDialSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v1, "mq"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mq~~~~onReceive mipnum"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/numberlocator/IPDialSettings$PhonenumberChangedBroadcastReceiver;->this$0:Lzte/com/cn/numberlocator/IPDialSettings;

    #getter for: Lzte/com/cn/numberlocator/IPDialSettings;->mipnum:Ljava/lang/String;
    invoke-static {v2}, Lzte/com/cn/numberlocator/IPDialSettings;->access$200(Lzte/com/cn/numberlocator/IPDialSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v1, p0, Lzte/com/cn/numberlocator/IPDialSettings$PhonenumberChangedBroadcastReceiver;->this$0:Lzte/com/cn/numberlocator/IPDialSettings;

    #getter for: Lzte/com/cn/numberlocator/IPDialSettings;->local:Ljava/lang/String;
    invoke-static {v1}, Lzte/com/cn/numberlocator/IPDialSettings;->access$100(Lzte/com/cn/numberlocator/IPDialSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lzte/com/cn/numberlocator/IPDialSettings$PhonenumberChangedBroadcastReceiver;->this$0:Lzte/com/cn/numberlocator/IPDialSettings;

    #getter for: Lzte/com/cn/numberlocator/IPDialSettings;->mipnum:Ljava/lang/String;
    invoke-static {v1}, Lzte/com/cn/numberlocator/IPDialSettings;->access$200(Lzte/com/cn/numberlocator/IPDialSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 382
    const-string v1, "mq"

    const-string v1, "mq~~~~onReceive setEnabled(true)"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v1, p0, Lzte/com/cn/numberlocator/IPDialSettings$PhonenumberChangedBroadcastReceiver;->this$0:Lzte/com/cn/numberlocator/IPDialSettings;

    #getter for: Lzte/com/cn/numberlocator/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lzte/com/cn/numberlocator/IPDialSettings;->access$300(Lzte/com/cn/numberlocator/IPDialSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    const-string v1, "mq"

    const-string v1, "mq~~~~onReceive setEnabled(false)"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v1, p0, Lzte/com/cn/numberlocator/IPDialSettings$PhonenumberChangedBroadcastReceiver;->this$0:Lzte/com/cn/numberlocator/IPDialSettings;

    #getter for: Lzte/com/cn/numberlocator/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lzte/com/cn/numberlocator/IPDialSettings;->access$300(Lzte/com/cn/numberlocator/IPDialSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method
