.class public Landroid/preference/ProfileVolumePreference$VolumeStore;
.super Ljava/lang/Object;
.source "ProfileVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/ProfileVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolumeStore"
.end annotation


# instance fields
.field public originalVolume:I

.field public volume:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/preference/ProfileVolumePreference$VolumeStore;->volume:I

    iput v0, p0, Landroid/preference/ProfileVolumePreference$VolumeStore;->originalVolume:I

    return-void
.end method
