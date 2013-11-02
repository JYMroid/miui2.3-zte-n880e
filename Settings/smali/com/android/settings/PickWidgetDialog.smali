.class public Lcom/android/settings/PickWidgetDialog;
.super Ljava/lang/Object;
.source "PickWidgetDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/PickWidgetDialog$CancelListener;,
        Lcom/android/settings/PickWidgetDialog$ClickListener;
    }
.end annotation


# instance fields
.field fDialog:Landroid/app/AlertDialog;

.field fItemAdapter:Lcom/android/settings/ItemAdapter;

.field private final fOwner:Lcom/android/settings/AppWidgetPickActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/AppWidgetPickActivity;)V
    .locals 0
    .parameter "owner"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/settings/PickWidgetDialog;->fOwner:Lcom/android/settings/AppWidgetPickActivity;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PickWidgetDialog;)Lcom/android/settings/AppWidgetPickActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings/PickWidgetDialog;->fOwner:Lcom/android/settings/AppWidgetPickActivity;

    return-object v0
.end method


# virtual methods
.method public showDialog(Lcom/android/settings/SubItem;)V
    .locals 8
    .parameter "subItem"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 69
    if-eqz p1, :cond_0

    instance-of v3, p1, Lcom/android/settings/Item;

    if-eqz v3, :cond_4

    .line 70
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/PickWidgetDialog;->fOwner:Lcom/android/settings/AppWidgetPickActivity;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 72
    .local v1, ab:Landroid/app/AlertDialog$Builder;
    if-nez p1, :cond_1

    .line 73
    iget-object v3, p0, Lcom/android/settings/PickWidgetDialog;->fOwner:Lcom/android/settings/AppWidgetPickActivity;

    const v4, 0x7f08039a

    invoke-virtual {v3, v4}, Lcom/android/settings/AppWidgetPickActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 74
    new-instance v3, Lcom/android/settings/ItemAdapter;

    iget-object v4, p0, Lcom/android/settings/PickWidgetDialog;->fOwner:Lcom/android/settings/AppWidgetPickActivity;

    iget-object v5, p0, Lcom/android/settings/PickWidgetDialog;->fOwner:Lcom/android/settings/AppWidgetPickActivity;

    invoke-virtual {v5}, Lcom/android/settings/AppWidgetPickActivity;->getItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v3, v4, v6, v5}, Lcom/android/settings/ItemAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/android/settings/PickWidgetDialog;->fItemAdapter:Lcom/android/settings/ItemAdapter;

    .line 75
    iget-object v3, p0, Lcom/android/settings/PickWidgetDialog;->fItemAdapter:Lcom/android/settings/ItemAdapter;

    new-instance v4, Lcom/android/settings/PickWidgetDialog$ClickListener;

    invoke-direct {v4, p0}, Lcom/android/settings/PickWidgetDialog$ClickListener;-><init>(Lcom/android/settings/PickWidgetDialog;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    :goto_0
    new-instance v3, Lcom/android/settings/PickWidgetDialog$CancelListener;

    if-nez p1, :cond_3

    move v4, v7

    :goto_1
    invoke-direct {v3, p0, v4}, Lcom/android/settings/PickWidgetDialog$CancelListener;-><init>(Lcom/android/settings/PickWidgetDialog;Z)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 90
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/PickWidgetDialog;->fDialog:Landroid/app/AlertDialog;

    .line 91
    iget-object v3, p0, Lcom/android/settings/PickWidgetDialog;->fDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 95
    .end local v1           #ab:Landroid/app/AlertDialog$Builder;
    .end local p0
    :goto_2
    return-void

    .line 78
    .restart local v1       #ab:Landroid/app/AlertDialog$Builder;
    .restart local p0
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/settings/Item;

    move-object v2, v0

    .line 79
    .local v2, itm:Lcom/android/settings/Item;
    invoke-virtual {v2}, Lcom/android/settings/Item;->getItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 80
    iget-object v3, p0, Lcom/android/settings/PickWidgetDialog;->fOwner:Lcom/android/settings/AppWidgetPickActivity;

    invoke-virtual {v2}, Lcom/android/settings/Item;->getItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/settings/SubItem;

    invoke-virtual {v3, p0}, Lcom/android/settings/AppWidgetPickActivity;->finishOk(Lcom/android/settings/SubItem;)V

    goto :goto_2

    .line 84
    .restart local p0
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings/SubItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 85
    new-instance v3, Lcom/android/settings/ItemAdapter;

    iget-object v4, p0, Lcom/android/settings/PickWidgetDialog;->fOwner:Lcom/android/settings/AppWidgetPickActivity;

    invoke-virtual {v2}, Lcom/android/settings/Item;->getItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v3, v4, v6, v5}, Lcom/android/settings/ItemAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/android/settings/PickWidgetDialog;->fItemAdapter:Lcom/android/settings/ItemAdapter;

    .line 86
    iget-object v3, p0, Lcom/android/settings/PickWidgetDialog;->fItemAdapter:Lcom/android/settings/ItemAdapter;

    new-instance v4, Lcom/android/settings/PickWidgetDialog$ClickListener;

    invoke-direct {v4, p0}, Lcom/android/settings/PickWidgetDialog$ClickListener;-><init>(Lcom/android/settings/PickWidgetDialog;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .end local v2           #itm:Lcom/android/settings/Item;
    :cond_3
    move v4, v6

    .line 89
    goto :goto_1

    .line 94
    .end local v1           #ab:Landroid/app/AlertDialog$Builder;
    :cond_4
    iget-object v3, p0, Lcom/android/settings/PickWidgetDialog;->fOwner:Lcom/android/settings/AppWidgetPickActivity;

    invoke-virtual {v3, p1}, Lcom/android/settings/AppWidgetPickActivity;->finishOk(Lcom/android/settings/SubItem;)V

    goto :goto_2
.end method
