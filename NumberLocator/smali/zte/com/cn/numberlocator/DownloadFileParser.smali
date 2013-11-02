.class public Lzte/com/cn/numberlocator/DownloadFileParser;
.super Ljava/lang/Object;
.source "DownloadFileParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/numberlocator/DownloadFileParser$1;,
        Lzte/com/cn/numberlocator/DownloadFileParser$DbFileDispatcher;,
        Lzte/com/cn/numberlocator/DownloadFileParser$APKFileDispatcher;,
        Lzte/com/cn/numberlocator/DownloadFileParser$FileDispatcher;,
        Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;,
        Lzte/com/cn/numberlocator/DownloadFileParser$ConfirmClickListener;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_CACHE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "NumberLocator"

.field private static final TYPE_APK:I = 0x1

.field private static final TYPE_DB:I = 0x0

.field public static final URI_ACCESS_POINT:Ljava/lang/String; = "http://mobile.ztems.com/download/tmpfile/number/access_point.xml"

.field private static mFilesInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLocalUriStr:Ljava/lang/String;

.field private mRemoteUriStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lzte/com/cn/numberlocator/DownloadFileParser;->mFilesInfo:Ljava/util/ArrayList;

    .line 44
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzte/com/cn/numberlocator/DownloadFileParser;->DOWNLOAD_CACHE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "uriString"
    .parameter "remoteUri"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lzte/com/cn/numberlocator/DownloadFileParser;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lzte/com/cn/numberlocator/DownloadFileParser;->mLocalUriStr:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lzte/com/cn/numberlocator/DownloadFileParser;->mRemoteUriStr:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private ReadXmlForConfig(Landroid/net/Uri;)I
    .locals 14
    .parameter "uri"

    .prologue
    const-string v13, "NumberLocator"

    .line 167
    const/4 v2, 0x0

    .line 168
    .local v2, confParser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v11, "NumberLocator"

    const-string v11, "ReadXmlForConfig() 1"

    invoke-static {v13, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v6, 0x0

    .line 175
    .local v6, fis:Ljava/io/InputStream;
    :try_start_0
    iget-object v11, p0, Lzte/com/cn/numberlocator/DownloadFileParser;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 179
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v11

    if-gtz v11, :cond_0

    .line 180
    const-string v11, "NumberLocator"

    const-string v12, "ReadXmlForConfig() confFile not exists"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v11, -0x1

    .line 286
    :goto_0
    return v11

    .line 185
    :cond_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 187
    const/4 v11, 0x0

    invoke-interface {v2, v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 188
    const-string v11, "settings"

    invoke-direct {p0, v2, v11}, Lzte/com/cn/numberlocator/DownloadFileParser;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 189
    const-string v11, "NumberLocator"

    const-string v12, "ReadXmlForConfig() 3"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 197
    :goto_1
    if-eqz v2, :cond_5

    .line 200
    :goto_2
    :try_start_1
    invoke-direct {p0, v2}, Lzte/com/cn/numberlocator/DownloadFileParser;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 235
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .line 236
    .local v3, count:I
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 237
    .local v8, name:Ljava/lang/String;
    const-string v11, "NumberLocator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 240
    .local v9, nameValuePairs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    if-ge v7, v3, :cond_2

    .line 242
    invoke-interface {v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, attr_name:Ljava/lang/String;
    invoke-interface {v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, attr_value:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 247
    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_1
    const-string v11, "NumberLocator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getAttributeName(i) = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string v11, "NumberLocator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AttributeValue i= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6

    .line 240
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 190
    .end local v0           #attr_name:Ljava/lang/String;
    .end local v1           #attr_value:Ljava/lang/String;
    .end local v3           #count:I
    .end local v7           #i:I
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #nameValuePairs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v11

    move-object v4, v11

    .line 191
    .local v4, e:Ljava/io/FileNotFoundException;
    const-string v11, "NumberLocator"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "settingsConfParse() File not found: \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 192
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v11

    move-object v4, v11

    .line 193
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 194
    const-string v11, "NumberLocator"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "settingsConfParse() Exception while parsing \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 253
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v3       #count:I
    .restart local v7       #i:I
    .restart local v8       #name:Ljava/lang/String;
    .restart local v9       #nameValuePairs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :try_start_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_4

    .line 255
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    .line 256
    .local v10, value:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 258
    invoke-virtual {v9, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_3
    const-string v11, "NumberLocator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getText = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .end local v10           #value:Ljava/lang/String;
    :cond_4
    invoke-direct {p0, v9}, Lzte/com/cn/numberlocator/DownloadFileParser;->onGotValue(Ljava/util/HashMap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_6

    goto/16 :goto_2

    .line 266
    .end local v3           #count:I
    .end local v7           #i:I
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #nameValuePairs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_2
    move-exception v11

    move-object v4, v11

    .line 267
    .local v4, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    const-string v11, "NumberLocator"

    const-string v12, "settingsConfParse() catch XmlPullParserException"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 275
    if-eqz v6, :cond_5

    .line 278
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 286
    .end local v4           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_5
    :goto_4
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 279
    .restart local v4       #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v4

    .line 281
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 268
    .end local v4           #e:Ljava/io/IOException;
    :catch_4
    move-exception v11

    move-object v4, v11

    .line 269
    .restart local v4       #e:Ljava/io/IOException;
    :try_start_5
    const-string v11, "NumberLocator"

    const-string v12, "settingsConfParse() catch IOException e"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 275
    if-eqz v6, :cond_5

    .line 278
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_4

    .line 279
    :catch_5
    move-exception v4

    .line 281
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 270
    .end local v4           #e:Ljava/io/IOException;
    :catch_6
    move-exception v11

    move-object v5, v11

    .line 272
    .local v5, ex:Ljava/lang/IllegalStateException;
    :try_start_7
    invoke-virtual {v5}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 275
    if-eqz v6, :cond_5

    .line 278
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_4

    .line 279
    :catch_7
    move-exception v4

    .line 281
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 275
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #ex:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v11

    if-eqz v6, :cond_6

    .line 278
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 282
    :cond_6
    :goto_5
    throw v11

    .line 279
    :catch_8
    move-exception v4

    .line 281
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method

.method static synthetic access$000(Lzte/com/cn/numberlocator/DownloadFileParser;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lzte/com/cn/numberlocator/DownloadFileParser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .parameter "parser"
    .parameter "firstElementName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 293
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, type:I
    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 297
    :cond_1
    if-eq v0, v2, :cond_2

    .line 298
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 302
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 305
    :cond_3
    return-void
.end method

.method private nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, type:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 314
    :cond_1
    return-void
.end method

.method private onGotValue(Ljava/util/HashMap;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, nameValuePairs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v8, "size"

    const-string v7, "file"

    const-string v6, "apk"

    .line 318
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 346
    .end local p0
    :goto_0
    return-void

    .line 323
    .restart local p0
    :cond_0
    new-instance v0, Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;

    invoke-direct {v0, v4}, Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;-><init>(Lzte/com/cn/numberlocator/DownloadFileParser$1;)V

    .line 325
    .local v0, info:Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;
    const-string v3, "file"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "file"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v3, p0

    :goto_1
    iput-object v3, v0, Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;->name:Ljava/lang/String;

    .line 328
    const-string v3, "url"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "url"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v3, p0

    :goto_2
    iput-object v3, v0, Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;->url:Ljava/lang/String;

    .line 329
    const-string v3, "size"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "size"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v3, p0

    :goto_3
    iput-object v3, v0, Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;->size:Ljava/lang/String;

    .line 331
    const-string v3, "type"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "type"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    .line 332
    .local v1, type:Ljava/lang/String;
    :goto_4
    const-string v3, "apk"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v5

    :goto_5
    iput v3, v0, Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;->type:I

    .line 335
    iget v3, v0, Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;->type:I

    if-ne v3, v5, :cond_6

    new-instance v3, Lzte/com/cn/numberlocator/DownloadFileParser$APKFileDispatcher;

    invoke-direct {v3}, Lzte/com/cn/numberlocator/DownloadFileParser$APKFileDispatcher;-><init>()V

    :goto_6
    iput-object v3, v0, Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;->mDispatcher:Lzte/com/cn/numberlocator/DownloadFileParser$FileDispatcher;

    .line 339
    const-string v3, "version"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "version"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v2, p0

    .line 340
    .local v2, version:Ljava/lang/String;
    :goto_7
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;->version:I

    .line 341
    sget-object v3, Lzte/com/cn/numberlocator/DownloadFileParser;->mFilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    const-string v3, "NumberLocator"

    invoke-virtual {v0}, Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1           #type:Ljava/lang/String;
    .end local v2           #version:Ljava/lang/String;
    .restart local p0
    :cond_1
    move-object v3, v4

    .line 325
    goto :goto_1

    .end local p0
    :cond_2
    move-object v3, v4

    .line 328
    goto :goto_2

    .line 329
    :cond_3
    const-string v3, "100k"

    goto :goto_3

    .line 331
    :cond_4
    const-string v3, "apk"

    move-object v1, v6

    goto :goto_4

    .line 332
    .restart local v1       #type:Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    .line 335
    :cond_6
    new-instance v3, Lzte/com/cn/numberlocator/DownloadFileParser$DbFileDispatcher;

    invoke-direct {v3}, Lzte/com/cn/numberlocator/DownloadFileParser$DbFileDispatcher;-><init>()V

    goto :goto_6

    .line 339
    :cond_7
    const-string v3, "0"

    move-object v2, v3

    goto :goto_7
.end method


# virtual methods
.method public dispatch()V
    .locals 15

    .prologue
    const/4 v13, 0x0

    const v12, 0x7f06001e

    const v11, 0x1080027

    const v10, 0x104000a

    const-string v14, "NumberLocator"

    .line 59
    const-string v7, "http://mobile.ztems.com/download/tmpfile/number/access_point.xml"

    iget-object v8, p0, Lzte/com/cn/numberlocator/DownloadFileParser;->mRemoteUriStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 62
    const/4 v6, 0x0

    .line 63
    .local v6, versionCode:I
    sget-object v7, Lzte/com/cn/numberlocator/DownloadFileParser;->mFilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 65
    iget-object v7, p0, Lzte/com/cn/numberlocator/DownloadFileParser;->mLocalUriStr:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {p0, v7}, Lzte/com/cn/numberlocator/DownloadFileParser;->ReadXmlForConfig(Landroid/net/Uri;)I

    .line 67
    sget-object v7, Lzte/com/cn/numberlocator/DownloadFileParser;->mFilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 149
    .end local v6           #versionCode:I
    :cond_0
    :goto_0
    return-void

    .line 70
    .restart local v6       #versionCode:I
    :cond_1
    const/4 v2, 0x0

    .line 71
    .local v2, fileInfoToDownload:Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;
    sget-object v7, Lzte/com/cn/numberlocator/DownloadFileParser;->mFilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;

    .line 73
    .local v5, info:Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;
    iget v7, v5, Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;->type:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 77
    :try_start_0
    iget-object v7, p0, Lzte/com/cn/numberlocator/DownloadFileParser;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lzte/com/cn/numberlocator/DownloadFileParser;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget v6, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 79
    iget v7, v5, Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;->version:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v6, v7, :cond_3

    .line 81
    move-object v2, v5

    .line 92
    .end local v5           #info:Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;
    :cond_3
    :goto_1
    if-nez v2, :cond_5

    .line 95
    sget-object v7, Lzte/com/cn/numberlocator/DownloadFileParser;->mFilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;

    .line 97
    .restart local v5       #info:Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;
    iget v7, v5, Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;->type:I

    if-nez v7, :cond_4

    .line 99
    move-object v2, v5

    .line 100
    new-instance v3, Lzte/com/cn/numberlocator/NumberLocatorContentProvider$DatabaseHelper;

    iget-object v7, p0, Lzte/com/cn/numberlocator/DownloadFileParser;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 101
    .local v3, helper:Lzte/com/cn/numberlocator/NumberLocatorContentProvider$DatabaseHelper;
    invoke-virtual {v3}, Lzte/com/cn/numberlocator/NumberLocatorContentProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 102
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v6

    .line 103
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 109
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #helper:Lzte/com/cn/numberlocator/NumberLocatorContentProvider$DatabaseHelper;
    .end local v5           #info:Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;
    :cond_5
    if-eqz v2, :cond_0

    .line 111
    const-string v7, "NumberLocator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " old version code="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget v7, v2, Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;->version:I

    if-ge v6, v7, :cond_7

    .line 114
    const-string v7, "NumberLocator"

    const-string v7, "alert show"

    invoke-static {v14, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lzte/com/cn/numberlocator/DownloadFileParser;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iget v8, v2, Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;->type:I

    if-nez v8, :cond_6

    const v8, 0x7f060021

    :goto_2
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/high16 v8, 0x104

    invoke-virtual {v7, v8, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lzte/com/cn/numberlocator/DownloadFileParser$ConfirmClickListener;

    invoke-direct {v8, p0, v2}, Lzte/com/cn/numberlocator/DownloadFileParser$ConfirmClickListener;-><init>(Lzte/com/cn/numberlocator/DownloadFileParser;Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;)V

    invoke-virtual {v7, v10, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 83
    .restart local v5       #info:Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 85
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 115
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #info:Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;
    :cond_6
    const v8, 0x7f060020

    goto :goto_2

    .line 125
    :cond_7
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lzte/com/cn/numberlocator/DownloadFileParser;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f060023

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v10, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 135
    .end local v2           #fileInfoToDownload:Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #versionCode:I
    :cond_8
    sget-object v7, Lzte/com/cn/numberlocator/DownloadFileParser;->mFilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;

    .line 137
    .restart local v5       #info:Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;
    iget-object v7, p0, Lzte/com/cn/numberlocator/DownloadFileParser;->mRemoteUriStr:Ljava/lang/String;

    iget-object v8, v5, Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;->url:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 139
    iget-object v7, p0, Lzte/com/cn/numberlocator/DownloadFileParser;->mLocalUriStr:Ljava/lang/String;

    iput-object v7, v5, Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;->localUrl:Ljava/lang/String;

    .line 140
    iget-object v7, v5, Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;->mDispatcher:Lzte/com/cn/numberlocator/DownloadFileParser$FileDispatcher;

    iget-object v8, p0, Lzte/com/cn/numberlocator/DownloadFileParser;->mContext:Landroid/content/Context;

    invoke-interface {v7, v8, v5}, Lzte/com/cn/numberlocator/DownloadFileParser$FileDispatcher;->dispatch(Landroid/content/Context;Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;)V

    .line 141
    iget-object v7, p0, Lzte/com/cn/numberlocator/DownloadFileParser;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lzte/com/cn/numberlocator/Downloader;->cleanDownloadHistory(Landroid/content/Context;)V

    goto :goto_3
.end method
