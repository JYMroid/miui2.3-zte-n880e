.class abstract Lcom/android/providers/contacts/T9SearchSupport$Operation;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/T9SearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Operation"
.end annotation


# instance fields
.field public operator:I

.field final synthetic this$0:Lcom/android/providers/contacts/T9SearchSupport;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/T9SearchSupport;I)V
    .locals 0
    .parameter
    .parameter "operator"

    .prologue
    .line 2532
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$Operation;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2533
    iput p2, p0, Lcom/android/providers/contacts/T9SearchSupport$Operation;->operator:I

    .line 2534
    return-void
.end method


# virtual methods
.method abstract add(JLjava/lang/Object;)V
.end method

.method abstract apply()V
.end method
