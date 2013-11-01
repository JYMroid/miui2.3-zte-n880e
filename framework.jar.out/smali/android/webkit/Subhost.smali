.class public Landroid/webkit/Subhost;
.super Ljava/lang/Object;
.source "Subhost.java"


# static fields
.field private static final DECREMENTATION_WEIGHT:D = 0.67

.field private static final HOST_MAX_REFERENCES:I = 0x7fffffff

.field private static final INCREMENTATION_WEIGHT:D = 0.33


# instance fields
.field private mHost:Ljava/lang/String;

.field private mNumberOfReferences:I

.field private mOldNumberOfReferences:I

.field private mWeight:D


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "host"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Landroid/webkit/Subhost;->mWeight:D

    const/4 v0, 0x1

    iput v0, p0, Landroid/webkit/Subhost;->mNumberOfReferences:I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/webkit/Subhost;->mHost:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/Subhost;->mOldNumberOfReferences:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ID)V
    .locals 3
    .parameter "host"
    .parameter "numOfReferences"
    .parameter "weight"

    .prologue
    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/webkit/Subhost;->mHost:Ljava/lang/String;

    if-lez p2, :cond_1

    iput p2, p0, Landroid/webkit/Subhost;->mNumberOfReferences:I

    :goto_0
    cmpg-double v0, v1, p3

    if-gez v0, :cond_2

    iput-wide p3, p0, Landroid/webkit/Subhost;->mWeight:D

    :goto_1
    iget v0, p0, Landroid/webkit/Subhost;->mNumberOfReferences:I

    iput v0, p0, Landroid/webkit/Subhost;->mOldNumberOfReferences:I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/Subhost;->mNumberOfReferences:I

    goto :goto_0

    :cond_2
    iput-wide v1, p0, Landroid/webkit/Subhost;->mWeight:D

    goto :goto_1
.end method


# virtual methods
.method public decrementWeight()V
    .locals 4

    .prologue
    iget-wide v0, p0, Landroid/webkit/Subhost;->mWeight:D

    const-wide v2, 0x3fe570a3d70a3d71L

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/webkit/Subhost;->mWeight:D

    return-void
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/Subhost;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfReferences()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/webkit/Subhost;->mNumberOfReferences:I

    return v0
.end method

.method public getWeight()D
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/webkit/Subhost;->mWeight:D

    return-wide v0
.end method

.method public incrementNumberOfReferences()V
    .locals 2

    .prologue
    iget v0, p0, Landroid/webkit/Subhost;->mNumberOfReferences:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/webkit/Subhost;->mNumberOfReferences:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/Subhost;->mNumberOfReferences:I

    :cond_0
    return-void
.end method

.method public incrementWeight()V
    .locals 4

    .prologue
    iget-wide v0, p0, Landroid/webkit/Subhost;->mWeight:D

    const-wide v2, 0x3fd51eb851eb851fL

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/webkit/Subhost;->mWeight:D

    return-void
.end method

.method public resetNumberOfReferences()V
    .locals 1

    .prologue
    iget v0, p0, Landroid/webkit/Subhost;->mNumberOfReferences:I

    iput v0, p0, Landroid/webkit/Subhost;->mOldNumberOfReferences:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/Subhost;->mNumberOfReferences:I

    return-void
.end method

.method public updateNumberOfReferences()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    iget v1, p0, Landroid/webkit/Subhost;->mOldNumberOfReferences:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/webkit/Subhost;->mNumberOfReferences:I

    iput v0, p0, Landroid/webkit/Subhost;->mOldNumberOfReferences:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/webkit/Subhost;->mNumberOfReferences:I

    iget v1, p0, Landroid/webkit/Subhost;->mOldNumberOfReferences:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/webkit/Subhost;->mNumberOfReferences:I

    goto :goto_0
.end method
