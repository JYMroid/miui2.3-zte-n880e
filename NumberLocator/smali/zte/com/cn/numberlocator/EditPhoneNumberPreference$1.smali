.class Lzte/com/cn/numberlocator/EditPhoneNumberPreference$1;
.super Ljava/lang/Object;
.source "EditPhoneNumberPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/numberlocator/EditPhoneNumberPreference;


# direct methods
.method constructor <init>(Lzte/com/cn/numberlocator/EditPhoneNumberPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference$1;->this$0:Lzte/com/cn/numberlocator/EditPhoneNumberPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 234
    iget-object v0, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference$1;->this$0:Lzte/com/cn/numberlocator/EditPhoneNumberPreference;

    #getter for: Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->access$000(Lzte/com/cn/numberlocator/EditPhoneNumberPreference;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference$1;->this$0:Lzte/com/cn/numberlocator/EditPhoneNumberPreference;

    #getter for: Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->access$000(Lzte/com/cn/numberlocator/EditPhoneNumberPreference;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference$1;->this$0:Lzte/com/cn/numberlocator/EditPhoneNumberPreference;

    #getter for: Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;
    invoke-static {v1}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->access$100(Lzte/com/cn/numberlocator/EditPhoneNumberPreference;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference$1;->this$0:Lzte/com/cn/numberlocator/EditPhoneNumberPreference;

    #getter for: Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mPrefId:I
    invoke-static {v2}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->access$200(Lzte/com/cn/numberlocator/EditPhoneNumberPreference;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 240
    :cond_0
    return-void
.end method
