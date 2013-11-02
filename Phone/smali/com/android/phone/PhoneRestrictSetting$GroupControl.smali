.class Lcom/android/phone/PhoneRestrictSetting$GroupControl;
.super Ljava/lang/Object;
.source "PhoneRestrictSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneRestrictSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupControl"
.end annotation


# instance fields
.field private mUnits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/phone/PhoneRestrictSetting;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneRestrictSetting;)V
    .locals 1
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/phone/PhoneRestrictSetting$GroupControl;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$GroupControl;->mUnits:Ljava/util/ArrayList;

    .line 190
    return-void
.end method


# virtual methods
.method public AddUnit(Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;)V
    .locals 1
    .parameter "unit"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$GroupControl;->mUnits:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {p1, p0}, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->SetGroup(Lcom/android/phone/PhoneRestrictSetting$GroupControl;)V

    .line 196
    return-void
.end method

.method public OnUnitClick(Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;)V
    .locals 4
    .parameter "unitClicked"

    .prologue
    .line 200
    iget-object v3, p0, Lcom/android/phone/PhoneRestrictSetting$GroupControl;->mUnits:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 202
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 204
    iget-object v3, p0, Lcom/android/phone/PhoneRestrictSetting$GroupControl;->mUnits:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;

    .line 205
    .local v2, unit:Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;
    if-eq v2, p1, :cond_0

    .line 207
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;->SetChecked(Z)V

    .line 202
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    .end local v2           #unit:Lcom/android/phone/PhoneRestrictSetting$FacilityLockCmd_CB;
    :cond_1
    return-void
.end method
