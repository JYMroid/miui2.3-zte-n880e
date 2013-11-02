.class Lcom/android/phone/CellBroadcast$4;
.super Ljava/lang/Object;
.source "CellBroadcast.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CellBroadcast;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CellBroadcast;


# direct methods
.method constructor <init>(Lcom/android/phone/CellBroadcast;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/phone/CellBroadcast$4;->this$0:Lcom/android/phone/CellBroadcast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 15
    .parameter "v"

    .prologue
    .line 376
    const-string v2, "CellBroadcast.java"

    const-string v3, "shen ADD save"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string v2, "CellBroadcast.java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shen ADD channelName =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CellBroadcast$4;->this$0:Lcom/android/phone/CellBroadcast;

    #getter for: Lcom/android/phone/CellBroadcast;->mChannelNameEditAdd:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/phone/CellBroadcast;->access$1100(Lcom/android/phone/CellBroadcast;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v2, "CellBroadcast.java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shen ADD channelNumber =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CellBroadcast$4;->this$0:Lcom/android/phone/CellBroadcast;

    #getter for: Lcom/android/phone/CellBroadcast;->mChannelNumberEditAdd:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/phone/CellBroadcast;->access$1200(Lcom/android/phone/CellBroadcast;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v2, p0, Lcom/android/phone/CellBroadcast$4;->this$0:Lcom/android/phone/CellBroadcast;

    #getter for: Lcom/android/phone/CellBroadcast;->mChannelNumberEditAdd:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/CellBroadcast;->access$1200(Lcom/android/phone/CellBroadcast;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CellBroadcast$4;->this$0:Lcom/android/phone/CellBroadcast;

    #getter for: Lcom/android/phone/CellBroadcast;->mChannelNumberEditAdd:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/CellBroadcast;->access$1200(Lcom/android/phone/CellBroadcast;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 380
    :cond_0
    const-string v2, "CellBroadcast.java"

    const-string v3, "shen mChannelNumberEditAdd.getText().length() == 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/CellBroadcast$4;->this$0:Lcom/android/phone/CellBroadcast;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0331

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Please enter channel number!"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CellBroadcast$4;->this$0:Lcom/android/phone/CellBroadcast;

    #getter for: Lcom/android/phone/CellBroadcast;->mRes:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/android/phone/CellBroadcast;->access$800(Lcom/android/phone/CellBroadcast;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0337

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 441
    :goto_0
    return-void

    .line 387
    :cond_1
    iget-object v2, p0, Lcom/android/phone/CellBroadcast$4;->this$0:Lcom/android/phone/CellBroadcast;

    #getter for: Lcom/android/phone/CellBroadcast;->mConfigInfoMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/phone/CellBroadcast;->access$600(Lcom/android/phone/CellBroadcast;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CellBroadcast$4;->this$0:Lcom/android/phone/CellBroadcast;

    iget-object v4, p0, Lcom/android/phone/CellBroadcast$4;->this$0:Lcom/android/phone/CellBroadcast;

    #getter for: Lcom/android/phone/CellBroadcast;->mChannelNumberEditAdd:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/phone/CellBroadcast;->access$1200(Lcom/android/phone/CellBroadcast;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/CellBroadcast;->checkTrim0(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/phone/CellBroadcast;->access$900(Lcom/android/phone/CellBroadcast;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 388
    iget-object v2, p0, Lcom/android/phone/CellBroadcast$4;->this$0:Lcom/android/phone/CellBroadcast;

    iget-object v3, p0, Lcom/android/phone/CellBroadcast$4;->this$0:Lcom/android/phone/CellBroadcast;

    #getter for: Lcom/android/phone/CellBroadcast;->mChannelNumberEditAdd:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/phone/CellBroadcast;->access$1200(Lcom/android/phone/CellBroadcast;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/CellBroadcast;->checkTrim0(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/phone/CellBroadcast;->access$900(Lcom/android/phone/CellBroadcast;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 389
    .local v10, newChannelNumber:I
    iget-object v2, p0, Lcom/android/phone/CellBroadcast$4;->this$0:Lcom/android/phone/CellBroadcast;

    #getter for: Lcom/android/phone/CellBroadcast;->mChannelStateCheckBoxAdd:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/phone/CellBroadcast;->access$1300(Lcom/android/phone/CellBroadcast;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    .line 392
    .local v6, isChecked:Z
    iget-object v2, p0, Lcom/android/phone/CellBroadcast$4;->this$0:Lcom/android/phone/CellBroadcast;

    #getter for: Lcom/android/phone/CellBroadcast;->mChannelNameEditAdd:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/CellBroadcast;->access$1100(Lcom/android/phone/CellBroadcast;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 393
    .local v13, title:Ljava/lang/String;
    const-string v2, "CellBroadcast.java"

    const-string v3, "shenzhan onCreateDialog() ADD, insert new value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 395
    .local v14, value:Landroid/content/ContentValues;
    const-string v2, "channelnumber"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 397
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 400
    :cond_3
    const-string v2, "channelname"

    invoke-virtual {v14, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v2, p0, Lcom/android/phone/CellBroadcast$4;->this$0:Lcom/android/phone/CellBroadcast;

    invoke-virtual {v2}, Lcom/android/phone/CellBroadcast;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 404
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "content://settings/cellbroadcast"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "channelnumber=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 406
    .local v7, cursor:Landroid/database/Cursor;
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 407
    const-string v2, "CellBroadcast.java"

    const-string v3, "shenzhan initChannelList() cursor is  not empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 409
    .local v9, deleteIdIndex:I
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 410
    .local v8, deleteId:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://settings/cellbroadcast/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 415
    .end local v8           #deleteId:I
    .end local v9           #deleteIdIndex:I
    :cond_4
    const-string v2, "content://settings/cellbroadcast"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    .line 419
    .local v12, result:Landroid/net/Uri;
    const-string v2, "CellBroadcast.java"

    const-string v3, "shen mChannelNumberEditAdd.getText().length() != 0 && !containsKey()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const-string v2, "CellBroadcast.java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shen newChannelNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    iget-object v2, p0, Lcom/android/phone/CellBroadcast$4;->this$0:Lcom/android/phone/CellBroadcast;

    #getter for: Lcom/android/phone/CellBroadcast;->mLanguageIndex:I
    invoke-static {v2}, Lcom/android/phone/CellBroadcast;->access$1000(Lcom/android/phone/CellBroadcast;)I

    move-result v4

    iget-object v2, p0, Lcom/android/phone/CellBroadcast$4;->this$0:Lcom/android/phone/CellBroadcast;

    #getter for: Lcom/android/phone/CellBroadcast;->mLanguageIndex:I
    invoke-static {v2}, Lcom/android/phone/CellBroadcast;->access$1000(Lcom/android/phone/CellBroadcast;)I

    move-result v5

    move v2, v10

    move v3, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    .line 422
    .local v1, newConfigInfo:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    iget-object v2, p0, Lcom/android/phone/CellBroadcast$4;->this$0:Lcom/android/phone/CellBroadcast;

    #getter for: Lcom/android/phone/CellBroadcast;->mConfigInfoMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/phone/CellBroadcast;->access$600(Lcom/android/phone/CellBroadcast;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    new-instance v11, Lcom/android/phone/CellBroadcast$ChannelPreference;

    iget-object v2, p0, Lcom/android/phone/CellBroadcast$4;->this$0:Lcom/android/phone/CellBroadcast;

    iget-object v3, p0, Lcom/android/phone/CellBroadcast$4;->this$0:Lcom/android/phone/CellBroadcast;

    invoke-direct {v11, v2, v3, v10, v6}, Lcom/android/phone/CellBroadcast$ChannelPreference;-><init>(Lcom/android/phone/CellBroadcast;Landroid/content/Context;IZ)V

    .line 425
    .local v11, newChannelPreference:Lcom/android/phone/CellBroadcast$ChannelPreference;
    iget-object v2, p0, Lcom/android/phone/CellBroadcast$4;->this$0:Lcom/android/phone/CellBroadcast;

    invoke-virtual {v11, v2}, Lcom/android/phone/CellBroadcast$ChannelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Lcom/android/phone/CellBroadcast$ChannelPreference;->mChannelNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/android/phone/CellBroadcast$ChannelPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 428
    iget-boolean v2, v11, Lcom/android/phone/CellBroadcast$ChannelPreference;->mChannelState:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/CellBroadcast$4;->this$0:Lcom/android/phone/CellBroadcast;

    #getter for: Lcom/android/phone/CellBroadcast;->mRes:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/android/phone/CellBroadcast;->access$800(Lcom/android/phone/CellBroadcast;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0334

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v11, v2}, Lcom/android/phone/CellBroadcast$ChannelPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v2, p0, Lcom/android/phone/CellBroadcast$4;->this$0:Lcom/android/phone/CellBroadcast;

    #getter for: Lcom/android/phone/CellBroadcast;->mChannelList:Landroid/preference/PreferenceCategory;
    invoke-static {v2}, Lcom/android/phone/CellBroadcast;->access$1400(Lcom/android/phone/CellBroadcast;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 430
    iget-object v2, p0, Lcom/android/phone/CellBroadcast$4;->this$0:Lcom/android/phone/CellBroadcast;

    #getter for: Lcom/android/phone/CellBroadcast;->mChannelListMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/phone/CellBroadcast;->access$500(Lcom/android/phone/CellBroadcast;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget-object v2, p0, Lcom/android/phone/CellBroadcast$4;->this$0:Lcom/android/phone/CellBroadcast;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/phone/CellBroadcast;->dismissDialog(I)V

    goto/16 :goto_0

    .line 428
    :cond_5
    iget-object v2, p0, Lcom/android/phone/CellBroadcast$4;->this$0:Lcom/android/phone/CellBroadcast;

    #getter for: Lcom/android/phone/CellBroadcast;->mRes:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/android/phone/CellBroadcast;->access$800(Lcom/android/phone/CellBroadcast;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0335

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 433
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #newConfigInfo:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v6           #isChecked:Z
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v10           #newChannelNumber:I
    .end local v11           #newChannelPreference:Lcom/android/phone/CellBroadcast$ChannelPreference;
    .end local v12           #result:Landroid/net/Uri;
    .end local v13           #title:Ljava/lang/String;
    .end local v14           #value:Landroid/content/ContentValues;
    :cond_6
    const-string v2, "CellBroadcast.java"

    const-string v3, "shen mChannelNumberEditAdd.getText().length() != 0 but containsKey()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/CellBroadcast$4;->this$0:Lcom/android/phone/CellBroadcast;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0331

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0333

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CellBroadcast$4;->this$0:Lcom/android/phone/CellBroadcast;

    #getter for: Lcom/android/phone/CellBroadcast;->mRes:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/android/phone/CellBroadcast;->access$800(Lcom/android/phone/CellBroadcast;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0337

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method
