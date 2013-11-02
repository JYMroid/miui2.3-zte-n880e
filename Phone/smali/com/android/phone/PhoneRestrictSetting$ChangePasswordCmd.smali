.class Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;
.super Lcom/android/phone/FacilityLockCmd;
.source "PhoneRestrictSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneRestrictSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangePasswordCmd"
.end annotation


# instance fields
.field private mNewPassword:Ljava/lang/String;

.field private mOldPassword:Ljava/lang/String;

.field private mSetIndex:I

.field final synthetic this$0:Lcom/android/phone/PhoneRestrictSetting;

.field final unitCount:I

.field final units:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneRestrictSetting;Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter
    .parameter "phone"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, ""

    .line 233
    iput-object p1, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    .line 234
    const-string v0, ""

    const-string v0, ""

    invoke-direct {p0, p2, v1, v1}, Lcom/android/phone/FacilityLockCmd;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iput v2, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->mSetIndex:I

    .line 219
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AB"

    aput-object v1, v0, v2

    const-string v1, "AO"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "OI"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "OX"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AI"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "IR"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->units:[Ljava/lang/String;

    .line 229
    iput v3, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->unitCount:I

    .line 235
    const/16 v0, 0x3a98

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->EnableTimeoutProc(I)V

    .line 236
    return-void
.end method

.method private ChangeItemPassword(Ljava/lang/String;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 251
    iget-object v1, p0, Lcom/android/phone/FacilityLockCmd;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 252
    .local v0, icCard:Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_0

    .line 254
    iget-object v1, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->mOldPassword:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->mNewPassword:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->GetMessage()Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/internal/telephony/IccCard;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 256
    :cond_0
    return-void
.end method

.method private OnSetOver()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 266
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    #setter for: Lcom/android/phone/PhoneRestrictSetting;->mCmdRemaining:Z
    invoke-static {v0, v1}, Lcom/android/phone/PhoneRestrictSetting;->access$102(Lcom/android/phone/PhoneRestrictSetting;Z)Z

    .line 267
    iput v1, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->mSetIndex:I

    .line 268
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneRestrictSetting;->ShowMyDialog(I)V

    .line 269
    return-void
.end method

.method private SetNextItemPassword()V
    .locals 2

    .prologue
    .line 260
    iget v0, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->mSetIndex:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 262
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->units:[Ljava/lang/String;

    iget v1, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->mSetIndex:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->ChangeItemPassword(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method DoSetProc()I
    .locals 3

    .prologue
    .line 290
    const-string v0, "FacilityLockCmd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change Password from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->mOldPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->mNewPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-direct {p0}, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->SetNextItemPassword()V

    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public OnException(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 306
    invoke-super {p0, p1}, Lcom/android/phone/FacilityLockCmd;->OnException(Landroid/os/AsyncResult;)V

    .line 307
    const-string v0, "hubo_PhoneRestrictSetting"

    const-string v1, "OnException cmd = changepassword "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void
.end method

.method protected OnSetResult(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 274
    const-string v0, "hubo_PhoneRestrictSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnSetResult cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/FacilityLockCmd;->mCmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget v0, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->mSetIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->mSetIndex:I

    .line 276
    iget v0, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->mSetIndex:I

    if-lt v0, v3, :cond_0

    .line 278
    invoke-direct {p0}, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->OnSetOver()V

    .line 285
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->SetNextItemPassword()V

    .line 283
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    #setter for: Lcom/android/phone/PhoneRestrictSetting;->mCmdRemaining:Z
    invoke-static {v0, v3}, Lcom/android/phone/PhoneRestrictSetting;->access$102(Lcom/android/phone/PhoneRestrictSetting;Z)Z

    goto :goto_0
.end method

.method protected OnTimeout()V
    .locals 2

    .prologue
    .line 298
    const-string v0, "hubo_PhoneRestrictSetting"

    const-string v1, "OnTimeout cmd = changepassword"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->OnException(Landroid/os/AsyncResult;)V

    .line 300
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    invoke-virtual {v0}, Lcom/android/phone/PhoneRestrictSetting;->OnExecuteException()V

    .line 301
    return-void
.end method

.method public SetNewPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->mNewPassword:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public SetOldPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->mOldPassword:Ljava/lang/String;

    .line 241
    return-void
.end method
