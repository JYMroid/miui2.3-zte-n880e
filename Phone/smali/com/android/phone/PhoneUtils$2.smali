.class final Lcom/android/phone/PhoneUtils$2;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$mmiCode:Lcom/android/internal/telephony/MmiCode;

.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/Phone;Landroid/widget/EditText;Lcom/android/internal/telephony/MmiCode;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1208
    iput-object p1, p0, Lcom/android/phone/PhoneUtils$2;->val$phone:Lcom/android/internal/telephony/Phone;

    iput-object p2, p0, Lcom/android/phone/PhoneUtils$2;->val$inputText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/phone/PhoneUtils$2;->val$mmiCode:Lcom/android/internal/telephony/MmiCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneUtils$2;->inputonce:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1211
    packed-switch p2, :pswitch_data_0

    .line 1258
    :cond_0
    :goto_0
    return-void

    .line 1215
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USSD code Got button1 pressed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/PhoneUtils$2;->inputonce:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    .line 1216
    iget-boolean v0, p0, Lcom/android/phone/PhoneUtils$2;->inputonce:Z

    if-nez v0, :cond_1

    .line 1217
    iput-boolean v2, p0, Lcom/android/phone/PhoneUtils$2;->inputonce:Z

    .line 1218
    iget-object v0, p0, Lcom/android/phone/PhoneUtils$2;->val$phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PhoneUtils$2;->val$inputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    .line 1226
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 1228
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$300()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1230
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$300()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1231
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->access$302(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0

    .line 1237
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USSD code Got button2 pressed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/PhoneUtils$2;->inputonce:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    .line 1238
    iget-boolean v0, p0, Lcom/android/phone/PhoneUtils$2;->inputonce:Z

    if-nez v0, :cond_2

    .line 1239
    iput-boolean v2, p0, Lcom/android/phone/PhoneUtils$2;->inputonce:Z

    .line 1240
    iget-object v0, p0, Lcom/android/phone/PhoneUtils$2;->val$mmiCode:Lcom/android/internal/telephony/MmiCode;

    invoke-interface {v0}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1241
    iget-object v0, p0, Lcom/android/phone/PhoneUtils$2;->val$mmiCode:Lcom/android/internal/telephony/MmiCode;

    invoke-interface {v0}, Lcom/android/internal/telephony/MmiCode;->cancel()V

    .line 1250
    :cond_2
    const-string v0, "ghh0611 USSD code cance pressed"

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    .line 1252
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 1254
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$300()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1255
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->access$302(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1211
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
