.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Globals"
.end annotation


# static fields
.field private static final MSG_CLEAR_LOCKSCREEN:I = 0x2

.field private static final MSG_CLEAR_WALLPAPER:I = 0x1


# instance fields
.field private mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private final mHandler:Landroid/os/Handler;

.field private mLockscreen:Landroid/graphics/Bitmap;

.field private mService:Landroid/app/IWallpaperManager;

.field private mWallpaper:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .parameter "looper"

    .prologue
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    const-string v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    new-instance v1, Landroid/app/WallpaperManager$Globals$1;

    invoke-direct {v1, p0, p1}, Landroid/app/WallpaperManager$Globals$1;-><init>(Landroid/app/WallpaperManager$Globals;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$102(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$202(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mLockscreen:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object v0
.end method

.method private getCurrentLockscreenLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .local v4, params:Landroid/os/Bundle;
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v6, p0, v4}, Landroid/app/IWallpaperManager;->getLockscreen(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_3

    const-string v6, "width"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .local v5, width:I
    const-string v6, "height"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .local v2, height:I
    if-lez v5, :cond_0

    if-gtz v2, :cond_2

    :cond_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, bm:Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    if-eqz v0, :cond_1

    :try_start_2
    sget v6, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_1
    move-object v6, v0

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #height:I
    .end local v4           #params:Landroid/os/Bundle;
    .end local v5           #width:I
    :goto_1
    return-object v6

    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v2       #height:I
    .restart local v4       #params:Landroid/os/Bundle;
    .restart local v5       #width:I
    :cond_2
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x0

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    :try_start_4
    invoke-static {p1, v0, v5, v2}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v6

    goto :goto_1

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #height:I
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #params:Landroid/os/Bundle;
    .end local v5           #width:I
    :catch_0
    move-exception v6

    :cond_3
    move-object v6, v9

    goto :goto_1

    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v2       #height:I
    .restart local v4       #params:Landroid/os/Bundle;
    .restart local v5       #width:I
    :catch_1
    move-exception v6

    goto :goto_0

    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v6

    goto :goto_2
.end method

.method private getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .local v4, params:Landroid/os/Bundle;
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v6, p0, v4}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_3

    const-string v6, "width"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .local v5, width:I
    const-string v6, "height"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .local v2, height:I
    if-lez v5, :cond_0

    if-gtz v2, :cond_2

    :cond_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, bm:Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    if-eqz v0, :cond_1

    :try_start_2
    sget v6, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_1
    move-object v6, v0

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #height:I
    .end local v4           #params:Landroid/os/Bundle;
    .end local v5           #width:I
    :goto_1
    return-object v6

    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v2       #height:I
    .restart local v4       #params:Landroid/os/Bundle;
    .restart local v5       #width:I
    :cond_2
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x0

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    :try_start_4
    invoke-static {p1, v0, v5, v2}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v6

    goto :goto_1

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #height:I
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #params:Landroid/os/Bundle;
    .end local v5           #width:I
    :catch_0
    move-exception v6

    :cond_3
    move-object v6, v9

    goto :goto_1

    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v2       #height:I
    .restart local v4       #params:Landroid/os/Bundle;
    .restart local v5       #width:I
    :catch_1
    move-exception v6

    goto :goto_0

    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v6

    goto :goto_2
.end method

.method private getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v8, "/system/etc/custom_config/app/Launcher/default_wallpaper.jpg"

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, defaultWallpaper:Ljava/io/File;
    const/4 v4, 0x0

    .local v4, is:Ljava/io/InputStream;
    const-string v8, "taoyong"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getDefaultWallpaperLocked"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v4           #is:Ljava/io/InputStream;
    .local v5, is:Ljava/io/InputStream;
    move-object v4, v5

    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    :goto_0
    if-eqz v4, :cond_3

    :try_start_2
    iget-object v8, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v8}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v7

    .local v7, width:I
    iget-object v8, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v8}, Landroid/app/IWallpaperManager;->getHeightHint()I

    move-result v3

    .local v3, height:I
    if-lez v7, :cond_0

    if-gtz v3, :cond_4

    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v8, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .local v0, bm:Landroid/graphics/Bitmap;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    if-eqz v0, :cond_1

    :try_start_4
    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v0, v8}, Landroid/graphics/Bitmap;->setDensity(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    move-object v8, v0

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #defaultWallpaper:Ljava/io/File;
    .end local v3           #height:I
    .end local v4           #is:Ljava/io/InputStream;
    .end local v7           #width:I
    :goto_2
    return-object v8

    .restart local v1       #defaultWallpaper:Ljava/io/File;
    .restart local v4       #is:Ljava/io/InputStream;
    :cond_2
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080164

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v8

    move-object v2, v8

    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v1           #defaultWallpaper:Ljava/io/File;
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .end local v4           #is:Ljava/io/InputStream;
    :catch_1
    move-exception v8

    :cond_3
    move-object v8, v11

    goto :goto_2

    .restart local v1       #defaultWallpaper:Ljava/io/File;
    .restart local v3       #height:I
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v7       #width:I
    :cond_4
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .local v6, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x0

    iput-boolean v8, v6, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v8, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x0

    invoke-static {v4, v8, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v0

    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    :goto_3
    :try_start_8
    invoke-static {p1, v0, v7, v3}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    move-result-object v8

    goto :goto_2

    :catch_2
    move-exception v2

    .local v2, e:Ljava/lang/OutOfMemoryError;
    :try_start_9
    invoke-static {}, Landroid/app/WallpaperManager;->access$300()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Can\'t generate default bitmap"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    move-object v8, v0

    goto :goto_2

    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    .end local v6           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v8

    goto :goto_1

    .restart local v6       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_4
    move-exception v8

    goto :goto_3
.end method


# virtual methods
.method public onLockscreenChanged()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onWallpaperChanged()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public peekLockscreenBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLockscreen:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLockscreen:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getCurrentLockscreenLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLockscreen:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLockscreen:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-static {}, Landroid/app/WallpaperManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No memory load current lockscreen"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"
    .parameter "returnDefault"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    :try_start_3
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Landroid/app/WallpaperManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No memory load current wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_2
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
