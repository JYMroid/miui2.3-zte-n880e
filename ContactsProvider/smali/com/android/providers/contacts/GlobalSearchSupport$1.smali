.class Lcom/android/providers/contacts/GlobalSearchSupport$1;
.super Landroid/database/ContentObserver;
.source "GlobalSearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/GlobalSearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/GlobalSearchSupport;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/GlobalSearchSupport;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/providers/contacts/GlobalSearchSupport$1;->this$0:Lcom/android/providers/contacts/GlobalSearchSupport;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$1;->this$0:Lcom/android/providers/contacts/GlobalSearchSupport;

    iget-object v1, p0, Lcom/android/providers/contacts/GlobalSearchSupport$1;->this$0:Lcom/android/providers/contacts/GlobalSearchSupport;

    #getter for: Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;
    invoke-static {v1}, Lcom/android/providers/contacts/GlobalSearchSupport;->access$100(Lcom/android/providers/contacts/GlobalSearchSupport;)Lcom/android/providers/contacts/ContactsProvider2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dialer_click_setting"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/providers/contacts/GlobalSearchSupport;->mItemClickAction:I
    invoke-static {v0, v1}, Lcom/android/providers/contacts/GlobalSearchSupport;->access$002(Lcom/android/providers/contacts/GlobalSearchSupport;I)I

    .line 285
    return-void
.end method
