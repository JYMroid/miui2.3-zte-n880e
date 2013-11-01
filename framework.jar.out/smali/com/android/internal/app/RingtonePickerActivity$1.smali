.class Lcom/android/internal/app/RingtonePickerActivity$1;
.super Ljava/lang/Object;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/RingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/RingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/RingtonePickerActivity;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/RingtonePickerActivity$1;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity$1;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    #getter for: Lcom/android/internal/app/RingtonePickerActivity;->mExternalPos:I
    invoke-static {v1}, Lcom/android/internal/app/RingtonePickerActivity;->access$000(Lcom/android/internal/app/RingtonePickerActivity;)I

    move-result v1

    if-ne p2, v1, :cond_0

    const-string v1, "RingtonePickerActivity"

    const-string v2, "Profile DialogInterface.OnClickListener onClick() which == mExternalPos"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, externalIntent:Landroid/content/Intent;
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.music"

    const-string v2, "com.android.music.MusicPicker"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity$1;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/app/RingtonePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .end local v0           #externalIntent:Landroid/content/Intent;
    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity$1;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    #setter for: Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I
    invoke-static {v1, p2}, Lcom/android/internal/app/RingtonePickerActivity;->access$102(Lcom/android/internal/app/RingtonePickerActivity;I)I

    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity$1;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/RingtonePickerActivity;->FMStop()V

    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity$1;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/RingtonePickerActivity;->musicServiceStop()V

    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity$1;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    const/4 v2, 0x0

    #calls: Lcom/android/internal/app/RingtonePickerActivity;->playRingtone(II)V
    invoke-static {v1, p2, v2}, Lcom/android/internal/app/RingtonePickerActivity;->access$200(Lcom/android/internal/app/RingtonePickerActivity;II)V

    goto :goto_0
.end method
