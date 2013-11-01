.class public Landroid/util/ZteEventLog/tools/FileTools;
.super Ljava/lang/Object;
.source "FileTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AnsiWrite(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "fileName"
    .parameter "content"

    .prologue
    const/4 v5, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, f:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Landroid/util/ZteEventLog/tools/FileTools;->AuthFileOrDir(Ljava/lang/String;)Z

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v5

    :goto_0
    return v3

    :cond_1
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v4, "GB2312"

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .local v2, osw:Ljava/io/OutputStreamWriter;
    invoke-virtual {v2, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    goto :goto_0

    .end local v2           #osw:Ljava/io/OutputStreamWriter;
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e1:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v3, v5

    goto :goto_0
.end method

.method public static AnsiWrite(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .parameter "fileName"
    .parameter "lines"

    .prologue
    invoke-static {p1}, Landroid/util/ZteEventLog/tools/FileTools;->ToFileContent([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/ZteEventLog/tools/FileTools;->AnsiWrite(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static AuthFileOrDir(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    const-string v0, "777"

    invoke-static {p0, v0}, Landroid/util/ZteEventLog/tools/FileTools;->AuthFileOrDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static AuthFileOrDir(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "name"
    .parameter "permission"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    :try_start_0
    const-string v2, "chmod %s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, cmd:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v6

    .end local v0           #cmd:Ljava/lang/String;
    :goto_0
    return v2

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move v2, v5

    goto :goto_0
.end method

.method public static Copy(Ljava/io/File;Ljava/io/File;)Z
    .locals 6
    .parameter "src"
    .parameter "des"

    .prologue
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v2, input:Ljava/io/FileInputStream;
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v0, v4, [B

    .local v0, content:[B
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v3, output:Ljava/io/FileOutputStream;
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    .end local v0           #content:[B
    .end local v2           #input:Ljava/io/FileInputStream;
    .end local v3           #output:Ljava/io/FileOutputStream;
    :goto_0
    return v4

    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static Copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "srcName"
    .parameter "desPath"
    .parameter "desName"

    .prologue
    const/4 v3, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, src:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    invoke-static {p1}, Landroid/util/ZteEventLog/tools/FileTools;->MakeDir(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, desFile:Ljava/io/File;
    invoke-static {v1, v0}, Landroid/util/ZteEventLog/tools/FileTools;->Copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    goto :goto_0
.end method

.method public static DeleteFile(Ljava/lang/String;)Z
    .locals 1
    .parameter "fullName"

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public static IsFileOrDirExist(Ljava/io/File;)Z
    .locals 1
    .parameter "file"

    .prologue
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static IsFileOrDirExist(Ljava/lang/String;)Z
    .locals 1
    .parameter "fullName"

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/ZteEventLog/tools/FileTools;->IsFileOrDirExist(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static MakeDir(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    invoke-static {p0}, Landroid/util/ZteEventLog/tools/FileTools;->IsFileOrDirExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    invoke-static {p0}, Landroid/util/ZteEventLog/tools/FileTools;->AuthFileOrDir(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static ReadContent(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .parameter "f"

    .prologue
    const/4 v6, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v4, v6

    :goto_0
    return-object v4

    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v3, input:Ljava/io/FileInputStream;
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v0, v4, [B

    .local v0, content:[B
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .local v2, fileContent:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v2

    goto :goto_0

    .end local v0           #content:[B
    .end local v2           #fileContent:Ljava/lang/String;
    .end local v3           #input:Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v6

    goto :goto_0
.end method

.method public static ReadContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "fileName"

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/ZteEventLog/tools/FileTools;->ReadContent(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ReadLines(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "fileName"

    .prologue
    invoke-static {p0}, Landroid/util/ZteEventLog/tools/FileTools;->ReadContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-static {v0, v1}, Landroid/util/ZteEventLog/tools/ToolKit;->FilterString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static RenameFile(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .parameter "src"
    .parameter "des"

    .prologue
    invoke-static {p1}, Landroid/util/ZteEventLog/tools/FileTools;->IsFileOrDirExist(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "hubo"

    const-string v1, "Failed to rename file. now try copy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Landroid/util/ZteEventLog/tools/FileTools;->Copy(Ljava/io/File;Ljava/io/File;)Z

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method public static RenameFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "src"
    .parameter "des"

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/util/ZteEventLog/tools/FileTools;->RenameFile(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public static ToFileContent([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "lines"

    .prologue
    const-string v1, ""

    .local v1, content:Ljava/lang/String;
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .local v4, line:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4           #line:Ljava/lang/String;
    :cond_0
    const-string v5, "hubo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file len is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static Write(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "fileName"
    .parameter "content"

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/util/ZteEventLog/tools/FileTools;->Write(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Write(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5
    .parameter "fileName"
    .parameter "content"
    .parameter "append"

    .prologue
    const/4 v4, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, f:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Landroid/util/ZteEventLog/tools/FileTools;->AuthFileOrDir(Ljava/lang/String;)Z

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    return v3

    :cond_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .local v2, output:Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    goto :goto_0

    .end local v2           #output:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e1:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v3, v4

    goto :goto_0
.end method

.method public static Write(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .parameter "fileName"
    .parameter "lines"

    .prologue
    invoke-static {p1}, Landroid/util/ZteEventLog/tools/FileTools;->ToFileContent([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/ZteEventLog/tools/FileTools;->Write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
