.class public Lcom/android/phone/CFQuerySwitch;
.super Landroid/app/Activity;
.source "CFQuerySwitch.java"


# instance fields
.field CALLFORWARD_QUERY_KEY:Ljava/lang/String;

.field PREF_NAME:Ljava/lang/String;

.field currentstate:Z

.field mbuttonSwtich:Landroid/widget/Button;

.field mtext1:Landroid/widget/TextView;

.field mtitle:Landroid/widget/TextView;

.field ocl:Landroid/view/View$OnClickListener;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const-string v0, "Call Forwarding Query with PowerOn"

    iput-object v0, p0, Lcom/android/phone/CFQuerySwitch;->title:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CFQuerySwitch;->currentstate:Z

    .line 36
    const-string v0, "callforward_query_key"

    iput-object v0, p0, Lcom/android/phone/CFQuerySwitch;->CALLFORWARD_QUERY_KEY:Ljava/lang/String;

    .line 37
    const-string v0, "callforward_pref"

    iput-object v0, p0, Lcom/android/phone/CFQuerySwitch;->PREF_NAME:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/android/phone/CFQuerySwitch$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CFQuerySwitch$1;-><init>(Lcom/android/phone/CFQuerySwitch;)V

    iput-object v0, p0, Lcom/android/phone/CFQuerySwitch;->ocl:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CFQuerySwitch;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/phone/CFQuerySwitch;->setCallForwardingQueryKey()Z

    move-result v0

    return v0
.end method

.method private getCallForwardingQueryKey()Z
    .locals 4

    .prologue
    .line 57
    iget-object v2, p0, Lcom/android/phone/CFQuerySwitch;->PREF_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/CFQuerySwitch;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 58
    .local v1, sp:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/android/phone/CFQuerySwitch;->CALLFORWARD_QUERY_KEY:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 59
    .local v0, isQuery:Z
    return v0
.end method

.method private setCallForwardingQueryKey()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 43
    iget-object v2, p0, Lcom/android/phone/CFQuerySwitch;->PREF_NAME:Ljava/lang/String;

    invoke-virtual {p0, v2, v4}, Lcom/android/phone/CFQuerySwitch;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 45
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 46
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/android/phone/CFQuerySwitch;->CALLFORWARD_QUERY_KEY:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/phone/CFQuerySwitch;->currentstate:Z

    if-nez v3, :cond_0

    move v3, v5

    :goto_0
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_1

    .line 49
    iget-boolean v2, p0, Lcom/android/phone/CFQuerySwitch;->currentstate:Z

    .line 52
    :goto_1
    return v2

    :cond_0
    move v3, v4

    .line 46
    goto :goto_0

    .line 52
    :cond_1
    iget-boolean v2, p0, Lcom/android/phone/CFQuerySwitch;->currentstate:Z

    if-nez v2, :cond_2

    move v2, v5

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const-string v4, "ON"

    const-string v3, "OFF"

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/CFQuerySwitch;->requestWindowFeature(I)Z

    .line 97
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/android/phone/CFQuerySwitch;->setContentView(I)V

    .line 99
    invoke-direct {p0}, Lcom/android/phone/CFQuerySwitch;->getCallForwardingQueryKey()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/CFQuerySwitch;->currentstate:Z

    .line 101
    const v0, 0x7f07003e

    invoke-virtual {p0, v0}, Lcom/android/phone/CFQuerySwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CFQuerySwitch;->mtitle:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lcom/android/phone/CFQuerySwitch;->mtitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CFQuerySwitch;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const v0, 0x7f070041

    invoke-virtual {p0, v0}, Lcom/android/phone/CFQuerySwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CFQuerySwitch;->mtext1:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcom/android/phone/CFQuerySwitch;->mtext1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallForwarding status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/CFQuerySwitch;->currentstate:Z

    if-eqz v2, :cond_0

    const-string v2, "ON"

    move-object v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const v0, 0x7f070045

    invoke-virtual {p0, v0}, Lcom/android/phone/CFQuerySwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/CFQuerySwitch;->mbuttonSwtich:Landroid/widget/Button;

    .line 108
    iget-object v0, p0, Lcom/android/phone/CFQuerySwitch;->mbuttonSwtich:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/CFQuerySwitch;->ocl:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/android/phone/CFQuerySwitch;->mbuttonSwtich:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Swtich to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/CFQuerySwitch;->currentstate:Z

    if-eqz v2, :cond_1

    const-string v2, "OFF"

    move-object v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 111
    return-void

    .line 105
    :cond_0
    const-string v2, "OFF"

    move-object v2, v3

    goto :goto_0

    .line 110
    :cond_1
    const-string v2, "ON"

    move-object v2, v4

    goto :goto_1
.end method
