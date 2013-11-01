.class public Landroid/net/wifi/UwNative$T_Uw_State_Change_Notify;
.super Ljava/lang/Object;
.source "UwNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/UwNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "T_Uw_State_Change_Notify"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/UwNative;

.field public uwState:Landroid/net/wifi/UwNative$T_Uw_Api_State;


# direct methods
.method public constructor <init>(Landroid/net/wifi/UwNative;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/net/wifi/UwNative$T_Uw_State_Change_Notify;->this$0:Landroid/net/wifi/UwNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
