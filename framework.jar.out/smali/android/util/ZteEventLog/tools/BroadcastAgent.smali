.class public Landroid/util/ZteEventLog/tools/BroadcastAgent;
.super Ljava/lang/Object;
.source "BroadcastAgent.java"


# instance fields
.field mBroadcastReceiverWrapper:Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;

    invoke-direct {v0}, Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;-><init>()V

    iput-object v0, p0, Landroid/util/ZteEventLog/tools/BroadcastAgent;->mBroadcastReceiverWrapper:Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/util/ZteEventLog/tools/Responsor;)V
    .locals 0
    .parameter "action"
    .parameter "response"

    .prologue
    invoke-direct {p0}, Landroid/util/ZteEventLog/tools/BroadcastAgent;-><init>()V

    invoke-virtual {p0, p1, p2}, Landroid/util/ZteEventLog/tools/BroadcastAgent;->AddActionResponsor(Ljava/lang/String;Landroid/util/ZteEventLog/tools/Responsor;)V

    return-void
.end method


# virtual methods
.method public AddActionResponsor(Ljava/lang/String;Landroid/util/ZteEventLog/tools/Responsor;)V
    .locals 2
    .parameter "action"
    .parameter "response"

    .prologue
    new-instance v0, Landroid/util/ZteEventLog/tools/BroadcastReceiverHandleUnit;

    iget-object v1, p0, Landroid/util/ZteEventLog/tools/BroadcastAgent;->mBroadcastReceiverWrapper:Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;

    invoke-direct {v0, p1, p2, v1}, Landroid/util/ZteEventLog/tools/BroadcastReceiverHandleUnit;-><init>(Ljava/lang/String;Landroid/util/ZteEventLog/tools/Responsor;Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;)V

    return-void
.end method

.method public GetBroadcast()Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/util/ZteEventLog/tools/BroadcastAgent;->mBroadcastReceiverWrapper:Landroid/util/ZteEventLog/tools/BroadcastReceiverWrapper;

    return-object v0
.end method
