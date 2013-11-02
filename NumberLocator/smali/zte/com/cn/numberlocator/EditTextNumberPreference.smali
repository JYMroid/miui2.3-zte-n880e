.class public Lzte/com/cn/numberlocator/EditTextNumberPreference;
.super Landroid/preference/EditTextPreference;
.source "EditTextNumberPreference.java"


# instance fields
.field private mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzte/com/cn/numberlocator/EditTextNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 57
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/EditTextNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 58
    .local v0, editText:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 60
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 64
    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindView(Landroid/view/View;)V

    .line 49
    return-void
.end method
