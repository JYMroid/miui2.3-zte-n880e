.class public Lcom/android/internal/telephony/WspTypeDecoder;
.super Ljava/lang/Object;
.source "WspTypeDecoder.java"


# static fields
.field public static final CONTENT_MIME_TYPE_B_DRM_RIGHTS_WBXML:Ljava/lang/String; = "application/vnd.oma.drm.rights+wbxml"

.field public static final CONTENT_MIME_TYPE_B_DRM_RIGHTS_XML:Ljava/lang/String; = "application/vnd.oma.drm.rights+xml"

.field public static final CONTENT_MIME_TYPE_B_EMN_WBXML:Ljava/lang/String; = "application/vnd.wap.emn+wbxml"

.field public static final CONTENT_MIME_TYPE_B_MMS:Ljava/lang/String; = "application/vnd.wap.mms-message"

.field public static final CONTENT_MIME_TYPE_B_PUSH_CO:Ljava/lang/String; = "application/vnd.wap.coc"

.field public static final CONTENT_MIME_TYPE_B_PUSH_CONNECTIVITY_WBXML:Ljava/lang/String; = "application/vnd.wap.connectivity-wbxml"

.field public static final CONTENT_MIME_TYPE_B_PUSH_SI:Ljava/lang/String; = "application/vnd.wap.sic"

.field public static final CONTENT_MIME_TYPE_B_PUSH_SL:Ljava/lang/String; = "application/vnd.wap.slc"

.field public static final CONTENT_MIME_TYPE_B_PUSH_SL_DCD:Ljava/lang/String; = "application/x-oma-DCD:DCD.ua"

.field public static final CONTENT_MIME_TYPE_B_PUSH_SYNCML_NOTI:Ljava/lang/String; = "application/vnd.syncml.notification"

.field public static final CONTENT_MIME_TYPE_B_PUSH_SYNML_NOTIFICATION:Ljava/lang/String; = "application/vnd.syncml.notification"

.field public static final CONTENT_MIME_TYPE_B_SUPL_INIT:Ljava/lang/String; = "application/vnd.omaloc-supl-init"

.field public static final CONTENT_MIME_TYPE_B_VND_DOCOMO_PF:Ljava/lang/String; = "application/vnd.docomo.pf"

.field public static final CONTENT_MIME_TYPE_B_X_HDML:Ljava/lang/String; = "text/x-hdml"

.field public static final CONTENT_TYPE_B_DRM_RIGHTS_WBXML:I = 0x4b

.field public static final CONTENT_TYPE_B_DRM_RIGHTS_XML:I = 0x4a

.field public static final CONTENT_TYPE_B_EMN_WBXML:I = 0x30a

.field public static final CONTENT_TYPE_B_MMS:I = 0x3e

.field public static final CONTENT_TYPE_B_PUSH_CO:I = 0x32

.field public static final CONTENT_TYPE_B_PUSH_CONNECTIVITY_WBXML:I = 0x36

.field public static final CONTENT_TYPE_B_PUSH_SI:I = 0x2e

.field public static final CONTENT_TYPE_B_PUSH_SL:I = 0x30

.field public static final CONTENT_TYPE_B_PUSH_SYNCML_NOTI:I = 0x44

.field public static final CONTENT_TYPE_B_PUSH_SYNML_NOTIFICATION:I = 0x44

.field public static final CONTENT_TYPE_B_SUPL_INIT:I = 0x312

.field public static final CONTENT_TYPE_B_VND_DOCOMO_PF:I = 0x310

.field public static final CONTENT_TYPE_B_X_HDML:I = 0x4

.field public static final EXECUTE_CACHE:I = 0x7

.field public static final EXECUTE_HIGH:I = 0x6

.field public static final EXECUTE_LOW:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "WspTypeDecoder"

.field public static final PARAMETER_ID_X_WAP_APPLICATION_ID:I = 0x2f

.field public static final PDU_TYPE_CLASS:I = 0x12

.field public static final PDU_TYPE_CONFIRMED_PUSH:I = 0x7

.field public static final PDU_TYPE_CREATED:I = 0xa

.field public static final PDU_TYPE_DM_PUSH:I = 0xf0

.field public static final PDU_TYPE_ITEM:I = 0x8

.field public static final PDU_TYPE_PUSH:I = 0x6

.field public static final PDU_TYPE_SI:I = 0x5

.field public static final PDU_TYPE_SI_EXPIRES:I = 0x10

.field public static final PDU_TYPE_SI_ID:I = 0x11

.field public static final SIGNAL_DELETE:I = 0x9

.field public static final SIGNAL_HIGH:I = 0x8

.field public static final SIGNAL_LOW:I = 0x6

.field public static final SIGNAL_MEDIUM:I = 0x7

.field public static final SIGNAL_NONE:I = 0x5

.field private static final WAP_PDU_LENGTH_QUOTE:I = 0x1f

.field private static final WAP_PDU_SHORT_LENGTH_MAX:I = 0x1e


# instance fields
.field CharSet:J

.field NotifyText:Ljava/lang/String;

.field action:I

.field contentParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field created:J

.field dataLength:I

.field href:Ljava/lang/String;

.field si_expired:J

.field si_id:Ljava/lang/String;

.field stringValue:Ljava/lang/String;

.field unsigned32bit:J

.field wspData:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .parameter "pdu"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    return-void
.end method


# virtual methods
.method public decodeConstrainedEncoding(I)Z
    .locals 2
    .parameter "startIndex"

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeShortInteger(I)Z

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeExtensionMedia(I)Z

    move-result v0

    goto :goto_0
.end method

.method public decodeContentLength(I)Z
    .locals 1
    .parameter "startIndex"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v0

    return v0
.end method

.method public decodeContentLocation(I)Z
    .locals 1
    .parameter "startIndex"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v0

    return v0
.end method

.method public decodeContentType(I)Z
    .locals 5
    .parameter "startIndex"

    .prologue
    const/4 v4, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeValueLength(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeConstrainedEncoding(I)Z

    move-result v3

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    .local v2, mediaPrefixLength:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v0

    .local v0, mediaFieldLength:J
    add-int v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v3

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    move v3, v4

    goto :goto_0

    :cond_1
    add-int v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeExtensionMedia(I)Z

    move-result v3

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    move v3, v4

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public decodeExtensionMedia(I)Z
    .locals 7
    .parameter "startIndex"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    move v0, p1

    .local v0, index:I
    iput v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    array-length v1, v3

    .local v1, length:I
    if-ge v0, v1, :cond_0

    move v2, v6

    .local v2, rtrn:Z
    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v3, v3, v0

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2           #rtrn:Z
    :cond_0
    move v2, v4

    goto :goto_0

    .restart local v2       #rtrn:Z
    :cond_1
    sub-int v3, v0, p1

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    iget v5, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    sub-int/2addr v5, v6

    invoke-direct {v3, v4, p1, v5}, Ljava/lang/String;-><init>([BII)V

    iput-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    return v2
.end method

.method public decodeIntegerValue(I)Z
    .locals 2
    .parameter "startIndex"

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeShortInteger(I)Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeLongInteger(I)Z

    move-result v0

    goto :goto_0
.end method

.method public decodeLongInteger(I)Z
    .locals 6
    .parameter "startIndex"

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v2, v2, p1

    and-int/lit16 v1, v2, 0xff

    .local v1, lengthMultiOctet:I
    const/16 v2, 0x1e

    if-le v1, v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    if-gt v0, v1, :cond_1

    iget-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    add-int v5, p1, v0

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public decodeShortInteger(I)Z
    .locals 3
    .parameter "startIndex"

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v0, v0, p1

    and-int/lit8 v0, v0, 0x7f

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    iput v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    move v0, v2

    goto :goto_0
.end method

.method public decodeTextString(I)Z
    .locals 7
    .parameter "startIndex"

    .prologue
    const/4 v6, 0x1

    move v0, p1

    .local v0, index:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sub-int v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v1, v1, p1

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    :goto_1
    return v6

    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    iget v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    sub-int/2addr v3, v6

    invoke-direct {v1, v2, p1, v3}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    goto :goto_1
.end method

.method public decodeTextStringLatin1(I)Z
    .locals 8
    .parameter "startIndex"

    .prologue
    const/4 v7, 0x1

    const-string v2, "ISO-8859-1"

    move v1, p1

    .local v1, index:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v2, v2, v1

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sub-int v2, v1, p1

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v2, v2, p1

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    add-int/lit8 v4, p1, 0x1

    iget v5, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    const-string v6, "ISO-8859-1"

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    :goto_1
    move v2, v7

    :goto_2
    return v2

    :cond_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    iget v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    sub-int/2addr v4, v7

    const-string v5, "ISO-8859-1"

    invoke-direct {v2, v3, p1, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public decodeTextStringUsAscII(I)Z
    .locals 8
    .parameter "startIndex"

    .prologue
    const/4 v7, 0x1

    const-string v2, "US-ASCII"

    move v1, p1

    .local v1, index:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v2, v2, v1

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sub-int v2, v1, p1

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v2, v2, p1

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    add-int/lit8 v4, p1, 0x1

    iget v5, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    const-string v6, "US-ASCII"

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    :goto_1
    move v2, v7

    :goto_2
    return v2

    :cond_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    iget v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    sub-int/2addr v4, v7

    const-string v5, "US-ASCII"

    invoke-direct {v2, v3, p1, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public decodeTimeInteger(I)Z
    .locals 13
    .parameter "startIndex"

    .prologue
    move v2, p1

    .local v2, index:I
    iget-object v10, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .local v3, index:I
    aget-byte v10, v10, v2

    and-int/lit16 v4, v10, 0xff

    .local v4, len:I
    add-int/lit8 v10, v4, 0x1

    iput v10, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    const/4 v10, 0x2

    if-lt v4, v10, :cond_0

    const/4 v10, 0x7

    if-le v4, v10, :cond_1

    :cond_0
    const/4 v10, 0x0

    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    :goto_0
    return v10

    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_1
    const/4 v9, 0x0

    .local v9, year:I
    const/4 v6, 0x0

    .local v6, month:I
    const/4 v0, 0x0

    .local v0, day:I
    const/4 v1, 0x0

    .local v1, hour:I
    const/4 v5, 0x0

    .local v5, minute:I
    const/4 v7, 0x0

    .local v7, second:I
    const/4 v10, 0x2

    if-lt v4, v10, :cond_2

    iget-object v10, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aget-byte v10, v10, v3

    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v9

    const-string v10, "WspTypeDecoder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "decodeTimeInteger year1:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-int/lit8 v10, v9, 0x64

    iget-object v11, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .restart local v3       #index:I
    aget-byte v11, v11, v2

    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v11

    add-int v9, v10, v11

    :cond_2
    const/4 v10, 0x3

    if-lt v4, v10, :cond_3

    iget-object v10, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aget-byte v10, v10, v3

    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v6

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_3
    const/4 v10, 0x4

    if-lt v4, v10, :cond_4

    iget-object v10, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aget-byte v10, v10, v3

    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v0

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_4
    const/4 v10, 0x5

    if-lt v4, v10, :cond_5

    iget-object v10, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aget-byte v10, v10, v3

    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v1

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_5
    const/4 v10, 0x6

    if-lt v4, v10, :cond_6

    iget-object v10, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aget-byte v10, v10, v3

    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v5

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_6
    const/4 v10, 0x7

    if-ne v4, v10, :cond_7

    iget-object v10, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aget-byte v10, v10, v3

    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v7

    :goto_1
    new-instance v8, Landroid/text/format/Time;

    const-string v10, "UTC"

    invoke-direct {v8, v10}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .local v8, time:Landroid/text/format/Time;
    iput v9, v8, Landroid/text/format/Time;->year:I

    const/4 v10, 0x1

    sub-int v10, v6, v10

    iput v10, v8, Landroid/text/format/Time;->month:I

    iput v0, v8, Landroid/text/format/Time;->monthDay:I

    iput v1, v8, Landroid/text/format/Time;->hour:I

    iput v5, v8, Landroid/text/format/Time;->minute:I

    iput v7, v8, Landroid/text/format/Time;->second:I

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    const/4 v10, 0x1

    goto/16 :goto_0

    .end local v2           #index:I
    .end local v8           #time:Landroid/text/format/Time;
    .restart local v3       #index:I
    :cond_7
    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_1
.end method

.method public decodeUintvarInteger(I)Z
    .locals 6
    .parameter "startIndex"

    .prologue
    const/4 v5, 0x7

    move v0, p1

    .local v0, index:I
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    sub-int v1, v0, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    iget-wide v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    shl-long/2addr v1, v5

    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v3, v3, v0

    and-int/lit8 v3, v3, 0x7f

    int-to-long v3, v3

    or-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    shl-long/2addr v1, v5

    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v3, v3, v0

    and-int/lit8 v3, v3, 0x7f

    int-to-long v3, v3

    or-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    sub-int v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public decodeUrlString(I)Z
    .locals 12
    .parameter "startIndex"

    .prologue
    move v1, p1

    .local v1, index:I
    const/4 v0, 0x0

    .local v0, Attr_Tag:I
    const/4 v2, 0x0

    .local v2, str_len1:I
    const/4 v3, 0x0

    .local v3, str_len2:I
    const-string v7, "WspTypeDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeUrlString index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    :goto_0
    iget-object v7, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v7, v7, v1

    if-eqz v7, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v7, v7, p1

    const/16 v8, 0x7f

    if-ne v7, v8, :cond_1

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    add-int/lit8 v9, p1, 0x1

    sub-int v10, v1, p1

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-direct {v7, v8, v9, v10}, Ljava/lang/String;-><init>([BII)V

    iput-object v7, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    :goto_1
    const-string v7, "WspTypeDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeTextString stringValue: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WspTypeDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeUrlString index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "str_len1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WspTypeDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeUrlString dataLength: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    move v5, v1

    .local v5, tempIndex:I
    const-string v7, "WspTypeDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeUrlString wspData[index] & 0xFF: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v7, v7, v5

    and-int/lit16 v6, v7, 0xff

    .local v6, tempInt:I
    const-string v7, "WspTypeDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeUrlString wspData[index] & 0xFF: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v7, v7, v5

    and-int/lit16 v7, v7, 0xff

    packed-switch v7, :pswitch_data_0

    :goto_2
    const/4 v7, 0x1

    if-ne v0, v7, :cond_4

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v5, 0x1

    const-string v7, "WspTypeDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeUrlString tempIndex: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "wspData[tempIndex]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v9, v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v7, v7, v5

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v5, 0x1

    const-string v7, "WspTypeDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeUrlString wspData[tempIndex] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v9, v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_3
    iget-object v7, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v7, v7, v5

    if-eqz v7, :cond_2

    add-int/lit8 v5, v5, 0x1

    const-string v7, "WspTypeDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeUrlString wspData[index] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v5           #tempIndex:I
    .end local v6           #tempInt:I
    :cond_1
    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    sub-int v9, v1, p1

    invoke-direct {v7, v8, p1, v9}, Ljava/lang/String;-><init>([BII)V

    iput-object v7, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    goto/16 :goto_1

    .restart local v5       #tempIndex:I
    .restart local v6       #tempInt:I
    :pswitch_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    const-string v9, ".com/"

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    const/4 v0, 0x1

    goto/16 :goto_2

    :pswitch_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    const-string v9, ".edu/"

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    const/4 v0, 0x1

    goto/16 :goto_2

    :pswitch_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    const-string v9, ".net/"

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    const/4 v0, 0x1

    goto/16 :goto_2

    :pswitch_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    const-string v9, ".org/"

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_2
    new-instance v4, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    invoke-direct {v4, v7, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .local v4, string2:Ljava/lang/String;
    add-int/2addr v1, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    .end local v4           #string2:Ljava/lang/String;
    :cond_3
    const-string v7, "WspTypeDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeUrlString Attr_Tag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "str_len1 ::"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WspTypeDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeUrlString Attr_Tag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "str_len2 ::"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v7, "WspTypeDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeUrlString stringValue: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "index:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WspTypeDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeUrlString Attr_Tag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-int v7, v1, p1

    iput v7, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    const-string v7, "WspTypeDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeUrlString dataLength: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x85
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public decodeValueLength(I)Z
    .locals 3
    .parameter "startIndex"

    .prologue
    const/16 v1, 0x1f

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v0, v0, p1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v0, v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    iput v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    iget v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    goto :goto_1
.end method

.method public decodeXWapApplicationId(I)Z
    .locals 2
    .parameter "startIndex"

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v0

    goto :goto_0
.end method

.method public decodeXWapContentURI(I)Z
    .locals 1
    .parameter "startIndex"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v0

    return v0
.end method

.method public decodeXWapInitiatorURI(I)Z
    .locals 1
    .parameter "startIndex"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v0

    return v0
.end method

.method public getContentParameters()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->contentParameters:Ljava/util/HashMap;

    return-object v0
.end method

.method public getDecodedDataLength()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    return v0
.end method

.method public getValue32()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    return-wide v0
.end method

.method public getValueString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    return-object v0
.end method
