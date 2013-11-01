.class public Lcom/android/internal/telephony/IccProvider;
.super Landroid/content/ContentProvider;
.source "IccProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccProvider$AdnComparator;
    }
.end annotation


# static fields
.field private static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final ADN_SUB1:I = 0x1

.field private static final ADN_SUB2:I = 0x2

.field private static final DBG:Z = true

.field private static final FDN_SUB1:I = 0x3

.field private static final FDN_SUB2:I = 0x4

.field private static final SDN:I = 0x5

.field private static final STR_EMAILS:Ljava/lang/String; = "emails"

.field private static final STR_NUMBER:Ljava/lang/String; = "number"

.field private static final STR_NUMBER2:Ljava/lang/String; = "number2"

.field private static final STR_PIN2:Ljava/lang/String; = "pin2"

.field private static final STR_SRECID:Ljava/lang/String; = "srecid"

.field private static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final SUB1:I = 0x0

.field private static final SUB2:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RIL_IccProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mAdnComparator:Lcom/android/internal/telephony/IccProvider$AdnComparator;

.field private mSimulator:Z

.field protected phone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    const-string v3, "icc"

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "emails"

    aput-object v1, v0, v6

    const-string v1, "number2"

    aput-object v1, v0, v5

    const-string v1, "srecid"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v1, "adn"

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v1, "adn_sub1"

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v1, "adn_sub2"

    invoke-virtual {v0, v3, v1, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v1, "fdn"

    invoke-virtual {v0, v3, v1, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v1, "fdn_sub1"

    invoke-virtual {v0, v3, v1, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v1, "fdn_sub2"

    invoke-virtual {v0, v3, v1, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v1, "sdn"

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/IccProvider$AdnComparator;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccProvider$AdnComparator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccProvider;->mAdnComparator:Lcom/android/internal/telephony/IccProvider$AdnComparator;

    return-void
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 17
    .parameter "efType"
    .parameter "srecid"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "anr"
    .parameter "pin2"
    .parameter "subscription"

    .prologue
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addIccRecordToEf: efType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",num2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", emails="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subscription="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    const-string v16, ""

    .local v16, newsrecid:Ljava/lang/String;
    :try_start_0
    const-string v3, "simphonebook"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .local v2, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_0

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const/4 v3, 0x0

    aget-object v10, p5, v3

    move/from16 v3, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p2

    move-object/from16 v13, p7

    move/from16 v14, p8

    invoke-interface/range {v2 .. v14}, Lcom/android/internal/telephony/IIccPhoneBook;->updatepbRecordsInEfBySearchOnSubscription(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .end local v2           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addIccRecordToEf: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    return-object v16

    :catch_0
    move-exception v3

    move-object v15, v3

    .local v15, ex:Ljava/lang/SecurityException;
    invoke-virtual {v15}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v15           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 18
    .parameter "efType"
    .parameter "srecid"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "anr"
    .parameter "pin2"
    .parameter "subscription"

    .prologue
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteIccRecordFromEf: efType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", emails="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pin2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subscription="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    const/16 v17, 0x0

    .local v17, success:Z
    const-string v16, ""

    .local v16, newsrecid:Ljava/lang/String;
    :try_start_0
    const-string v3, "simphonebook"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .local v2, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_0

    const/4 v3, 0x0

    aget-object v6, p5, v3

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v12, p2

    move-object/from16 v13, p7

    move/from16 v14, p8

    invoke-interface/range {v2 .. v14}, Lcom/android/internal/telephony/IIccPhoneBook;->updatepbRecordsInEfBySearchOnSubscription(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .end local v2           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    const-string v3, ""

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v17, 0x1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteIccRecordFromEf: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    return v17

    :catch_0
    move-exception v3

    move-object v15, v3

    .local v15, ex:Ljava/lang/SecurityException;
    invoke-virtual {v15}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v15           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private loadFromEf(II)Ljava/util/ArrayList;
    .locals 11
    .parameter "efType"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v10, "RIL_IccProvider"

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const/4 v1, 0x0

    .local v1, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadFromEf: efType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :try_start_0
    const-string v8, "simphonebook"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v4

    .local v4, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v4, :cond_0

    invoke-interface {v4, p1, p2}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEfOnSubscription(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v4           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, N:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adnRecords.size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, newAdn:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/AdnRecord;

    .local v6, record:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v6}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #N:I
    .end local v3           #i:I
    .end local v5           #newAdn:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    .end local v6           #record:Lcom/android/internal/telephony/AdnRecord;
    :catch_0
    move-exception v8

    move-object v2, v8

    .local v2, ex:Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v2           #ex:Ljava/lang/SecurityException;
    .restart local v0       #N:I
    .restart local v3       #i:I
    .restart local v5       #newAdn:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/internal/telephony/IccProvider;->mAdnComparator:Lcom/android/internal/telephony/IccProvider$AdnComparator;

    invoke-static {v5, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadFromEf: results ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_4

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {p0, v8, v7}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/AdnRecord;Ljava/util/ArrayList;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catch_1
    move-exception v8

    move-object v2, v8

    .local v2, ex:Ljava/lang/ClassCastException;
    const-string v8, "RIL_IccProvider"

    const-string v8, "Exception occured while sorting ADN records"

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v0           #N:I
    .end local v2           #ex:Ljava/lang/ClassCastException;
    .end local v3           #i:I
    .end local v5           #newAdn:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_3
    const-string v8, "RIL_IccProvider"

    const-string v8, "Cannot load ADN records"

    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    :cond_4
    const-string v8, "loadFromEf: return results"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    return-object v7

    :catch_2
    move-exception v8

    goto/16 :goto_0
.end method

.method private loadRecord(Lcom/android/internal/telephony/AdnRecord;Ljava/util/ArrayList;)V
    .locals 13
    .parameter "record"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/AdnRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    .local v0, alphaTag:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v9

    .local v9, number:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v6

    .local v6, emails:[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v1

    .local v1, anr:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getRecid()Ljava/lang/String;

    move-result-object v10

    .local v10, srecid:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadRecord: srecid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadRecord: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .local v5, emailString:Ljava/lang/StringBuilder;
    if-eqz v6, :cond_3

    const/4 v11, 0x0

    aget-object v11, v6, v11

    if-eqz v11, :cond_2

    const/4 v11, 0x0

    aget-object v11, v6, v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_2

    move-object v2, v6

    .local v2, arr$:[Ljava/lang/String;
    array-length v8, v2

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v4, v2, v7

    .local v4, email:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Adding email:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v4           #email:Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #len$:I
    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v0           #alphaTag:Ljava/lang/String;
    .end local v1           #anr:Ljava/lang/String;
    .end local v3           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #emailString:Ljava/lang/StringBuilder;
    .end local v6           #emails:[Ljava/lang/String;
    .end local v9           #number:Ljava/lang/String;
    .end local v10           #srecid:Ljava/lang/String;
    :cond_1
    return-void

    .restart local v0       #alphaTag:Ljava/lang/String;
    .restart local v1       #anr:Ljava/lang/String;
    .restart local v3       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #emailString:Ljava/lang/StringBuilder;
    .restart local v6       #emails:[Ljava/lang/String;
    .restart local v9       #number:Ljava/lang/String;
    .restart local v10       #srecid:Ljava/lang/String;
    :cond_2
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-string v0, "RIL_IccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "inVal"

    .prologue
    const/16 v4, 0x27

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, len:I
    move-object v1, p1

    .local v1, retVal:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    sub-int v2, v0, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    sub-int v2, v0, v3

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 18
    .parameter "efType"
    .parameter "srecid"
    .parameter "oldName"
    .parameter "oldNumber"
    .parameter "oldEmails"
    .parameter "oldAnr"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "emails"
    .parameter "anr"
    .parameter "pin2"
    .parameter "subscription"

    .prologue
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateIccRecordInEf: efType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldname="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldnumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldEmails="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, p5, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldAnr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newname="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newnumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  newEmails="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, p9, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newAnr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",subscription="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    const/16 v17, 0x0

    .local v17, success:Z
    const-string v16, ""

    .local v16, newsrecid:Ljava/lang/String;
    :try_start_0
    const-string v3, "simphonebook"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .local v2, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_0

    const/4 v3, 0x0

    aget-object v6, p5, v3

    const/4 v3, 0x0

    aget-object v10, p9, v3

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p2

    move-object/from16 v13, p11

    move/from16 v14, p12

    invoke-interface/range {v2 .. v14}, Lcom/android/internal/telephony/IIccPhoneBook;->updatepbRecordsInEfBySearchOnSubscription(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .end local v2           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    const-string v3, ""

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v17, 0x1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateIccRecordInEf: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    return v17

    :catch_0
    move-exception v3

    move-object v15, v3

    .local v15, ex:Ljava/lang/SecurityException;
    invoke-virtual {v15}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v15           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 24
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    monitor-enter p0

    const/4 v10, 0x0

    .local v10, subscription:I
    :try_start_0
    const-string v2, "delete"

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    .local v15, match:I
    packed-switch v15, :pswitch_data_0

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot insert into URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v15           #match:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v15       #match:I
    :pswitch_0
    const/4 v10, 0x0

    const/16 v3, 0x6f3a

    .local v3, efType:I
    :goto_0
    :try_start_1
    const-string v5, ""

    .local v5, tag:Ljava/lang/String;
    const-string v6, ""

    .local v6, number:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, emails:[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, ""

    aput-object v4, v7, v2

    const-string v8, ""

    .local v8, anr:Ljava/lang/String;
    const-string v4, ""

    .local v4, srecid:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, pin2:Ljava/lang/String;
    const-string v2, "AND"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .local v22, tokens:[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v16, v0

    .local v16, n:I
    :cond_0
    :goto_1
    add-int/lit8 v16, v16, -0x1

    if-ltz v16, :cond_1b

    aget-object v18, v22, v16

    .local v18, param:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parsing \'"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "\'"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    const/4 v14, 0x0

    .local v14, mPair:I
    const/4 v2, 0x2

    move v0, v2

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .local v17, pair:[Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .local v19, param1:Ljava/lang/StringBuilder;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .local v20, param2:Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v12, v2, :cond_1

    move-object/from16 v0, v18

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v11, 0x3d

    if-ne v2, v11, :cond_2

    move v14, v12

    :cond_1
    const/4 v12, 0x0

    :goto_3
    if-ge v12, v14, :cond_3

    move-object/from16 v0, v18

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .local v11, c:C
    move-object/from16 v0, v19

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .end local v3           #efType:I
    .end local v4           #srecid:Ljava/lang/String;
    .end local v5           #tag:Ljava/lang/String;
    .end local v6           #number:Ljava/lang/String;
    .end local v7           #emails:[Ljava/lang/String;
    .end local v8           #anr:Ljava/lang/String;
    .end local v9           #pin2:Ljava/lang/String;
    .end local v11           #c:C
    .end local v12           #i:I
    .end local v14           #mPair:I
    .end local v16           #n:I
    .end local v17           #pair:[Ljava/lang/String;
    .end local v18           #param:Ljava/lang/String;
    .end local v19           #param1:Ljava/lang/StringBuilder;
    .end local v20           #param2:Ljava/lang/StringBuilder;
    .end local v22           #tokens:[Ljava/lang/String;
    :pswitch_1
    const/4 v10, 0x1

    const/16 v3, 0x6f3a

    .restart local v3       #efType:I
    goto/16 :goto_0

    .end local v3           #efType:I
    :pswitch_2
    const/4 v10, 0x0

    const/16 v3, 0x6f3b

    .restart local v3       #efType:I
    goto/16 :goto_0

    .end local v3           #efType:I
    :pswitch_3
    const/4 v10, 0x1

    const/16 v3, 0x6f3b

    .restart local v3       #efType:I
    goto/16 :goto_0

    .restart local v4       #srecid:Ljava/lang/String;
    .restart local v5       #tag:Ljava/lang/String;
    .restart local v6       #number:Ljava/lang/String;
    .restart local v7       #emails:[Ljava/lang/String;
    .restart local v8       #anr:Ljava/lang/String;
    .restart local v9       #pin2:Ljava/lang/String;
    .restart local v12       #i:I
    .restart local v14       #mPair:I
    .restart local v16       #n:I
    .restart local v17       #pair:[Ljava/lang/String;
    .restart local v18       #param:Ljava/lang/String;
    .restart local v19       #param1:Ljava/lang/StringBuilder;
    .restart local v20       #param2:Ljava/lang/StringBuilder;
    .restart local v22       #tokens:[Ljava/lang/String;
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v17, v2

    add-int/lit8 v12, v14, 0x1

    :goto_4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v12, v2, :cond_4

    move-object/from16 v0, v18

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .restart local v11       #c:C
    move-object/from16 v0, v20

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .end local v11           #c:C
    :cond_4
    const/4 v2, 0x1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v17, v2

    const/4 v2, 0x0

    aget-object v2, v17, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .local v13, key:Ljava/lang/String;
    const-string v23, ""

    .local v23, val:Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move v2, v0

    const/4 v11, 0x2

    if-ne v2, v11, :cond_6

    const/4 v2, 0x3

    if-eq v15, v2, :cond_5

    const/4 v2, 0x4

    if-ne v15, v2, :cond_8

    :cond_5
    const/4 v2, 0x1

    aget-object v2, v17, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    :cond_6
    :goto_5
    const-string v2, "tag"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, ""

    move-object/from16 v0, v23

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    if-eq v15, v2, :cond_7

    const/4 v2, 0x4

    if-ne v15, v2, :cond_b

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_8
    const/4 v2, 0x1

    if-eq v15, v2, :cond_9

    const/4 v2, 0x2

    if-ne v15, v2, :cond_a

    :cond_9
    const/4 v2, 0x1

    aget-object v23, v17, v2

    goto :goto_5

    :cond_a
    const/4 v2, 0x1

    aget-object v2, v17, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    goto :goto_5

    :cond_b
    move-object/from16 v5, v23

    goto/16 :goto_1

    :cond_c
    const-string v2, "number"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, ""

    move-object/from16 v0, v23

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    if-eq v15, v2, :cond_d

    const/4 v2, 0x4

    if-ne v15, v2, :cond_e

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_e
    move-object/from16 v6, v23

    goto/16 :goto_1

    :cond_f
    const-string v2, "emails"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, ""

    move-object/from16 v0, v23

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    if-eq v15, v2, :cond_10

    const/4 v2, 0x4

    if-ne v15, v2, :cond_11

    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v2

    goto/16 :goto_1

    :cond_11
    const/4 v2, 0x0

    aput-object v23, v7, v2

    goto/16 :goto_1

    :cond_12
    const-string v2, "number2"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, ""

    move-object/from16 v0, v23

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    if-eq v15, v2, :cond_13

    const/4 v2, 0x4

    if-ne v15, v2, :cond_14

    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    :cond_14
    move-object/from16 v8, v23

    goto/16 :goto_1

    :cond_15
    const-string v2, "srecid"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, ""

    move-object/from16 v0, v23

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    if-eq v15, v2, :cond_16

    const/4 v2, 0x4

    if-ne v15, v2, :cond_17

    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_17
    move-object/from16 v4, v23

    goto/16 :goto_1

    :cond_18
    const-string v2, "pin2"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    if-eq v15, v2, :cond_19

    const/4 v2, 0x4

    if-ne v15, v2, :cond_1a

    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    :cond_1a
    move-object/from16 v9, v23

    goto/16 :goto_1

    .end local v12           #i:I
    .end local v13           #key:Ljava/lang/String;
    .end local v14           #mPair:I
    .end local v17           #pair:[Ljava/lang/String;
    .end local v18           #param:Ljava/lang/String;
    .end local v19           #param1:Ljava/lang/StringBuilder;
    .end local v20           #param2:Ljava/lang/StringBuilder;
    .end local v23           #val:Ljava/lang/String;
    :cond_1b
    const/16 v2, 0x6f3b

    if-ne v3, v2, :cond_1c

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x0

    :goto_6
    monitor-exit p0

    return v2

    :cond_1c
    move-object/from16 v2, p0

    :try_start_2
    invoke-direct/range {v2 .. v10}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v21

    .local v21, success:Z
    if-nez v21, :cond_1d

    const/4 v2, 0x0

    goto :goto_6

    :cond_1d
    const/4 v2, 0x1

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 21
    .parameter "url"
    .parameter "initialValues"

    .prologue
    monitor-enter p0

    const/4 v9, 0x0

    .local v9, pin2:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, subscription:I
    :try_start_0
    const-string v2, "insert"

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v16

    .local v16, match:I
    packed-switch v16, :pswitch_data_0

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot insert into URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v16           #match:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v16       #match:I
    :pswitch_0
    const/16 v3, 0x6f3a

    .local v3, efType:I
    :try_start_1
    const-string v2, "pin2"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "sub_id"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "sub_id"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :goto_0
    const-string v2, "tag"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, tag:Ljava/lang/String;
    const-string v2, "number"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, number:Ljava/lang/String;
    const-string v2, "emails"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, email:Ljava/lang/String;
    const-string v2, "number2"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, anr:Ljava/lang/String;
    const-string v2, "srecid"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, srecid:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, emails:[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v12, v7, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .local v17, newrsrecid:Ljava/lang/String;
    const-string v2, ""

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_9

    :try_start_2
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v15

    .local v15, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v15, :cond_8

    const/4 v2, 0x3

    new-array v14, v2, [I

    .local v14, ext1recordSize:[I
    const/4 v2, 0x3

    move v0, v2

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .local v18, recordSize:[I
    const/16 v2, 0x6f3a

    if-ne v3, v2, :cond_6

    const/16 v2, 0x6f3a

    invoke-interface {v15, v2, v10}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSizeOnSubscription(II)[I

    move-result-object v18

    if-eqz v18, :cond_6

    const/16 v2, 0x6f3a

    invoke-interface {v15, v2, v10}, Lcom/android/internal/telephony/IIccPhoneBook;->getSimSizeOnSubscription(II)I

    move-result v2

    const/4 v4, 0x2

    aget v4, v18, v4

    .end local v4           #srecid:Ljava/lang/String;
    if-lt v2, v4, :cond_0

    const/4 v2, 0x2

    aget v2, v18, v2

    if-nez v2, :cond_1

    :cond_0
    const/16 v2, 0x6f3a

    invoke-interface {v15, v2, v10}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimAdnRecordsSizeOnSubscription(II)I

    move-result v2

    const/16 v4, 0x6f3a

    invoke-interface {v15, v4, v10}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimSizeOnSubscription(II)I

    move-result v4

    if-lt v2, v4, :cond_6

    const/16 v2, 0x6f3a

    invoke-interface {v15, v2, v10}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimSizeOnSubscription(II)I

    move-result v2

    if-eqz v2, :cond_6

    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/Full/"

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v11, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v19

    .local v19, resultUri:Landroid/net/Uri;
    move-object/from16 v20, v19

    .end local v3           #efType:I
    .end local v14           #ext1recordSize:[I
    .end local v15           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v18           #recordSize:[I
    .end local v19           #resultUri:Landroid/net/Uri;
    .local v20, resultUri:Landroid/net/Uri;
    :goto_1
    monitor-exit p0

    return-object v20

    .end local v5           #tag:Ljava/lang/String;
    .end local v6           #number:Ljava/lang/String;
    .end local v7           #emails:[Ljava/lang/String;
    .end local v8           #anr:Ljava/lang/String;
    .end local v11           #buf:Ljava/lang/StringBuilder;
    .end local v12           #email:Ljava/lang/String;
    .end local v17           #newrsrecid:Ljava/lang/String;
    .end local v20           #resultUri:Landroid/net/Uri;
    .restart local v3       #efType:I
    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_0

    .end local v3           #efType:I
    :pswitch_1
    const/16 v3, 0x6f3a

    .restart local v3       #efType:I
    :try_start_3
    const-string v2, "pin2"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "sub_id"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "sub_id"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto/16 :goto_0

    :cond_3
    const/4 v10, 0x1

    goto/16 :goto_0

    .end local v3           #efType:I
    :pswitch_2
    const/16 v3, 0x6f3b

    .restart local v3       #efType:I
    const-string v2, "pin2"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "sub_id"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "sub_id"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto/16 :goto_0

    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    .end local v3           #efType:I
    :pswitch_3
    const/16 v3, 0x6f3b

    .restart local v3       #efType:I
    const-string v2, "pin2"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "sub_id"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "sub_id"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v10

    goto/16 :goto_0

    :cond_5
    const/4 v10, 0x1

    goto/16 :goto_0

    .restart local v5       #tag:Ljava/lang/String;
    .restart local v6       #number:Ljava/lang/String;
    .restart local v7       #emails:[Ljava/lang/String;
    .restart local v8       #anr:Ljava/lang/String;
    .restart local v12       #email:Ljava/lang/String;
    .restart local v14       #ext1recordSize:[I
    .restart local v15       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .restart local v17       #newrsrecid:Ljava/lang/String;
    .restart local v18       #recordSize:[I
    :cond_6
    const/16 v2, 0x6f3b

    if-ne v3, v2, :cond_8

    const/16 v2, 0x6f3b

    :try_start_4
    invoke-interface {v15, v2, v10}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSizeOnSubscription(II)[I

    move-result-object v18

    if-eqz v18, :cond_8

    const/16 v2, 0x6f3b

    invoke-interface {v15, v2, v10}, Lcom/android/internal/telephony/IIccPhoneBook;->getSimSizeOnSubscription(II)I

    move-result v2

    const/4 v3, 0x2

    aget v3, v18, v3

    .end local v3           #efType:I
    if-lt v2, v3, :cond_7

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/Full/"

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v11       #buf:Ljava/lang/StringBuilder;
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .restart local v19       #resultUri:Landroid/net/Uri;
    move-object/from16 v20, v19

    .end local v19           #resultUri:Landroid/net/Uri;
    .restart local v20       #resultUri:Landroid/net/Uri;
    goto/16 :goto_1

    .end local v11           #buf:Ljava/lang/StringBuilder;
    .end local v20           #resultUri:Landroid/net/Uri;
    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_8

    const/16 v2, 0x6f4b

    invoke-interface {v15, v2, v10}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSizeOnSubscription(II)[I

    move-result-object v14

    if-eqz v14, :cond_8

    const/16 v2, 0x6f3b

    invoke-interface {v15, v2, v10}, Lcom/android/internal/telephony/IIccPhoneBook;->getExtensionSizeOnSubscription(II)I

    move-result v2

    const/4 v3, 0x2

    aget v3, v14, v3

    if-lt v2, v3, :cond_8

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/Full/"

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v11       #buf:Ljava/lang/StringBuilder;
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v19

    .restart local v19       #resultUri:Landroid/net/Uri;
    move-object/from16 v20, v19

    .end local v19           #resultUri:Landroid/net/Uri;
    .restart local v20       #resultUri:Landroid/net/Uri;
    goto/16 :goto_1

    .end local v11           #buf:Ljava/lang/StringBuilder;
    .end local v14           #ext1recordSize:[I
    .end local v15           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v18           #recordSize:[I
    .end local v20           #resultUri:Landroid/net/Uri;
    :catch_0
    move-exception v2

    move-object v13, v2

    .local v13, ex:Ljava/lang/SecurityException;
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .end local v13           #ex:Ljava/lang/SecurityException;
    :cond_8
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/Error/"

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v11       #buf:Ljava/lang/StringBuilder;
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .restart local v19       #resultUri:Landroid/net/Uri;
    move-object/from16 v20, v19

    .end local v19           #resultUri:Landroid/net/Uri;
    .restart local v20       #resultUri:Landroid/net/Uri;
    goto/16 :goto_1

    .end local v11           #buf:Ljava/lang/StringBuilder;
    .end local v20           #resultUri:Landroid/net/Uri;
    .restart local v3       #efType:I
    .restart local v4       #srecid:Ljava/lang/String;
    :cond_9
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/"

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v11       #buf:Ljava/lang/StringBuilder;
    packed-switch v16, :pswitch_data_1

    :goto_3
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .restart local v19       #resultUri:Landroid/net/Uri;
    move-object/from16 v20, v19

    .end local v19           #resultUri:Landroid/net/Uri;
    .restart local v20       #resultUri:Landroid/net/Uri;
    goto/16 :goto_1

    .end local v20           #resultUri:Landroid/net/Uri;
    :pswitch_4
    const-string v2, "adn_sub1/"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_5
    const-string v2, "adn_sub2/"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_6
    const-string v2, "fdn_sub1/"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_7
    const-string v2, "fdn_sub2/"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .end local v3           #efType:I
    .end local v4           #srecid:Ljava/lang/String;
    .end local v11           #buf:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v2

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const-string v1, "ro.product.device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, device:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccProvider;->mSimulator:Z

    :goto_0
    return v2

    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccProvider;->mSimulator:Z

    goto :goto_0
.end method

.method public declared-synchronized query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    const-string v2, "RIL_IccProvider"

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const-string v2, "RIL_IccProvider"

    const-string v3, "query  "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccProvider;->mSimulator:Z

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_0
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x6f3a

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "RIL_IccProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ADN Records Result:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Subscription ::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v2, Lcom/android/internal/telephony/ArrayListCursor;

    sget-object v3, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/android/internal/telephony/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_2
    const-string v2, "RIL_IccProvider"

    const-string v3, "ICC card is not present for subscription ::0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x6f3a

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "RIL_IccProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ADN Records Result:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Subscription ::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "RIL_IccProvider"

    const-string v3, "ICC card is not present for subscription ::1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    const/16 v2, 0x6f3b

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    const/16 v2, 0x6f3b

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :pswitch_4
    const/16 v2, 0x6f49

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .restart local v1       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "Ron Stevens/H"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "512-555-5038"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "Ron Stevens/M"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "512-555-8305"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "Melissa Owens"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "512-555-8305"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "Directory Assistence"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "411"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public declared-synchronized update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 19
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    monitor-enter p0

    const/4 v13, 0x0

    .local v13, pin2:Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, subscription:I
    :try_start_0
    const-string v2, "update"

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v16

    .local v16, match:I
    packed-switch v16, :pswitch_data_0

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot insert into URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v16           #match:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v16       #match:I
    :pswitch_0
    const/16 v3, 0x6f3a

    .local v3, efType:I
    :try_start_1
    const-string v2, "pin2"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "sub_id"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "sub_id"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    :goto_0
    const-string v2, "tag"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, tag:Ljava/lang/String;
    const-string v2, "number"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, number:Ljava/lang/String;
    const-string v2, "newTag"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, newTag:Ljava/lang/String;
    const-string v2, "newNumber"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, newNumber:Ljava/lang/String;
    const-string v2, "emails"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .local v15, email:Ljava/lang/String;
    const-string v2, "number2"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, anr:Ljava/lang/String;
    const-string v2, "newEmails"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .local v17, newEmail:Ljava/lang/String;
    const-string v2, "newNumber2"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, newAnr:Ljava/lang/String;
    const-string v2, "srecid"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, srecid:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, oldEmails:[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v15, v7, v2

    const/4 v11, 0x0

    .local v11, newEmails:[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v11, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v17, v11, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v14}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v18

    .local v18, success:Z
    if-nez v18, :cond_4

    const/4 v2, 0x0

    :goto_1
    monitor-exit p0

    return v2

    .end local v4           #srecid:Ljava/lang/String;
    .end local v5           #tag:Ljava/lang/String;
    .end local v6           #number:Ljava/lang/String;
    .end local v7           #oldEmails:[Ljava/lang/String;
    .end local v8           #anr:Ljava/lang/String;
    .end local v9           #newTag:Ljava/lang/String;
    .end local v10           #newNumber:Ljava/lang/String;
    .end local v11           #newEmails:[Ljava/lang/String;
    .end local v12           #newAnr:Ljava/lang/String;
    .end local v15           #email:Ljava/lang/String;
    .end local v17           #newEmail:Ljava/lang/String;
    .end local v18           #success:Z
    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    .end local v3           #efType:I
    :pswitch_1
    const/16 v3, 0x6f3a

    .restart local v3       #efType:I
    :try_start_2
    const-string v2, "pin2"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "sub_id"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "sub_id"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    goto/16 :goto_0

    :cond_1
    const/4 v14, 0x1

    goto/16 :goto_0

    .end local v3           #efType:I
    :pswitch_2
    const/16 v3, 0x6f3b

    .restart local v3       #efType:I
    const-string v2, "pin2"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "sub_id"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "sub_id"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    goto/16 :goto_0

    :cond_2
    const/4 v14, 0x0

    goto/16 :goto_0

    .end local v3           #efType:I
    :pswitch_3
    const/16 v3, 0x6f3b

    .restart local v3       #efType:I
    const-string v2, "pin2"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "sub_id"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "sub_id"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v14

    goto/16 :goto_0

    :cond_3
    const/4 v14, 0x1

    goto/16 :goto_0

    .restart local v4       #srecid:Ljava/lang/String;
    .restart local v5       #tag:Ljava/lang/String;
    .restart local v6       #number:Ljava/lang/String;
    .restart local v7       #oldEmails:[Ljava/lang/String;
    .restart local v8       #anr:Ljava/lang/String;
    .restart local v9       #newTag:Ljava/lang/String;
    .restart local v10       #newNumber:Ljava/lang/String;
    .restart local v11       #newEmails:[Ljava/lang/String;
    .restart local v12       #newAnr:Ljava/lang/String;
    .restart local v15       #email:Ljava/lang/String;
    .restart local v17       #newEmail:Ljava/lang/String;
    .restart local v18       #success:Z
    :cond_4
    const/4 v2, 0x1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
