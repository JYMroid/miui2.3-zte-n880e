.class Lcom/android/providers/contacts/T9SearchSupport$1;
.super Ljava/lang/Thread;
.source "T9SearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/T9SearchSupport;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/T9SearchSupport;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/T9SearchSupport;)V
    .locals 0
    .parameter

    .prologue
    .line 1448
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$1;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1451
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1452
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$1;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    new-instance v1, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport$1;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;-><init>(Lcom/android/providers/contacts/T9SearchSupport;Lcom/android/providers/contacts/T9SearchSupport$1;)V

    #setter for: Lcom/android/providers/contacts/T9SearchSupport;->mOperationHandler:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;
    invoke-static {v0, v1}, Lcom/android/providers/contacts/T9SearchSupport;->access$402(Lcom/android/providers/contacts/T9SearchSupport;Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;)Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    .line 1453
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1454
    return-void
.end method
