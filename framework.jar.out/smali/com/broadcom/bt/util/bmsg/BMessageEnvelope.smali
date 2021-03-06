.class public Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
.super Lcom/broadcom/bt/util/bmsg/BMessageBase;
.source "BMessageEnvelope.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BMessageEnvelope"


# instance fields
.field private mBMsg:Lcom/broadcom/bt/util/bmsg/BMessage;

.field private mBMsgEnvParent:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/util/bmsg/BMessage;I)V
    .locals 0
    .parameter "bMsg"
    .parameter "nativeRef"

    .prologue
    invoke-direct {p0}, Lcom/broadcom/bt/util/bmsg/BMessageBase;-><init>()V

    iput-object p1, p0, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->mBMsg:Lcom/broadcom/bt/util/bmsg/BMessage;

    invoke-virtual {p0, p2}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->setNativeRef(I)Z

    return-void
.end method

.method private constructor <init>(Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;I)V
    .locals 1
    .parameter "parentEnvelope"
    .parameter "nativeRef"

    .prologue
    iget-object v0, p1, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->mBMsg:Lcom/broadcom/bt/util/bmsg/BMessage;

    invoke-direct {p0, v0, p2}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;-><init>(Lcom/broadcom/bt/util/bmsg/BMessage;I)V

    iput-object p1, p0, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->mBMsgEnvParent:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;

    return-void
.end method


# virtual methods
.method public addBody()Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->isNativeCreated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v1}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->addBEnvBody(I)I

    move-result v0

    .local v0, childNativeObject:I
    if-lez v0, :cond_0

    new-instance v1, Lcom/broadcom/bt/util/bmsg/BMessageBody;

    invoke-direct {v1, p0, v0}, Lcom/broadcom/bt/util/bmsg/BMessageBody;-><init>(Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;I)V

    .end local v0           #childNativeObject:I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addChildEnvelope()Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->isNativeCreated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v1}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->addBEnvChld(I)I

    move-result v0

    .local v0, childNativeObject:I
    if-lez v0, :cond_0

    new-instance v1, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;

    invoke-direct {v1, p0, v0}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;-><init>(Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;I)V

    .end local v0           #childNativeObject:I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addRecipient()Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->isNativeCreated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v1}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->addBEnvRecip(I)I

    move-result v0

    .local v0, childNativeObject:I
    if-lez v0, :cond_0

    new-instance v1, Lcom/broadcom/bt/util/bmsg/BMessageVCard;

    invoke-direct {v1, p0, v0}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;-><init>(Lcom/broadcom/bt/util/bmsg/BMessageBase;I)V

    .end local v0           #childNativeObject:I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBody()Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->isNativeCreated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v1}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->getBEnvBody(I)I

    move-result v0

    .local v0, childNativeObject:I
    if-lez v0, :cond_0

    new-instance v1, Lcom/broadcom/bt/util/bmsg/BMessageBody;

    invoke-direct {v1, p0, v0}, Lcom/broadcom/bt/util/bmsg/BMessageBody;-><init>(Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;I)V

    .end local v0           #childNativeObject:I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChildEnvelope()Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->isNativeCreated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v1}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->getBEnvChld(I)I

    move-result v0

    .local v0, childNativeObject:I
    if-lez v0, :cond_0

    new-instance v1, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;

    invoke-direct {v1, p0, v0}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;-><init>(Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;I)V

    .end local v0           #childNativeObject:I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRecipient()Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->isNativeCreated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v1}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->getBEnvRecip(I)I

    move-result v0

    .local v0, childNativeObject:I
    if-lez v0, :cond_0

    new-instance v1, Lcom/broadcom/bt/util/bmsg/BMessageVCard;

    invoke-direct {v1, p0, v0}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;-><init>(Lcom/broadcom/bt/util/bmsg/BMessageBase;I)V

    .end local v0           #childNativeObject:I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
