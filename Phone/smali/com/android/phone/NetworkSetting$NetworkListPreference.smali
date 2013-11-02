.class Lcom/android/phone/NetworkSetting$NetworkListPreference;
.super Landroid/preference/Preference;
.source "NetworkSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkListPreference"
.end annotation


# instance fields
.field private iconIndex:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsCurrent:Z

.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method public constructor <init>(Lcom/android/phone/NetworkSetting;Landroid/content/Context;IZ)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "iconMode"
    .parameter "isCurrent"

    .prologue
    const/4 v1, 0x0

    .line 527
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$NetworkListPreference;->this$0:Lcom/android/phone/NetworkSetting;

    .line 528
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 523
    iput v1, p0, Lcom/android/phone/NetworkSetting$NetworkListPreference;->iconIndex:I

    .line 525
    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting$NetworkListPreference;->mIsCurrent:Z

    .line 530
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting$NetworkListPreference;->setLayoutResource(I)V

    .line 532
    iput-boolean p4, p0, Lcom/android/phone/NetworkSetting$NetworkListPreference;->mIsCurrent:Z

    .line 534
    if-ltz p3, :cond_0

    const/4 v0, 0x2

    if-gt p3, v0, :cond_0

    .line 535
    iput p3, p0, Lcom/android/phone/NetworkSetting$NetworkListPreference;->iconIndex:I

    .line 537
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "parent"

    .prologue
    .line 539
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$NetworkListPreference;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting$NetworkListPreference;->getLayoutResource()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 541
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f0700a5

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 543
    .local v1, imageView:Landroid/widget/ImageView;
    const v4, 0x7f0700a6

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 544
    .local v0, iconCurrent:Landroid/widget/ImageView;
    iget-boolean v4, p0, Lcom/android/phone/NetworkSetting$NetworkListPreference;->mIsCurrent:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 546
    const-string v4, "NetworkSetting.java"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shenzhan iconIndex == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/NetworkSetting$NetworkListPreference;->iconIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget v4, p0, Lcom/android/phone/NetworkSetting$NetworkListPreference;->iconIndex:I

    if-nez v4, :cond_4

    .line 548
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting$NetworkListPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200ae

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/NetworkSetting$NetworkListPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 554
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/phone/NetworkSetting$NetworkListPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 555
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$NetworkListPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 558
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting$NetworkListPreference;->getWidgetLayoutResource()I

    move-result v4

    if-eqz v4, :cond_2

    .line 559
    const v4, 0x1020018

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 560
    .local v3, widgetFrame:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$NetworkListPreference;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting$NetworkListPreference;->getWidgetLayoutResource()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 563
    .end local v3           #widgetFrame:Landroid/view/ViewGroup;
    :cond_2
    return-object v2

    .line 544
    :cond_3
    const/4 v4, 0x4

    goto :goto_0

    .line 549
    :cond_4
    iget v4, p0, Lcom/android/phone/NetworkSetting$NetworkListPreference;->iconIndex:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 550
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting$NetworkListPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200be

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/NetworkSetting$NetworkListPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 551
    :cond_5
    iget v4, p0, Lcom/android/phone/NetworkSetting$NetworkListPreference;->iconIndex:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting$NetworkListPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200bd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/NetworkSetting$NetworkListPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method
