.class final Lcom/android/internal/app/ApplyWallpaperTo$DisplayWallpaperInfo;
.super Ljava/lang/Object;
.source "ApplyWallpaperTo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ApplyWallpaperTo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayWallpaperInfo"
.end annotation


# instance fields
.field displayIcon:Landroid/graphics/drawable/Drawable;

.field displayLabel:Ljava/lang/CharSequence;

.field origIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/internal/app/ApplyWallpaperTo;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ApplyWallpaperTo;Ljava/lang/CharSequence;ILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter "pLabel"
    .parameter "resId"
    .parameter "pOrigIntent"

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/ApplyWallpaperTo$DisplayWallpaperInfo;->this$0:Lcom/android/internal/app/ApplyWallpaperTo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/app/ApplyWallpaperTo$DisplayWallpaperInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/android/internal/app/ApplyWallpaperTo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ApplyWallpaperTo$DisplayWallpaperInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/android/internal/app/ApplyWallpaperTo$DisplayWallpaperInfo;->origIntent:Landroid/content/Intent;

    return-void
.end method
