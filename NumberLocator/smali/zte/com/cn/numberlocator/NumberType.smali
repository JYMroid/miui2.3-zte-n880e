.class public Lzte/com/cn/numberlocator/NumberType;
.super Ljava/lang/Object;
.source "NumberType.java"


# static fields
.field public static final NUM_TYPE_ERROR:I = 0x0

.field public static final NUM_TYPE_FIXED:I = 0x2

.field public static final NUM_TYPE_INTERNAL:I = 0x3

.field public static final NUM_TYPE_MOBIE_SERVICE:I = 0x4

.field public static final NUM_TYPE_MOBLE:I = 0x1


# instance fields
.field private mNumText:Ljava/lang/String;

.field private mNumType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lzte/com/cn/numberlocator/NumberType;->mNumType:I

    .line 18
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "numtype"
    .parameter "numtext"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lzte/com/cn/numberlocator/NumberType;->mNumType:I

    .line 21
    invoke-virtual {p0, p1}, Lzte/com/cn/numberlocator/NumberType;->setNumType(I)V

    .line 22
    invoke-virtual {p0, p2}, Lzte/com/cn/numberlocator/NumberType;->setNumText(Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getNumText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberType;->mNumText:Ljava/lang/String;

    return-object v0
.end method

.method public getNumType()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lzte/com/cn/numberlocator/NumberType;->mNumType:I

    return v0
.end method

.method public setNumText(Ljava/lang/String;)V
    .locals 0
    .parameter "mNumText"

    .prologue
    .line 34
    iput-object p1, p0, Lzte/com/cn/numberlocator/NumberType;->mNumText:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setNumType(I)V
    .locals 0
    .parameter "mNumType"

    .prologue
    .line 26
    iput p1, p0, Lzte/com/cn/numberlocator/NumberType;->mNumType:I

    .line 27
    return-void
.end method
