.class final Lcom/android/phone/PhoneUtils$3;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private inputonce:Z

.field final synthetic val$inputText:Landroid/widget/EditText;

.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/Phone;Landroid/widget/EditText;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1275
    iput-object p1, p0, Lcom/android/phone/PhoneUtils$3;->val$phone:Lcom/android/internal/telephony/Phone;

    iput-object p2, p0, Lcom/android/phone/PhoneUtils$3;->val$inputText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneUtils$3;->inputonce:Z

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1278
    sparse-switch p2, :sswitch_data_0

    .line 1303
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1284
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USSD code Got KEYCODE_ENTER input="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/PhoneUtils$3;->inputonce:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    .line 1285
    iget-boolean v0, p0, Lcom/android/phone/PhoneUtils$3;->inputonce:Z

    if-nez v0, :cond_0

    .line 1286
    iput-boolean v2, p0, Lcom/android/phone/PhoneUtils$3;->inputonce:Z

    .line 1287
    iget-object v0, p0, Lcom/android/phone/PhoneUtils$3;->val$phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PhoneUtils$3;->val$inputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    .line 1288
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$300()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1289
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->access$302(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1298
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    move v0, v2

    .line 1301
    goto :goto_0

    .line 1278
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
