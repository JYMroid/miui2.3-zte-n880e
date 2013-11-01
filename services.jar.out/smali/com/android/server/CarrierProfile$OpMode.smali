.class Lcom/android/server/CarrierProfile$OpMode;
.super Ljava/lang/Object;
.source "CarrierProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CarrierProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OpMode"
.end annotation


# instance fields
.field public ratPrefOrder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/CarrierProfile;


# direct methods
.method public constructor <init>(Lcom/android/server/CarrierProfile;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/CarrierProfile$OpMode;->this$0:Lcom/android/server/CarrierProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/CarrierProfile$OpMode;->ratPrefOrder:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/CarrierProfile$OpMode;->ratPrefOrder:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
