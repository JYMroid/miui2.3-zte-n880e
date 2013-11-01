.class public Lcom/android/internal/app/ApplyWallpaperTo;
.super Lcom/android/internal/app/AlertActivity;
.source "ApplyWallpaperTo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;,
        Lcom/android/internal/app/ApplyWallpaperTo$DisplayWallpaperInfo;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAdapter:Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;

.field private mIntent:Landroid/content/Intent;

.field private mIntents:[Landroid/content/Intent;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const-string v0, "ApplyWallpaperTo"

    iput-object v0, p0, Lcom/android/internal/app/ApplyWallpaperTo;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ApplyWallpaperTo;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/internal/app/ApplyWallpaperTo;->finish()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    iget-object v2, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mAdapter:Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;

    invoke-virtual {v2, p2}, Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    .local v1, intent:Landroid/content/Intent;
    const v2, 0x10403ae

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ApplyWallpaperTo;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .local v0, chooser:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ApplyWallpaperTo;->startActivity(Landroid/content/Intent;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/app/ApplyWallpaperTo;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ApplyWallpaperTo;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v7, "DrawIconResourceId"

    const-string v6, "android.intent.extra.TITLE"

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ApplyWallpaperTo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.action.APPLY_WALLPAPER_TO"

    iget-object v2, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ApplyWallpaperTo;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ApplyWallpaperTo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mPm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mIntents:[Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mIntents:[Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v5

    iget-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mIntents:[Landroid/content/Intent;

    aget-object v1, v1, v5

    const-string v2, "android.intent.extra.TITLE"

    const v2, 0x10403cf

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ApplyWallpaperTo;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mIntents:[Landroid/content/Intent;

    aget-object v1, v1, v5

    const-string v2, "DrawIconResourceId"

    const v2, 0x10801b7

    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mIntents:[Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SET_LOCKSCREEN_WALLPAPER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    iget-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mIntents:[Landroid/content/Intent;

    aget-object v1, v1, v4

    const-string v2, "android.intent.extra.TITLE"

    const v2, 0x10403d0

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ApplyWallpaperTo;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mIntents:[Landroid/content/Intent;

    aget-object v1, v1, v4

    const-string v2, "DrawIconResourceId"

    const v2, 0x10801b8

    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .local v0, ap:Lcom/android/internal/app/AlertController$AlertParams;
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    iget-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    :goto_1
    new-instance v1, Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;

    iget-object v2, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mIntents:[Landroid/content/Intent;

    invoke-direct {v1, p0, p0, v2}, Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;-><init>(Lcom/android/internal/app/ApplyWallpaperTo;Landroid/content/Context;[Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mAdapter:Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;

    iget-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mAdapter:Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;->getCount()I

    move-result v1

    if-le v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mAdapter:Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0}, Lcom/android/internal/app/ApplyWallpaperTo;->setupAlert()V

    goto/16 :goto_0

    :cond_1
    const v1, 0x10403ce

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ApplyWallpaperTo;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mAdapter:Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;->getCount()I

    move-result v1

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mAdapter:Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;

    invoke-virtual {v1, v5}, Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ApplyWallpaperTo;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ApplyWallpaperTo;->finish()V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is have no app with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ApplyWallpaperTo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/ApplyWallpaperTo;->finish()V

    goto/16 :goto_0
.end method
