.class public Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/T9SearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "T9SearchResult"
.end annotation


# instance fields
.field public mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

.field final synthetic this$0:Lcom/android/providers/contacts/T9SearchSupport;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/T9SearchSupport;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V
    .locals 0
    .parameter
    .parameter "item"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p2, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    .line 212
    return-void
.end method
