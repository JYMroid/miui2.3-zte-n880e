.class interface abstract Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestionQuery;
.super Ljava/lang/Object;
.source "GlobalSearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/GlobalSearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "SearchSuggestionQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 119
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contacts._id AS _id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name_raw_contact.display_name AS display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "(SELECT mode FROM agg_presence WHERE presence_contact_id=contacts._id) AS contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data._id AS data_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mimetype_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "lookup"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestionQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
