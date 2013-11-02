.class Lcom/android/providers/contacts/ContactsProvider2$2;
.super Ljava/lang/Thread;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/ContactsProvider2;->importLegacyContactsAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 2369
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider2$2;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2372
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2$2;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2374
    .local v1, prefs:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2$2;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;
    invoke-static {v2}, Lcom/android/providers/contacts/ContactsProvider2;->access$000(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2$2;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2$2;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mCurrentLocale:Ljava/util/Locale;
    invoke-static {v4}, Lcom/android/providers/contacts/ContactsProvider2;->access$1200(Lcom/android/providers/contacts/ContactsProvider2;)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setLocale(Lcom/android/providers/contacts/ContactsProvider2;Ljava/util/Locale;)V

    .line 2375
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "locale"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2$2;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mCurrentLocale:Ljava/util/Locale;
    invoke-static {v4}, Lcom/android/providers/contacts/ContactsProvider2;->access$1200(Lcom/android/providers/contacts/ContactsProvider2;)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2377
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2$2;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsProvider2;->getLegacyContactImporter()Lcom/android/providers/contacts/LegacyContactImporter;

    move-result-object v0

    .line 2378
    .local v0, importer:Lcom/android/providers/contacts/LegacyContactImporter;
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2$2;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v2, v0}, Lcom/android/providers/contacts/ContactsProvider2;->importLegacyContacts(Lcom/android/providers/contacts/LegacyContactImporter;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2379
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2$2;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->onLegacyContactImportSuccess()V
    invoke-static {v2}, Lcom/android/providers/contacts/ContactsProvider2;->access$1500(Lcom/android/providers/contacts/ContactsProvider2;)V

    .line 2383
    :goto_0
    return-void

    .line 2381
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2$2;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->onLegacyContactImportFailure()V
    invoke-static {v2}, Lcom/android/providers/contacts/ContactsProvider2;->access$1600(Lcom/android/providers/contacts/ContactsProvider2;)V

    goto :goto_0
.end method
