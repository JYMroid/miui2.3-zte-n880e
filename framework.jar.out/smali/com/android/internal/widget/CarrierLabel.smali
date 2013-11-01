.class public Lcom/android/internal/widget/CarrierLabel;
.super Landroid/widget/TextView;
.source "CarrierLabel.java"

# interfaces
.implements Lcom/android/internal/widget/CarrierGroupView$CarrierObserver;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "widget.CarrierLabel"


# instance fields
.field private mAttached:Z

.field private mCarrier:Lcom/android/internal/widget/CarrierUtils$CarrierInfo;

.field private mCarrierFormatter:Lcom/android/internal/widget/CarrierFormatter;

.field private mEnabled:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSubscription:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/CarrierLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/CarrierLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v3, p0, Lcom/android/internal/widget/CarrierLabel;->mAttached:Z

    iput v3, p0, Lcom/android/internal/widget/CarrierLabel;->mSubscription:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/CarrierLabel;->mEnabled:Z

    new-instance v0, Lcom/android/internal/widget/CarrierLabel$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/CarrierLabel$1;-><init>(Lcom/android/internal/widget/CarrierLabel;)V

    iput-object v0, p0, Lcom/android/internal/widget/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/CarrierLabel;->mCarrier:Lcom/android/internal/widget/CarrierUtils$CarrierInfo;

    new-instance v0, Lcom/android/internal/widget/CarrierFormatter;

    const/4 v1, 0x3

    const-string v2, "|"

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/widget/CarrierFormatter;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/widget/CarrierLabel;->mCarrierFormatter:Lcom/android/internal/widget/CarrierFormatter;

    invoke-virtual {p0, v3, v4, v3, v4}, Lcom/android/internal/widget/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/CarrierLabel;Landroid/content/Intent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/CarrierLabel;->isMyTelephonySubscription(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/CarrierLabel;)Lcom/android/internal/widget/CarrierUtils$CarrierInfo;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/CarrierLabel;->mCarrier:Lcom/android/internal/widget/CarrierUtils$CarrierInfo;

    return-object v0
.end method

.method private isMyTelephonySubscription(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    iget v0, p0, Lcom/android/internal/widget/CarrierLabel;->mSubscription:I

    invoke-static {p1}, Lcom/android/internal/widget/CarrierUtils;->getTelephonySubscriptionFrom(Landroid/content/Intent;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-boolean v2, p0, Lcom/android/internal/widget/CarrierLabel;->mAttached:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/widget/CarrierLabel;->mAttached:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/CarrierLabel;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, parent:Landroid/view/ViewParent;
    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/android/internal/widget/CarrierGroupView;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/android/internal/widget/CarrierGroupView;

    .end local v1           #parent:Landroid/view/ViewParent;
    invoke-virtual {v1, p0}, Lcom/android/internal/widget/CarrierGroupView;->registerCarrierObserver(Lcom/android/internal/widget/CarrierGroupView$CarrierObserver;)V

    :cond_0
    :goto_0
    return-void

    .restart local v1       #parent:Landroid/view/ViewParent;
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/widget/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/CarrierLabel;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-boolean v1, p0, Lcom/android/internal/widget/CarrierLabel;->mAttached:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/CarrierLabel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/widget/CarrierGroupView;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/widget/CarrierGroupView;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v0, p0}, Lcom/android/internal/widget/CarrierGroupView;->removeCarrierObserver(Ljava/lang/Object;)V

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/CarrierLabel;->mAttached:Z

    :cond_0
    return-void

    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_1
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onUpdateCarrierInfo(Lcom/android/internal/widget/CarrierUtils$CarrierInfo;)V
    .locals 5
    .parameter "carrierInfo"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/widget/CarrierLabel;->mEnabled:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/internal/widget/CarrierLabel;->mCarrier:Lcom/android/internal/widget/CarrierUtils$CarrierInfo;

    iget-object v0, p0, Lcom/android/internal/widget/CarrierLabel;->mCarrier:Lcom/android/internal/widget/CarrierUtils$CarrierInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/CarrierLabel;->mCarrier:Lcom/android/internal/widget/CarrierUtils$CarrierInfo;

    iget v1, p0, Lcom/android/internal/widget/CarrierLabel;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->isShowTelephonySpn(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/CarrierLabel;->mCarrier:Lcom/android/internal/widget/CarrierUtils$CarrierInfo;

    iget v2, p0, Lcom/android/internal/widget/CarrierLabel;->mSubscription:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->getTelephonySpn(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/CarrierLabel;->mCarrier:Lcom/android/internal/widget/CarrierUtils$CarrierInfo;

    iget v3, p0, Lcom/android/internal/widget/CarrierLabel;->mSubscription:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->isShowTelephonyPlmn(I)Z

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/CarrierLabel;->mCarrier:Lcom/android/internal/widget/CarrierUtils$CarrierInfo;

    iget v4, p0, Lcom/android/internal/widget/CarrierLabel;->mSubscription:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->getTelephonyPlmn(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/widget/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/widget/CarrierLabel;->mEnabled:Z

    return-void
.end method

.method public setTelephonySubscription(I)V
    .locals 0
    .parameter "subscription"

    .prologue
    iput p1, p0, Lcom/android/internal/widget/CarrierLabel;->mSubscription:I

    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .parameter "showSpn"
    .parameter "spn"
    .parameter "showPlmn"
    .parameter "plmn"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/CarrierLabel;->mCarrierFormatter:Lcom/android/internal/widget/CarrierFormatter;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/CarrierFormatter;->addPlmnSpnFlags(I)V

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/CarrierLabel;->mCarrierFormatter:Lcom/android/internal/widget/CarrierFormatter;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/CarrierFormatter;->addPlmnSpnFlags(I)V

    :goto_1
    if-eqz p3, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/CarrierLabel;->mCarrierFormatter:Lcom/android/internal/widget/CarrierFormatter;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CarrierFormatter;->addPlmnSpnFlags(I)V

    :goto_2
    iget-object v0, p0, Lcom/android/internal/widget/CarrierLabel;->mCarrier:Lcom/android/internal/widget/CarrierUtils$CarrierInfo;

    iget v1, p0, Lcom/android/internal/widget/CarrierLabel;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/CarrierLabel;->mSubscription:I

    iget-object v2, p0, Lcom/android/internal/widget/CarrierLabel;->mCarrierFormatter:Lcom/android/internal/widget/CarrierFormatter;

    invoke-static {p4, p2, v0, v1, v2}, Lcom/android/internal/widget/CarrierUtils;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/internal/telephony/IccCard$State;ILcom/android/internal/widget/CarrierUtils$CarrierFormat;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CarrierLabel;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/CarrierLabel;->mCarrierFormatter:Lcom/android/internal/widget/CarrierFormatter;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/CarrierFormatter;->removePlmnSpnFlags(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/CarrierLabel;->mCarrierFormatter:Lcom/android/internal/widget/CarrierFormatter;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/CarrierFormatter;->removePlmnSpnFlags(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/CarrierLabel;->mCarrierFormatter:Lcom/android/internal/widget/CarrierFormatter;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CarrierFormatter;->removePlmnSpnFlags(I)V

    goto :goto_2
.end method
