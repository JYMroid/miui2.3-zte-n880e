.class public Lcom/android/systemui/statusbar/AlternativeIcons;
.super Ljava/lang/Object;
.source "AlternativeIcons.java"


# static fields
.field private static sMapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/Integer;Z)I
    .locals 9
    .parameter "originalId"
    .parameter "enableAlternative"

    .prologue
    const v8, 0x7f020048

    const v7, 0x7f02002d

    const v6, 0x7f02002b

    const v5, 0x7f020029

    const v4, 0x7f020026

    .line 27
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    .line 29
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02001d

    const v3, 0x7f02001e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020020

    const v3, 0x7f020021

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020022

    const v3, 0x7f020023

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02002a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02004c

    const v3, 0x7f02004d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020061

    const v3, 0x7f020062

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020057

    const v3, 0x7f020058

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020032

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020038

    const v3, 0x7f02004d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020044

    const v3, 0x7f020062

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02003e

    const v3, 0x7f020058

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020025

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020047

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02005c

    const v3, 0x7f02005d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020052

    const v3, 0x7f020053

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02002f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020035

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020041

    const v3, 0x7f02005d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02003b

    const v3, 0x7f020053

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020028

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02004a

    const v3, 0x7f02004b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02005f

    const v3, 0x7f020060

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020055

    const v3, 0x7f020056

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020031

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020037

    const v3, 0x7f02004b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020043

    const v3, 0x7f020060

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02003d

    const v3, 0x7f020056

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02002c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02004e

    const v3, 0x7f02004f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020063

    const v3, 0x7f020064

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020059

    const v3, 0x7f02005a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020033

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020039

    const v3, 0x7f02004f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020045

    const v3, 0x7f020064

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02003f

    const v3, 0x7f02005a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020071

    const v3, 0x7f020072

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020075

    const v3, 0x7f020076

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020087

    const v3, 0x7f020088

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020089

    const v3, 0x7f02008a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020078

    const v3, 0x7f020079

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02007b

    const v3, 0x7f02007c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02007e

    const v3, 0x7f02007f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020081

    const v3, 0x7f020082

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020084

    const v3, 0x7f020085

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02007a

    const v3, 0x7f020079

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02007d

    const v3, 0x7f02007c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020080

    const v3, 0x7f02007f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020083

    const v3, 0x7f020082

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020086

    const v3, 0x7f020085

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02008f

    const v3, 0x7f020090

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020092

    const v3, 0x7f020093

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020095

    const v3, 0x7f020096

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 137
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020098

    const v3, 0x7f020099

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 139
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02009b

    const v3, 0x7f02009c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 141
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020091

    const v3, 0x7f020090

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020094

    const v3, 0x7f020093

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 145
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020097

    const v3, 0x7f020096

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02009a

    const v3, 0x7f020099

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 149
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02009d

    const v3, 0x7f02009c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 151
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02009e

    const v3, 0x7f02009f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200a0

    const v3, 0x7f0200a1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 157
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200a4

    const v3, 0x7f0200a5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200a6

    const v3, 0x7f0200a7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 161
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200a9

    const v3, 0x7f0200aa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 163
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200ac

    const v3, 0x7f0200ad

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200af

    const v3, 0x7f0200b0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 167
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200a8

    const v3, 0x7f0200a7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 169
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200ab

    const v3, 0x7f0200aa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200ae

    const v3, 0x7f0200ad

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200b1

    const v3, 0x7f0200b0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x602037c

    const v3, 0x7f020073

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 193
    :cond_0
    if-eqz p1, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    move-object v0, p0

    .line 194
    .local v0, resultId:Ljava/lang/Integer;
    :goto_0
    if-nez v0, :cond_2

    const/4 v1, 0x0

    :goto_1
    return v1

    .end local v0           #resultId:Ljava/lang/Integer;
    .restart local p0
    :cond_1
    move-object v0, p0

    .line 193
    goto :goto_0

    .line 194
    .end local p0
    .restart local v0       #resultId:Ljava/lang/Integer;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1
.end method
