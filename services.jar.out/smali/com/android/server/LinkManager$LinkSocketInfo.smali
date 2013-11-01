.class Lcom/android/server/LinkManager$LinkSocketInfo;
.super Ljava/lang/Object;
.source "LinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinkSocketInfo"
.end annotation


# static fields
.field static final ASSIGNED:I = 0x1

.field static final LOST:I = 0x2

.field static final NETWORK_UNKNOWN:I = -0x1

.field static final UNASSIGNED:I


# instance fields
.field public assignedNetwork:I

.field public callback:Landroid/net/ILinkSocketMessageHandler;

.field public capabilities:Landroid/net/LinkCapabilities;

.field public id:I

.field public status:I

.field final synthetic this$0:Lcom/android/server/LinkManager;


# direct methods
.method private constructor <init>(Lcom/android/server/LinkManager;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/LinkManager$LinkSocketInfo;->this$0:Lcom/android/server/LinkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LinkManager;Lcom/android/server/LinkManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LinkManager$LinkSocketInfo;-><init>(Lcom/android/server/LinkManager;)V

    return-void
.end method
