.class Lcom/android/phone/InCallScreen$9;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->showWildPromptDialog(Lcom/android/internal/telephony/Connection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;

.field final synthetic val$c:Lcom/android/internal/telephony/Connection;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2838
    iput-object p1, p0, Lcom/android/phone/InCallScreen$9;->this$0:Lcom/android/phone/InCallScreen;

    iput-object p2, p0, Lcom/android/phone/InCallScreen$9;->val$c:Lcom/android/internal/telephony/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2840
    iget-object v1, p0, Lcom/android/phone/InCallScreen$9;->this$0:Lcom/android/phone/InCallScreen;

    const-string v2, "handle WILD_PROMPT_CHAR_ENTERED, proceed..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InCallScreen;->access$100(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 2841
    const/4 v0, 0x0

    .line 2842
    .local v0, replacement:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/InCallScreen$9;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$2500(Lcom/android/phone/InCallScreen;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2843
    iget-object v1, p0, Lcom/android/phone/InCallScreen$9;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$2500(Lcom/android/phone/InCallScreen;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2844
    iget-object v1, p0, Lcom/android/phone/InCallScreen$9;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;
    invoke-static {v1, v2}, Lcom/android/phone/InCallScreen;->access$2502(Lcom/android/phone/InCallScreen;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 2846
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen$9;->val$c:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/Connection;->proceedAfterWildChar(Ljava/lang/String;)V

    .line 2847
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 2848
    return-void
.end method
