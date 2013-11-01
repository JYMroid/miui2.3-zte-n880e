.class final Landroid/webkit/HTML5VideoViewProxy$VideoPlayer$1;
.super Ljava/lang/Object;
.source "HTML5VideoViewProxy.java"

# interfaces
.implements Landroid/webkit/WebChromeClient$CustomViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomViewHidden()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$000()Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$000()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    invoke-static {v2}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$002(Ljava/util/Timer;)Ljava/util/Timer;

    :cond_0
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$100()Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$100()Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    :cond_1
    sget-boolean v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$200()Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnEnded()V

    :goto_0
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$200()Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/ViewManager;->showAll()V

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$200()Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnHidden()V

    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    invoke-static {v2}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$202(Landroid/webkit/HTML5VideoViewProxy;)Landroid/webkit/HTML5VideoViewProxy;

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$300()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$100()Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-static {v2}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$102(Landroid/widget/VideoView;)Landroid/widget/VideoView;

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$400()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$300()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$400()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-static {v2}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$402(Landroid/view/View;)Landroid/view/View;

    :cond_2
    invoke-static {v2}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$302(Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    return-void

    :cond_3
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$200()Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnPaused()V

    goto :goto_0
.end method

.method public onCustomViewResume()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$200()Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->resume(Landroid/webkit/HTML5VideoViewProxy;)V

    return-void
.end method

.method public onCustomViewSuspend()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$200()Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->suspend(Landroid/webkit/HTML5VideoViewProxy;)V

    return-void
.end method
