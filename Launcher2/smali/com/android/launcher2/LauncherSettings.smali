.class public Lcom/android/launcher2/LauncherSettings;
.super Ljava/lang/Object;
.source "LauncherSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherSettings$Packages;,
        Lcom/android/launcher2/LauncherSettings$Screens;,
        Lcom/android/launcher2/LauncherSettings$Favorites;,
        Lcom/android/launcher2/LauncherSettings$BaseLauncherColumns;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    return-void
.end method

.method public static updateHomeScreen(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 327
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/launcher2/LauncherSettings;->updateHomeScreen(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 328
    return-void
.end method

.method public static updateHomeScreen(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6
    .parameter "context"
    .parameter "packageName"
    .parameter "keepItem"

    .prologue
    const/4 v5, 0x0

    .line 316
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 317
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "LauncherSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating home screen for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 321
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v2, "keepItem"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 323
    sget-object v2, Lcom/android/launcher2/LauncherSettings$Packages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 324
    return-void
.end method
