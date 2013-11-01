.class public Lcom/android/internal/telephony/simcap;
.super Ljava/lang/Object;
.source "simcap.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/simcap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public anrlength:I

.field public curExt1Size:I

.field public curSimSize:I

.field public curUsimSize:I

.field public emaillength:I

.field public ext1Size:I

.field public numberlength:I

.field public simSize:I

.field public taglength:I

.field public usimSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/telephony/simcap$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/simcap$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/simcap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/telephony/simcap;->taglength:I

    iput v0, p0, Lcom/android/internal/telephony/simcap;->numberlength:I

    iput v0, p0, Lcom/android/internal/telephony/simcap;->emaillength:I

    iput v0, p0, Lcom/android/internal/telephony/simcap;->anrlength:I

    iput v0, p0, Lcom/android/internal/telephony/simcap;->ext1Size:I

    iput v0, p0, Lcom/android/internal/telephony/simcap;->curExt1Size:I

    iput v0, p0, Lcom/android/internal/telephony/simcap;->simSize:I

    iput v0, p0, Lcom/android/internal/telephony/simcap;->curSimSize:I

    iput v0, p0, Lcom/android/internal/telephony/simcap;->usimSize:I

    iput v0, p0, Lcom/android/internal/telephony/simcap;->curUsimSize:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "pl"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/telephony/simcap;->taglength:I

    iput v0, p0, Lcom/android/internal/telephony/simcap;->numberlength:I

    iput v0, p0, Lcom/android/internal/telephony/simcap;->emaillength:I

    iput v0, p0, Lcom/android/internal/telephony/simcap;->anrlength:I

    iput v0, p0, Lcom/android/internal/telephony/simcap;->ext1Size:I

    iput v0, p0, Lcom/android/internal/telephony/simcap;->curExt1Size:I

    iput v0, p0, Lcom/android/internal/telephony/simcap;->simSize:I

    iput v0, p0, Lcom/android/internal/telephony/simcap;->curSimSize:I

    iput v0, p0, Lcom/android/internal/telephony/simcap;->usimSize:I

    iput v0, p0, Lcom/android/internal/telephony/simcap;->curUsimSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/simcap;->taglength:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/simcap;->taglength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
