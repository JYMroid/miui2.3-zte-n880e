.class Lcom/android/providers/contacts/ContactsProvider2$3;
.super Landroid/database/CursorWrapper;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/ContactsProvider2;->bundleLetterCountExtras(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider2;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;Landroid/database/Cursor;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 5522
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider2$3;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    iput-object p3, p0, Lcom/android/providers/contacts/ContactsProvider2$3;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 5526
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$3;->val$bundle:Landroid/os/Bundle;

    return-object v0
.end method
