.class Lcom/android/phone/CellBroadcast$2;
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
    .line 251
    iput-object p1, p0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 22
    .parameter "v"

    .prologue
    .line 253
    const-string v6, "CellBroadcast.java"

    const-string v7, "shen EDIT Save"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v6, "CellBroadcast.java"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shen EDIT channelName =="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v8, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mChannelNameEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/CellBroadcast;->access$100(Lcom/android/phone/CellBroadcast;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v6, "CellBroadcast.java"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shen EDIT channelNumber =="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v8, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mChannelNumberEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/CellBroadcast;->access$200(Lcom/android/phone/CellBroadcast;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v6, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mChannelNumberEdit:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/android/phone/CellBroadcast;->access$200(Lcom/android/phone/CellBroadcast;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v8, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mCurrentChannelNumber:I
    invoke-static {v8}, Lcom/android/phone/CellBroadcast;->access$300(Lcom/android/phone/CellBroadcast;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 257
    const-string v6, "CellBroadcast.java"

    const-string v7, "shen EDIT Save mChannelNumberEdit.getText().equals(+mCurrentChannelNumber)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v6, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mCurrentChannelName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/phone/CellBroadcast;->access$400(Lcom/android/phone/CellBroadcast;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v7, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mChannelNameEdit:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/android/phone/CellBroadcast;->access$100(Lcom/android/phone/CellBroadcast;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 259
    const-string v6, "CellBroadcast.java"

    const-string v7, "shen EDIT Save !mCurrentChannelName.equals()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/phone/CellBroadcast;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 261
    .local v5, cr:Landroid/content/ContentResolver;
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 262
    .local v21, value:Landroid/content/ContentValues;
    const-string v6, "channelnumber"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v7, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mChannelNumberEdit:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/android/phone/CellBroadcast;->access$200(Lcom/android/phone/CellBroadcast;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v6, "channelname"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v7, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mChannelNameEdit:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/android/phone/CellBroadcast;->access$100(Lcom/android/phone/CellBroadcast;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v6, "content://settings/cellbroadcast"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "channelnumber=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v11, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mChannelNumberEdit:Landroid/widget/EditText;
    invoke-static {v11}, Lcom/android/phone/CellBroadcast;->access$200(Lcom/android/phone/CellBroadcast;)Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 266
    .local v13, cursor:Landroid/database/Cursor;
    const-string v6, "_id"

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 267
    .local v15, idIndex:I
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 268
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 269
    .local v20, updateId:I
    const-string v6, "content://settings/cellbroadcast"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v13, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 271
    const-string v6, "CellBroadcast.java"

    const-string v7, "shen EDIT Save cr.update()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 275
    .end local v5           #cr:Landroid/content/ContentResolver;
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v15           #idIndex:I
    .end local v20           #updateId:I
    .end local v21           #value:Landroid/content/ContentValues;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v6, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mChannelListMap:Ljava/util/Map;
    invoke-static {v6}, Lcom/android/phone/CellBroadcast;->access$500(Lcom/android/phone/CellBroadcast;)Ljava/util/Map;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v7, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mCurrentChannelNumber:I
    invoke-static {v7}, Lcom/android/phone/CellBroadcast;->access$300(Lcom/android/phone/CellBroadcast;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/phone/CellBroadcast$ChannelPreference;

    .line 276
    .local v11, channelPref:Lcom/android/phone/CellBroadcast$ChannelPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v6, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mConfigInfoMap:Ljava/util/Map;
    invoke-static {v6}, Lcom/android/phone/CellBroadcast;->access$600(Lcom/android/phone/CellBroadcast;)Ljava/util/Map;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v7, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mCurrentChannelNumber:I
    invoke-static {v7}, Lcom/android/phone/CellBroadcast;->access$300(Lcom/android/phone/CellBroadcast;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 278
    .local v12, configInfo:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v6, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mChannelStateCheckBox:Landroid/widget/CheckBox;
    invoke-static {v6}, Lcom/android/phone/CellBroadcast;->access$700(Lcom/android/phone/CellBroadcast;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v16

    .line 279
    .local v16, isChecked:Z
    move/from16 v0, v16

    move-object v1, v11

    iput-boolean v0, v1, Lcom/android/phone/CellBroadcast$ChannelPreference;->mChannelState:Z

    .line 280
    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v6, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mRes:Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/android/phone/CellBroadcast;->access$800(Lcom/android/phone/CellBroadcast;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0334

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v11, v6}, Lcom/android/phone/CellBroadcast$ChannelPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 281
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v7, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mChannelNameEdit:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/android/phone/CellBroadcast;->access$100(Lcom/android/phone/CellBroadcast;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v7, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mCurrentChannelNumber:I
    invoke-static {v7}, Lcom/android/phone/CellBroadcast;->access$300(Lcom/android/phone/CellBroadcast;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/android/phone/CellBroadcast$ChannelPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 283
    move-object v0, v12

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->setSelected(Z)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v6, v0

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/phone/CellBroadcast;->dismissDialog(I)V

    .line 348
    .end local v11           #channelPref:Lcom/android/phone/CellBroadcast$ChannelPreference;
    .end local v12           #configInfo:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v16           #isChecked:Z
    :goto_2
    return-void

    .line 280
    .restart local v11       #channelPref:Lcom/android/phone/CellBroadcast$ChannelPreference;
    .restart local v12       #configInfo:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .restart local v16       #isChecked:Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v6, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mRes:Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/android/phone/CellBroadcast;->access$800(Lcom/android/phone/CellBroadcast;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0335

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 286
    .end local v11           #channelPref:Lcom/android/phone/CellBroadcast$ChannelPreference;
    .end local v12           #configInfo:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v16           #isChecked:Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v6, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mChannelNumberEdit:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/android/phone/CellBroadcast;->access$200(Lcom/android/phone/CellBroadcast;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v6, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mChannelNumberEdit:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/android/phone/CellBroadcast;->access$200(Lcom/android/phone/CellBroadcast;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 287
    :cond_3
    const-string v6, "CellBroadcast.java"

    const-string v7, "shen EDIT Save mChannelNumberEdit.getText().toString() == null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0c0331

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const-string v7, "Please enter channel number!"

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v7, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mRes:Landroid/content/res/Resources;
    invoke-static {v7}, Lcom/android/phone/CellBroadcast;->access$800(Lcom/android/phone/CellBroadcast;)Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0337

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2

    .line 293
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v6, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mConfigInfoMap:Ljava/util/Map;
    invoke-static {v6}, Lcom/android/phone/CellBroadcast;->access$600(Lcom/android/phone/CellBroadcast;)Ljava/util/Map;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v8, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mChannelNumberEdit:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/CellBroadcast;->access$200(Lcom/android/phone/CellBroadcast;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/phone/CellBroadcast;->checkTrim0(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/phone/CellBroadcast;->access$900(Lcom/android/phone/CellBroadcast;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 294
    const-string v6, "CellBroadcast.java"

    const-string v7, "shen EDIT Save mConfigInfoMap.containsKey"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0c0331

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0c0333

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v7, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mRes:Landroid/content/res/Resources;
    invoke-static {v7}, Lcom/android/phone/CellBroadcast;->access$800(Lcom/android/phone/CellBroadcast;)Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0337

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 303
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v6, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mChannelNameEdit:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/android/phone/CellBroadcast;->access$100(Lcom/android/phone/CellBroadcast;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 304
    .local v19, title:Ljava/lang/String;
    if-eqz v19, :cond_6

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_7

    .line 305
    :cond_6
    const-string v6, "CellBroadcast.java"

    const-string v7, "shen EDIT Save name == null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v6, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mChannelNumberEdit:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/android/phone/CellBroadcast;->access$200(Lcom/android/phone/CellBroadcast;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 309
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v7, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mChannelNumberEdit:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/android/phone/CellBroadcast;->access$200(Lcom/android/phone/CellBroadcast;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/phone/CellBroadcast;->checkTrim0(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/phone/CellBroadcast;->access$900(Lcom/android/phone/CellBroadcast;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 311
    .local v17, newChannelNumber:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/phone/CellBroadcast;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 312
    .restart local v5       #cr:Landroid/content/ContentResolver;
    const-string v6, "content://settings/cellbroadcast"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "channelnumber=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 313
    .restart local v13       #cursor:Landroid/database/Cursor;
    const-string v6, "_id"

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 314
    .restart local v15       #idIndex:I
    :goto_3
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 315
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 316
    .local v14, deleteId:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://settings/cellbroadcast/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 317
    const-string v6, "CellBroadcast.java"

    const-string v7, "shen EDIT Save cr.delete()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 319
    .end local v14           #deleteId:I
    :cond_8
    const-string v6, "CellBroadcast.java"

    const-string v7, "shenzhan onCreateDialog() 2, insert new value"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 321
    .restart local v21       #value:Landroid/content/ContentValues;
    const-string v6, "channelnumber"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v7, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mChannelNumberEdit:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/android/phone/CellBroadcast;->access$200(Lcom/android/phone/CellBroadcast;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v6, "channelname"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v7, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mChannelNameEdit:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/android/phone/CellBroadcast;->access$100(Lcom/android/phone/CellBroadcast;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v6, "content://settings/cellbroadcast"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v18

    .line 325
    .local v18, result:Landroid/net/Uri;
    const-string v6, "CellBroadcast.java"

    const-string v7, "shen EDIT Save Save"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v6, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mChannelListMap:Ljava/util/Map;
    invoke-static {v6}, Lcom/android/phone/CellBroadcast;->access$500(Lcom/android/phone/CellBroadcast;)Ljava/util/Map;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v7, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mCurrentChannelNumber:I
    invoke-static {v7}, Lcom/android/phone/CellBroadcast;->access$300(Lcom/android/phone/CellBroadcast;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/phone/CellBroadcast$ChannelPreference;

    .line 327
    .restart local v11       #channelPref:Lcom/android/phone/CellBroadcast$ChannelPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v6, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mConfigInfoMap:Ljava/util/Map;
    invoke-static {v6}, Lcom/android/phone/CellBroadcast;->access$600(Lcom/android/phone/CellBroadcast;)Ljava/util/Map;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v7, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mCurrentChannelNumber:I
    invoke-static {v7}, Lcom/android/phone/CellBroadcast;->access$300(Lcom/android/phone/CellBroadcast;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 330
    .restart local v12       #configInfo:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v6, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mChannelStateCheckBox:Landroid/widget/CheckBox;
    invoke-static {v6}, Lcom/android/phone/CellBroadcast;->access$700(Lcom/android/phone/CellBroadcast;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v16

    .line 332
    .restart local v16       #isChecked:Z
    move/from16 v0, v17

    move-object v1, v11

    iput v0, v1, Lcom/android/phone/CellBroadcast$ChannelPreference;->mChannelNumber:I

    .line 333
    move/from16 v0, v16

    move-object v1, v11

    iput-boolean v0, v1, Lcom/android/phone/CellBroadcast$ChannelPreference;->mChannelState:Z

    .line 334
    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v6, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mRes:Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/android/phone/CellBroadcast;->access$800(Lcom/android/phone/CellBroadcast;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0334

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-virtual {v11, v6}, Lcom/android/phone/CellBroadcast$ChannelPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 335
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v11, Lcom/android/phone/CellBroadcast$ChannelPreference;->mChannelNumber:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/android/phone/CellBroadcast$ChannelPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v6, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mChannelListMap:Ljava/util/Map;
    invoke-static {v6}, Lcom/android/phone/CellBroadcast;->access$500(Lcom/android/phone/CellBroadcast;)Ljava/util/Map;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v7, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mCurrentChannelNumber:I
    invoke-static {v7}, Lcom/android/phone/CellBroadcast;->access$300(Lcom/android/phone/CellBroadcast;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v6, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mChannelListMap:Ljava/util/Map;
    invoke-static {v6}, Lcom/android/phone/CellBroadcast;->access$500(Lcom/android/phone/CellBroadcast;)Ljava/util/Map;

    move-result-object v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    move-object v0, v12

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->setFromServiceId(I)V

    .line 340
    move-object v0, v12

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->setToServiceId(I)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v6, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mLanguageIndex:I
    invoke-static {v6}, Lcom/android/phone/CellBroadcast;->access$1000(Lcom/android/phone/CellBroadcast;)I

    move-result v6

    invoke-virtual {v12, v6}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->setFromCodeScheme(I)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v6, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mLanguageIndex:I
    invoke-static {v6}, Lcom/android/phone/CellBroadcast;->access$1000(Lcom/android/phone/CellBroadcast;)I

    move-result v6

    invoke-virtual {v12, v6}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->setToCodeScheme(I)V

    .line 343
    move-object v0, v12

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->setSelected(Z)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v6, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mConfigInfoMap:Ljava/util/Map;
    invoke-static {v6}, Lcom/android/phone/CellBroadcast;->access$600(Lcom/android/phone/CellBroadcast;)Ljava/util/Map;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v7, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mCurrentChannelNumber:I
    invoke-static {v7}, Lcom/android/phone/CellBroadcast;->access$300(Lcom/android/phone/CellBroadcast;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v6, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mConfigInfoMap:Ljava/util/Map;
    invoke-static {v6}, Lcom/android/phone/CellBroadcast;->access$600(Lcom/android/phone/CellBroadcast;)Ljava/util/Map;

    move-result-object v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v6, v0

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/phone/CellBroadcast;->dismissDialog(I)V

    goto/16 :goto_2

    .line 334
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CellBroadcast$2;->this$0:Lcom/android/phone/CellBroadcast;

    move-object v6, v0

    #getter for: Lcom/android/phone/CellBroadcast;->mRes:Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/android/phone/CellBroadcast;->access$800(Lcom/android/phone/CellBroadcast;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0335

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_4
.end method
