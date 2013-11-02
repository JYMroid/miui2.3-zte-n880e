.class Lcom/android/phone/CellBroadcast$1;
.super Ljava/lang/Object;
.source "CellBroadcast.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CellBroadcast;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CellBroadcast;


# direct methods
.method constructor <init>(Lcom/android/phone/CellBroadcast;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/phone/CellBroadcast$1;->this$0:Lcom/android/phone/CellBroadcast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/phone/CellBroadcast$1;->this$0:Lcom/android/phone/CellBroadcast;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/phone/CellBroadcast;->dismissDialog(I)V

    .line 249
    return-void
.end method
