.class Lcom/android/server/NotificationManagerService$PackageRequestInfo;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageRequestInfo"
.end annotation


# instance fields
.field lastPostTime:J

.field requestCount:I

.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$PackageRequestInfo;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService$PackageRequestInfo;-><init>(Lcom/android/server/NotificationManagerService;)V

    return-void
.end method
