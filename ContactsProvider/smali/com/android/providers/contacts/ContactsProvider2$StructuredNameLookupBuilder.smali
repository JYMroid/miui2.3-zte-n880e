.class Lcom/android/providers/contacts/ContactsProvider2$StructuredNameLookupBuilder;
.super Lcom/android/providers/contacts/NameLookupBuilder;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StructuredNameLookupBuilder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/NameSplitter;)V
    .locals 0
    .parameter
    .parameter "splitter"

    .prologue
    .line 6420
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameLookupBuilder;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    .line 6421
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/NameLookupBuilder;-><init>(Lcom/android/providers/contacts/NameSplitter;)V

    .line 6422
    return-void
.end method


# virtual methods
.method protected getCommonNicknameClusters(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "normalizedName"

    .prologue
    .line 6432
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameLookupBuilder;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mCommonNicknameCache:Lcom/android/providers/contacts/CommonNicknameCache;
    invoke-static {v0}, Lcom/android/providers/contacts/ContactsProvider2;->access$1700(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/CommonNicknameCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/CommonNicknameCache;->getCommonNicknameClusters(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected insertNameLookup(JJILjava/lang/String;)V
    .locals 7
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "lookupType"
    .parameter "name"

    .prologue
    .line 6427
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameLookupBuilder;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsProvider2;->insertNameLookup(JJILjava/lang/String;)V

    .line 6428
    return-void
.end method
