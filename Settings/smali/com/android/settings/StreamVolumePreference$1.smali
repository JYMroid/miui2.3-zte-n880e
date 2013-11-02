.class Lcom/android/settings/StreamVolumePreference$1;
.super Ljava/lang/Object;
.source "StreamVolumePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/StreamVolumePreference;->createVolumeDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/StreamVolumePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/StreamVolumePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings/StreamVolumePreference$1;->this$0:Lcom/android/settings/StreamVolumePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/StreamVolumePreference$1;->this$0:Lcom/android/settings/StreamVolumePreference;

    #getter for: Lcom/android/settings/StreamVolumePreference;->mStreamItem:Lcom/android/settings/ProfileConfig$StreamItem;
    invoke-static {v0}, Lcom/android/settings/StreamVolumePreference;->access$100(Lcom/android/settings/StreamVolumePreference;)Lcom/android/settings/ProfileConfig$StreamItem;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/ProfileConfig$StreamItem;->mSettings:Landroid/app/StreamSettings;

    iget-object v1, p0, Lcom/android/settings/StreamVolumePreference$1;->this$0:Lcom/android/settings/StreamVolumePreference;

    #getter for: Lcom/android/settings/StreamVolumePreference;->mBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/settings/StreamVolumePreference;->access$000(Lcom/android/settings/StreamVolumePreference;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/StreamSettings;->setValue(I)V

    .line 138
    return-void
.end method
