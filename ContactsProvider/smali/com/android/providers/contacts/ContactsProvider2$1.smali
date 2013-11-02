.class Lcom/android/providers/contacts/ContactsProvider2$1;
.super Landroid/os/AsyncTask;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/ContactsProvider2;->verifyLocale()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field savedProviderStatus:I

.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider2;

.field final synthetic val$currentLocale:Ljava/util/Locale;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;Ljava/util/Locale;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2309
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider2$1;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    iput-object p2, p0, Lcom/android/providers/contacts/ContactsProvider2$1;->val$currentLocale:Ljava/util/Locale;

    iput-object p3, p0, Lcom/android/providers/contacts/ContactsProvider2$1;->val$prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2309
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2$1;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    .line 2315
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider2$1;->savedProviderStatus:I

    .line 2316
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$1;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;
    invoke-static {v0}, Lcom/android/providers/contacts/ContactsProvider2;->access$000(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2$1;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2$1;->val$currentLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setLocale(Lcom/android/providers/contacts/ContactsProvider2;Ljava/util/Locale;)V

    .line 2317
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2309
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 2322
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$1;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "locale"

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2$1;->val$currentLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2323
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$1;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    iget v1, p0, Lcom/android/providers/contacts/ContactsProvider2$1;->savedProviderStatus:I

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->setProviderStatus(I)V

    .line 2327
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$1;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->verifyLocale()V

    .line 2328
    return-void
.end method
