.class public Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastReceiverWrapper.java"


# instance fields
.field private inited_:Z

.field private mFilter_:Landroid/content/IntentFilter;

.field private mHandlers_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/ZteEventLog/tools/BroadcastReceiverHandleUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;->inited_:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;->mFilter_:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public AddHandleUnit(Landroid/util/ZteEventLog/tools/BroadcastReceiverHandleUnit;)V
    .locals 4
    .parameter "unit"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    move v1, v3

    :goto_0
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    iget-boolean v1, p0, Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;->inited_:Z

    if-nez v1, :cond_2

    move v1, v3

    :goto_1
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-virtual {p0}, Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;->GetUnits()Ljava/util/ArrayList;

    move-result-object v0

    .local v0, units:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/ZteEventLog/tools/BroadcastReceiverHandleUnit;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/util/ZteEventLog/tools/BroadcastReceiverHandleUnit;->GetAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;->GetHandlerUnit(Ljava/lang/String;)Landroid/util/ZteEventLog/tools/BroadcastReceiverHandleUnit;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_0
    move v1, v3

    :goto_2
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;->mFilter_:Landroid/content/IntentFilter;

    invoke-virtual {p1}, Landroid/util/ZteEventLog/tools/BroadcastReceiverHandleUnit;->GetAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void

    .end local v0           #units:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/ZteEventLog/tools/BroadcastReceiverHandleUnit;>;"
    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .restart local v0       #units:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/ZteEventLog/tools/BroadcastReceiverHandleUnit;>;"
    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method GetHandlerUnit(Ljava/lang/String;)Landroid/util/ZteEventLog/tools/BroadcastReceiverHandleUnit;
    .locals 4
    .parameter "action"

    .prologue
    invoke-virtual {p0}, Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;->GetUnits()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;->mHandlers_:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ZteEventLog/tools/BroadcastReceiverHandleUnit;

    .local v2, unit:Landroid/util/ZteEventLog/tools/BroadcastReceiverHandleUnit;
    invoke-virtual {v2, p1}, Landroid/util/ZteEventLog/tools/BroadcastReceiverHandleUnit;->ShouldResponse(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    .end local v2           #unit:Landroid/util/ZteEventLog/tools/BroadcastReceiverHandleUnit;
    :goto_1
    return-object v3

    .restart local v2       #unit:Landroid/util/ZteEventLog/tools/BroadcastReceiverHandleUnit;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2           #unit:Landroid/util/ZteEventLog/tools/BroadcastReceiverHandleUnit;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method GetUnits()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/ZteEventLog/tools/BroadcastReceiverHandleUnit;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;->mHandlers_:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;->mHandlers_:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;->mHandlers_:Ljava/util/ArrayList;

    return-object v0
.end method

.method public ShouldReceive(Ljava/lang/String;)Z
    .locals 1
    .parameter "action"

    .prologue
    iget-object v0, p0, Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;->mFilter_:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;->mFilter_:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Start(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-virtual {p0}, Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;->GetUnits()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;->inited_:Z

    iget-object v0, p0, Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;->mFilter_:Landroid/content/IntentFilter;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public Stop(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;->mHandlers_:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;->inited_:Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;->GetHandlerUnit(Ljava/lang/String;)Landroid/util/ZteEventLog/tools/BroadcastReceiverHandleUnit;

    move-result-object v0

    .local v0, unit:Landroid/util/ZteEventLog/tools/BroadcastReceiverHandleUnit;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-virtual {v0, p1, p2}, Landroid/util/ZteEventLog/tools/BroadcastReceiverHandleUnit;->DoResponse(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
