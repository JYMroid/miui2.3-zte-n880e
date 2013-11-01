.class public Landroid/util/ZteEventLog/tools/ToolKit;
.super Ljava/lang/Object;
.source "ToolKit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/ZteEventLog/tools/ToolKit$ChineseCharComp;,
        Landroid/util/ZteEventLog/tools/ToolKit$EDIT_DIALOG_RESPONSE;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "hubo_ToolKit"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Combine([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "first"
    .parameter "second"

    .prologue
    const/4 v3, 0x0

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [Ljava/lang/String;

    .local v0, result:[Ljava/lang/String;
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static CreateMyDialog(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 2
    .parameter "context"
    .parameter "title"
    .parameter "content"
    .parameter "responsor"

    .prologue
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Landroid/util/ZteEventLog/tools/ToolKit$2;

    invoke-direct {v1, p3}, Landroid/util/ZteEventLog/tools/ToolKit$2;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static CreateQuestionDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 4
    .parameter "context"
    .parameter "questionId"
    .parameter "responsor"

    .prologue
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v1, view:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    const/high16 v2, 0x4190

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1, p2}, Landroid/util/ZteEventLog/tools/ToolKit;->CreateMyDialog(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, dialog:Landroid/app/AlertDialog;
    return-object v0
.end method

.method public static CreateQuestionDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 4
    .parameter "context"
    .parameter "question"
    .parameter "responsor"

    .prologue
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v1, view:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1, p2}, Landroid/util/ZteEventLog/tools/ToolKit;->CreateMyDialog(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, dialog:Landroid/app/AlertDialog;
    return-object v0
.end method

.method public static FilterString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "src"
    .parameter "filterTag"

    .prologue
    if-nez p0, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .local v0, current:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, nextIndex:I
    :goto_1
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .local v2, result:[Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v4, v2

    goto :goto_0
.end method

.method public static GetDateNowStr()Ljava/lang/String;
    .locals 3

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/util/ZteEventLog/tools/ToolKit;->Ms2Str(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static GetEditSetListener(Landroid/widget/EditText;Landroid/util/ZteEventLog/tools/ToolKit$EDIT_DIALOG_RESPONSE;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "enterView"
    .parameter "response"

    .prologue
    new-instance v0, Landroid/util/ZteEventLog/tools/ToolKit$1;

    invoke-direct {v0, p0, p1}, Landroid/util/ZteEventLog/tools/ToolKit$1;-><init>(Landroid/widget/EditText;Landroid/util/ZteEventLog/tools/ToolKit$EDIT_DIALOG_RESPONSE;)V

    return-object v0
.end method

.method public static GetPercent(FF)F
    .locals 2
    .parameter "son"
    .parameter "mother"

    .prologue
    const/4 v1, 0x0

    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public static GetTextDialogBuilder(Landroid/content/Context;II)Landroid/app/AlertDialog$Builder;
    .locals 4
    .parameter "context"
    .parameter "title"
    .parameter "content"

    .prologue
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v0, view:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    return-object v1
.end method

.method public static GetTimeNow()J
    .locals 2

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static GetTimeNowStr()Ljava/lang/String;
    .locals 2

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/util/ZteEventLog/tools/ToolKit;->Ms2Str(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetValueString(F)Ljava/lang/String;
    .locals 6
    .parameter "src"

    .prologue
    const/high16 v4, 0x42c8

    mul-float/2addr v4, p0

    float-to-int v3, v4

    .local v3, value:I
    div-int/lit8 v2, v3, 0x64

    .local v2, integer:I
    rem-int/lit8 v1, v3, 0x64

    .local v1, floatPos:I
    const/16 v4, 0x9

    if-le v1, v4, :cond_0

    const-string v4, "."

    move-object v0, v4

    .local v0, deliver:Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .end local v0           #deliver:Ljava/lang/String;
    :cond_0
    const-string v4, ".0"

    move-object v0, v4

    goto :goto_0
.end method

.method public static Ms2HHmmss(J)Ljava/lang/String;
    .locals 12
    .parameter "ms"

    .prologue
    const-wide/16 v10, 0x3c

    const-wide/16 v8, 0x3e8

    div-long v2, p0, v8

    .local v2, insecs:J
    rem-long v6, v2, v10

    .local v6, secs:J
    div-long v8, v2, v10

    rem-long v4, v8, v10

    .local v4, mins:J
    const-wide/16 v8, 0xe10

    div-long v0, v2, v8

    .local v0, hours:J
    const-string v8, "%02d:%02d:%02d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static Ms2Str(J)Ljava/lang/String;
    .locals 3
    .parameter "ms"

    .prologue
    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, p0, p1}, Ljava/sql/Date;-><init>(J)V

    .local v0, curDate:Ljava/sql/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd-HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v1, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static ShowDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "listener"
    .parameter "title"
    .parameter "posTitle"
    .parameter "neuTitle"
    .parameter "cancelTitle"
    .parameter "iconId"

    .prologue
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v0, builder:Landroid/app/AlertDialog$Builder;
    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_0
    if-lez p6, :cond_1

    invoke-virtual {v0, p6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {v0, p3, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {v0, p4, p1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    if-eqz p5, :cond_4

    invoke-virtual {v0, p5, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_4
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static ShowEditDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/util/ZteEventLog/tools/ToolKit$EDIT_DIALOG_RESPONSE;)V
    .locals 1
    .parameter "context"
    .parameter "title"
    .parameter "src"
    .parameter "response"

    .prologue
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, p3, v0}, Landroid/util/ZteEventLog/tools/ToolKit;->ShowEditDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/util/ZteEventLog/tools/ToolKit$EDIT_DIALOG_RESPONSE;I)V

    return-void
.end method

.method public static ShowEditDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/util/ZteEventLog/tools/ToolKit$EDIT_DIALOG_RESPONSE;I)V
    .locals 4
    .parameter "context"
    .parameter "title"
    .parameter "src"
    .parameter "response"
    .parameter "inputType"

    .prologue
    new-instance v1, Landroid/widget/AutoCompleteTextView;

    invoke-direct {v1, p0}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .local v1, enterView:Landroid/widget/AutoCompleteTextView;
    if-eqz p2, :cond_1

    invoke-virtual {v1, p2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x4190

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setTextSize(F)V

    const/4 v2, -0x1

    if-eq p4, v2, :cond_0

    invoke-virtual {v1, p4}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    :cond_0
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->selectAll()V

    :cond_1
    invoke-static {v1, p3}, Landroid/util/ZteEventLog/tools/ToolKit;->GetEditSetListener(Landroid/widget/EditText;Landroid/util/ZteEventLog/tools/ToolKit$EDIT_DIALOG_RESPONSE;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-static {p0, p1, v1, v2}, Landroid/util/ZteEventLog/tools/ToolKit;->CreateMyDialog(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, alertDialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static ShowHint(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "text"
    .parameter "last_time"

    .prologue
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static ShowListDialog(Landroid/content/Context;[Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter "context"
    .parameter "entries"
    .parameter "defaultIndex"
    .parameter "listener"

    .prologue
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static ShowTextDialog(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "title"
    .parameter "content"

    .prologue
    invoke-static {p0, p1, p2}, Landroid/util/ZteEventLog/tools/ToolKit;->GetTextDialogBuilder(Landroid/content/Context;II)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static Str2Ms(Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 8
    .parameter "UtcStr"
    .parameter "formatstr"
    .parameter "toChinaTime"

    .prologue
    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p1, "yyyy-MM-dd HH:mm:ss"

    :cond_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v3, formatter:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .local v0, cal:Ljava/util/GregorianCalendar;
    :try_start_0
    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .local v1, curDate:Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x1b77400

    add-long/2addr v4, v6

    .end local v1           #curDate:Ljava/util/Date;
    :goto_0
    return-wide v4

    .restart local v1       #curDate:Ljava/util/Date;
    :cond_1
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    goto :goto_0

    .end local v1           #curDate:Ljava/util/Date;
    :catch_0
    move-exception v4

    move-object v2, v4

    .local v2, e:Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    const-wide/16 v4, 0x0

    goto :goto_0
.end method
