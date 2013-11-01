.class Lcom/android/server/CarrierProfile$RatName;
.super Ljava/lang/Object;
.source "CarrierProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CarrierProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RatName"
.end annotation


# static fields
.field static final ANY:Ljava/lang/String; = "ANY"

.field static final WLAN:Ljava/lang/String; = "WLAN"

.field static final WWAN:Ljava/lang/String; = "WWAN"


# instance fields
.field final synthetic this$0:Lcom/android/server/CarrierProfile;


# direct methods
.method constructor <init>(Lcom/android/server/CarrierProfile;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/CarrierProfile$RatName;->this$0:Lcom/android/server/CarrierProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
