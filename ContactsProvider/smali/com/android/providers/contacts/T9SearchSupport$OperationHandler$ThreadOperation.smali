.class Lcom/android/providers/contacts/T9SearchSupport$OperationHandler$ThreadOperation;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadOperation"
.end annotation


# instance fields
.field public final mOperation:Lcom/android/providers/contacts/T9SearchSupport$Operation;

.field public final mThreadId:J

.field final synthetic this$1:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;JLcom/android/providers/contacts/T9SearchSupport$Operation;)V
    .locals 0
    .parameter
    .parameter "threadId"
    .parameter "operation"

    .prologue
    .line 2569
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler$ThreadOperation;->this$1:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2570
    iput-wide p2, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler$ThreadOperation;->mThreadId:J

    .line 2571
    iput-object p4, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler$ThreadOperation;->mOperation:Lcom/android/providers/contacts/T9SearchSupport$Operation;

    .line 2572
    return-void
.end method
