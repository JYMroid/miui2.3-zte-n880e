.class Lcom/android/phone/IccDepersonalizationPanel$2;
.super Landroid/os/Handler;
.source "IccDepersonalizationPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IccDepersonalizationPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IccDepersonalizationPanel;


# direct methods
.method constructor <init>(Lcom/android/phone/IccDepersonalizationPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 145
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_2

    .line 146
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 147
    .local v3, res:Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 148
    iget-object v4, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    const-string v5, "De-Personalization request failure."

    #calls: Lcom/android/phone/IccDepersonalizationPanel;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/IccDepersonalizationPanel;->access$500(Lcom/android/phone/IccDepersonalizationPanel;Ljava/lang/String;)V

    .line 151
    iget-object v4, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/IccDepersonalizationPanel;->access$700(Lcom/android/phone/IccDepersonalizationPanel;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/IccDepersonalizationPanel;->access$600(Lcom/android/phone/IccDepersonalizationPanel;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x65

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->invokeGetDCKRetriesNum(Landroid/os/Message;)V

    .line 153
    iget-object v4, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #calls: Lcom/android/phone/IccDepersonalizationPanel;->displayStatus(I)V
    invoke-static {v4, v8}, Lcom/android/phone/IccDepersonalizationPanel;->access$800(Lcom/android/phone/IccDepersonalizationPanel;I)V

    .line 156
    new-instance v4, Lcom/android/phone/IccDepersonalizationPanel$2$1;

    invoke-direct {v4, p0}, Lcom/android/phone/IccDepersonalizationPanel$2$1;-><init>(Lcom/android/phone/IccDepersonalizationPanel$2;)V

    const-wide/16 v5, 0xbb8

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/phone/IccDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 221
    .end local v3           #res:Landroid/os/AsyncResult;
    :cond_0
    :goto_0
    return-void

    .line 164
    .restart local v3       #res:Landroid/os/AsyncResult;
    :cond_1
    iget-object v4, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    const-string v5, "De-Personalization success."

    #calls: Lcom/android/phone/IccDepersonalizationPanel;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/IccDepersonalizationPanel;->access$500(Lcom/android/phone/IccDepersonalizationPanel;Ljava/lang/String;)V

    .line 165
    iget-object v4, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #calls: Lcom/android/phone/IccDepersonalizationPanel;->displayStatus(I)V
    invoke-static {v4, v10}, Lcom/android/phone/IccDepersonalizationPanel;->access$800(Lcom/android/phone/IccDepersonalizationPanel;I)V

    .line 166
    new-instance v4, Lcom/android/phone/IccDepersonalizationPanel$2$2;

    invoke-direct {v4, p0}, Lcom/android/phone/IccDepersonalizationPanel$2$2;-><init>(Lcom/android/phone/IccDepersonalizationPanel$2;)V

    const-wide/16 v5, 0xbb8

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/phone/IccDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 174
    .end local v3           #res:Landroid/os/AsyncResult;
    :cond_2
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x65

    if-ne v4, v5, :cond_0

    .line 175
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 176
    .restart local v3       #res:Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 177
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object v2, v0

    .line 178
    .local v2, request:[B
    invoke-static {v2}, Lcom/android/phone/IccDepersonalizationPanel;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 179
    .local v1, reqBuffer:Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mRetriesNum:[I
    invoke-static {v4}, Lcom/android/phone/IccDepersonalizationPanel;->access$1000(Lcom/android/phone/IccDepersonalizationPanel;)[I

    move-result-object v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    aput v5, v4, v7

    .line 180
    iget-object v4, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mRetriesNum:[I
    invoke-static {v4}, Lcom/android/phone/IccDepersonalizationPanel;->access$1000(Lcom/android/phone/IccDepersonalizationPanel;)[I

    move-result-object v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    aput v5, v4, v9

    .line 181
    iget-object v4, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mRetriesNum:[I
    invoke-static {v4}, Lcom/android/phone/IccDepersonalizationPanel;->access$1000(Lcom/android/phone/IccDepersonalizationPanel;)[I

    move-result-object v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    aput v5, v4, v8

    .line 182
    iget-object v4, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mRetriesNum:[I
    invoke-static {v4}, Lcom/android/phone/IccDepersonalizationPanel;->access$1000(Lcom/android/phone/IccDepersonalizationPanel;)[I

    move-result-object v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    aput v5, v4, v10

    .line 183
    iget-object v4, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mRetriesNum:[I
    invoke-static {v4}, Lcom/android/phone/IccDepersonalizationPanel;->access$1000(Lcom/android/phone/IccDepersonalizationPanel;)[I

    move-result-object v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    aput v5, v4, v11

    .line 184
    iget-object v4, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mRetriesNum[0] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mRetriesNum:[I
    invoke-static {v6}, Lcom/android/phone/IccDepersonalizationPanel;->access$1000(Lcom/android/phone/IccDepersonalizationPanel;)[I

    move-result-object v6

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/IccDepersonalizationPanel;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/IccDepersonalizationPanel;->access$500(Lcom/android/phone/IccDepersonalizationPanel;Ljava/lang/String;)V

    .line 185
    iget-object v4, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mRetriesNum[1] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mRetriesNum:[I
    invoke-static {v6}, Lcom/android/phone/IccDepersonalizationPanel;->access$1000(Lcom/android/phone/IccDepersonalizationPanel;)[I

    move-result-object v6

    aget v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/IccDepersonalizationPanel;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/IccDepersonalizationPanel;->access$500(Lcom/android/phone/IccDepersonalizationPanel;Ljava/lang/String;)V

    .line 186
    iget-object v4, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mRetriesNum[2] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mRetriesNum:[I
    invoke-static {v6}, Lcom/android/phone/IccDepersonalizationPanel;->access$1000(Lcom/android/phone/IccDepersonalizationPanel;)[I

    move-result-object v6

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/IccDepersonalizationPanel;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/IccDepersonalizationPanel;->access$500(Lcom/android/phone/IccDepersonalizationPanel;Ljava/lang/String;)V

    .line 187
    iget-object v4, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mRetriesNum[3] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mRetriesNum:[I
    invoke-static {v6}, Lcom/android/phone/IccDepersonalizationPanel;->access$1000(Lcom/android/phone/IccDepersonalizationPanel;)[I

    move-result-object v6

    aget v6, v6, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/IccDepersonalizationPanel;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/IccDepersonalizationPanel;->access$500(Lcom/android/phone/IccDepersonalizationPanel;Ljava/lang/String;)V

    .line 188
    iget-object v4, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mRetriesNum[4] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mRetriesNum:[I
    invoke-static {v6}, Lcom/android/phone/IccDepersonalizationPanel;->access$1000(Lcom/android/phone/IccDepersonalizationPanel;)[I

    move-result-object v6

    aget v6, v6, v11

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/IccDepersonalizationPanel;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/IccDepersonalizationPanel;->access$500(Lcom/android/phone/IccDepersonalizationPanel;Ljava/lang/String;)V

    .line 189
    iget-object v4, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPersoSubtype "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtype:I
    invoke-static {v6}, Lcom/android/phone/IccDepersonalizationPanel;->access$1100(Lcom/android/phone/IccDepersonalizationPanel;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/IccDepersonalizationPanel;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/IccDepersonalizationPanel;->access$500(Lcom/android/phone/IccDepersonalizationPanel;Ljava/lang/String;)V

    .line 191
    iget-object v4, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mRetriesNum:[I
    invoke-static {v4}, Lcom/android/phone/IccDepersonalizationPanel;->access$1000(Lcom/android/phone/IccDepersonalizationPanel;)[I

    move-result-object v4

    aget v4, v4, v7

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mRetriesNum:[I
    invoke-static {v4}, Lcom/android/phone/IccDepersonalizationPanel;->access$1000(Lcom/android/phone/IccDepersonalizationPanel;)[I

    move-result-object v4

    aget v4, v4, v9

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mRetriesNum:[I
    invoke-static {v4}, Lcom/android/phone/IccDepersonalizationPanel;->access$1000(Lcom/android/phone/IccDepersonalizationPanel;)[I

    move-result-object v4

    aget v4, v4, v8

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mRetriesNum:[I
    invoke-static {v4}, Lcom/android/phone/IccDepersonalizationPanel;->access$1000(Lcom/android/phone/IccDepersonalizationPanel;)[I

    move-result-object v4

    aget v4, v4, v10

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mRetriesNum:[I
    invoke-static {v4}, Lcom/android/phone/IccDepersonalizationPanel;->access$1000(Lcom/android/phone/IccDepersonalizationPanel;)[I

    move-result-object v4

    aget v4, v4, v11

    if-nez v4, :cond_5

    .line 195
    :cond_3
    iget-object v4, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPersoSubtype == 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtype:I
    invoke-static {v6}, Lcom/android/phone/IccDepersonalizationPanel;->access$1100(Lcom/android/phone/IccDepersonalizationPanel;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/IccDepersonalizationPanel;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/IccDepersonalizationPanel;->access$500(Lcom/android/phone/IccDepersonalizationPanel;Ljava/lang/String;)V

    .line 196
    iget-object v4, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #setter for: Lcom/android/phone/IccDepersonalizationPanel;->permanent_locked:Z
    invoke-static {v4, v9}, Lcom/android/phone/IccDepersonalizationPanel;->access$102(Lcom/android/phone/IccDepersonalizationPanel;Z)Z

    .line 197
    iget-object v4, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/phone/IccDepersonalizationPanel;->access$300(Lcom/android/phone/IccDepersonalizationPanel;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 198
    iget-object v4, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #calls: Lcom/android/phone/IccDepersonalizationPanel;->hideAlert()V
    invoke-static {v4}, Lcom/android/phone/IccDepersonalizationPanel;->access$900(Lcom/android/phone/IccDepersonalizationPanel;)V

    .line 199
    iget-object v4, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/phone/IccDepersonalizationPanel;->access$300(Lcom/android/phone/IccDepersonalizationPanel;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->clear()V

    .line 210
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mIgnorUI:Z
    invoke-static {v4}, Lcom/android/phone/IccDepersonalizationPanel;->access$1200(Lcom/android/phone/IccDepersonalizationPanel;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 212
    iget-object v4, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #setter for: Lcom/android/phone/IccDepersonalizationPanel;->mIgnorUI:Z
    invoke-static {v4, v7}, Lcom/android/phone/IccDepersonalizationPanel;->access$1202(Lcom/android/phone/IccDepersonalizationPanel;Z)Z

    goto/16 :goto_0

    .line 203
    :cond_5
    iget-object v4, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mIgnorUI:Z
    invoke-static {v4}, Lcom/android/phone/IccDepersonalizationPanel;->access$1200(Lcom/android/phone/IccDepersonalizationPanel;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 206
    iget-object v4, p0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #calls: Lcom/android/phone/IccDepersonalizationPanel;->displayStatus(I)V
    invoke-static {v4, v8}, Lcom/android/phone/IccDepersonalizationPanel;->access$800(Lcom/android/phone/IccDepersonalizationPanel;I)V

    goto :goto_1
.end method
