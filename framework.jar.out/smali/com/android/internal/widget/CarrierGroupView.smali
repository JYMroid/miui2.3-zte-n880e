.class public Lcom/android/internal/widget/CarrierGroupView;
.super Landroid/widget/LinearLayout;
.source "CarrierGroupView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/CarrierGroupView$CarrierObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_CARRIER_INFO_UPDATE:I = 0x378

.field private static final TAG:Ljava/lang/String; = "CarrierGroupView"


# instance fields
.field private mAlwaysShowAllCarrierViews:Z

.field private mAttached:I

.field private mCarrier:Lcom/android/internal/widget/CarrierUtils$CarrierInfo;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/CarrierGroupView$CarrierObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/CarrierGroupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/android/internal/widget/CarrierGroupView;->mAttached:I

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/CarrierGroupView;->mObservers:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/internal/widget/CarrierGroupView;->mAlwaysShowAllCarrierViews:Z

    new-instance v0, Lcom/android/internal/widget/CarrierGroupView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/CarrierGroupView$2;-><init>(Lcom/android/internal/widget/CarrierGroupView;)V

    iput-object v0, p0, Lcom/android/internal/widget/CarrierGroupView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/CarrierGroupView;->mCarrier:Lcom/android/internal/widget/CarrierUtils$CarrierInfo;

    new-instance v0, Lcom/android/internal/widget/CarrierGroupView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/CarrierGroupView$1;-><init>(Lcom/android/internal/widget/CarrierGroupView;)V

    iput-object v0, p0, Lcom/android/internal/widget/CarrierGroupView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/internal/widget/CarrierGroupView;->verifyAlwaysShowAllCarrierViews()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/CarrierGroupView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/CarrierGroupView;->handleCarrierInfoUpdate(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/widget/CarrierGroupView;)Lcom/android/internal/widget/CarrierUtils$CarrierInfo;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/CarrierGroupView;->mCarrier:Lcom/android/internal/widget/CarrierUtils$CarrierInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/CarrierGroupView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/CarrierGroupView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private handleCarrierInfoUpdate(I)V
    .locals 3
    .parameter "needUpdateLayout"

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/CarrierGroupView;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/CarrierGroupView;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/CarrierGroupView$CarrierObserver;

    iget-object v2, p0, Lcom/android/internal/widget/CarrierGroupView;->mCarrier:Lcom/android/internal/widget/CarrierUtils$CarrierInfo;

    invoke-interface {v1, v2}, Lcom/android/internal/widget/CarrierGroupView$CarrierObserver;->onUpdateCarrierInfo(Lcom/android/internal/widget/CarrierUtils$CarrierInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/widget/CarrierGroupView;->updateLayout()V

    :cond_1
    return-void
.end method

.method private initLayout()V
    .locals 5

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .local v3, numPhones:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/CarrierGroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CarrierLabel;

    .local v0, carrier:Lcom/android/internal/widget/CarrierLabel;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/CarrierLabel;->setTelephonySubscription(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #carrier:Lcom/android/internal/widget/CarrierLabel;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/CarrierGroupView;->getChildCount()I

    move-result v1

    .local v1, childCount:I
    if-ge v3, v1, :cond_3

    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/CarrierGroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CarrierLabel;

    .restart local v0       #carrier:Lcom/android/internal/widget/CarrierLabel;
    if-eqz v0, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/CarrierLabel;->setEnabled(Z)V

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/CarrierLabel;->setVisibility(I)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #carrier:Lcom/android/internal/widget/CarrierLabel;
    :cond_3
    return-void
.end method

.method private updateLayout()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-boolean v7, p0, Lcom/android/internal/widget/CarrierGroupView;->mAlwaysShowAllCarrierViews:Z

    if-eqz v7, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    .local v6, numPhones:I
    invoke-virtual {p0}, Lcom/android/internal/widget/CarrierGroupView;->getChildCount()I

    move-result v1

    .local v1, childCount:I
    if-le v1, v9, :cond_0

    if-ne v6, v1, :cond_0

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/internal/widget/CarrierUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    .local v3, isAirplaneMode:Z
    iget-object v7, p0, Lcom/android/internal/widget/CarrierGroupView;->mCarrier:Lcom/android/internal/widget/CarrierUtils$CarrierInfo;

    invoke-virtual {v7}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->getSimMissingStateCount()I

    move-result v5

    .local v5, missingCount:I
    if-nez v3, :cond_2

    if-lez v5, :cond_7

    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/CarrierGroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, carrier:Landroid/view/View;
    if-eqz v0, :cond_5

    iget-object v7, p0, Lcom/android/internal/widget/CarrierGroupView;->mCarrier:Lcom/android/internal/widget/CarrierUtils$CarrierInfo;

    invoke-virtual {v7, v2}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->isSimMissingState(I)Z

    move-result v4

    .local v4, isSimMissing:Z
    if-nez v3, :cond_3

    if-eqz v4, :cond_6

    :cond_3
    sub-int v7, v1, v2

    if-gt v7, v9, :cond_4

    sub-int v7, v1, v5

    if-lez v7, :cond_6

    :cond_4
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .end local v4           #isSimMissing:Z
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .restart local v4       #isSimMissing:Z
    :cond_6
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .end local v0           #carrier:Landroid/view/View;
    .end local v2           #i:I
    .end local v4           #isSimMissing:Z
    :cond_7
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/CarrierGroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0       #carrier:Landroid/view/View;
    if-eqz v0, :cond_8

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private verifyAlwaysShowAllCarrierViews()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/CarrierGroupView;->mAlwaysShowAllCarrierViews:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/CarrierGroupView;->mAlwaysShowAllCarrierViews:Z

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget v1, p0, Lcom/android/internal/widget/CarrierGroupView;->mAttached:I

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/android/internal/widget/CarrierGroupView;->mAttached:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/CarrierGroupView;->mAttached:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/CarrierGroupView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/CarrierGroupView;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget v0, p0, Lcom/android/internal/widget/CarrierGroupView;->mAttached:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/widget/CarrierGroupView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget v0, p0, Lcom/android/internal/widget/CarrierGroupView;->mAttached:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/CarrierGroupView;->mAttached:I

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/internal/widget/CarrierGroupView;->initLayout()V

    return-void
.end method

.method public registerCarrierObserver(Lcom/android/internal/widget/CarrierGroupView$CarrierObserver;)V
    .locals 4
    .parameter "observer"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/CarrierGroupView;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/CarrierGroupView;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "CarrierGroupView"

    const-string v1, "Object tried to add another INFO observer"

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Whoops"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeCarrierObserver(Ljava/lang/Object;)V
    .locals 1
    .parameter "observer"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/CarrierGroupView;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetCarrierInfo(Lcom/android/internal/widget/CarrierUtils$CarrierInfo;)V
    .locals 1
    .parameter "carrierInfo"

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/CarrierGroupView;->mCarrier:Lcom/android/internal/widget/CarrierUtils$CarrierInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->copy(Lcom/android/internal/widget/CarrierUtils$CarrierInfo;)V

    invoke-direct {p0}, Lcom/android/internal/widget/CarrierGroupView;->updateLayout()V

    goto :goto_0
.end method
