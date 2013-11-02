.class Lcom/android/phone/FloatView$2;
.super Ljava/lang/Object;
.source "FloatView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/FloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final FLASH_DELAY:I = 0x1f4


# instance fields
.field private step:I

.field final synthetic this$0:Lcom/android/phone/FloatView;


# direct methods
.method constructor <init>(Lcom/android/phone/FloatView;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/phone/FloatView$2;->this$0:Lcom/android/phone/FloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/FloatView$2;->step:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/phone/FloatView$2;->this$0:Lcom/android/phone/FloatView;

    invoke-static {}, Lcom/android/phone/FloatView;->access$000()[I

    move-result-object v1

    iget v2, p0, Lcom/android/phone/FloatView$2;->step:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/phone/FloatView;->setImageResource(I)V

    .line 40
    iget v0, p0, Lcom/android/phone/FloatView$2;->step:I

    invoke-static {}, Lcom/android/phone/FloatView;->access$000()[I

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/phone/FloatView$2;->step:I

    .line 41
    iget-object v0, p0, Lcom/android/phone/FloatView$2;->this$0:Lcom/android/phone/FloatView;

    iget-object v0, v0, Lcom/android/phone/FloatView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/FloatView$2;->this$0:Lcom/android/phone/FloatView;

    #getter for: Lcom/android/phone/FloatView;->flashBackground:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/phone/FloatView;->access$100(Lcom/android/phone/FloatView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42
    return-void

    .line 40
    :cond_0
    iget v0, p0, Lcom/android/phone/FloatView$2;->step:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
