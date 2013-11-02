.class public Lcom/android/phone/RilConnector;
.super Ljava/lang/Object;
.source "RilConnector.java"


# static fields
.field static final TAG:Ljava/lang/String; = "hubo_RilConnector"


# instance fields
.field private mCodePool:I

.field private mHandler:Landroid/os/Handler;

.field private mUnits:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/phone/RilUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/RilConnector;->mUnits:Ljava/util/HashMap;

    .line 15
    const/16 v0, 0x6f

    iput v0, p0, Lcom/android/phone/RilConnector;->mCodePool:I

    .line 17
    new-instance v0, Lcom/android/phone/RilConnector$1;

    invoke-direct {v0, p0}, Lcom/android/phone/RilConnector$1;-><init>(Lcom/android/phone/RilConnector;)V

    iput-object v0, p0, Lcom/android/phone/RilConnector;->mHandler:Landroid/os/Handler;

    .line 40
    return-void
.end method


# virtual methods
.method public AddRilUnit(Lcom/android/phone/RilUnit;)V
    .locals 2
    .parameter "unit"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/phone/RilConnector;->mCodePool:I

    invoke-virtual {p1, p0, v0}, Lcom/android/phone/RilUnit;->Bind(Lcom/android/phone/RilConnector;I)V

    .line 66
    iget-object v0, p0, Lcom/android/phone/RilConnector;->mUnits:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/phone/RilConnector;->mCodePool:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget v0, p0, Lcom/android/phone/RilConnector;->mCodePool:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/RilConnector;->mCodePool:I

    .line 68
    return-void
.end method

.method protected FinalHandleWhenMsgCome(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 53
    return-void
.end method

.method public GetHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/RilConnector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected GetRilUnit(I)Lcom/android/phone/RilUnit;
    .locals 2
    .parameter "code"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/RilConnector;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/phone/RilUnit;

    return-object p0
.end method

.method protected OnException(Landroid/os/AsyncResult;I)V
    .locals 1
    .parameter "ar"
    .parameter "code"

    .prologue
    .line 58
    invoke-virtual {p0, p2}, Lcom/android/phone/RilConnector;->GetRilUnit(I)Lcom/android/phone/RilUnit;

    move-result-object v0

    .line 59
    .local v0, unit:Lcom/android/phone/RilUnit;
    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/phone/RilUnit;->OnException(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method protected PreHandleWhenMsgCome(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 49
    return-void
.end method
