.class Landroid/webkit/WebView$PrivateHandler;
.super Landroid/os/Handler;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrivateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 45
    .parameter "msg"

    .prologue
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    const/16 v6, 0x75

    if-eq v5, v6, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    const/4 v6, 0x1

    if-lt v5, v6, :cond_2

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    const/16 v6, 0xa

    if-gt v5, v6, :cond_2

    const-string v5, "webview"

    sget-object v6, Landroid/webkit/WebView;->HandlerPrivateDebugString:[Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v7, v0

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    aget-object v6, v6, v7

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v5}, Landroid/webkit/WebView;->access$800(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v5

    if-nez v5, :cond_4

    .end local p0
    .end local p1
    :cond_1
    :goto_1
    return-void

    .restart local p0
    .restart local p1
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    const/16 v6, 0x65

    if-lt v5, v6, :cond_3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    const/16 v6, 0x81

    if-gt v5, v6, :cond_3

    const-string v5, "webview"

    sget-object v6, Landroid/webkit/WebView;->HandlerPackageDebugString:[Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v7, v0

    const/16 v8, 0x65

    sub-int/2addr v7, v8

    aget-object v6, v6, v7

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v5, "webview"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    sparse-switch v5, :sswitch_data_0

    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_1

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;
    invoke-static {v5}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "host"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "username"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "password"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .restart local p0
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;
    invoke-static {v5}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "host"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .restart local p0
    :sswitch_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    if-nez v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$3700(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_6

    :cond_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$3700(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchX:F
    invoke-static {v7}, Landroid/webkit/WebView;->access$3800(Landroid/webkit/WebView;)F

    move-result v7

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v8}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchY:F
    invoke-static {v8}, Landroid/webkit/WebView;->access$4000(Landroid/webkit/WebView;)F

    move-result v8

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v9, v0

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v9}, Landroid/webkit/WebView;->access$4100(Landroid/webkit/WebView;)I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v7

    const/4 v8, 0x1

    #calls: Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebView;->access$4200(Landroid/webkit/WebView;IIZ)V

    goto/16 :goto_1

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$3000(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$3700(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x4

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$3002(Landroid/webkit/WebView;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->updateSelection()V
    invoke-static {v5}, Landroid/webkit/WebView;->access$4300(Landroid/webkit/WebView;)V

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x5

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$3002(Landroid/webkit/WebView;I)I

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$3000(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x7

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$3002(Landroid/webkit/WebView;I)I

    goto/16 :goto_1

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->inFullScreenMode()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$4400(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDeferTouchProcess:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$4500(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_9
    new-instance v33, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v33 .. v33}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .local v33, ted:Landroid/webkit/WebViewCore$TouchEventData;
    const/16 v5, 0x100

    move v0, v5

    move-object/from16 v1, v33

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchX:F
    invoke-static {v6}, Landroid/webkit/WebView;->access$3800(Landroid/webkit/WebView;)F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$4600(Landroid/webkit/WebView;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v33

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchY:F
    invoke-static {v6}, Landroid/webkit/WebView;->access$4000(Landroid/webkit/WebView;)F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$4700(Landroid/webkit/WebView;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v33

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v33

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDeferTouchProcess:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$4500(Landroid/webkit/WebView;)Z

    move-result v5

    move v0, v5

    move-object/from16 v1, v33

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDeferTouchProcess:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$4500(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchX:F
    invoke-static {v5}, Landroid/webkit/WebView;->access$3800(Landroid/webkit/WebView;)F

    move-result v5

    move v0, v5

    move-object/from16 v1, v33

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchY:F
    invoke-static {v5}, Landroid/webkit/WebView;->access$4000(Landroid/webkit/WebView;)F

    move-result v5

    move v0, v5

    move-object/from16 v1, v33

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v5}, Landroid/webkit/WebView;->access$800(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v5

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    .end local v33           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$3700(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x7

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$3002(Landroid/webkit/WebView;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->performLongClick()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->rebuildWebTextView()V

    goto/16 :goto_1

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->doShortPress()V
    invoke-static {v5}, Landroid/webkit/WebView;->access$4800(Landroid/webkit/WebView;)V

    goto/16 :goto_1

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    #calls: Landroid/webkit/WebView;->setContentScrollBy(IIZ)Z
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebView;->access$4900(Landroid/webkit/WebView;IIZ)Z

    goto/16 :goto_1

    .restart local p0
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mUserScroll:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$5000(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebView;->mUserScroll:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5002(Landroid/webkit/WebView;Z)Z

    goto/16 :goto_1

    :cond_c
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    #calls: Landroid/webkit/WebView;->setContentScrollTo(II)Z
    invoke-static {v5, v6, v7}, Landroid/webkit/WebView;->access$5100(Landroid/webkit/WebView;II)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebView;->mUserScroll:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5002(Landroid/webkit/WebView;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v5}, Landroid/webkit/WebView;->access$800(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v5

    const/16 v6, 0x83

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v7, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v8, v0

    invoke-virtual {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto/16 :goto_1

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    #calls: Landroid/webkit/WebView;->spawnContentScrollTo(II)V
    invoke-static {v5, v6, v7}, Landroid/webkit/WebView;->access$5200(Landroid/webkit/WebView;II)V

    goto/16 :goto_1

    :sswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/webkit/WebViewCore$RestoreState;

    .local v29, restoreState:Landroid/webkit/WebViewCore$RestoreState;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v6

    move-object/from16 v0, v29

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mScrollX:I

    move v7, v0

    const/4 v8, 0x0

    move-object v0, v5

    move-object/from16 v1, v29

    move v2, v6

    move v3, v7

    move v4, v8

    #calls: Landroid/webkit/WebView;->updateZoomRange(Landroid/webkit/WebViewCore$RestoreState;IIZ)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->access$5300(Landroid/webkit/WebView;Landroid/webkit/WebViewCore$RestoreState;IIZ)V

    goto/16 :goto_1

    .end local v29           #restoreState:Landroid/webkit/WebViewCore$RestoreState;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDelayedDeleteRootLayer:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$5400(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebView;->mDelayedDeleteRootLayer:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5402(Landroid/webkit/WebView;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #calls: Landroid/webkit/WebView;->nativeSetRootLayer(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5500(Landroid/webkit/WebView;I)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v5}, Landroid/webkit/WebView;->access$800(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v31

    .local v31, settings:Landroid/webkit/WebSettings;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v41

    .local v41, viewWidth:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/webkit/WebViewCore$DrawData;

    .local v17, draw:Landroid/webkit/WebViewCore$DrawData;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mViewPoint:Landroid/graphics/Point;

    move-object/from16 v40, v0

    .local v40, viewSize:Landroid/graphics/Point;
    invoke-virtual/range {v31 .. v31}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v37

    .local v37, useWideViewport:Z
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    move-object/from16 v29, v0

    .restart local v29       #restoreState:Landroid/webkit/WebViewCore$RestoreState;
    if-eqz v29, :cond_14

    const/4 v5, 0x1

    move/from16 v19, v5

    .local v19, hasRestoreState:Z
    :goto_2
    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v6, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/webkit/WebViewCore$DrawData;->mMinPrefWidth:I

    move v7, v0

    const/4 v8, 0x1

    move-object v0, v5

    move-object/from16 v1, v29

    move v2, v6

    move v3, v7

    move v4, v8

    #calls: Landroid/webkit/WebView;->updateZoomRange(Landroid/webkit/WebViewCore$RestoreState;IIZ)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->access$5300(Landroid/webkit/WebView;Landroid/webkit/WebViewCore$RestoreState;IIZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDrawHistory:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$5600(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/webkit/WebView;->mInZoomOverview:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mInitialScaleInPercent:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$5700(Landroid/webkit/WebView;)I

    move-result v5

    if-lez v5, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mInitialScaleInPercent:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$5700(Landroid/webkit/WebView;)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mInitialScaleInPercent:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$5700(Landroid/webkit/WebView;)I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    iget v8, v8, Landroid/webkit/WebView;->mTextWrapScale:F

    const/high16 v9, 0x42c8

    mul-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_15

    const/4 v7, 0x1

    :goto_3
    const/4 v8, 0x0

    #calls: Landroid/webkit/WebView;->setNewZoomScale(FZZ)V
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;FZZ)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mScrollX:I

    move v6, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mScrollY:I

    move v7, v0

    #calls: Landroid/webkit/WebView;->setContentScrollTo(II)Z
    invoke-static {v5, v6, v7}, Landroid/webkit/WebView;->access$5100(Landroid/webkit/WebView;II)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #calls: Landroid/webkit/WebView;->clearTextEntry(Z)V
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5800(Landroid/webkit/WebView;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v5

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->updateZoomButtonsEnabled()V
    invoke-static {v5}, Landroid/webkit/WebView;->access$100(Landroid/webkit/WebView;)V

    :cond_e
    move-object/from16 v0, v40

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget v6, v6, Landroid/webkit/WebView;->mLastWidthSent:I

    if-ne v5, v6, :cond_1b

    move-object/from16 v0, v40

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget v6, v6, Landroid/webkit/WebView;->mLastHeightSent:I

    if-ne v5, v6, :cond_1b

    const/4 v5, 0x1

    move/from16 v36, v5

    .local v36, updateLayout:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mWidthHeight:Landroid/graphics/Point;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mWidthHeight:Landroid/graphics/Point;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    #getter for: Landroid/webkit/WebView;->mFindIsUp:Z
    invoke-static {v8}, Landroid/webkit/WebView;->access$5900(Landroid/webkit/WebView;)Z

    move-result v8

    if-eqz v8, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    #getter for: Landroid/webkit/WebView;->mFindHeight:I
    invoke-static {v8}, Landroid/webkit/WebView;->access$6000(Landroid/webkit/WebView;)I

    move-result v8

    :goto_6
    add-int/2addr v7, v8

    move-object v0, v5

    move v1, v6

    move v2, v7

    move/from16 v3, v36

    #calls: Landroid/webkit/WebView;->recordNewContentSize(IIZ)V
    invoke-static {v0, v1, v2, v3}, Landroid/webkit/WebView;->access$6100(Landroid/webkit/WebView;IIZ)V

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mInvalRegion:Landroid/graphics/Region;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    .local v13, b:Landroid/graphics/Rect;
    const-string v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NEW_PICTURE_MSG_ID {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v13, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v13, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v13, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v13, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mInvalRegion:Landroid/graphics/Region;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    #calls: Landroid/webkit/WebView;->invalidateContentRect(Landroid/graphics/Rect;)V
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$6200(Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mPictureListener:Landroid/webkit/WebView$PictureListener;
    invoke-static {v5}, Landroid/webkit/WebView;->access$6300(Landroid/webkit/WebView;)Landroid/webkit/WebView$PictureListener;

    move-result-object v5

    if-eqz v5, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mPictureListener:Landroid/webkit/WebView$PictureListener;
    invoke-static {v5}, Landroid/webkit/WebView;->access$6300(Landroid/webkit/WebView;)Landroid/webkit/WebView$PictureListener;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/webkit/WebView$PictureListener;->onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V

    :cond_f
    if-eqz v37, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    sget v6, Landroid/webkit/WebView;->sMaxViewportWidth:I

    move/from16 v0, v41

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    #getter for: Landroid/webkit/WebView;->mDefaultScale:F
    invoke-static {v8}, Landroid/webkit/WebView;->access$6400(Landroid/webkit/WebView;)F

    move-result v8

    div-float/2addr v7, v8

    float-to-int v7, v7

    move-object/from16 v0, v17

    iget v0, v0, Landroid/webkit/WebViewCore$DrawData;->mMinPrefWidth:I

    move v8, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mViewPoint:Landroid/graphics/Point;

    move-object v9, v0

    iget v9, v9, Landroid/graphics/Point;->x:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mMinZoomScaleFixed:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$6500(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move/from16 v0, v41

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    iget v7, v7, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    #setter for: Landroid/webkit/WebView;->mMinZoomScale:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$2702(Landroid/webkit/WebView;F)F

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDrawHistory:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$5600(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-boolean v5, v5, Landroid/webkit/WebView;->mInZoomOverview:Z

    if-eqz v5, :cond_12

    move/from16 v0, v41

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mInvActualScale:F
    invoke-static {v6}, Landroid/webkit/WebView;->access$6600(Landroid/webkit/WebView;)F

    move-result v6

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget v6, v6, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f80

    cmpl-float v5, v5, v6

    if-lez v5, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move/from16 v0, v41

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    iget v7, v7, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v7}, Landroid/webkit/WebView;->access$900(Landroid/webkit/WebView;)F

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    iget v8, v8, Landroid/webkit/WebView;->mTextWrapScale:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {}, Landroid/webkit/WebView;->access$2800()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1d

    const/4 v7, 0x1

    :goto_7
    const/4 v8, 0x0

    #calls: Landroid/webkit/WebView;->setNewZoomScale(FZZ)V
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;FZZ)V

    :cond_12
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$DrawData;->mFocusSizeChanged:Z

    move v5, v0

    if-eqz v5, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x1

    #setter for: Landroid/webkit/WebView;->mFocusSizeChanged:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$6702(Landroid/webkit/WebView;Z)Z

    :cond_13
    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v5}, Landroid/webkit/ViewManager;->postReadyToDrawAll()V

    goto/16 :goto_1

    .end local v13           #b:Landroid/graphics/Rect;
    .end local v19           #hasRestoreState:Z
    .end local v36           #updateLayout:Z
    :cond_14
    const/4 v5, 0x0

    move/from16 v19, v5

    goto/16 :goto_2

    .restart local v19       #hasRestoreState:Z
    :cond_15
    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_16
    move-object/from16 v0, v29

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mViewScale:F

    move v5, v0

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mTextWrapScale:F

    move v6, v0

    iput v6, v5, Landroid/webkit/WebView;->mTextWrapScale:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mViewScale:F

    move v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    #calls: Landroid/webkit/WebView;->setNewZoomScale(FZZ)V
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;FZZ)V

    goto/16 :goto_4

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    if-eqz v37, :cond_18

    invoke-virtual/range {v31 .. v31}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v6

    if-eqz v6, :cond_18

    const/4 v6, 0x1

    :goto_8
    iput-boolean v6, v5, Landroid/webkit/WebView;->mInZoomOverview:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-boolean v5, v5, Landroid/webkit/WebView;->mInZoomOverview:Z

    if-eqz v5, :cond_19

    move/from16 v0, v41

    int-to-float v0, v0

    move v5, v0

    const/high16 v6, 0x4448

    div-float v30, v5, v6

    .local v30, scale:F
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget v6, v6, Landroid/webkit/WebView;->mTextWrapScale:F

    sub-float v6, v30, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {}, Landroid/webkit/WebView;->access$2800()F

    move-result v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1a

    const/4 v6, 0x1

    :goto_a
    const/4 v7, 0x0

    move-object v0, v5

    move/from16 v1, v30

    move v2, v6

    move v3, v7

    #calls: Landroid/webkit/WebView;->setNewZoomScale(FZZ)V
    invoke-static {v0, v1, v2, v3}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;FZZ)V

    goto/16 :goto_4

    .end local v30           #scale:F
    :cond_18
    const/4 v6, 0x0

    goto :goto_8

    :cond_19
    move-object/from16 v0, v29

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mTextWrapScale:F

    move/from16 v30, v0

    .restart local v30       #scale:F
    goto :goto_9

    :cond_1a
    const/4 v6, 0x0

    goto :goto_a

    .end local v30           #scale:F
    :cond_1b
    const/4 v5, 0x0

    move/from16 v36, v5

    goto/16 :goto_5

    .restart local v36       #updateLayout:Z
    :cond_1c
    const/4 v8, 0x0

    goto/16 :goto_6

    .restart local v13       #b:Landroid/graphics/Rect;
    :cond_1d
    const/4 v7, 0x0

    goto/16 :goto_7

    .end local v13           #b:Landroid/graphics/Rect;
    .end local v17           #draw:Landroid/webkit/WebViewCore$DrawData;
    .end local v19           #hasRestoreState:Z
    .end local v29           #restoreState:Landroid/webkit/WebViewCore$RestoreState;
    .end local v31           #settings:Landroid/webkit/WebSettings;
    .end local v36           #updateLayout:Z
    .end local v37           #useWideViewport:Z
    .end local v40           #viewSize:Landroid/graphics/Point;
    .end local v41           #viewWidth:I
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    #calls: Landroid/webkit/WebView;->nativeCreate(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$6800(Landroid/webkit/WebView;I)V

    goto/16 :goto_1

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "password"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v34

    .local v34, text:Landroid/text/Spannable;
    invoke-static/range {v34 .. v34}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v32

    .local v32, start:I
    invoke-static/range {v34 .. v34}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v18

    .local v18, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v27

    .local v27, pword:Landroid/text/Spannable;
    move-object/from16 v0, v27

    move/from16 v1, v32

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_1

    .end local v18           #end:I
    .end local v27           #pword:Landroid/text/Spannable;
    .end local v32           #start:I
    .end local v34           #text:Landroid/text/Spannable;
    :cond_1e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mTextGeneration:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$6900(Landroid/webkit/WebView;)I

    move-result v6

    if-ne v5, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->setTextAndKeepSelection(Ljava/lang/String;)V

    goto/16 :goto_1

    .restart local p0
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x1

    #calls: Landroid/webkit/WebView;->displaySoftKeyboard(Z)V
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7000(Landroid/webkit/WebView;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/webkit/WebViewCore$TextSelectionData;

    move-object v0, v5

    move v1, v6

    move v2, v7

    move-object/from16 v3, p0

    #calls: Landroid/webkit/WebView;->updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V
    invoke-static {v0, v1, v2, v3}, Landroid/webkit/WebView;->access$7100(Landroid/webkit/WebView;IILandroid/webkit/WebViewCore$TextSelectionData;)V

    goto/16 :goto_1

    .restart local p0
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->rebuildWebTextView()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/webkit/WebViewCore$TextSelectionData;

    move-object v0, v5

    move v1, v6

    move v2, v7

    move-object/from16 v3, p0

    #calls: Landroid/webkit/WebView;->updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V
    invoke-static {v0, v1, v2, v3}, Landroid/webkit/WebView;->access$7100(Landroid/webkit/WebView;IILandroid/webkit/WebViewCore$TextSelectionData;)V

    goto/16 :goto_1

    .restart local p0
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v22

    .local v22, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    goto/16 :goto_1

    .end local v22           #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local p1
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    #calls: Landroid/webkit/WebView;->navHandledKey(IIZJ)Z
    invoke-static/range {v5 .. v10}, Landroid/webkit/WebView;->access$7200(Landroid/webkit/WebView;IIZJ)Z

    goto/16 :goto_1

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->selectionDone()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->nativeCursorIsTextInput()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$7300(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebTextView;->bringIntoView()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->rebuildWebTextView()V

    goto/16 :goto_1

    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #calls: Landroid/webkit/WebView;->clearTextEntry(Z)V
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5800(Landroid/webkit/WebView;Z)V

    goto/16 :goto_1

    :sswitch_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/graphics/Rect;

    .local v28, r:Landroid/graphics/Rect;
    if-nez v28, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_1

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v8, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v9, v0

    #calls: Landroid/webkit/WebView;->viewInvalidate(IIII)V
    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebView;->access$7400(Landroid/webkit/WebView;IIII)V

    goto/16 :goto_1

    .end local v28           #r:Landroid/graphics/Rect;
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_1

    :sswitch_16
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    if-nez v5, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x1

    #setter for: Landroid/webkit/WebView;->mDelayedDeleteRootLayer:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5402(Landroid/webkit/WebView;Z)Z

    goto/16 :goto_1

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebView;->mDelayedDeleteRootLayer:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5402(Landroid/webkit/WebView;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    #calls: Landroid/webkit/WebView;->nativeSetRootLayer(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5500(Landroid/webkit/WebView;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_1

    :sswitch_17
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/webkit/WebTextView$AutoCompleteAdapter;

    .local v12, adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    goto/16 :goto_1

    .end local v12           #adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    :sswitch_18
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v5}, Landroid/webkit/WebView;->access$800(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v5

    invoke-static {v5}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebView;->mGotCenterDown:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7502(Landroid/webkit/WebView;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebView;->mTrackballDown:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7602(Landroid/webkit/WebView;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->performLongClick()Z

    goto/16 :goto_1

    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    if-eqz v6, :cond_21

    const/4 v6, 0x1

    :goto_b
    #setter for: Landroid/webkit/WebView;->mForwardTouchEvents:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7702(Landroid/webkit/WebView;Z)Z

    goto/16 :goto_1

    :cond_21
    const/4 v6, 0x0

    goto :goto_b

    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->inFullScreenMode()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$4400(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    if-nez v5, :cond_25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    if-nez v5, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$3700(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_22

    const/4 v6, 0x3

    :goto_c
    #setter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$3702(Landroid/webkit/WebView;I)I

    goto/16 :goto_1

    :cond_22
    const/4 v6, 0x2

    goto :goto_c

    :cond_23
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$3700(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_24

    const/4 v6, 0x3

    :goto_d
    #setter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$3702(Landroid/webkit/WebView;I)I

    goto/16 :goto_1

    :cond_24
    const/4 v6, 0x0

    goto :goto_d

    :cond_25
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v5, v0

    if-nez v5, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/webkit/WebViewCore$TouchEventData;

    .restart local v33       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    move-object/from16 v0, v33

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    move v5, v0

    sparse-switch v5, :sswitch_data_1

    goto/16 :goto_1

    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchX:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7802(Landroid/webkit/WebView;F)F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchY:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7902(Landroid/webkit/WebView;F)F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x1

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8002(Landroid/webkit/WebView;I)I

    goto/16 :goto_1

    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$8000(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x3

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8002(Landroid/webkit/WebView;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchX:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7802(Landroid/webkit/WebView;F)F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchY:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7902(Landroid/webkit/WebView;F)F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->startDrag()V
    invoke-static {v5}, Landroid/webkit/WebView;->access$8100(Landroid/webkit/WebView;)V

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$8200(Landroid/webkit/WebView;)I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mLastDeferTouchX:F
    invoke-static {v7}, Landroid/webkit/WebView;->access$7800(Landroid/webkit/WebView;)F

    move-result v7

    add-float/2addr v6, v7

    move-object/from16 v0, v33

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    move v7, v0

    sub-float/2addr v6, v7

    float-to-int v6, v6

    #calls: Landroid/webkit/WebView;->pinLocX(I)I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8300(Landroid/webkit/WebView;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$8400(Landroid/webkit/WebView;)I

    move-result v6

    sub-int v15, v5, v6

    .local v15, deltaX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$8500(Landroid/webkit/WebView;)I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mLastDeferTouchY:F
    invoke-static {v7}, Landroid/webkit/WebView;->access$7900(Landroid/webkit/WebView;)F

    move-result v7

    add-float/2addr v6, v7

    move-object/from16 v0, v33

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    move v7, v0

    sub-float/2addr v6, v7

    float-to-int v6, v6

    #calls: Landroid/webkit/WebView;->pinLocY(I)I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8600(Landroid/webkit/WebView;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$8700(Landroid/webkit/WebView;)I

    move-result v6

    sub-int v16, v5, v6

    .local v16, deltaY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object v0, v5

    move v1, v15

    move/from16 v2, v16

    #calls: Landroid/webkit/WebView;->doDrag(II)V
    invoke-static {v0, v1, v2}, Landroid/webkit/WebView;->access$8800(Landroid/webkit/WebView;II)V

    if-eqz v15, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchX:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7802(Landroid/webkit/WebView;F)F

    :cond_27
    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchY:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7902(Landroid/webkit/WebView;F)F

    goto/16 :goto_1

    .end local v15           #deltaX:I
    .end local v16           #deltaY:I
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$8000(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v5}, Landroid/webkit/WebView;->access$9300(Landroid/webkit/WebView;)Landroid/widget/OverScroller;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$8900(Landroid/webkit/WebView;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$9000(Landroid/webkit/WebView;)I

    move-result v7

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v9, v0

    #calls: Landroid/webkit/WebView;->computeMaxScrollX()I
    invoke-static {v9}, Landroid/webkit/WebView;->access$9100(Landroid/webkit/WebView;)I

    move-result v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v11, v0

    #calls: Landroid/webkit/WebView;->computeMaxScrollY()I
    invoke-static {v11}, Landroid/webkit/WebView;->access$9200(Landroid/webkit/WebView;)I

    move-result v11

    invoke-virtual/range {v5 .. v11}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->invalidate()V

    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v5}, Landroid/webkit/WebView;->access$800(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v5

    invoke-static {v5}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x7

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8002(Landroid/webkit/WebView;I)I

    goto/16 :goto_1

    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mLastTouchX:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$3802(Landroid/webkit/WebView;F)F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mLastTouchY:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$4002(Landroid/webkit/WebView;F)F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->doDoubleTap()V
    invoke-static {v5}, Landroid/webkit/WebView;->access$9400(Landroid/webkit/WebView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x7

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8002(Landroid/webkit/WebView;I)I

    goto/16 :goto_1

    :sswitch_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v21

    .local v21, hitTest:Landroid/webkit/WebView$HitTestResult;
    if-eqz v21, :cond_29

    #getter for: Landroid/webkit/WebView$HitTestResult;->mType:I
    invoke-static/range {v21 .. v21}, Landroid/webkit/WebView$HitTestResult;->access$9500(Landroid/webkit/WebView$HitTestResult;)I

    move-result v5

    if-eqz v5, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->performLongClick()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->rebuildWebTextView()V

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x7

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8002(Landroid/webkit/WebView;I)I

    goto/16 :goto_1

    .end local v21           #hitTest:Landroid/webkit/WebView$HitTestResult;
    .end local v33           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :sswitch_21
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    if-nez v5, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->hideSoftKeyboard()V
    invoke-static {v5}, Landroid/webkit/WebView;->access$9600(Landroid/webkit/WebView;)V

    goto/16 :goto_1

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #calls: Landroid/webkit/WebView;->displaySoftKeyboard(Z)V
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7000(Landroid/webkit/WebView;Z)V

    goto/16 :goto_1

    :sswitch_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mFindIsUp:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$5900(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;
    invoke-static {v6}, Landroid/webkit/WebView;->access$9700(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->findAll(Ljava/lang/String;)I

    goto/16 :goto_1

    :sswitch_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x2

    #setter for: Landroid/webkit/WebView;->mHeldMotionless:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$9802(Landroid/webkit/WebView;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->invalidate()V

    :sswitch_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$3000(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mHeldMotionless:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$9800(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v6

    const/4 v7, 0x0

    #calls: Landroid/webkit/WebView;->awakenScrollBars(IZ)Z
    invoke-static {v5, v6, v7}, Landroid/webkit/WebView;->access$9900(Landroid/webkit/WebView;IZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    :sswitch_25
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    #calls: Landroid/webkit/WebView;->doMotionUp(II)V
    invoke-static {v5, v6, v7}, Landroid/webkit/WebView;->access$10000(Landroid/webkit/WebView;II)V

    goto/16 :goto_1

    :sswitch_26
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/view/View;

    .local v38, view:Landroid/view/View;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    .local v26, npp:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    if-eqz v5, :cond_2b

    const-string v5, "webview"

    const-string v6, "Should not have another full screen."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    invoke-virtual {v5}, Landroid/webkit/PluginFullScreenHolder;->dismiss()V

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    new-instance v6, Landroid/webkit/PluginFullScreenHolder;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    move-object v0, v6

    move-object v1, v7

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/webkit/PluginFullScreenHolder;-><init>(Landroid/webkit/WebView;I)V

    iput-object v6, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    move-object v0, v5

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/webkit/PluginFullScreenHolder;->setContentView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/PluginFullScreenHolder;->setCancelable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/PluginFullScreenHolder;->setCanceledOnTouchOutside(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    invoke-virtual {v5}, Landroid/webkit/PluginFullScreenHolder;->show()V

    goto/16 :goto_1

    .end local v26           #npp:I
    .end local v38           #view:Landroid/view/View;
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->inFullScreenMode()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$4400(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    invoke-virtual {v5}, Landroid/webkit/PluginFullScreenHolder;->dismiss()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    goto/16 :goto_1

    :sswitch_28
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->nativeClearCursor()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->rebuildWebTextView()V

    goto/16 :goto_1

    :sswitch_29
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Landroid/webkit/WebViewCore$ShowRectData;

    .local v14, data:Landroid/webkit/WebViewCore$ShowRectData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$10100(Landroid/webkit/WebView;)I

    move-result v43

    .local v43, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget v6, v14, Landroid/webkit/WebViewCore$ShowRectData;->mLeft:I

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v23

    .local v23, left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget v6, v14, Landroid/webkit/WebViewCore$ShowRectData;->mWidth:I

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v42

    .local v42, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget v6, v14, Landroid/webkit/WebViewCore$ShowRectData;->mContentWidth:I

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v25

    .local v25, maxWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v41

    .restart local v41       #viewWidth:I
    move/from16 v0, v42

    move/from16 v1, v41

    if-ge v0, v1, :cond_2c

    div-int/lit8 v5, v42, 0x2

    add-int v5, v5, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$10200(Landroid/webkit/WebView;)I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v6, v41, 0x2

    sub-int/2addr v5, v6

    add-int v43, v43, v5

    :goto_e
    const-string v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showRectMsg=(left="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",width="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",maxWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",viewWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",x="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",xPercentInDoc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v14, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInDoc:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",xPercentInView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v14, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInView:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    add-int v6, v43, v41

    move/from16 v0, v25

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int v6, v6, v41

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v43

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget v6, v14, Landroid/webkit/WebViewCore$ShowRectData;->mTop:I

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v35

    .local v35, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget v6, v14, Landroid/webkit/WebViewCore$ShowRectData;->mHeight:I

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v20

    .local v20, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget v6, v14, Landroid/webkit/WebViewCore$ShowRectData;->mContentHeight:I

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v24

    .local v24, maxHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v39

    .local v39, viewHeight:I
    move/from16 v0, v35

    int-to-float v0, v0

    move v5, v0

    iget v6, v14, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInDoc:F

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, v14, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInView:F

    move/from16 v0, v39

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    move v0, v5

    float-to-int v0, v0

    move/from16 v44, v0

    .local v44, y:I
    const-string v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showRectMsg=(top="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",height="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",maxHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",viewHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",y="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",yPercentInDoc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v14, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInDoc:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",yPercentInView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v14, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInView:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    add-int v6, v44, v39

    move/from16 v0, v24

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int v6, v6, v39

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v44

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #calls: Landroid/webkit/WebView;->getVisibleTitleHeight()I
    invoke-static {v6}, Landroid/webkit/WebView;->access$1500(Landroid/webkit/WebView;)I

    move-result v6

    sub-int v6, v44, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v44

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollTo(II)V

    goto/16 :goto_1

    .end local v20           #height:I
    .end local v24           #maxHeight:I
    .end local v35           #top:I
    .end local v39           #viewHeight:I
    .end local v44           #y:I
    :cond_2c
    move/from16 v0, v23

    int-to-float v0, v0

    move v5, v0

    iget v6, v14, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInDoc:F

    move/from16 v0, v42

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$10300(Landroid/webkit/WebView;)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, v14, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInView:F

    move/from16 v0, v41

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    add-int v43, v43, v5

    goto/16 :goto_e

    .end local v14           #data:Landroid/webkit/WebViewCore$ShowRectData;
    .end local v23           #left:I
    .end local v25           #maxWidth:I
    .end local v41           #viewWidth:I
    .end local v42           #width:I
    .end local v43           #x:I
    :sswitch_2a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/graphics/Rect;

    .restart local v28       #r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/webkit/WebView;->mInZoomOverview:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->height()I

    move-result v9

    #calls: Landroid/webkit/WebView;->centerFitRect(IIII)V
    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebView;->access$10400(Landroid/webkit/WebView;IIII)V

    goto/16 :goto_1

    .end local v28           #r:Landroid/graphics/Rect;
    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mHorizontalScrollBarMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$10502(Landroid/webkit/WebView;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mVerticalScrollBarMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$10602(Landroid/webkit/WebView;I)I

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_17
        0x7 -> :sswitch_18
        0x8 -> :sswitch_23
        0x9 -> :sswitch_24
        0xa -> :sswitch_2
        0x65 -> :sswitch_8
        0x66 -> :sswitch_6
        0x67 -> :sswitch_9
        0x68 -> :sswitch_7
        0x69 -> :sswitch_b
        0x6a -> :sswitch_12
        0x6b -> :sswitch_c
        0x6c -> :sswitch_d
        0x6d -> :sswitch_a
        0x6e -> :sswitch_11
        0x6f -> :sswitch_13
        0x70 -> :sswitch_f
        0x71 -> :sswitch_29
        0x72 -> :sswitch_19
        0x73 -> :sswitch_1b
        0x74 -> :sswitch_1a
        0x75 -> :sswitch_14
        0x76 -> :sswitch_21
        0x77 -> :sswitch_25
        0x78 -> :sswitch_26
        0x79 -> :sswitch_27
        0x7a -> :sswitch_28
        0x7b -> :sswitch_15
        0x7c -> :sswitch_16
        0x7d -> :sswitch_10
        0x7e -> :sswitch_22
        0x7f -> :sswitch_2a
        0x80 -> :sswitch_e
        0x81 -> :sswitch_2b
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1c
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_1d
        0x3 -> :sswitch_1e
        0x100 -> :sswitch_20
        0x200 -> :sswitch_1f
    .end sparse-switch
.end method
