.class public Lcom/android/settings/TabbedSettings;
.super Lmiui/app/resourcebrowser/ResourceTabActivity;
.source "TabbedSettings.java"


# static fields
.field private static final MAX_TAB_INDEX:I = 0x4

.field private static final SWIPE_MAX_OFF_PATH:I = 0xfa

.field private static final SWIPE_MIN_DISTANCE:I = 0x78

.field private static final SWIPE_THRESHOLD_VELOCITY:I = 0xc8


# instance fields
.field mCurrentTab:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lmiui/app/resourcebrowser/ResourceTabActivity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/TabbedSettings;->mCurrentTab:I

    return-void
.end method

.method private addTab(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 3
    .parameter "tag"
    .parameter "resid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p3, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/android/settings/TabbedSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 59
    .local v1, tabSpec:Landroid/widget/TabHost$TabSpec;
    invoke-virtual {p0, p2}, Lcom/android/settings/TabbedSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 62
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 63
    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 65
    iget-object v2, p0, Lcom/android/settings/TabbedSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 66
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/ResourceTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/TabbedSettings;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    check-cast v1, Lmiui/widget/TabHost;

    iput-object v1, p0, Lcom/android/settings/TabbedSettings;->mTabHost:Landroid/widget/TabHost;

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/TabbedSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TabbedSettings;->mInflater:Landroid/view/LayoutInflater;

    .line 39
    iget-object v1, p0, Lcom/android/settings/TabbedSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 41
    const-string v1, "common"

    const v2, 0x7f080565

    const-class v3, Lcom/android/settings/CommonSettings;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/TabbedSettings;->addTab(Ljava/lang/String;ILjava/lang/Class;)V

    .line 43
    const-string v1, "personal"

    const v2, 0x7f080566

    const-class v3, Lcom/android/settings/PersonalSettings;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/TabbedSettings;->addTab(Ljava/lang/String;ILjava/lang/Class;)V

    .line 45
    const-string v1, "system"

    const v2, 0x7f080567

    const-class v3, Lcom/android/settings/SystemSettings;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/TabbedSettings;->addTab(Ljava/lang/String;ILjava/lang/Class;)V

    .line 46
    const-string v1, "program"

    const v2, 0x7f080568

    const-class v3, Lcom/android/settings/ProgramSettings;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/TabbedSettings;->addTab(Ljava/lang/String;ILjava/lang/Class;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/TabbedSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_tab_tag"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, tagTag:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/android/settings/TabbedSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method
