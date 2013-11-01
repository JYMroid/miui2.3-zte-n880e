.class Lcom/android/internal/telephony/CallFilterTracker$SettingsChangedObserver;
.super Landroid/database/ContentObserver;
.source "CallFilterTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallFilterTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsChangedObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CallFilterTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CallFilterTracker;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/CallFilterTracker$SettingsChangedObserver;->this$0:Lcom/android/internal/telephony/CallFilterTracker;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallFilterTracker$SettingsChangedObserver;->this$0:Lcom/android/internal/telephony/CallFilterTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/CallFilterTracker$SettingsChangedObserver;->this$0:Lcom/android/internal/telephony/CallFilterTracker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallFilterTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallFilterTracker;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
