.class Lcom/android/phone/PhoneRestrictSetting$2;
.super Lcom/android/phone/FacilityLockCmd;
.source "PhoneRestrictSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneRestrictSetting;->InitDeactiveAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneRestrictSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneRestrictSetting;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 468
    iput-object p1, p0, Lcom/android/phone/PhoneRestrictSetting$2;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/phone/FacilityLockCmd;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected OnSetResult(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 472
    iget-object v3, p0, Lcom/android/phone/PhoneRestrictSetting$2;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    #getter for: Lcom/android/phone/PhoneRestrictSetting;->mUnits:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/PhoneRestrictSetting;->access$200(Lcom/android/phone/PhoneRestrictSetting;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 474
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 476
    iget-object v3, p0, Lcom/android/phone/PhoneRestrictSetting$2;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    #getter for: Lcom/android/phone/PhoneRestrictSetting;->mUnits:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/PhoneRestrictSetting;->access$200(Lcom/android/phone/PhoneRestrictSetting;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;

    .line 477
    .local v2, unit:Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->SetChecked(Z)V

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 480
    .end local v2           #unit:Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;
    :cond_0
    iget-object v3, p0, Lcom/android/phone/PhoneRestrictSetting$2;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    const/16 v4, 0x73

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneRestrictSetting;->ShowMyDialog(I)V

    .line 481
    return-void
.end method
