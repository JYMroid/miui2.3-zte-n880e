.class Landroid/text/method/SmilePickerDialog$OptionsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SmilePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/SmilePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/text/method/SmilePickerDialog;


# direct methods
.method public constructor <init>(Landroid/text/method/SmilePickerDialog;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    iput-object p1, p0, Landroid/text/method/SmilePickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmilePickerDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/text/method/SmilePickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmilePickerDialog;

    #getter for: Landroid/text/method/SmilePickerDialog;->mOptions:[Ljava/lang/String;
    invoke-static {v0}, Landroid/text/method/SmilePickerDialog;->access$100(Landroid/text/method/SmilePickerDialog;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    iget-object v0, p0, Landroid/text/method/SmilePickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmilePickerDialog;

    #getter for: Landroid/text/method/SmilePickerDialog;->mOptions:[Ljava/lang/String;
    invoke-static {v0}, Landroid/text/method/SmilePickerDialog;->access$100(Landroid/text/method/SmilePickerDialog;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    iget-object v1, p0, Landroid/text/method/SmilePickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmilePickerDialog;

    #getter for: Landroid/text/method/SmilePickerDialog;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Landroid/text/method/SmilePickerDialog;->access$000(Landroid/text/method/SmilePickerDialog;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x109001d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .local v0, b:Landroid/widget/Button;
    iget-object v1, p0, Landroid/text/method/SmilePickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmilePickerDialog;

    #getter for: Landroid/text/method/SmilePickerDialog;->mOptions:[Ljava/lang/String;
    invoke-static {v1}, Landroid/text/method/SmilePickerDialog;->access$100(Landroid/text/method/SmilePickerDialog;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/text/method/SmilePickerDialog$OptionsAdapter;->this$0:Landroid/text/method/SmilePickerDialog;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
