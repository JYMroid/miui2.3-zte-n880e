.class Lcom/android/launcher2/gadget/PhotoFramePicker$OnButtonClickListener;
.super Ljava/lang/Object;
.source "PhotoFramePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/gadget/PhotoFramePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/gadget/PhotoFramePicker;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/gadget/PhotoFramePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/launcher2/gadget/PhotoFramePicker$OnButtonClickListener;->this$0:Lcom/android/launcher2/gadget/PhotoFramePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/gadget/PhotoFramePicker;Lcom/android/launcher2/gadget/PhotoFramePicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/PhotoFramePicker$OnButtonClickListener;-><init>(Lcom/android/launcher2/gadget/PhotoFramePicker;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 264
    :goto_0
    :pswitch_0
    return-void

    .line 252
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFramePicker$OnButtonClickListener;->this$0:Lcom/android/launcher2/gadget/PhotoFramePicker;

    invoke-virtual {v0}, Lcom/android/launcher2/gadget/PhotoFramePicker;->selectPhoto()V

    goto :goto_0

    .line 255
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFramePicker$OnButtonClickListener;->this$0:Lcom/android/launcher2/gadget/PhotoFramePicker;

    invoke-virtual {v0}, Lcom/android/launcher2/gadget/PhotoFramePicker;->selectFrame()V

    goto :goto_0

    .line 258
    :pswitch_3
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFramePicker$OnButtonClickListener;->this$0:Lcom/android/launcher2/gadget/PhotoFramePicker;

    invoke-virtual {v0}, Lcom/android/launcher2/gadget/PhotoFramePicker;->commit()V

    goto :goto_0

    .line 261
    :pswitch_4
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFramePicker$OnButtonClickListener;->this$0:Lcom/android/launcher2/gadget/PhotoFramePicker;

    iget-object v0, v0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageView:Lcom/android/launcher2/gadget/PhotoFrameView;

    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFramePicker$OnButtonClickListener;->this$0:Lcom/android/launcher2/gadget/PhotoFramePicker;

    iget-object v1, v1, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageView:Lcom/android/launcher2/gadget/PhotoFrameView;

    invoke-virtual {v1}, Lcom/android/launcher2/gadget/PhotoFrameView;->getRotateDegrees()I

    move-result v1

    add-int/lit8 v1, v1, 0x5a

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/gadget/PhotoFrameView;->setRotateDegrees(IZ)V

    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x7f070048
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
