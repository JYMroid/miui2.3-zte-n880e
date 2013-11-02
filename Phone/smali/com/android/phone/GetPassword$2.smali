.class Lcom/android/phone/GetPassword$2;
.super Ljava/lang/Object;
.source "GetPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GetPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GetPassword;


# direct methods
.method constructor <init>(Lcom/android/phone/GetPassword;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/phone/GetPassword$2;->this$0:Lcom/android/phone/GetPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/phone/GetPassword$2;->this$0:Lcom/android/phone/GetPassword;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/GetPassword;->setResult(I)V

    .line 128
    iget-object v0, p0, Lcom/android/phone/GetPassword$2;->this$0:Lcom/android/phone/GetPassword;

    invoke-virtual {v0}, Lcom/android/phone/GetPassword;->finish()V

    .line 129
    return-void
.end method
