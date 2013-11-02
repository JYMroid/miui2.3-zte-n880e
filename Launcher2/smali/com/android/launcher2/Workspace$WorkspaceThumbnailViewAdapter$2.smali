.class Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$2;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1429
    iput-object p1, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$2;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 1431
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$2;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    #getter for: Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->zDefaultScreenButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->access$700(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;)Landroid/widget/ImageView;

    move-result-object v4

    if-eq v4, p1, :cond_1

    .line 1432
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1433
    .local v1, newDefaultScreenId:J
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$2;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v4, v4, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    #setter for: Lcom/android/launcher2/Workspace;->mDefaultScreenId:J
    invoke-static {v4, v1, v2}, Lcom/android/launcher2/Workspace;->access$802(Lcom/android/launcher2/Workspace;J)J

    .line 1436
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$2;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v4, v4, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1437
    .local v3, pref:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1438
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "pref_default_screen"

    invoke-interface {v0, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1439
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1442
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$2;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    #getter for: Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->zDefaultScreenButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->access$700(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;)Landroid/widget/ImageView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1443
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$2;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    #getter for: Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->zDefaultScreenButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->access$700(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f020057

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1445
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$2;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    #setter for: Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->zDefaultScreenButton:Landroid/widget/ImageView;
    invoke-static {v4, p1}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->access$702(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 1446
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$2;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    #getter for: Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->zDefaultScreenButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->access$700(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f020058

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1448
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #newDefaultScreenId:J
    .end local v3           #pref:Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method
