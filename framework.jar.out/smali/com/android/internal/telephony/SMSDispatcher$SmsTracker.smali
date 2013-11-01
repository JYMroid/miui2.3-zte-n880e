.class public Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SmsTracker"
.end annotation


# instance fields
.field public mData:Ljava/util/HashMap;

.field public mDeliveryIntent:Landroid/app/PendingIntent;

.field public mEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

.field public mMessageRef:I

.field public mRetryCount:I

.field public mSentIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    return-void
.end method

.method private constructor <init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)V
    .locals 1
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "encoding"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    iput-object p4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;Lcom/android/internal/telephony/SMSDispatcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)V

    return-void
.end method
