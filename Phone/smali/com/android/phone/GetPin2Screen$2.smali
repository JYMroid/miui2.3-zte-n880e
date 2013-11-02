.class Lcom/android/phone/GetPin2Screen$2;
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
    .line 237
    iput-object p1, p0, Lcom/android/phone/GetPin2Screen$2;->this$0:Lcom/android/phone/GetPin2Screen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$2;->this$0:Lcom/android/phone/GetPin2Screen;

    invoke-virtual {v0}, Lcom/android/phone/GetPin2Screen;->OnGetPinFailed()V

    .line 241
    return-void
.end method
