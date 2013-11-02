.class Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;
.super Landroid/os/Handler;
.source "CallWaitingCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallWaitingCheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_GET_CALL_WAITING:I = 0x0

.field private static final MESSAGE_SET_CALL_WAITING:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallWaitingCheckBoxPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallWaitingCheckBoxPreference;Lcom/android/phone/CallWaitingCheckBoxPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/CallWaitingCheckBoxPreference;)V

    return-void
.end method

.method private handleGetCallWaitingResponse(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v7, "CallWaitingCheckBoxPreference"

    .line 85
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 87
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v3, v3, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v3, :cond_0

    .line 88
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v5, :cond_2

    .line 89
    iget-object v3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v3, v3, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v4, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-interface {v3, v4, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 95
    :cond_0
    :goto_0
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 97
    const-string v3, "CallWaitingCheckBoxPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCallWaitingResponse: ar.exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v3, v3, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v3, :cond_1

    .line 100
    iget-object v3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v3, v3, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v4, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object p0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v3, v4, p0}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 113
    :cond_1
    :goto_1
    return-void

    .line 91
    .restart local p0
    :cond_2
    iget-object v3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v3, v3, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v4, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-interface {v3, v4, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    .line 103
    :cond_3
    iget-object v3, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_4

    .line 104
    iget-object v3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v3, v3, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v3, v3, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v4, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    const/16 v5, 0x190

    invoke-interface {v3, v4, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 106
    :cond_4
    const-string v3, "CallWaitingCheckBoxPreference"

    const-string v3, "handleGetCallWaitingResponse: CW state successfully queried."

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object v2, v0

    .line 111
    .local v2, cwArray:[I
    iget-object v3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    aget v4, v2, v6

    if-ne v4, v5, :cond_5

    aget v4, v2, v5

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_5

    move v4, v5

    :goto_2
    invoke-virtual {v3, v4}, Lcom/android/phone/CallWaitingCheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :cond_5
    move v4, v6

    goto :goto_2
.end method

.method private handleSetCallWaitingResponse(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const-string v3, "CallWaitingCheckBoxPreference"

    .line 116
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 118
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 119
    const-string v1, "CallWaitingCheckBoxPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetCallWaitingResponse: ar.exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    const-string v1, "CallWaitingCheckBoxPreference"

    const-string v1, "handleSetCallWaitingResponse: re get"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v1, v1, Lcom/android/phone/CallWaitingCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v2, v4, v4, v3}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 126
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 76
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->handleGetCallWaitingResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 79
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->handleSetCallWaitingResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
