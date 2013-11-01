.class public Landroid/util/ZteEventLog/tools/ToolKit$ChineseCharComp;
.super Ljava/lang/Object;
.source "ToolKit.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/ZteEventLog/tools/ToolKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChineseCharComp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/util/ZteEventLog/tools/ToolKit$ChineseCharComp;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "o1"
    .parameter "o2"

    .prologue
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    .local v0, cllator:Ljava/text/Collator;
    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
