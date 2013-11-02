.class Lcom/android/phone/SetSubscription$6;
.super Landroid/os/Handler;
.source "SetSubscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SetSubscription;
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
    .line 437
    iput-object p1, p0, Lcom/android/phone/SetSubscription$6;->this$0:Lcom/android/phone/SetSubscription;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const-string v7, "SetSubscription"

    .line 442
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 475
    :goto_0
    return-void

    .line 444
    :pswitch_0
    const-string v6, "SetSubscription"

    const-string v6, "EVENT_SET_SUBSCRIPTION_DONE"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v6, p0, Lcom/android/phone/SetSubscription$6;->this$0:Lcom/android/phone/SetSubscription;

    #getter for: Lcom/android/phone/SetSubscription;->mProxyManager:Lcom/android/internal/telephony/ProxyManager;
    invoke-static {v6}, Lcom/android/phone/SetSubscription;->access$200(Lcom/android/phone/SetSubscription;)Lcom/android/internal/telephony/ProxyManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/SetSubscription$6;->this$0:Lcom/android/phone/SetSubscription;

    #getter for: Lcom/android/phone/SetSubscription;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/phone/SetSubscription;->access$100(Lcom/android/phone/SetSubscription;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/ProxyManager;->unRegisterForSetSubscriptionCompleted(Landroid/os/Handler;)V

    .line 446
    iget-object v6, p0, Lcom/android/phone/SetSubscription$6;->this$0:Lcom/android/phone/SetSubscription;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Lcom/android/phone/SetSubscription;->dismissDialog(I)V

    .line 447
    iget-object v6, p0, Lcom/android/phone/SetSubscription$6;->this$0:Lcom/android/phone/SetSubscription;

    invoke-virtual {v6}, Lcom/android/phone/SetSubscription;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 448
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 450
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0

    .line 452
    .local v4, result:[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 453
    iget-object v6, p0, Lcom/android/phone/SetSubscription$6;->this$0:Lcom/android/phone/SetSubscription;

    invoke-virtual {v6, v4}, Lcom/android/phone/SetSubscription;->displayAlertDialog([Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :cond_0
    iget-object v6, p0, Lcom/android/phone/SetSubscription$6;->this$0:Lcom/android/phone/SetSubscription;

    invoke-virtual {v6}, Lcom/android/phone/SetSubscription;->finish()V

    goto :goto_0

    .line 459
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v4           #result:[Ljava/lang/String;
    :pswitch_1
    const-string v6, "SetSubscription"

    const-string v6, "EVENT_SIM_STATE_CHANGED"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v6, p0, Lcom/android/phone/SetSubscription$6;->this$0:Lcom/android/phone/SetSubscription;

    invoke-virtual {v6}, Lcom/android/phone/SetSubscription;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "subscr_parent"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 463
    .local v3, prefParent:Landroid/preference/PreferenceScreen;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v6, p0, Lcom/android/phone/SetSubscription$6;->this$0:Lcom/android/phone/SetSubscription;

    #getter for: Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    invoke-static {v6}, Lcom/android/phone/SetSubscription;->access$300(Lcom/android/phone/SetSubscription;)[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v6

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 464
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sub_group_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 466
    .local v5, subGroup:Landroid/preference/PreferenceCategory;
    if-eqz v5, :cond_1

    .line 467
    invoke-virtual {v5}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 463
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 470
    .end local v5           #subGroup:Landroid/preference/PreferenceCategory;
    :cond_2
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 471
    iget-object v6, p0, Lcom/android/phone/SetSubscription$6;->this$0:Lcom/android/phone/SetSubscription;

    #calls: Lcom/android/phone/SetSubscription;->populateList()V
    invoke-static {v6}, Lcom/android/phone/SetSubscription;->access$400(Lcom/android/phone/SetSubscription;)V

    .line 472
    iget-object v6, p0, Lcom/android/phone/SetSubscription$6;->this$0:Lcom/android/phone/SetSubscription;

    #calls: Lcom/android/phone/SetSubscription;->updateCheckBoxes()V
    invoke-static {v6}, Lcom/android/phone/SetSubscription;->access$000(Lcom/android/phone/SetSubscription;)V

    goto/16 :goto_0

    .line 442
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
