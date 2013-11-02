.class Lcom/android/phone/CallRecordTime$CheckSpaceCallback;
.super Ljava/lang/Object;
.source "CallRecordTime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallRecordTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckSpaceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallRecordTime;


# direct methods
.method constructor <init>(Lcom/android/phone/CallRecordTime;)V
    .locals 0
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/phone/CallRecordTime$CheckSpaceCallback;->this$0:Lcom/android/phone/CallRecordTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/phone/CallRecordTime$CheckSpaceCallback;->this$0:Lcom/android/phone/CallRecordTime;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/CallRecordTime;->mCheckSpaceTimerRunning:Z
    invoke-static {v0, v1}, Lcom/android/phone/CallRecordTime;->access$102(Lcom/android/phone/CallRecordTime;Z)Z

    .line 513
    iget-object v0, p0, Lcom/android/phone/CallRecordTime$CheckSpaceCallback;->this$0:Lcom/android/phone/CallRecordTime;

    invoke-virtual {v0}, Lcom/android/phone/CallRecordTime;->checkSpaceUpdateTimer()V

    .line 514
    return-void
.end method
