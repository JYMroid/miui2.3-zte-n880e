.class Lcom/android/phone/PhoneRestrictSetting$5;
.super Ljava/lang/Object;
.source "PhoneRestrictSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneRestrictSetting;->CreateRetryDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneRestrictSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneRestrictSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 707
    iput-object p1, p0, Lcom/android/phone/PhoneRestrictSetting$5;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 710
    const-string v0, "CallFeatureSetting.java"

    const-string v1, "shen Cancelall onclick()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$5;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/PhoneRestrictSetting;->mHasExceptions:Z
    invoke-static {v0, v1}, Lcom/android/phone/PhoneRestrictSetting;->access$302(Lcom/android/phone/PhoneRestrictSetting;Z)Z

    .line 712
    return-void
.end method