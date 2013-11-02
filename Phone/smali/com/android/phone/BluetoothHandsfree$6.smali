.class Lcom/android/phone/BluetoothHandsfree$6;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter

    .prologue
    .line 1911
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$6;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleBasicCommand(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;
    .locals 8
    .parameter "args"

    .prologue
    const/16 v7, 0x3b

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1914
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 1915
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_3

    .line 1917
    const-string v3, ">9999"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1918
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v3, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1959
    :goto_0
    return-object v3

    .line 1920
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 1921
    const-string v3, "Oops: No number specified in ATD>nnn command"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Ljava/lang/String;)V

    .line 1922
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v3, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 1926
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_2

    .line 1927
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1935
    :goto_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1941
    .local v2, number:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dial favorite "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Ljava/lang/String;)V

    .line 1942
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$6;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->memoryDial(I)Landroid/bluetooth/AtCommandResult;
    invoke-static {v3, v2}, Lcom/android/phone/BluetoothHandsfree;->access$5100(Lcom/android/phone/BluetoothHandsfree;I)Landroid/bluetooth/AtCommandResult;

    move-result-object v3

    goto :goto_0

    .line 1930
    .end local v2           #number:I
    :cond_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1936
    :catch_0
    move-exception v0

    .line 1937
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Oops: args \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" is not a valid integer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Ljava/lang/String;)V

    .line 1938
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v3, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 1945
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_3
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$6;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->terminateVirtualVoiceCall()Z

    .line 1947
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_4

    .line 1948
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1950
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, p1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1952
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1953
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$6;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1955
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$6;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->expectCallStart()V
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$5200(Lcom/android/phone/BluetoothHandsfree;)V

    .line 1956
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0

    .line 1959
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v3, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0
.end method
