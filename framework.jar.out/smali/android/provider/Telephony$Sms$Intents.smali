.class public final Landroid/provider/Telephony$Sms$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final CB_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.CB_SMS_RECEIVED"

.field public static final DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final EMERGENCY_CDMA_MESSAGE_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.EMERGENCY_CDMA_MESSAGE_RECEIVED"

.field public static final RESULT_SMS_GENERIC_ERROR:I = 0x2

.field public static final RESULT_SMS_HANDLED:I = 0x1

.field public static final RESULT_SMS_OUT_OF_MEMORY:I = 0x3

.field public static final RESULT_SMS_UNSUPPORTED:I = 0x4

.field public static final SIM_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.SIM_FULL"

.field public static final SMS_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CB_RECEIVED"

.field public static final SMS_EMERGENCY_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final SMS_REJECTED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_REJECTED"

.field public static final WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 13
    .parameter "intent"

    .prologue
    const/4 v12, -0x1

    const-string v9, "pdus"

    invoke-virtual {p0, v9}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    move-object v0, v9

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .local v3, messages:[Ljava/lang/Object;
    array-length v9, v3

    new-array v6, v9, [[B

    .local v6, pduObjs:[[B
    const-string v9, "sub_id"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .local v8, subId:I
    const-string v9, "Telephony"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " getMessagesFromIntent sub_id : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "encoding"

    invoke-virtual {p0, v9, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, encoding:I
    const/4 v2, 0x0

    .end local p0
    .local v2, i:I
    :goto_0
    array-length v9, v3

    if-ge v2, v9, :cond_0

    aget-object p0, v3, v2

    check-cast p0, [B

    check-cast p0, [B

    aput-object p0, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v9, v6

    new-array v7, v9, [[B

    .local v7, pdus:[[B
    array-length v5, v7

    .local v5, pduCount:I
    new-array v4, v5, [Landroid/telephony/SmsMessage;

    .local v4, msgs:[Landroid/telephony/SmsMessage;
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v9, v6, v2

    aput-object v9, v7, v2

    if-eq v12, v1, :cond_1

    aget-object v9, v7, v2

    invoke-static {v9, v1}, Landroid/telephony/SmsMessage;->createFromPdu([BI)Landroid/telephony/SmsMessage;

    move-result-object v9

    aput-object v9, v4, v2

    :goto_2
    aget-object v9, v4, v2

    iput v8, v9, Landroid/telephony/SmsMessage;->subId:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    aget-object v9, v7, v2

    invoke-static {v9}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v9

    aput-object v9, v4, v2

    goto :goto_2

    :cond_2
    return-object v4
.end method
