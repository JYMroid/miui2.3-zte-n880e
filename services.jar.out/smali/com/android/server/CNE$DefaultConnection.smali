.class Lcom/android/server/CNE$DefaultConnection;
.super Ljava/lang/Object;
.source "CNE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultConnection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;
    }
.end annotation


# instance fields
.field mLinkNotifier:Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;

.field mLinkReqs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/LinkProvider$LinkRequirement;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/CNE;


# direct methods
.method public constructor <init>(Lcom/android/server/CNE;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/CNE$DefaultConnection;->this$0:Lcom/android/server/CNE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/CNE$DefaultConnection;->mLinkReqs:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/CNE;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/net/LinkProvider$LinkRequirement;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, linkReqs:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/LinkProvider$LinkRequirement;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/CNE$DefaultConnection;->this$0:Lcom/android/server/CNE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/CNE$DefaultConnection;->mLinkReqs:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public endConnection()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/CNE$DefaultConnection;->this$0:Lcom/android/server/CNE;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/CNE$DefaultConnection;->mLinkNotifier:Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;

    invoke-static {}, Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/CNE;->releaseLink_LP(II)Z

    return-void
.end method

.method public startConnection()V
    .locals 5

    .prologue
    new-instance v0, Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;

    invoke-direct {v0, p0}, Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;-><init>(Lcom/android/server/CNE$DefaultConnection;)V

    iput-object v0, p0, Lcom/android/server/CNE$DefaultConnection;->mLinkNotifier:Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;

    iget-object v0, p0, Lcom/android/server/CNE$DefaultConnection;->this$0:Lcom/android/server/CNE;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/CNE$DefaultConnection;->mLinkReqs:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/server/CNE$DefaultConnection;->mLinkNotifier:Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;

    invoke-static {}, Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;->getCallingPid()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/CNE$DefaultConnection;->mLinkNotifier:Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/CNE;->getLink_LP(ILjava/util/Map;ILandroid/os/IBinder;)Z

    return-void
.end method
