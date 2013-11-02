.class public Lzte/com/cn/numberlocator/NumberLocatorActivity;
.super Landroid/app/Activity;
.source "NumberLocatorActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/numberlocator/NumberLocatorActivity$ConfirmClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NumberLocator"

.field private static final URI_DB:Landroid/net/Uri;

.field private static final URI_DB_DESC:Landroid/net/Uri;


# instance fields
.field private content:Landroid/content/ContentResolver;

.field private listItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private listItemAdapter:Landroid/widget/SimpleAdapter;

.field private listTitle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClearTextButton:Landroid/widget/Button;

.field private mErrorPhoneNumber:Landroid/widget/TextView;

.field mIMManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLawTextView:Landroid/widget/TextView;

.field private mNuminput:Landroid/widget/EditText;

.field private resultListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string v0, "http://m.baidu.com/static/index/i.gif"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->URI_DB:Landroid/net/Uri;

    .line 71
    const-string v0, "http://127.0.0.1/description.xml"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->URI_DB_DESC:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mIMManager:Landroid/view/inputmethod/InputMethodManager;

    .line 418
    return-void
.end method

.method static synthetic access$000(Lzte/com/cn/numberlocator/NumberLocatorActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lzte/com/cn/numberlocator/NumberLocatorActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mErrorPhoneNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method private handleErrorNum()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mErrorPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 380
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->clearAllText()V

    .line 381
    return-void
.end method


# virtual methods
.method protected clearAllText()V
    .locals 6

    .prologue
    .line 365
    iget-object v3, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 367
    .local v1, itemsize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 368
    iget-object v3, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 369
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "text"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v3, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listItemAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v3}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 372
    iget-object v3, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mIMManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 373
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->setContentView(I)V

    .line 81
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->content:Landroid/content/ContentResolver;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listTitle:Ljava/util/ArrayList;

    .line 85
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listTitle:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listTitle:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listTitle:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->resultListView:Landroid/widget/ListView;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listItem:Ljava/util/ArrayList;

    .line 96
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listTitle:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 97
    .local v10, titlesize:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v10, :cond_0

    .line 98
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v8, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "title"

    iget-object v1, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listTitle:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v0, "text"

    const-string v1, ""

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 104
    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listItem:Ljava/util/ArrayList;

    const/high16 v3, 0x7f03

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "title"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "text"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    new-array v5, v1, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listItemAdapter:Landroid/widget/SimpleAdapter;

    .line 107
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->resultListView:Landroid/widget/ListView;

    iget-object v1, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listItemAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    const v0, 0x7f070005

    invoke-virtual {p0, v0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mClearTextButton:Landroid/widget/Button;

    .line 110
    const v0, 0x7f070004

    invoke-virtual {p0, v0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    .line 111
    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mLawTextView:Landroid/widget/TextView;

    .line 112
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mLawTextView:Landroid/widget/TextView;

    const v1, 0x7f06000a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 113
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 114
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 115
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    const v1, 0x7f060009

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 116
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setClickable(Z)V

    .line 117
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 118
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 119
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mIMManager:Landroid/view/inputmethod/InputMethodManager;

    .line 132
    const v0, 0x7f070006

    invoke-virtual {p0, v0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mErrorPhoneNumber:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    new-instance v1, Lzte/com/cn/numberlocator/NumberLocatorActivity$1;

    invoke-direct {v1, p0}, Lzte/com/cn/numberlocator/NumberLocatorActivity$1;-><init>(Lzte/com/cn/numberlocator/NumberLocatorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mClearTextButton:Landroid/widget/Button;

    new-instance v1, Lzte/com/cn/numberlocator/NumberLocatorActivity$2;

    invoke-direct {v1, p0}, Lzte/com/cn/numberlocator/NumberLocatorActivity$2;-><init>(Lzte/com/cn/numberlocator/NumberLocatorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    new-instance v1, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-direct {v1}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 178
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    new-instance v1, Lzte/com/cn/numberlocator/NumberLocatorActivity$3;

    invoke-direct {v1, p0}, Lzte/com/cn/numberlocator/NumberLocatorActivity$3;-><init>(Lzte/com/cn/numberlocator/NumberLocatorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 232
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 233
    .local v6, bunde:Landroid/os/Bundle;
    if-eqz v6, :cond_1

    .line 234
    const-string v0, "phonenum"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 235
    .local v9, num:Ljava/lang/String;
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 237
    .end local v9           #num:Ljava/lang/String;
    :cond_1
    return-void

    .line 104
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 388
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const-string v1, "NumberLocator"

    .line 395
    const-string v0, "NumberLocator"

    const-string v0, "onOptionsItemSelected"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 412
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 398
    :pswitch_0
    const-string v0, "NumberLocator"

    const-string v0, "onOptionsItemSelected 100"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f06001e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06001f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lzte/com/cn/numberlocator/NumberLocatorActivity$ConfirmClickListener;

    invoke-direct {v2, p0, v3}, Lzte/com/cn/numberlocator/NumberLocatorActivity$ConfirmClickListener;-><init>(Lzte/com/cn/numberlocator/NumberLocatorActivity;Lzte/com/cn/numberlocator/NumberLocatorActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 240
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 241
    iget-object v0, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mIMManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 242
    return-void
.end method

.method protected queryNumLocation(Ljava/lang/String;)V
    .locals 23
    .parameter "input"

    .prologue
    .line 268
    move-object/from16 v20, p1

    .line 269
    .local v20, origninput:Ljava/lang/String;
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 270
    :cond_0
    invoke-direct/range {p0 .. p0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->handleErrorNum()V

    .line 273
    :cond_1
    const-string v3, ","

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    .line 274
    const/4 v3, 0x0

    const-string v4, ","

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v20

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 277
    :cond_2
    sget-object v3, Lzte/com/cn/numberlocator/NumberLocator$Locator;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 278
    .local v4, locatorurl:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->content:Landroid/content/ContentResolver;

    move-object v3, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 280
    .local v15, cursor:Landroid/database/Cursor;
    if-eqz v15, :cond_3

    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_5

    .line 281
    :cond_3
    invoke-direct/range {p0 .. p0}, Lzte/com/cn/numberlocator/NumberLocatorActivity;->handleErrorNum()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    if-eqz v15, :cond_4

    .line 358
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 362
    .end local v4           #locatorurl:Landroid/net/Uri;
    :cond_4
    :goto_0
    return-void

    .line 284
    .restart local v4       #locatorurl:Landroid/net/Uri;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mErrorPhoneNumber:Landroid/widget/TextView;

    move-object v3, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    .end local v4           #locatorurl:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mIMManager:Landroid/view/inputmethod/InputMethodManager;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 287
    const/16 v21, 0x0

    .line 288
    .local v21, phonenum:Ljava/lang/String;
    const/4 v13, 0x0

    .line 289
    .local v13, cityname:Ljava/lang/String;
    const/4 v11, 0x0

    .line 290
    .local v11, cardtype:Ljava/lang/String;
    const/4 v9, 0x0

    .line 292
    .local v9, areacode:Ljava/lang/String;
    const/16 v22, 0x0

    .line 294
    .local v22, specialNum:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->mNuminput:Landroid/widget/EditText;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    .line 295
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 297
    const-string v3, "cityname"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 298
    .local v14, citynameColumn:I
    const-string v3, "cardtype"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 299
    .local v12, cardtypeColumn:I
    const-string v3, "areacode"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    .line 304
    .local v10, areacodeColumn:I
    :try_start_2
    new-instance v3, Ljava/lang/String;

    invoke-interface {v15, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 305
    const/4 v3, -0x1

    if-eq v3, v12, :cond_6

    .line 306
    new-instance v3, Ljava/lang/String;

    invoke-interface {v15, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 310
    :goto_1
    const-string v3, "NumberLocator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "quryNumLocator cardtype=:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 315
    :goto_2
    :try_start_3
    const-string v3, "fixedphone"

    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v15, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 333
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listItem:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 335
    .local v18, itemsize:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_c

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listItem:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/HashMap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 337
    .local v19, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    packed-switch v17, :pswitch_data_0

    .line 335
    :goto_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 308
    .end local v17           #i:I
    .end local v18           #itemsize:I
    .end local v19           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    :try_start_4
    const-string v11, "china"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 311
    :catch_0
    move-exception v3

    move-object/from16 v16, v3

    .line 312
    .local v16, e:Ljava/io/UnsupportedEncodingException;
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 357
    .end local v9           #areacode:Ljava/lang/String;
    .end local v10           #areacodeColumn:I
    .end local v11           #cardtype:Ljava/lang/String;
    .end local v12           #cardtypeColumn:I
    .end local v13           #cityname:Ljava/lang/String;
    .end local v14           #citynameColumn:I
    .end local v16           #e:Ljava/io/UnsupportedEncodingException;
    .end local v21           #phonenum:Ljava/lang/String;
    .end local v22           #specialNum:Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v15, :cond_7

    .line 358
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v3

    .line 320
    .restart local v9       #areacode:Ljava/lang/String;
    .restart local v10       #areacodeColumn:I
    .restart local v11       #cardtype:Ljava/lang/String;
    .restart local v12       #cardtypeColumn:I
    .restart local v13       #cityname:Ljava/lang/String;
    .restart local v14       #citynameColumn:I
    .restart local v21       #phonenum:Ljava/lang/String;
    .restart local v22       #specialNum:Ljava/lang/String;
    :cond_8
    :try_start_6
    const-string v3, "intlphone"

    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v15, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 326
    :cond_9
    invoke-interface {v15, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    .line 327
    if-eqz v22, :cond_a

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_b

    .line 328
    :cond_a
    const-string v9, ""

    goto :goto_3

    .line 330
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v15, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_3

    .line 339
    .restart local v17       #i:I
    .restart local v18       #itemsize:I
    .restart local v19       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_0
    const-string v3, "text"

    move-object/from16 v0, v19

    move-object v1, v3

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 347
    :pswitch_1
    const-string v3, "text"

    move-object/from16 v0, v19

    move-object v1, v3

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 350
    :pswitch_2
    const-string v3, "text"

    move-object/from16 v0, v19

    move-object v1, v3

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 354
    .end local v19           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/numberlocator/NumberLocatorActivity;->listItemAdapter:Landroid/widget/SimpleAdapter;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 357
    .end local v10           #areacodeColumn:I
    .end local v12           #cardtypeColumn:I
    .end local v14           #citynameColumn:I
    .end local v17           #i:I
    .end local v18           #itemsize:I
    :cond_d
    if-eqz v15, :cond_4

    .line 358
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
