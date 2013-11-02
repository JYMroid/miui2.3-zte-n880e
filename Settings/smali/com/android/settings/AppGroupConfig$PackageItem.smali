.class Lcom/android/settings/AppGroupConfig$PackageItem;
.super Ljava/lang/Object;
.source "AppGroupConfig.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppGroupConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/AppGroupConfig$PackageItem;",
        ">;"
    }
.end annotation


# instance fields
.field icon:Landroid/graphics/drawable/Drawable;

.field packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/AppGroupConfig;

.field title:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/settings/AppGroupConfig;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/settings/AppGroupConfig$PackageItem;->this$0:Lcom/android/settings/AppGroupConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/AppGroupConfig$PackageItem;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/settings/AppGroupConfig$PackageItem;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings/AppGroupConfig$PackageItem;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 245
    check-cast p1, Lcom/android/settings/AppGroupConfig$PackageItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/AppGroupConfig$PackageItem;->compareTo(Lcom/android/settings/AppGroupConfig$PackageItem;)I

    move-result v0

    return v0
.end method
