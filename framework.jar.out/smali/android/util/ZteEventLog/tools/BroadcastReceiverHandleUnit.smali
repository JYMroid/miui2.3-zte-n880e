.class public Landroid/util/ZteEventLog/tools/BroadcastReceiverHandleUnit;
.super Ljava/lang/Object;
.source "BroadcastReceiverHandleUnit.java"


# instance fields
.field mAction_:Ljava/lang/String;

.field mResponsor_:Landroid/util/ZteEventLog/tools/Responsor;

.field owner_:Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/util/ZteEventLog/tools/Responsor;Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;)V
    .locals 0
    .parameter "action"
    .parameter "responsor"
    .parameter "owner"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/ZteEventLog/tools/BroadcastReceiverHandleUnit;->mAction_:Ljava/lang/String;

    iput-object p2, p0, Landroid/util/ZteEventLog/tools/BroadcastReceiverHandleUnit;->mResponsor_:Landroid/util/ZteEventLog/tools/Responsor;

    invoke-virtual {p0, p3}, Landroid/util/ZteEventLog/tools/BroadcastReceiverHandleUnit;->SetOwner(Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;)V

    return-void
.end method


# virtual methods
.method DoResponse(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    iget-object v0, p0, Landroid/util/ZteEventLog/tools/BroadcastReceiverHandleUnit;->mResponsor_:Landroid/util/ZteEventLog/tools/Responsor;

    invoke-virtual {v0, p1, p2}, Landroid/util/ZteEventLog/tools/Responsor;->Response(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public GetAction()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/util/ZteEventLog/tools/BroadcastReceiverHandleUnit;->mAction_:Ljava/lang/String;

    return-object v0
.end method

.method public SetOwner(Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;)V
    .locals 0
    .parameter "owner"

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Landroid/util/ZteEventLog/tools/BroadcastReceiverHandleUnit;->owner_:Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;

    invoke-virtual {p1, p0}, Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;->AddHandleUnit(Landroid/util/ZteEventLog/tools/BroadcastReceiverHandleUnit;)V

    goto :goto_0
.end method

.method ShouldResponse(Ljava/lang/String;)Z
    .locals 1
    .parameter "action"

    .prologue
    iget-object v0, p0, Landroid/util/ZteEventLog/tools/BroadcastReceiverHandleUnit;->mAction_:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
