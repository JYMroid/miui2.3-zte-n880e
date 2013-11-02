.class Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;
.super Lcom/android/phone/FacilityLockCmd;
.source "PhoneRestrictSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneRestrictSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FacilityLockCmd_CB"
.end annotation


# instance fields
.field mCheckBoxKey:Ljava/lang/String;

.field mGroup:Lcom/android/phone/PhoneRestrictSetting$GroupControl;

.field mInited:Z

.field private mView:Landroid/preference/CheckBoxPreference;

.field final synthetic this$0:Lcom/android/phone/PhoneRestrictSetting;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneRestrictSetting;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "phone"
    .parameter "keyStr"
    .parameter "cmdStr"
    .parameter "password"

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    .line 321
    invoke-direct {p0, p2, p4, p5}, Lcom/android/phone/FacilityLockCmd;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->mInited:Z

    .line 322
    iput-object p3, p0, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->mCheckBoxKey:Ljava/lang/String;

    .line 323
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->mCheckBoxKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneRestrictSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->mView:Landroid/preference/CheckBoxPreference;

    .line 324
    return-void
.end method


# virtual methods
.method public GetKeyStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->mCheckBoxKey:Ljava/lang/String;

    return-object v0
.end method

.method public IsQuerrying()Z
    .locals 1

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->mInited:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/phone/FacilityLockCmd;->IsQuerrying()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public OnClick()V
    .locals 0

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->Refresh()V

    .line 380
    return-void
.end method

.method public OnException(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    .line 391
    const-string v0, "hubo_PhoneRestrictSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnException cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->GetKeyStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->IsQuerrying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->mInited:Z

    .line 396
    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/FacilityLockCmd;->OnException(Landroid/os/AsyncResult;)V

    .line 397
    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->Refresh()V

    .line 398
    return-void
.end method

.method protected OnGetResult(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 352
    const-string v0, "hubo_PhoneRestrictSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnGetResult cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->GetKeyStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->mInited:Z

    .line 354
    invoke-super {p0, p1}, Lcom/android/phone/FacilityLockCmd;->OnGetResult(Landroid/os/Message;)V

    .line 355
    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->Refresh()V

    .line 356
    return-void
.end method

.method protected OnSetResult(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 339
    const-string v0, "hubo_PhoneRestrictSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnSetResult cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->GetKeyStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-super {p0, p1}, Lcom/android/phone/FacilityLockCmd;->OnSetResult(Landroid/os/Message;)V

    .line 341
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->mGroup:Lcom/android/phone/PhoneRestrictSetting$GroupControl;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->mGroup:Lcom/android/phone/PhoneRestrictSetting$GroupControl;

    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneRestrictSetting$GroupControl;->OnUnitClick(Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;)V

    .line 345
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->Refresh()V

    .line 346
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneRestrictSetting;->ShowMyDialog(I)V

    .line 347
    return-void
.end method

.method protected OnTimeout()V
    .locals 3

    .prologue
    .line 361
    const-string v0, "hubo_PhoneRestrictSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnTimeout cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->GetKeyStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->OnException(Landroid/os/AsyncResult;)V

    .line 363
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    invoke-virtual {v0}, Lcom/android/phone/PhoneRestrictSetting;->OnExecuteException()V

    .line 364
    return-void
.end method

.method public Refresh()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->mView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->IsLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 375
    return-void
.end method

.method public SetChecked(Z)V
    .locals 0
    .parameter "status"

    .prologue
    .line 368
    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->SetStatus(Z)V

    .line 369
    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->Refresh()V

    .line 370
    return-void
.end method

.method public SetGroup(Lcom/android/phone/PhoneRestrictSetting$GroupControl;)V
    .locals 0
    .parameter "group"

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->mGroup:Lcom/android/phone/PhoneRestrictSetting$GroupControl;

    .line 329
    return-void
.end method
