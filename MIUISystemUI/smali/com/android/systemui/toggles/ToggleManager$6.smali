.class Lcom/android/systemui/toggles/ToggleManager$6;
.super Ljava/lang/Object;
.source "ToggleManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/toggles/ToggleManager;->toggleVibrate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/toggles/ToggleManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/toggles/ToggleManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/android/systemui/toggles/ToggleManager$6;->this$0:Lcom/android/systemui/toggles/ToggleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1117
    const-string v2, "com.android.settings/.SoundSettings"

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1119
    .local v0, component:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 1120
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1121
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1122
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1123
    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleManager$6;->this$0:Lcom/android/systemui/toggles/ToggleManager;

    #getter for: Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/toggles/ToggleManager;->access$600(Lcom/android/systemui/toggles/ToggleManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1125
    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleManager$6;->this$0:Lcom/android/systemui/toggles/ToggleManager;

    #getter for: Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/toggles/ToggleManager;->access$600(Lcom/android/systemui/toggles/ToggleManager;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/StatusBarManager;

    invoke-virtual {p0}, Landroid/app/StatusBarManager;->collapse()V

    .line 1127
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
