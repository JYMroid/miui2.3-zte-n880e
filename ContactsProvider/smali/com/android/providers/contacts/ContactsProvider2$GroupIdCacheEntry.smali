.class public Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;
.super Ljava/lang/Object;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupIdCacheEntry"
.end annotation


# instance fields
.field accountName:Ljava/lang/String;

.field accountType:Ljava/lang/String;

.field groupId:J

.field sourceId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 0
    .parameter

    .prologue
    .line 2032
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
