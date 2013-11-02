.class public Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/T9SearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "T9SearchItem"
.end annotation


# instance fields
.field public mContactId:J

.field public mData:Ljava/lang/String;

.field public mDataId:J

.field public mDisplayName:Ljava/lang/String;

.field public mDisplayString:Ljava/lang/String;

.field public mKeyType:J

.field public mNormalizedData:Ljava/lang/String;

.field public mPhotoId:J

.field public mRawContactId:J

.field public mT9Key:Ljava/lang/String;

.field public mTimesContacted:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    return-void
.end method

.method public constructor <init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .parameter "dataId"
    .parameter "contactId"
    .parameter "rawContactId"
    .parameter "data"
    .parameter "normalizedData"
    .parameter "displayName"
    .parameter "photoId"
    .parameter "timesContacted"
    .parameter "t9Key"
    .parameter "displayString"
    .parameter "keyType"

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-wide p1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDataId:J

    .line 159
    iput-wide p3, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mContactId:J

    .line 160
    iput-wide p5, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mRawContactId:J

    .line 161
    iput-object p7, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mData:Ljava/lang/String;

    .line 162
    iput-object p8, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mNormalizedData:Ljava/lang/String;

    .line 163
    iput-object p9, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayName:Ljava/lang/String;

    .line 164
    iput-wide p10, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mPhotoId:J

    .line 165
    iput-wide p12, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mTimesContacted:J

    .line 166
    move-object/from16 v0, p14

    move-object v1, p0

    iput-object v0, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mT9Key:Ljava/lang/String;

    .line 167
    move-object/from16 v0, p15

    move-object v1, p0

    iput-object v0, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayString:Ljava/lang/String;

    .line 168
    move-wide/from16 v0, p16

    move-object v2, p0

    iput-wide v0, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mKeyType:J

    .line 169
    return-void
.end method

.method public constructor <init>(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->clone(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    .line 150
    return-void
.end method


# virtual methods
.method public clone(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 177
    if-nez p1, :cond_0

    .line 192
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-wide v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDataId:J

    iput-wide v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDataId:J

    .line 182
    iget-wide v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mContactId:J

    iput-wide v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mContactId:J

    .line 183
    iget-wide v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mRawContactId:J

    iput-wide v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mRawContactId:J

    .line 184
    iget-object v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mData:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mData:Ljava/lang/String;

    .line 185
    iget-object v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mNormalizedData:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mNormalizedData:Ljava/lang/String;

    .line 186
    iget-object v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayName:Ljava/lang/String;

    .line 187
    iget-wide v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mPhotoId:J

    iput-wide v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mPhotoId:J

    .line 188
    iget-wide v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mTimesContacted:J

    iput-wide v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mTimesContacted:J

    .line 189
    iget-object v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mT9Key:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mT9Key:Ljava/lang/String;

    .line 190
    iget-object v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayString:Ljava/lang/String;

    .line 191
    iget-wide v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mKeyType:J

    iput-wide v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mKeyType:J

    goto :goto_0
.end method
