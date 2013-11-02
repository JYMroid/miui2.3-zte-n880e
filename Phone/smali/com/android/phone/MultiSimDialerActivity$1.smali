.class Lcom/android/phone/MultiSimDialerActivity$1;
.super Ljava/lang/Object;
.source "MultiSimDialerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MultiSimDialerActivity;->launchMSDialer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MultiSimDialerActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/MultiSimDialerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/phone/MultiSimDialerActivity$1;->this$0:Lcom/android/phone/MultiSimDialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const-string v3, "MultiSimDialerActivity"

    .line 147
    const-string v0, "MultiSimDialerActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key code is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sparse-switch p2, :sswitch_data_0

    .line 167
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 150
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/MultiSimDialerActivity$1;->this$0:Lcom/android/phone/MultiSimDialerActivity;

    #getter for: Lcom/android/phone/MultiSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/MultiSimDialerActivity;->access$000(Lcom/android/phone/MultiSimDialerActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 151
    iget-object v0, p0, Lcom/android/phone/MultiSimDialerActivity$1;->this$0:Lcom/android/phone/MultiSimDialerActivity;

    const/16 v1, 0x63

    #calls: Lcom/android/phone/MultiSimDialerActivity;->startOutgoingCall(I)V
    invoke-static {v0, v1}, Lcom/android/phone/MultiSimDialerActivity;->access$100(Lcom/android/phone/MultiSimDialerActivity;I)V

    move v0, v2

    .line 152
    goto :goto_0

    .line 155
    :sswitch_1
    const-string v0, "MultiSimDialerActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 157
    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MultiSimDialerActivity$1;->this$0:Lcom/android/phone/MultiSimDialerActivity;

    #getter for: Lcom/android/phone/MultiSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/MultiSimDialerActivity;->access$000(Lcom/android/phone/MultiSimDialerActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 160
    iget-object v0, p0, Lcom/android/phone/MultiSimDialerActivity$1;->this$0:Lcom/android/phone/MultiSimDialerActivity;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getVoiceSubscription()I

    move-result v1

    #calls: Lcom/android/phone/MultiSimDialerActivity;->startOutgoingCall(I)V
    invoke-static {v0, v1}, Lcom/android/phone/MultiSimDialerActivity;->access$100(Lcom/android/phone/MultiSimDialerActivity;I)V

    move v0, v2

    .line 161
    goto :goto_0

    :sswitch_2
    move v0, v2

    .line 165
    goto :goto_0

    .line 148
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x54 -> :sswitch_2
    .end sparse-switch
.end method
