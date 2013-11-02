.class Lcom/android/settings/ProfileConfig$ConnectionItem;
.super Ljava/lang/Object;
.source "ProfileConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ProfileConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectionItem"
.end annotation


# instance fields
.field mCheckbox:Lcom/android/settings/ProfileConnectionPreference;

.field mConnectionId:I

.field mLabel:Ljava/lang/String;

.field mSettings:Landroid/app/ConnectionSettings;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "connectionId"
    .parameter "label"

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput p1, p0, Lcom/android/settings/ProfileConfig$ConnectionItem;->mConnectionId:I

    .line 314
    iput-object p2, p0, Lcom/android/settings/ProfileConfig$ConnectionItem;->mLabel:Ljava/lang/String;

    .line 315
    return-void
.end method
