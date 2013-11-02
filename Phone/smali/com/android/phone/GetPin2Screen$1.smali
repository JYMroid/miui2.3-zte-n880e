.class Lcom/android/phone/GetPin2Screen$1;
.super Ljava/lang/Object;
.source "GetPin2Screen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GetPin2Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GetPin2Screen;


# direct methods
.method constructor <init>(Lcom/android/phone/GetPin2Screen;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/phone/GetPin2Screen$1;->this$0:Lcom/android/phone/GetPin2Screen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/phone/GetPin2Screen$1;->this$0:Lcom/android/phone/GetPin2Screen;

    #calls: Lcom/android/phone/GetPin2Screen;->getPin2()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/GetPin2Screen;->access$000(Lcom/android/phone/GetPin2Screen;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, strPin2:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/GetPin2Screen$1;->this$0:Lcom/android/phone/GetPin2Screen;

    #calls: Lcom/android/phone/GetPin2Screen;->validatePin2(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/android/phone/GetPin2Screen;->access$100(Lcom/android/phone/GetPin2Screen;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/android/phone/GetPin2Screen$1;->this$0:Lcom/android/phone/GetPin2Screen;

    iget-object v2, p0, Lcom/android/phone/GetPin2Screen$1;->this$0:Lcom/android/phone/GetPin2Screen;

    invoke-virtual {v2}, Lcom/android/phone/GetPin2Screen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    #calls: Lcom/android/phone/GetPin2Screen;->showStatus(Ljava/lang/CharSequence;)V
    invoke-static {v1, v2}, Lcom/android/phone/GetPin2Screen;->access$200(Lcom/android/phone/GetPin2Screen;Ljava/lang/CharSequence;)V

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/android/phone/GetPin2Screen$1;->this$0:Lcom/android/phone/GetPin2Screen;

    #calls: Lcom/android/phone/GetPin2Screen;->CheckResult()V
    invoke-static {v1}, Lcom/android/phone/GetPin2Screen;->access$300(Lcom/android/phone/GetPin2Screen;)V

    goto :goto_0
.end method
