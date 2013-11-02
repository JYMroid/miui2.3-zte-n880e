.class Lcom/android/phone/CellBroadcast$ChannelPreference;
.super Landroid/preference/Preference;
.source "CellBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CellBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChannelPreference"
.end annotation


# instance fields
.field public mChannelNumber:I

.field public mChannelState:Z

.field final synthetic this$0:Lcom/android/phone/CellBroadcast;


# direct methods
.method public constructor <init>(Lcom/android/phone/CellBroadcast;Landroid/content/Context;IZ)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "channelNumber"
    .parameter "channelState"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/phone/CellBroadcast$ChannelPreference;->this$0:Lcom/android/phone/CellBroadcast;

    .line 156
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CellBroadcast$ChannelPreference;->mChannelNumber:I

    .line 157
    iput p3, p0, Lcom/android/phone/CellBroadcast$ChannelPreference;->mChannelNumber:I

    .line 158
    iput-boolean p4, p0, Lcom/android/phone/CellBroadcast$ChannelPreference;->mChannelState:Z

    .line 159
    return-void
.end method
