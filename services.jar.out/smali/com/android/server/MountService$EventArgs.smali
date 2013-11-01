.class final Lcom/android/server/MountService$EventArgs;
.super Ljava/lang/Object;
.source "MountService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EventArgs"
.end annotation


# instance fields
.field private code:I

.field private cooked:[Ljava/lang/String;

.field private raw:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/MountService$EventArgs;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/server/MountService$EventArgs;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/server/MountService$EventArgs;->code:I

    return p1
.end method

.method static synthetic access$1902(Lcom/android/server/MountService$EventArgs;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/MountService$EventArgs;->raw:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/android/server/MountService$EventArgs;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/MountService$EventArgs;->cooked:[Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v4, 0x0

    .local v4, in:Landroid/content/Intent;
    iget v9, p0, Lcom/android/server/MountService$EventArgs;->code:I

    const/16 v10, 0x25d

    if-ne v9, v10, :cond_1

    iget-object v9, p0, Lcom/android/server/MountService$EventArgs;->this$0:Lcom/android/server/MountService;

    iget-object v10, p0, Lcom/android/server/MountService$EventArgs;->cooked:[Ljava/lang/String;

    const/4 v11, 0x2

    aget-object v10, v10, v11

    iget-object v11, p0, Lcom/android/server/MountService$EventArgs;->cooked:[Ljava/lang/String;

    const/4 v12, 0x3

    aget-object v11, v11, v12

    iget-object v12, p0, Lcom/android/server/MountService$EventArgs;->cooked:[Ljava/lang/String;

    const/4 v13, 0x7

    aget-object v12, v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iget-object v13, p0, Lcom/android/server/MountService$EventArgs;->cooked:[Ljava/lang/String;

    const/16 v14, 0xa

    aget-object v13, v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v9, v10, v11, v12, v13}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    :goto_0
    if-eqz v4, :cond_0

    iget-object v9, p0, Lcom/android/server/MountService$EventArgs;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v9, p0, Lcom/android/server/MountService$EventArgs;->code:I

    const/16 v10, 0x26c

    if-ne v9, v10, :cond_3

    const/4 v0, 0x0

    .local v0, avail:Z
    iget-object v9, p0, Lcom/android/server/MountService$EventArgs;->cooked:[Ljava/lang/String;

    const/4 v10, 0x5

    aget-object v9, v9, v10

    const-string v10, "available"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v0, 0x1

    :cond_2
    iget-object v9, p0, Lcom/android/server/MountService$EventArgs;->this$0:Lcom/android/server/MountService;

    iget-object v10, p0, Lcom/android/server/MountService$EventArgs;->cooked:[Ljava/lang/String;

    const/4 v11, 0x3

    aget-object v10, v10, v11

    #calls: Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V
    invoke-static {v9, v10, v0}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;Ljava/lang/String;Z)V

    goto :goto_0

    .end local v0           #avail:Z
    :cond_3
    iget v9, p0, Lcom/android/server/MountService$EventArgs;->code:I

    const/16 v10, 0x276

    if-eq v9, v10, :cond_4

    iget v9, p0, Lcom/android/server/MountService$EventArgs;->code:I

    const/16 v10, 0x277

    if-eq v9, v10, :cond_4

    iget v9, p0, Lcom/android/server/MountService$EventArgs;->code:I

    const/16 v10, 0x278

    if-ne v9, v10, :cond_8

    :cond_4
    iget-object v9, p0, Lcom/android/server/MountService$EventArgs;->cooked:[Ljava/lang/String;

    const/4 v10, 0x2

    aget-object v5, v9, v10

    .local v5, label:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/MountService$EventArgs;->cooked:[Ljava/lang/String;

    const/4 v10, 0x3

    aget-object v8, v9, v10

    .local v8, path:Ljava/lang/String;
    const/4 v6, -0x1

    .local v6, major:I
    const/4 v7, -0x1

    .local v7, minor:I
    :try_start_0
    iget-object v9, p0, Lcom/android/server/MountService$EventArgs;->cooked:[Ljava/lang/String;

    const/4 v10, 0x6

    aget-object v9, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/server/MountService$EventArgs;->cooked:[Ljava/lang/String;

    const/4 v12, 0x6

    aget-object v11, v11, v12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, devComp:Ljava/lang/String;
    const-string v9, ":"

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, devTok:[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v9, 0x1

    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .end local v1           #devComp:Ljava/lang/String;
    .end local v2           #devTok:[Ljava/lang/String;
    :goto_2
    iget v9, p0, Lcom/android/server/MountService$EventArgs;->code:I

    const/16 v10, 0x276

    if-ne v9, v10, :cond_5

    new-instance v9, Lcom/android/server/MountService$EventArgs$1;

    invoke-direct {v9, p0, v8}, Lcom/android/server/MountService$EventArgs$1;-><init>(Lcom/android/server/MountService$EventArgs;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/server/MountService$EventArgs$1;->start()V

    goto/16 :goto_0

    :catch_0
    move-exception v9

    move-object v3, v9

    .local v3, ex:Ljava/lang/Exception;
    const-string v9, "MountService"

    const-string v10, "Failed to parse major/minor"

    invoke-static {v9, v10, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v3           #ex:Ljava/lang/Exception;
    :cond_5
    iget v9, p0, Lcom/android/server/MountService$EventArgs;->code:I

    const/16 v10, 0x277

    if-ne v9, v10, :cond_6

    iget-object v9, p0, Lcom/android/server/MountService$EventArgs;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v9, v8}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "bad_removal"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/server/MountService$EventArgs;->this$0:Lcom/android/server/MountService;

    const-string v10, "unmounted"

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState_from_badremove(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v9, v8, v10}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    .end local v4           #in:Landroid/content/Intent;
    const-string v9, "android.intent.action.MEDIA_UNMOUNTED"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v4       #in:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/server/MountService$EventArgs;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v9, p0, Lcom/android/server/MountService$EventArgs;->this$0:Lcom/android/server/MountService;

    const-string v10, "removed"

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v9, v8, v10}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    .end local v4           #in:Landroid/content/Intent;
    const-string v9, "android.intent.action.MEDIA_REMOVED"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v4       #in:Landroid/content/Intent;
    goto/16 :goto_0

    :cond_6
    iget v9, p0, Lcom/android/server/MountService$EventArgs;->code:I

    const/16 v10, 0x278

    if-ne v9, v10, :cond_7

    iget-object v9, p0, Lcom/android/server/MountService$EventArgs;->this$0:Lcom/android/server/MountService;

    const-string v10, "unmounted"

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState_from_badremove(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v9, v8, v10}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    .end local v4           #in:Landroid/content/Intent;
    const-string v9, "android.intent.action.MEDIA_UNMOUNTED"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v4       #in:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/server/MountService$EventArgs;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v9, p0, Lcom/android/server/MountService$EventArgs;->this$0:Lcom/android/server/MountService;

    const-string v10, "bad_removal"

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v9, v8, v10}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    .end local v4           #in:Landroid/content/Intent;
    const-string v9, "android.intent.action.MEDIA_BAD_REMOVAL"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v4       #in:Landroid/content/Intent;
    goto/16 :goto_0

    :cond_7
    const-string v9, "MountService"

    const-string v10, "Unknown code {%d}"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/server/MountService$EventArgs;->code:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v5           #label:Ljava/lang/String;
    .end local v6           #major:I
    .end local v7           #minor:I
    .end local v8           #path:Ljava/lang/String;
    :cond_8
    const-string v9, "MountService"

    const-string v10, "Unhandled event (%s)"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/server/MountService$EventArgs;->raw:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
