.class Lcom/android/phone/CanelCallForwardPreference$MyHandler;
.super Landroid/os/Handler;
.source "CanelCallForwardPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CanelCallForwardPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_GET_CF:I = 0x0

.field private static final MESSAGE_SET_CF:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/phone/CanelCallForwardPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CanelCallForwardPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/phone/CanelCallForwardPreference$MyHandler;->this$0:Lcom/android/phone/CanelCallForwardPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CanelCallForwardPreference;Lcom/android/phone/CanelCallForwardPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/phone/CanelCallForwardPreference$MyHandler;-><init>(Lcom/android/phone/CanelCallForwardPreference;)V

    return-void
.end method

.method private handleGetCFResponse(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/16 v9, 0x190

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 229
    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v8, :cond_1

    .line 230
    iget-object v5, p0, Lcom/android/phone/CanelCallForwardPreference$MyHandler;->this$0:Lcom/android/phone/CanelCallForwardPreference;

    iget-object v5, v5, Lcom/android/phone/CanelCallForwardPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v6, p0, Lcom/android/phone/CanelCallForwardPreference$MyHandler;->this$0:Lcom/android/phone/CanelCallForwardPreference;

    invoke-interface {v5, v6, v7}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 235
    :goto_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 237
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/phone/CanelCallForwardPreference$MyHandler;->this$0:Lcom/android/phone/CanelCallForwardPreference;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/phone/CanelCallForwardPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    .line 238
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_2

    .line 240
    iget-object v5, p0, Lcom/android/phone/CanelCallForwardPreference$MyHandler;->this$0:Lcom/android/phone/CanelCallForwardPreference;

    invoke-virtual {v5, v7}, Lcom/android/phone/CanelCallForwardPreference;->setEnabled(Z)V

    .line 241
    iget-object v5, p0, Lcom/android/phone/CanelCallForwardPreference$MyHandler;->this$0:Lcom/android/phone/CanelCallForwardPreference;

    iget-object v5, v5, Lcom/android/phone/CanelCallForwardPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v6, p0, Lcom/android/phone/CanelCallForwardPreference$MyHandler;->this$0:Lcom/android/phone/CanelCallForwardPreference;

    const/16 v7, 0x12c

    invoke-interface {v5, v6, v7}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 267
    :cond_0
    :goto_1
    return-void

    .line 232
    .end local v1           #ar:Landroid/os/AsyncResult;
    :cond_1
    iget-object v5, p0, Lcom/android/phone/CanelCallForwardPreference$MyHandler;->this$0:Lcom/android/phone/CanelCallForwardPreference;

    iget-object v5, v5, Lcom/android/phone/CanelCallForwardPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v6, p0, Lcom/android/phone/CanelCallForwardPreference$MyHandler;->this$0:Lcom/android/phone/CanelCallForwardPreference;

    invoke-interface {v5, v6, v8}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    .line 243
    .restart local v1       #ar:Landroid/os/AsyncResult;
    :cond_2
    iget-object v5, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_3

    .line 244
    iget-object v5, p0, Lcom/android/phone/CanelCallForwardPreference$MyHandler;->this$0:Lcom/android/phone/CanelCallForwardPreference;

    iget-object v5, v5, Lcom/android/phone/CanelCallForwardPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v6, p0, Lcom/android/phone/CanelCallForwardPreference$MyHandler;->this$0:Lcom/android/phone/CanelCallForwardPreference;

    invoke-interface {v5, v6, v9}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 246
    :cond_3
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v5

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v2, v0

    .line 247
    .local v2, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v5, v2

    if-nez v5, :cond_4

    .line 249
    iget-object v5, p0, Lcom/android/phone/CanelCallForwardPreference$MyHandler;->this$0:Lcom/android/phone/CanelCallForwardPreference;

    invoke-virtual {v5, v7}, Lcom/android/phone/CanelCallForwardPreference;->setEnabled(Z)V

    .line 250
    iget-object v5, p0, Lcom/android/phone/CanelCallForwardPreference$MyHandler;->this$0:Lcom/android/phone/CanelCallForwardPreference;

    iget-object v5, v5, Lcom/android/phone/CanelCallForwardPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v6, p0, Lcom/android/phone/CanelCallForwardPreference$MyHandler;->this$0:Lcom/android/phone/CanelCallForwardPreference;

    invoke-interface {v5, v6, v9}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 252
    :cond_4
    const/4 v3, 0x0

    .local v3, i:I
    array-length v4, v2

    .local v4, length:I
    :goto_2
    if-ge v3, v4, :cond_0

    .line 255
    iget-object v5, p0, Lcom/android/phone/CanelCallForwardPreference$MyHandler;->this$0:Lcom/android/phone/CanelCallForwardPreference;

    #getter for: Lcom/android/phone/CanelCallForwardPreference;->mServiceClass:I
    invoke-static {v5}, Lcom/android/phone/CanelCallForwardPreference;->access$100(Lcom/android/phone/CanelCallForwardPreference;)I

    move-result v5

    aget-object v6, v2, v3

    iget v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_5

    .line 257
    iget-object v5, p0, Lcom/android/phone/CanelCallForwardPreference$MyHandler;->this$0:Lcom/android/phone/CanelCallForwardPreference;

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Lcom/android/phone/CanelCallForwardPreference;->handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 252
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private handleSetCFResponse(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 270
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 272
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CanelCallForwardPreference$MyHandler;->this$0:Lcom/android/phone/CanelCallForwardPreference;

    iget-object v1, v1, Lcom/android/phone/CanelCallForwardPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CanelCallForwardPreference$MyHandler;->this$0:Lcom/android/phone/CanelCallForwardPreference;

    iget v2, v2, Lcom/android/phone/CanelCallForwardPreference;->reason:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/CanelCallForwardPreference$MyHandler;->this$0:Lcom/android/phone/CanelCallForwardPreference;

    iget v4, v4, Lcom/android/phone/CanelCallForwardPreference;->reason:I

    const/4 v5, 0x1

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/phone/CanelCallForwardPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 279
    const-string v1, "CanelCallForwardPreference"

    const-string v2, "mq~~~~handsetcfresponse"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 215
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 224
    :goto_0
    return-void

    .line 217
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CanelCallForwardPreference$MyHandler;->handleGetCFResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 220
    :pswitch_1
    const-string v0, "CanelCallForwardPreference"

    const-string v1, "mq~~~~handmessagesetcf"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-direct {p0, p1}, Lcom/android/phone/CanelCallForwardPreference$MyHandler;->handleSetCFResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
