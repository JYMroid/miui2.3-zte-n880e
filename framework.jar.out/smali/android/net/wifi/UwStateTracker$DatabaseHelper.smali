.class Landroid/net/wifi/UwStateTracker$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "UwStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/UwStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/UwStateTracker;


# direct methods
.method public constructor <init>(Landroid/net/wifi/UwStateTracker;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    iput-object p1, p0, Landroid/net/wifi/UwStateTracker$DatabaseHelper;->this$0:Landroid/net/wifi/UwStateTracker;

    const-string v0, "settings.db"

    const/4 v1, 0x0

    const/16 v2, 0x2b

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    return-void
.end method
