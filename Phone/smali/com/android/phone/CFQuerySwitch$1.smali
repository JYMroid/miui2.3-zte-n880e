.class Lcom/android/phone/CFQuerySwitch$1;
.super Ljava/lang/Object;
.source "CFQuerySwitch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CFQuerySwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CFQuerySwitch;


# direct methods
.method constructor <init>(Lcom/android/phone/CFQuerySwitch;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/phone/CFQuerySwitch$1;->this$0:Lcom/android/phone/CFQuerySwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 69
    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/CFQuerySwitch$1;->this$0:Lcom/android/phone/CFQuerySwitch;

    #calls: Lcom/android/phone/CFQuerySwitch;->setCallForwardingQueryKey()Z
    invoke-static {v2}, Lcom/android/phone/CFQuerySwitch;->access$000(Lcom/android/phone/CFQuerySwitch;)Z

    move-result v0

    .line 70
    .local v0, state:Z
    if-eqz v0, :cond_0

    const-string v2, "ON"

    move-object v1, v2

    .line 71
    .local v1, status:Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/phone/CFQuerySwitch$1;->this$0:Lcom/android/phone/CFQuerySwitch;

    iget-object v2, v2, Lcom/android/phone/CFQuerySwitch;->mtext1:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CallForwarding status is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v2, p0, Lcom/android/phone/CFQuerySwitch$1;->this$0:Lcom/android/phone/CFQuerySwitch;

    iget-boolean v2, v2, Lcom/android/phone/CFQuerySwitch;->currentstate:Z

    if-eq v0, v2, :cond_1

    .line 75
    iget-object v2, p0, Lcom/android/phone/CFQuerySwitch$1;->this$0:Lcom/android/phone/CFQuerySwitch;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Switch CallForwarding SUCCESS!!\nStatus Trun to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 81
    :goto_2
    iget-object v2, p0, Lcom/android/phone/CFQuerySwitch$1;->this$0:Lcom/android/phone/CFQuerySwitch;

    iput-boolean v0, v2, Lcom/android/phone/CFQuerySwitch;->currentstate:Z

    .line 82
    iget-object v2, p0, Lcom/android/phone/CFQuerySwitch$1;->this$0:Lcom/android/phone/CFQuerySwitch;

    invoke-virtual {v2}, Lcom/android/phone/CFQuerySwitch;->finish()V

    goto :goto_0

    .line 70
    .end local v1           #status:Ljava/lang/String;
    :cond_0
    const-string v2, "OFF"

    move-object v1, v2

    goto :goto_1

    .line 79
    .restart local v1       #status:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/phone/CFQuerySwitch$1;->this$0:Lcom/android/phone/CFQuerySwitch;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Switch CallForwarding FAILED!!\nCurrent status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x7f070045
        :pswitch_0
    .end packed-switch
.end method
