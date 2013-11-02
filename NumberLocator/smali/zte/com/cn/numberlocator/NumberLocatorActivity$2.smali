.class Lzte/com/cn/numberlocator/NumberLocatorActivity$2;
.super Ljava/lang/Object;
.source "NumberLocatorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/numberlocator/NumberLocatorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/numberlocator/NumberLocatorActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/numberlocator/NumberLocatorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity$2;->this$0:Lzte/com/cn/numberlocator/NumberLocatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 143
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity$2;->this$0:Lzte/com/cn/numberlocator/NumberLocatorActivity;

    invoke-virtual {v0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->clearAllText()V

    .line 144
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity$2;->this$0:Lzte/com/cn/numberlocator/NumberLocatorActivity;

    #getter for: Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;
    invoke-static {v0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->access$000(Lzte/com/cn/numberlocator/NumberLocatorActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 175
    return-void
.end method
