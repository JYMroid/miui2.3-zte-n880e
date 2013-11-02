.class Lcom/android/settings/AppWidgetPickActivity$1;
.super Ljava/lang/Object;
.source "AppWidgetPickActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AppWidgetPickActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/SubItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AppWidgetPickActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/AppWidgetPickActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/AppWidgetPickActivity$1;->this$0:Lcom/android/settings/AppWidgetPickActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/SubItem;Lcom/android/settings/SubItem;)I
    .locals 2
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/android/settings/SubItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/settings/SubItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    check-cast p1, Lcom/android/settings/SubItem;

    .end local p1
    check-cast p2, Lcom/android/settings/SubItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/AppWidgetPickActivity$1;->compare(Lcom/android/settings/SubItem;Lcom/android/settings/SubItem;)I

    move-result v0

    return v0
.end method
