.class Lcom/android/providers/contacts/T9SearchSupport$UpdatedDataInfo;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/T9SearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdatedDataInfo"
.end annotation


# instance fields
.field public mData:Ljava/lang/String;

.field public mMimeTypeId:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0
    .parameter "mimeTypeId"
    .parameter "data"

    .prologue
    .line 1004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1005
    iput-wide p1, p0, Lcom/android/providers/contacts/T9SearchSupport$UpdatedDataInfo;->mMimeTypeId:J

    .line 1006
    iput-object p3, p0, Lcom/android/providers/contacts/T9SearchSupport$UpdatedDataInfo;->mData:Ljava/lang/String;

    .line 1007
    return-void
.end method
