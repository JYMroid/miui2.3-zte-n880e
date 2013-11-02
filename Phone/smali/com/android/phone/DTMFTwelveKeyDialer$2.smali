.class Lcom/android/phone/DTMFTwelveKeyDialer$2;
.super Ljava/lang/Object;
.source "DTMFTwelveKeyDialer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/DTMFTwelveKeyDialer;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/DTMFTwelveKeyDialerView;Landroid/widget/SlidingDrawer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DTMFTwelveKeyDialer;


# direct methods
.method constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialer;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialer$2;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 455
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$2;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialer;->mDialpadDigits:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$400(Lcom/android/phone/DTMFTwelveKeyDialer;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 456
    .local v0, e:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 457
    .local v1, position:I
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 458
    return-void
.end method
