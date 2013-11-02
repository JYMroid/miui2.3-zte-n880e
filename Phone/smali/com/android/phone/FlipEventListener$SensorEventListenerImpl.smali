.class Lcom/android/phone/FlipEventListener$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "FlipEventListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/FlipEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorEventListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/FlipEventListener;


# direct methods
.method constructor <init>(Lcom/android/phone/FlipEventListener;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/phone/FlipEventListener$SensorEventListenerImpl;->this$0:Lcom/android/phone/FlipEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 105
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    iget-object v0, p0, Lcom/android/phone/FlipEventListener$SensorEventListenerImpl;->this$0:Lcom/android/phone/FlipEventListener;

    #getter for: Lcom/android/phone/FlipEventListener;->statusFlag:I
    invoke-static {v0}, Lcom/android/phone/FlipEventListener;->access$000(Lcom/android/phone/FlipEventListener;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 118
    :pswitch_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    const/high16 v1, 0x4100

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/phone/FlipEventListener$SensorEventListenerImpl;->this$0:Lcom/android/phone/FlipEventListener;

    invoke-virtual {v0, v2}, Lcom/android/phone/FlipEventListener;->onFilpEventChanged(I)V

    .line 120
    iget-object v0, p0, Lcom/android/phone/FlipEventListener$SensorEventListenerImpl;->this$0:Lcom/android/phone/FlipEventListener;

    #setter for: Lcom/android/phone/FlipEventListener;->statusFlag:I
    invoke-static {v0, v2}, Lcom/android/phone/FlipEventListener;->access$002(Lcom/android/phone/FlipEventListener;I)I

    goto :goto_0

    .line 124
    :pswitch_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    const/high16 v1, -0x3f00

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/phone/FlipEventListener$SensorEventListenerImpl;->this$0:Lcom/android/phone/FlipEventListener;

    invoke-virtual {v0, v3}, Lcom/android/phone/FlipEventListener;->onFilpEventChanged(I)V

    .line 126
    iget-object v0, p0, Lcom/android/phone/FlipEventListener$SensorEventListenerImpl;->this$0:Lcom/android/phone/FlipEventListener;

    #setter for: Lcom/android/phone/FlipEventListener;->statusFlag:I
    invoke-static {v0, v3}, Lcom/android/phone/FlipEventListener;->access$002(Lcom/android/phone/FlipEventListener;I)I

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
