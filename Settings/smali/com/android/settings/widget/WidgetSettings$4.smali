.class Lcom/android/settings/widget/WidgetSettings$4;
.super Ljava/lang/Object;
.source "WidgetSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/WidgetSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/WidgetSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/WidgetSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private saveSettings()V
    .locals 8

    .prologue
    const/4 v6, 0x3

    const-string v7, "saved"

    .line 377
    const-string v2, "WidgetSettings: "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Will save widget_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    iget v4, v4, Lcom/android/settings/widget/WidgetSettings;->widgetId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v2, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    iget-object v2, v2, Lcom/android/settings/widget/WidgetSettings;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 380
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 382
    const-string v2, "toggleWifi"

    iget-object v3, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    #getter for: Lcom/android/settings/widget/WidgetSettings;->selectedButtons:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/widget/WidgetSettings;->access$100(Lcom/android/settings/widget/WidgetSettings;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v5, 0x7f0b013b

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 383
    const-string v2, "toggleBluetooth"

    iget-object v3, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    #getter for: Lcom/android/settings/widget/WidgetSettings;->selectedButtons:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/widget/WidgetSettings;->access$100(Lcom/android/settings/widget/WidgetSettings;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v5, 0x7f0b013f

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 385
    const-string v2, "toggleGPS"

    iget-object v3, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    #getter for: Lcom/android/settings/widget/WidgetSettings;->selectedButtons:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/widget/WidgetSettings;->access$100(Lcom/android/settings/widget/WidgetSettings;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v5, 0x7f0b0140

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 386
    const-string v2, "toggleData"

    iget-object v3, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    #getter for: Lcom/android/settings/widget/WidgetSettings;->selectedButtons:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/widget/WidgetSettings;->access$100(Lcom/android/settings/widget/WidgetSettings;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v5, 0x7f0b0141

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 387
    const-string v2, "toggle2G3G"

    iget-object v3, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    #getter for: Lcom/android/settings/widget/WidgetSettings;->selectedButtons:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/widget/WidgetSettings;->access$100(Lcom/android/settings/widget/WidgetSettings;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v5, 0x7f0b0142

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 388
    const-string v2, "toggleSync"

    iget-object v3, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    #getter for: Lcom/android/settings/widget/WidgetSettings;->selectedButtons:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/widget/WidgetSettings;->access$100(Lcom/android/settings/widget/WidgetSettings;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v5, 0x7f0b0146

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 389
    const-string v2, "toggleSound"

    iget-object v3, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    #getter for: Lcom/android/settings/widget/WidgetSettings;->selectedButtons:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/widget/WidgetSettings;->access$100(Lcom/android/settings/widget/WidgetSettings;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v5, 0x7f0b0147

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 390
    const-string v2, "toggleScreenTimeout"

    iget-object v3, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    #getter for: Lcom/android/settings/widget/WidgetSettings;->selectedButtons:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/widget/WidgetSettings;->access$100(Lcom/android/settings/widget/WidgetSettings;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v5, 0x7f0b0148

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 392
    const-string v2, "toggleAutoRotate"

    iget-object v3, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    #getter for: Lcom/android/settings/widget/WidgetSettings;->selectedButtons:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/widget/WidgetSettings;->access$100(Lcom/android/settings/widget/WidgetSettings;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v5, 0x7f0b0149

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 394
    const-string v2, "toggleBrightness"

    iget-object v3, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    #getter for: Lcom/android/settings/widget/WidgetSettings;->selectedButtons:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/widget/WidgetSettings;->access$100(Lcom/android/settings/widget/WidgetSettings;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v5, 0x7f0b014a

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 396
    const-string v2, "toggleAirplane"

    iget-object v3, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    #getter for: Lcom/android/settings/widget/WidgetSettings;->selectedButtons:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/widget/WidgetSettings;->access$100(Lcom/android/settings/widget/WidgetSettings;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v5, 0x7f0b014d

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 398
    const-string v2, "toggleLockScreen"

    iget-object v3, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    #getter for: Lcom/android/settings/widget/WidgetSettings;->selectedButtons:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/widget/WidgetSettings;->access$100(Lcom/android/settings/widget/WidgetSettings;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v5, 0x7f0b014c

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 400
    const-string v2, "toggleFlashlight"

    iget-object v3, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    #getter for: Lcom/android/settings/widget/WidgetSettings;->selectedButtons:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/widget/WidgetSettings;->access$100(Lcom/android/settings/widget/WidgetSettings;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v5, 0x7f0b014b

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 402
    const-string v2, "toggleWifiAp"

    iget-object v3, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    #getter for: Lcom/android/settings/widget/WidgetSettings;->selectedButtons:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/widget/WidgetSettings;->access$100(Lcom/android/settings/widget/WidgetSettings;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v5, 0x7f0b013d

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 404
    const-string v2, "toggleWimax"

    iget-object v3, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    #getter for: Lcom/android/settings/widget/WidgetSettings;->selectedButtons:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/widget/WidgetSettings;->access$100(Lcom/android/settings/widget/WidgetSettings;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v5, 0x7f0b0144

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 406
    const-string v3, "useRoundCorners"

    iget-object v2, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v4, 0x7f0b0151

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 408
    const-string v3, "backgrounImage"

    iget-object v2, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v4, 0x7f0b0150

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 410
    const-string v3, "useVertical"

    iget-object v2, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v4, 0x7f0b014f

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 411
    const-string v2, "saved"

    invoke-interface {v0, v7, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 412
    const-string v2, "lastButton"

    iget-object v3, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    #getter for: Lcom/android/settings/widget/WidgetSettings;->selectedButtons:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/widget/WidgetSettings;->access$100(Lcom/android/settings/widget/WidgetSettings;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 414
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 416
    iget-object v2, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    iget-object v2, v2, Lcom/android/settings/widget/WidgetSettings;->preferencesGeneral:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 417
    .local v1, editorGeneral:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 418
    const-string v3, "autoDisable3G"

    iget-object v2, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v4, 0x7f0b0158

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 420
    const-string v3, "autoEnable3G"

    iget-object v2, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v4, 0x7f0b0159

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 422
    const-string v3, "autoDisableSyncWithWifi"

    iget-object v2, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v4, 0x7f0b0153

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 424
    const-string v3, "autoEnableSyncWithWifi"

    iget-object v2, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v4, 0x7f0b0154

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 426
    const-string v3, "autoDisable3GWithWifi"

    iget-object v2, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v4, 0x7f0b0155

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 428
    const-string v3, "autoEnable3GWithWifi"

    iget-object v2, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v4, 0x7f0b0156

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 430
    const-string v3, "autoEnableBluetoothWithPower"

    iget-object v2, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v4, 0x7f0b015b

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 432
    const-string v3, "autoDisableBluetoothWithPower"

    iget-object v2, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v4, 0x7f0b015c

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 434
    const-string v3, "autoEnableWifiWithPower"

    iget-object v2, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v4, 0x7f0b015d

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 436
    const-string v3, "autoDisableWifiWithPower"

    iget-object v2, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v4, 0x7f0b015e

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 438
    const-string v3, "monitorDataRoaming"

    iget-object v2, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v4, 0x7f0b0160

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 440
    const-string v3, "ringModeVibrateAsOn"

    iget-object v2, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v4, 0x7f0b0161

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 443
    const-string v3, "brightnessSpinner"

    iget-object v2, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v4, 0x7f0b0164

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 445
    const-string v3, "screenTimeoutSpinner"

    iget-object v2, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v4, 0x7f0b0165

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 447
    const-string v3, "networkModeSpinner"

    iget-object v2, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v4, 0x7f0b0162

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 449
    const-string v2, "ringModeSpinner"

    iget-object v3, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const v4, 0x7f0b0163

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 451
    const-string v2, "saved"

    invoke-interface {v1, v7, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 452
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 454
    return-void
.end method

.method private updateWidget()V
    .locals 5

    .prologue
    .line 457
    iget-object v1, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 458
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    iget-object v1, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    iget v4, v4, Lcom/android/settings/widget/WidgetSettings;->widgetId:I

    aput v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 461
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/android/settings/widget/WidgetSettings$4;->saveSettings()V

    .line 366
    invoke-direct {p0}, Lcom/android/settings/widget/WidgetSettings$4;->updateWidget()V

    .line 368
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 369
    .local v0, result:Landroid/content/Intent;
    const-string v1, "appWidgetId"

    iget-object v2, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    iget v2, v2, Lcom/android/settings/widget/WidgetSettings;->widgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 370
    iget-object v1, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/widget/WidgetSettings;->setResult(ILandroid/content/Intent;)V

    .line 371
    iget-object v1, p0, Lcom/android/settings/widget/WidgetSettings$4;->this$0:Lcom/android/settings/widget/WidgetSettings;

    invoke-virtual {v1}, Lcom/android/settings/widget/WidgetSettings;->finish()V

    .line 372
    return-void
.end method
