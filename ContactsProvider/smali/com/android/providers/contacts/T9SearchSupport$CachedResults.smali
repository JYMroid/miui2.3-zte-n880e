.class Lcom/android/providers/contacts/T9SearchSupport$CachedResults;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/T9SearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedResults"
.end annotation


# instance fields
.field public mQuery:Ljava/lang/String;

.field public mQueryResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 955
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 959
    const-string v0, ""

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQuery:Ljava/lang/String;

    .line 964
    const/16 v0, 0x100

    new-array v0, v0, [Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQueryResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 955
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;-><init>()V

    return-void
.end method
