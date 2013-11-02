.class Lcom/android/providers/contacts/T9SearchSupport$2;
.super Ljava/lang/Thread;
.source "T9SearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/T9SearchSupport;->loadAsync()V
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
    .line 1467
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$2;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$2;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-virtual {v0}, Lcom/android/providers/contacts/T9SearchSupport;->load()V

    .line 1471
    return-void
.end method
