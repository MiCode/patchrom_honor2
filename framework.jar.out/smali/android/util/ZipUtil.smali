.class public Landroid/util/ZipUtil;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# static fields
.field private static final BUFF_SIZE:I = 0x2800

.field private static final TAG:Ljava/lang/String; = "ZipUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEntriesEnumeration(Ljava/io/File;)Ljava/util/Enumeration;
    .locals 2
    .parameter "zipFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Enumeration",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 321
    .local v0, zf:Ljava/util/zip/ZipFile;
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public static getEntriesNames(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 6
    .parameter "zipFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v2, entryNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/util/ZipUtil;->getEntriesEnumeration(Ljava/io/File;)Ljava/util/Enumeration;

    move-result-object v0

    .line 308
    .local v0, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 309
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 310
    .local v1, entry:Ljava/util/zip/ZipEntry;
    new-instance v3, Ljava/lang/String;

    invoke-static {v1}, Landroid/util/ZipUtil;->getEntryName(Ljava/util/zip/ZipEntry;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "GB2312"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "8859_1"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 312
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    :cond_0
    return-object v2
.end method

.method public static getEntryComment(Ljava/util/zip/ZipEntry;)Ljava/lang/String;
    .locals 3
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 325
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GB2312"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "8859_1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static getEntryName(Ljava/util/zip/ZipEntry;)Ljava/lang/String;
    .locals 3
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 329
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GB2312"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "8859_1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static getZipEntryStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .parameter "zipFile"
    .parameter "entryName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 387
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 388
    .local v1, zf:Ljava/util/zip/ZipFile;
    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 389
    .local v0, zEntry:Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 393
    .end local v0           #zEntry:Ljava/util/zip/ZipEntry;
    .end local v1           #zf:Ljava/util/zip/ZipFile;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static unZipDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .parameter "zipFile"
    .parameter "entryName"
    .parameter "desPath"

    .prologue
    .line 155
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .local v3, desDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_1

    .line 157
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v18

    if-nez v18, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    const/4 v11, 0x0

    .line 161
    .local v11, out:Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 162
    .local v9, in:Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 164
    .local v16, zf:Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v17, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    .line 165
    .end local v16           #zf:Ljava/util/zip/ZipFile;
    .local v17, zf:Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .local v6, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    move-object v12, v11

    .end local v11           #out:Ljava/io/OutputStream;
    .local v12, out:Ljava/io/OutputStream;
    :cond_2
    :goto_1
    :try_start_2
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 166
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/zip/ZipEntry;

    .line 167
    .local v7, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 168
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    .line 169
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 170
    .local v14, str:Ljava/lang/String;
    new-instance v15, Ljava/lang/String;

    const-string v18, "8859_1"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    const-string v19, "UTF-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 171
    .end local v14           #str:Ljava/lang/String;
    .local v15, str:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .local v4, desFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v18

    if-nez v18, :cond_2

    .line 175
    const/4 v10, 0x1

    .line 176
    .local v10, newOk:Z
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_4

    .line 177
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    .line 178
    .local v8, fileParentDir:Ljava/io/File;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_3

    .line 179
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v10

    .line 181
    :cond_3
    if-eqz v10, :cond_4

    .line 182
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v10

    .line 185
    .end local v8           #fileParentDir:Ljava/io/File;
    :cond_4
    if-nez v10, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 186
    :cond_5
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    .line 187
    .end local v12           #out:Ljava/io/OutputStream;
    .restart local v11       #out:Ljava/io/OutputStream;
    const/16 v18, 0x2800

    :try_start_3
    move/from16 v0, v18

    new-array v2, v0, [B

    .line 189
    .local v2, buffer:[B
    :goto_2
    invoke-virtual {v9, v2}, Ljava/io/InputStream;->read([B)I

    move-result v13

    .local v13, realLength:I
    if-lez v13, :cond_9

    .line 190
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v2, v0, v13}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 196
    .end local v2           #buffer:[B
    .end local v4           #desFile:Ljava/io/File;
    .end local v6           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v7           #entry:Ljava/util/zip/ZipEntry;
    .end local v10           #newOk:Z
    .end local v13           #realLength:I
    .end local v15           #str:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object/from16 v16, v17

    .line 197
    .end local v17           #zf:Ljava/util/zip/ZipFile;
    .local v5, e:Ljava/lang/Exception;
    .restart local v16       #zf:Ljava/util/zip/ZipFile;
    :goto_3
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 199
    if-eqz v9, :cond_6

    .line 201
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 206
    .end local v5           #e:Ljava/lang/Exception;
    :cond_6
    :goto_4
    if-eqz v16, :cond_7

    .line 208
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 213
    :cond_7
    :goto_5
    if-eqz v11, :cond_0

    .line 215
    :try_start_7
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 216
    :catch_1
    move-exception v5

    .line 217
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .end local v5           #e:Ljava/io/IOException;
    .end local v11           #out:Ljava/io/OutputStream;
    .end local v16           #zf:Ljava/util/zip/ZipFile;
    .restart local v6       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .restart local v7       #entry:Ljava/util/zip/ZipEntry;
    .restart local v12       #out:Ljava/io/OutputStream;
    .restart local v17       #zf:Ljava/util/zip/ZipFile;
    :cond_8
    move-object v11, v12

    .end local v12           #out:Ljava/io/OutputStream;
    .restart local v11       #out:Ljava/io/OutputStream;
    :cond_9
    move-object v12, v11

    .line 195
    .end local v11           #out:Ljava/io/OutputStream;
    .restart local v12       #out:Ljava/io/OutputStream;
    goto/16 :goto_1

    .line 199
    .end local v7           #entry:Ljava/util/zip/ZipEntry;
    :cond_a
    if-eqz v9, :cond_b

    .line 201
    :try_start_8
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 206
    :cond_b
    :goto_6
    if-eqz v17, :cond_c

    .line 208
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 213
    :cond_c
    :goto_7
    if-eqz v12, :cond_10

    .line 215
    :try_start_a
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    move-object/from16 v16, v17

    .end local v17           #zf:Ljava/util/zip/ZipFile;
    .restart local v16       #zf:Ljava/util/zip/ZipFile;
    move-object v11, v12

    .line 218
    .end local v12           #out:Ljava/io/OutputStream;
    .restart local v11       #out:Ljava/io/OutputStream;
    goto/16 :goto_0

    .line 202
    .end local v11           #out:Ljava/io/OutputStream;
    .end local v16           #zf:Ljava/util/zip/ZipFile;
    .restart local v12       #out:Ljava/io/OutputStream;
    .restart local v17       #zf:Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v5

    .line 203
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 209
    .end local v5           #e:Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 210
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 216
    .end local v5           #e:Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 217
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v16, v17

    .end local v17           #zf:Ljava/util/zip/ZipFile;
    .restart local v16       #zf:Ljava/util/zip/ZipFile;
    move-object v11, v12

    .line 218
    .end local v12           #out:Ljava/io/OutputStream;
    .restart local v11       #out:Ljava/io/OutputStream;
    goto/16 :goto_0

    .line 202
    .end local v6           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .local v5, e:Ljava/lang/Exception;
    :catch_5
    move-exception v5

    .line 203
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 209
    .end local v5           #e:Ljava/io/IOException;
    :catch_6
    move-exception v5

    .line 210
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 199
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v18

    :goto_8
    if-eqz v9, :cond_d

    .line 201
    :try_start_b
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 206
    :cond_d
    :goto_9
    if-eqz v16, :cond_e

    .line 208
    :try_start_c
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 213
    :cond_e
    :goto_a
    if-eqz v11, :cond_f

    .line 215
    :try_start_d
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 218
    :cond_f
    :goto_b
    throw v18

    .line 202
    :catch_7
    move-exception v5

    .line 203
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 209
    .end local v5           #e:Ljava/io/IOException;
    :catch_8
    move-exception v5

    .line 210
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 216
    .end local v5           #e:Ljava/io/IOException;
    :catch_9
    move-exception v5

    .line 217
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 199
    .end local v5           #e:Ljava/io/IOException;
    .end local v16           #zf:Ljava/util/zip/ZipFile;
    .restart local v17       #zf:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v18

    move-object/from16 v16, v17

    .end local v17           #zf:Ljava/util/zip/ZipFile;
    .restart local v16       #zf:Ljava/util/zip/ZipFile;
    goto :goto_8

    .end local v11           #out:Ljava/io/OutputStream;
    .end local v16           #zf:Ljava/util/zip/ZipFile;
    .restart local v6       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .restart local v12       #out:Ljava/io/OutputStream;
    .restart local v17       #zf:Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v18

    move-object/from16 v16, v17

    .end local v17           #zf:Ljava/util/zip/ZipFile;
    .restart local v16       #zf:Ljava/util/zip/ZipFile;
    move-object v11, v12

    .end local v12           #out:Ljava/io/OutputStream;
    .restart local v11       #out:Ljava/io/OutputStream;
    goto :goto_8

    .line 196
    .end local v6           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :catch_a
    move-exception v5

    goto :goto_3

    .end local v11           #out:Ljava/io/OutputStream;
    .end local v16           #zf:Ljava/util/zip/ZipFile;
    .restart local v6       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .restart local v12       #out:Ljava/io/OutputStream;
    .restart local v17       #zf:Ljava/util/zip/ZipFile;
    :catch_b
    move-exception v5

    move-object/from16 v16, v17

    .end local v17           #zf:Ljava/util/zip/ZipFile;
    .restart local v16       #zf:Ljava/util/zip/ZipFile;
    move-object v11, v12

    .end local v12           #out:Ljava/io/OutputStream;
    .restart local v11       #out:Ljava/io/OutputStream;
    goto :goto_3

    .end local v11           #out:Ljava/io/OutputStream;
    .end local v16           #zf:Ljava/util/zip/ZipFile;
    .restart local v12       #out:Ljava/io/OutputStream;
    .restart local v17       #zf:Ljava/util/zip/ZipFile;
    :cond_10
    move-object/from16 v16, v17

    .end local v17           #zf:Ljava/util/zip/ZipFile;
    .restart local v16       #zf:Ljava/util/zip/ZipFile;
    move-object v11, v12

    .end local v12           #out:Ljava/io/OutputStream;
    .restart local v11       #out:Ljava/io/OutputStream;
    goto/16 :goto_0
.end method

.method public static unZipFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 23
    .parameter "zipFile"
    .parameter "folderPath"

    .prologue
    .line 84
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v4, desDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_1

    .line 86
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v20

    if-nez v20, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const/4 v10, 0x0

    .line 90
    .local v10, i:I
    const/4 v13, 0x0

    .line 91
    .local v13, out:Ljava/io/OutputStream;
    const/4 v11, 0x0

    .line 92
    .local v11, in:Ljava/io/InputStream;
    const/16 v18, 0x0

    .line 94
    .local v18, zf:Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v19, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    .line 95
    .end local v18           #zf:Ljava/util/zip/ZipFile;
    .local v19, zf:Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .local v7, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    move-object v14, v13

    .end local v13           #out:Ljava/io/OutputStream;
    .local v14, out:Ljava/io/OutputStream;
    :cond_2
    :goto_1
    :try_start_2
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 96
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/zip/ZipEntry;

    .line 97
    .local v8, entry:Ljava/util/zip/ZipEntry;
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v11

    .line 98
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 99
    .local v16, str:Ljava/lang/String;
    new-instance v17, Ljava/lang/String;

    const-string v20, "8859_1"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v20

    const-string v21, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 100
    .end local v16           #str:Ljava/lang/String;
    .local v17, str:Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    .line 101
    const-string v20, "ZipUtil"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "======file=====:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v5, desFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v20

    if-nez v20, :cond_2

    .line 106
    const/4 v12, 0x1

    .line 107
    .local v12, newOk:Z
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_4

    .line 108
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    .line 109
    .local v9, fileParentDir:Ljava/io/File;
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_3

    .line 110
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v12

    .line 112
    :cond_3
    if-eqz v12, :cond_4

    .line 113
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v12

    .line 116
    .end local v9           #fileParentDir:Ljava/io/File;
    :cond_4
    if-nez v12, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 117
    :cond_5
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    .line 118
    .end local v14           #out:Ljava/io/OutputStream;
    .restart local v13       #out:Ljava/io/OutputStream;
    const/16 v20, 0x2800

    :try_start_3
    move/from16 v0, v20

    new-array v3, v0, [B

    .line 120
    .local v3, buffer:[B
    :goto_2
    invoke-virtual {v11, v3}, Ljava/io/InputStream;->read([B)I

    move-result v15

    .local v15, realLength:I
    if-lez v15, :cond_9

    .line 121
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v3, v0, v15}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 127
    .end local v3           #buffer:[B
    .end local v5           #desFile:Ljava/io/File;
    .end local v7           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v8           #entry:Ljava/util/zip/ZipEntry;
    .end local v12           #newOk:Z
    .end local v15           #realLength:I
    .end local v17           #str:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object/from16 v18, v19

    .line 128
    .end local v19           #zf:Ljava/util/zip/ZipFile;
    .local v6, e:Ljava/lang/Exception;
    .restart local v18       #zf:Ljava/util/zip/ZipFile;
    :goto_3
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 130
    if-eqz v11, :cond_6

    .line 132
    :try_start_5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 137
    .end local v6           #e:Ljava/lang/Exception;
    :cond_6
    :goto_4
    if-eqz v13, :cond_7

    .line 139
    :try_start_6
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 144
    :cond_7
    :goto_5
    if-eqz v18, :cond_0

    .line 146
    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 147
    :catch_1
    move-exception v6

    .line 148
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .end local v6           #e:Ljava/io/IOException;
    .end local v13           #out:Ljava/io/OutputStream;
    .end local v18           #zf:Ljava/util/zip/ZipFile;
    .restart local v5       #desFile:Ljava/io/File;
    .restart local v7       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .restart local v8       #entry:Ljava/util/zip/ZipEntry;
    .restart local v12       #newOk:Z
    .restart local v14       #out:Ljava/io/OutputStream;
    .restart local v17       #str:Ljava/lang/String;
    .restart local v19       #zf:Ljava/util/zip/ZipFile;
    :cond_8
    move-object v13, v14

    .end local v14           #out:Ljava/io/OutputStream;
    .restart local v13       #out:Ljava/io/OutputStream;
    :cond_9
    move-object v14, v13

    .line 125
    .end local v13           #out:Ljava/io/OutputStream;
    .restart local v14       #out:Ljava/io/OutputStream;
    goto/16 :goto_1

    .line 126
    .end local v5           #desFile:Ljava/io/File;
    .end local v8           #entry:Ljava/util/zip/ZipEntry;
    .end local v12           #newOk:Z
    .end local v17           #str:Ljava/lang/String;
    :cond_a
    :try_start_8
    const-string v20, "ZipUtil"

    const-string/jumbo v21, "unzip end"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b

    .line 130
    if-eqz v11, :cond_b

    .line 132
    :try_start_9
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 137
    :cond_b
    :goto_6
    if-eqz v14, :cond_c

    .line 139
    :try_start_a
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 144
    :cond_c
    :goto_7
    if-eqz v19, :cond_10

    .line 146
    :try_start_b
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    move-object/from16 v18, v19

    .end local v19           #zf:Ljava/util/zip/ZipFile;
    .restart local v18       #zf:Ljava/util/zip/ZipFile;
    move-object v13, v14

    .line 149
    .end local v14           #out:Ljava/io/OutputStream;
    .restart local v13       #out:Ljava/io/OutputStream;
    goto/16 :goto_0

    .line 133
    .end local v13           #out:Ljava/io/OutputStream;
    .end local v18           #zf:Ljava/util/zip/ZipFile;
    .restart local v14       #out:Ljava/io/OutputStream;
    .restart local v19       #zf:Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v6

    .line 134
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 140
    .end local v6           #e:Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 141
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 147
    .end local v6           #e:Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 148
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v18, v19

    .end local v19           #zf:Ljava/util/zip/ZipFile;
    .restart local v18       #zf:Ljava/util/zip/ZipFile;
    move-object v13, v14

    .line 149
    .end local v14           #out:Ljava/io/OutputStream;
    .restart local v13       #out:Ljava/io/OutputStream;
    goto/16 :goto_0

    .line 133
    .end local v7           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .local v6, e:Ljava/lang/Exception;
    :catch_5
    move-exception v6

    .line 134
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 140
    .end local v6           #e:Ljava/io/IOException;
    :catch_6
    move-exception v6

    .line 141
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 130
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v20

    :goto_8
    if-eqz v11, :cond_d

    .line 132
    :try_start_c
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 137
    :cond_d
    :goto_9
    if-eqz v13, :cond_e

    .line 139
    :try_start_d
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 144
    :cond_e
    :goto_a
    if-eqz v18, :cond_f

    .line 146
    :try_start_e
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 149
    :cond_f
    :goto_b
    throw v20

    .line 133
    :catch_7
    move-exception v6

    .line 134
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 140
    .end local v6           #e:Ljava/io/IOException;
    :catch_8
    move-exception v6

    .line 141
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 147
    .end local v6           #e:Ljava/io/IOException;
    :catch_9
    move-exception v6

    .line 148
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 130
    .end local v6           #e:Ljava/io/IOException;
    .end local v18           #zf:Ljava/util/zip/ZipFile;
    .restart local v19       #zf:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v20

    move-object/from16 v18, v19

    .end local v19           #zf:Ljava/util/zip/ZipFile;
    .restart local v18       #zf:Ljava/util/zip/ZipFile;
    goto :goto_8

    .end local v13           #out:Ljava/io/OutputStream;
    .end local v18           #zf:Ljava/util/zip/ZipFile;
    .restart local v7       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .restart local v14       #out:Ljava/io/OutputStream;
    .restart local v19       #zf:Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v20

    move-object/from16 v18, v19

    .end local v19           #zf:Ljava/util/zip/ZipFile;
    .restart local v18       #zf:Ljava/util/zip/ZipFile;
    move-object v13, v14

    .end local v14           #out:Ljava/io/OutputStream;
    .restart local v13       #out:Ljava/io/OutputStream;
    goto :goto_8

    .line 127
    .end local v7           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :catch_a
    move-exception v6

    goto/16 :goto_3

    .end local v13           #out:Ljava/io/OutputStream;
    .end local v18           #zf:Ljava/util/zip/ZipFile;
    .restart local v7       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .restart local v14       #out:Ljava/io/OutputStream;
    .restart local v19       #zf:Ljava/util/zip/ZipFile;
    :catch_b
    move-exception v6

    move-object/from16 v18, v19

    .end local v19           #zf:Ljava/util/zip/ZipFile;
    .restart local v18       #zf:Ljava/util/zip/ZipFile;
    move-object v13, v14

    .end local v14           #out:Ljava/io/OutputStream;
    .restart local v13       #out:Ljava/io/OutputStream;
    goto/16 :goto_3

    .end local v13           #out:Ljava/io/OutputStream;
    .end local v18           #zf:Ljava/util/zip/ZipFile;
    .restart local v14       #out:Ljava/io/OutputStream;
    .restart local v19       #zf:Ljava/util/zip/ZipFile;
    :cond_10
    move-object/from16 v18, v19

    .end local v19           #zf:Ljava/util/zip/ZipFile;
    .restart local v18       #zf:Ljava/util/zip/ZipFile;
    move-object v13, v14

    .end local v14           #out:Ljava/io/OutputStream;
    .restart local v13       #out:Ljava/io/OutputStream;
    goto/16 :goto_0
.end method

.method public static unZipFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .parameter "zipFile"
    .parameter "desPath"
    .parameter "entryName"

    .prologue
    .line 443
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    const/4 v3, 0x0

    .line 447
    .local v3, inStream:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 448
    .local v4, outStream:Ljava/io/OutputStream;
    const/4 v12, 0x0

    .line 449
    .local v12, zf:Ljava/util/zip/ZipFile;
    const/4 v11, 0x0

    .line 451
    .local v11, zEntry:Ljava/util/zip/ZipEntry;
    :try_start_0
    new-instance v13, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d

    .line 452
    .end local v12           #zf:Ljava/util/zip/ZipFile;
    .local v13, zf:Ljava/util/zip/ZipFile;
    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e

    move-result-object v11

    .line 453
    if-nez v11, :cond_4

    .line 470
    if-eqz v13, :cond_2

    .line 472
    :try_start_2
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 477
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 479
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 484
    :cond_3
    :goto_2
    if-eqz v4, :cond_0

    .line 486
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 487
    :catch_0
    move-exception v2

    .line 488
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 473
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 474
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 480
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 481
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 456
    .end local v2           #e:Ljava/io/IOException;
    :cond_4
    :try_start_5
    invoke-virtual {v13, v11}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 457
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v7

    .line 458
    .local v7, size:J
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 459
    .local v9, str:Ljava/lang/String;
    new-instance v10, Ljava/lang/String;

    const-string v14, "8859_1"

    invoke-virtual {v9, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    const-string v15, "GB2312"

    invoke-direct {v10, v14, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 460
    .end local v9           #str:Ljava/lang/String;
    .local v10, str:Ljava/lang/String;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_e

    .line 461
    .end local v4           #outStream:Ljava/io/OutputStream;
    .local v5, outStream:Ljava/io/OutputStream;
    long-to-int v14, v7

    :try_start_6
    div-int/lit8 v14, v14, 0x2

    new-array v1, v14, [B

    .line 463
    .local v1, buffer:[B
    :goto_3
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, realLength:I
    if-lez v6, :cond_7

    .line 464
    const/4 v14, 0x0

    invoke-virtual {v5, v1, v14, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 466
    .end local v1           #buffer:[B
    .end local v6           #realLength:I
    :catch_3
    move-exception v2

    move-object v12, v13

    .end local v13           #zf:Ljava/util/zip/ZipFile;
    .restart local v12       #zf:Ljava/util/zip/ZipFile;
    move-object v4, v5

    .line 467
    .end local v5           #outStream:Ljava/io/OutputStream;
    .end local v7           #size:J
    .end local v10           #str:Ljava/lang/String;
    .local v2, e:Ljava/lang/Exception;
    .restart local v4       #outStream:Ljava/io/OutputStream;
    :goto_4
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 470
    if-eqz v12, :cond_5

    .line 472
    :try_start_8
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 477
    .end local v2           #e:Ljava/lang/Exception;
    :cond_5
    :goto_5
    if-eqz v3, :cond_6

    .line 479
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 484
    :cond_6
    :goto_6
    if-eqz v4, :cond_0

    .line 486
    :try_start_a
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 487
    :catch_4
    move-exception v2

    .line 488
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 470
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #outStream:Ljava/io/OutputStream;
    .end local v12           #zf:Ljava/util/zip/ZipFile;
    .restart local v1       #buffer:[B
    .restart local v5       #outStream:Ljava/io/OutputStream;
    .restart local v6       #realLength:I
    .restart local v7       #size:J
    .restart local v10       #str:Ljava/lang/String;
    .restart local v13       #zf:Ljava/util/zip/ZipFile;
    :cond_7
    if-eqz v13, :cond_8

    .line 472
    :try_start_b
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 477
    :cond_8
    :goto_7
    if-eqz v3, :cond_9

    .line 479
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 484
    :cond_9
    :goto_8
    if-eqz v5, :cond_0

    .line 486
    :try_start_d
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_0

    .line 487
    :catch_5
    move-exception v2

    .line 488
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 473
    .end local v2           #e:Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 474
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 480
    .end local v2           #e:Ljava/io/IOException;
    :catch_7
    move-exception v2

    .line 481
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 473
    .end local v1           #buffer:[B
    .end local v5           #outStream:Ljava/io/OutputStream;
    .end local v6           #realLength:I
    .end local v7           #size:J
    .end local v10           #str:Ljava/lang/String;
    .end local v13           #zf:Ljava/util/zip/ZipFile;
    .local v2, e:Ljava/lang/Exception;
    .restart local v4       #outStream:Ljava/io/OutputStream;
    .restart local v12       #zf:Ljava/util/zip/ZipFile;
    :catch_8
    move-exception v2

    .line 474
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 480
    .end local v2           #e:Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 481
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 470
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v14

    :goto_9
    if-eqz v12, :cond_a

    .line 472
    :try_start_e
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 477
    :cond_a
    :goto_a
    if-eqz v3, :cond_b

    .line 479
    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 484
    :cond_b
    :goto_b
    if-eqz v4, :cond_c

    .line 486
    :try_start_10
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 489
    :cond_c
    :goto_c
    throw v14

    .line 473
    :catch_a
    move-exception v2

    .line 474
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 480
    .end local v2           #e:Ljava/io/IOException;
    :catch_b
    move-exception v2

    .line 481
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 487
    .end local v2           #e:Ljava/io/IOException;
    :catch_c
    move-exception v2

    .line 488
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 470
    .end local v2           #e:Ljava/io/IOException;
    .end local v12           #zf:Ljava/util/zip/ZipFile;
    .restart local v13       #zf:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v14

    move-object v12, v13

    .end local v13           #zf:Ljava/util/zip/ZipFile;
    .restart local v12       #zf:Ljava/util/zip/ZipFile;
    goto :goto_9

    .end local v4           #outStream:Ljava/io/OutputStream;
    .end local v12           #zf:Ljava/util/zip/ZipFile;
    .restart local v5       #outStream:Ljava/io/OutputStream;
    .restart local v7       #size:J
    .restart local v10       #str:Ljava/lang/String;
    .restart local v13       #zf:Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v14

    move-object v12, v13

    .end local v13           #zf:Ljava/util/zip/ZipFile;
    .restart local v12       #zf:Ljava/util/zip/ZipFile;
    move-object v4, v5

    .end local v5           #outStream:Ljava/io/OutputStream;
    .restart local v4       #outStream:Ljava/io/OutputStream;
    goto :goto_9

    .line 466
    .end local v7           #size:J
    .end local v10           #str:Ljava/lang/String;
    :catch_d
    move-exception v2

    goto :goto_4

    .end local v12           #zf:Ljava/util/zip/ZipFile;
    .restart local v13       #zf:Ljava/util/zip/ZipFile;
    :catch_e
    move-exception v2

    move-object v12, v13

    .end local v13           #zf:Ljava/util/zip/ZipFile;
    .restart local v12       #zf:Ljava/util/zip/ZipFile;
    goto :goto_4
.end method

.method public static unZipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "zipFile"
    .parameter "entryName"
    .parameter "desPath"

    .prologue
    .line 397
    const/4 v9, 0x0

    .line 398
    .local v9, zf:Ljava/util/zip/ZipFile;
    const/4 v2, 0x0

    .line 399
    .local v2, in:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 401
    .local v3, out:Ljava/io/OutputStream;
    :try_start_0
    new-instance v10, Ljava/util/zip/ZipFile;

    invoke-direct {v10, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d

    .line 402
    .end local v9           #zf:Ljava/util/zip/ZipFile;
    .local v10, zf:Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v10, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e

    move-result-object v8

    .line 403
    .local v8, zEntry:Ljava/util/zip/ZipEntry;
    if-nez v8, :cond_4

    .line 419
    if-eqz v2, :cond_0

    .line 420
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 426
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 427
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 433
    :cond_1
    :goto_1
    if-eqz v10, :cond_2

    .line 434
    :try_start_4
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_2
    move-object v9, v10

    .line 440
    .end local v8           #zEntry:Ljava/util/zip/ZipEntry;
    .end local v10           #zf:Ljava/util/zip/ZipFile;
    .restart local v9       #zf:Ljava/util/zip/ZipFile;
    :cond_3
    :goto_3
    return-void

    .line 422
    .end local v9           #zf:Ljava/util/zip/ZipFile;
    .restart local v8       #zEntry:Ljava/util/zip/ZipEntry;
    .restart local v10       #zf:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v1

    .line 423
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 429
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 430
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 436
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 437
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 406
    .end local v1           #e:Ljava/io/IOException;
    :cond_4
    :try_start_5
    invoke-virtual {v10, v8}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 407
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 408
    .local v6, str:Ljava/lang/String;
    new-instance v7, Ljava/lang/String;

    const-string v11, "8859_1"

    invoke-virtual {v6, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    const-string v12, "GB2312"

    invoke-direct {v7, v11, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 409
    .end local v6           #str:Ljava/lang/String;
    .local v7, str:Ljava/lang/String;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_e

    .line 410
    .end local v3           #out:Ljava/io/OutputStream;
    .local v4, out:Ljava/io/OutputStream;
    :try_start_6
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v11

    long-to-int v11, v11

    shr-int/lit8 v11, v11, 0x1

    new-array v0, v11, [B

    .line 412
    .local v0, buffer:[B
    :goto_4
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, realLength:I
    if-lez v5, :cond_7

    .line 413
    const/4 v11, 0x0

    invoke-virtual {v4, v0, v11, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    .line 415
    .end local v0           #buffer:[B
    .end local v5           #realLength:I
    :catch_3
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    move-object v9, v10

    .line 416
    .end local v7           #str:Ljava/lang/String;
    .end local v8           #zEntry:Ljava/util/zip/ZipEntry;
    .end local v10           #zf:Ljava/util/zip/ZipFile;
    .local v1, e:Ljava/lang/Exception;
    .restart local v9       #zf:Ljava/util/zip/ZipFile;
    :goto_5
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 419
    if-eqz v2, :cond_5

    .line 420
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 426
    .end local v1           #e:Ljava/lang/Exception;
    :cond_5
    :goto_6
    if-eqz v3, :cond_6

    .line 427
    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 433
    :cond_6
    :goto_7
    if-eqz v9, :cond_3

    .line 434
    :try_start_a
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_3

    .line 436
    :catch_4
    move-exception v1

    .line 437
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 419
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #out:Ljava/io/OutputStream;
    .end local v9           #zf:Ljava/util/zip/ZipFile;
    .restart local v0       #buffer:[B
    .restart local v4       #out:Ljava/io/OutputStream;
    .restart local v5       #realLength:I
    .restart local v7       #str:Ljava/lang/String;
    .restart local v8       #zEntry:Ljava/util/zip/ZipEntry;
    .restart local v10       #zf:Ljava/util/zip/ZipFile;
    :cond_7
    if-eqz v2, :cond_8

    .line 420
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 426
    :cond_8
    :goto_8
    if-eqz v4, :cond_9

    .line 427
    :try_start_c
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 433
    :cond_9
    :goto_9
    if-eqz v10, :cond_a

    .line 434
    :try_start_d
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    :cond_a
    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    move-object v9, v10

    .line 438
    .end local v10           #zf:Ljava/util/zip/ZipFile;
    .restart local v9       #zf:Ljava/util/zip/ZipFile;
    goto :goto_3

    .line 422
    .end local v3           #out:Ljava/io/OutputStream;
    .end local v9           #zf:Ljava/util/zip/ZipFile;
    .restart local v4       #out:Ljava/io/OutputStream;
    .restart local v10       #zf:Ljava/util/zip/ZipFile;
    :catch_5
    move-exception v1

    .line 423
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 429
    .end local v1           #e:Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 430
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 436
    .end local v1           #e:Ljava/io/IOException;
    :catch_7
    move-exception v1

    .line 437
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    move-object v9, v10

    .line 439
    .end local v10           #zf:Ljava/util/zip/ZipFile;
    .restart local v9       #zf:Ljava/util/zip/ZipFile;
    goto/16 :goto_3

    .line 422
    .end local v0           #buffer:[B
    .end local v5           #realLength:I
    .end local v7           #str:Ljava/lang/String;
    .end local v8           #zEntry:Ljava/util/zip/ZipEntry;
    .local v1, e:Ljava/lang/Exception;
    :catch_8
    move-exception v1

    .line 423
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 429
    .end local v1           #e:Ljava/io/IOException;
    :catch_9
    move-exception v1

    .line 430
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 418
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 419
    :goto_a
    if-eqz v2, :cond_b

    .line 420
    :try_start_e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 426
    :cond_b
    :goto_b
    if-eqz v3, :cond_c

    .line 427
    :try_start_f
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 433
    :cond_c
    :goto_c
    if-eqz v9, :cond_d

    .line 434
    :try_start_10
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 438
    :cond_d
    :goto_d
    throw v11

    .line 422
    :catch_a
    move-exception v1

    .line 423
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 429
    .end local v1           #e:Ljava/io/IOException;
    :catch_b
    move-exception v1

    .line 430
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 436
    .end local v1           #e:Ljava/io/IOException;
    :catch_c
    move-exception v1

    .line 437
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 418
    .end local v1           #e:Ljava/io/IOException;
    .end local v9           #zf:Ljava/util/zip/ZipFile;
    .restart local v10       #zf:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .end local v10           #zf:Ljava/util/zip/ZipFile;
    .restart local v9       #zf:Ljava/util/zip/ZipFile;
    goto :goto_a

    .end local v3           #out:Ljava/io/OutputStream;
    .end local v9           #zf:Ljava/util/zip/ZipFile;
    .restart local v4       #out:Ljava/io/OutputStream;
    .restart local v7       #str:Ljava/lang/String;
    .restart local v8       #zEntry:Ljava/util/zip/ZipEntry;
    .restart local v10       #zf:Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v11

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    move-object v9, v10

    .end local v10           #zf:Ljava/util/zip/ZipFile;
    .restart local v9       #zf:Ljava/util/zip/ZipFile;
    goto :goto_a

    .line 415
    .end local v7           #str:Ljava/lang/String;
    .end local v8           #zEntry:Ljava/util/zip/ZipEntry;
    :catch_d
    move-exception v1

    goto :goto_5

    .end local v9           #zf:Ljava/util/zip/ZipFile;
    .restart local v10       #zf:Ljava/util/zip/ZipFile;
    :catch_e
    move-exception v1

    move-object v9, v10

    .end local v10           #zf:Ljava/util/zip/ZipFile;
    .restart local v9       #zf:Ljava/util/zip/ZipFile;
    goto :goto_5
.end method

.method public static upZipSelectedFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20
    .parameter "form"
    .parameter "to"
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    const/4 v8, 0x0

    .line 227
    .local v8, existAudio:Z
    if-nez p0, :cond_1

    .line 301
    .end local v8           #existAudio:Z
    :cond_0
    :goto_0
    return v8

    .line 231
    .restart local v8       #existAudio:Z
    :cond_1
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .local v16, targetDir:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_2

    .line 234
    const-string v18, "ive"

    const-string v19, "add audio dir"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdir()Z

    move-result v18

    if-nez v18, :cond_2

    .line 236
    const/4 v8, 0x0

    goto :goto_0

    .line 241
    :cond_2
    new-instance v17, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 242
    .local v17, zf:Ljava/util/zip/ZipFile;
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .local v5, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 243
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 244
    .local v6, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 245
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    add-int/lit8 v7, v18, 0x32

    .line 253
    .local v7, entrySize:I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 255
    .local v9, fileName:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .local v3, desFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v18

    if-nez v18, :cond_3

    .line 257
    const/4 v12, 0x1

    .line 258
    .local v12, newOk:Z
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_3

    .line 259
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    .line 260
    .local v10, fileParentDir:Ljava/io/File;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_4

    .line 261
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    move-result v12

    .line 263
    :cond_4
    if-eqz v12, :cond_5

    .line 264
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v12

    .line 266
    :cond_5
    if-eqz v12, :cond_3

    .line 269
    const/4 v11, 0x0

    .line 270
    .local v11, inStream:Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 272
    .local v13, outStream:Ljava/io/OutputStream;
    shr-int/lit8 v18, v7, 0x1

    :try_start_0
    move/from16 v0, v18

    new-array v2, v0, [B

    .line 273
    .local v2, buffer:[B
    const/4 v15, 0x0

    .line 274
    .local v15, realLength:I
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v11

    .line 275
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 276
    .end local v13           #outStream:Ljava/io/OutputStream;
    .local v14, outStream:Ljava/io/OutputStream;
    :goto_2
    :try_start_1
    invoke-virtual {v11, v2}, Ljava/io/InputStream;->read([B)I

    move-result v15

    if-lez v15, :cond_8

    .line 277
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v2, v0, v15}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 280
    :catchall_0
    move-exception v18

    move-object v13, v14

    .line 281
    .end local v2           #buffer:[B
    .end local v14           #outStream:Ljava/io/OutputStream;
    .end local v15           #realLength:I
    .restart local v13       #outStream:Ljava/io/OutputStream;
    :goto_3
    if-eqz v11, :cond_6

    :try_start_2
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 283
    :cond_6
    if-eqz v13, :cond_7

    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    :cond_7
    throw v18

    .line 281
    .end local v13           #outStream:Ljava/io/OutputStream;
    .restart local v2       #buffer:[B
    .restart local v14       #outStream:Ljava/io/OutputStream;
    .restart local v15       #realLength:I
    :cond_8
    if-eqz v11, :cond_9

    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 283
    :cond_9
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_1

    :catchall_1
    move-exception v18

    if-eqz v14, :cond_a

    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    :cond_a
    throw v18

    .end local v2           #buffer:[B
    .end local v14           #outStream:Ljava/io/OutputStream;
    .end local v15           #realLength:I
    .restart local v13       #outStream:Ljava/io/OutputStream;
    :catchall_2
    move-exception v18

    if-eqz v13, :cond_b

    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    :cond_b
    throw v18

    .line 294
    .end local v3           #desFile:Ljava/io/File;
    .end local v6           #entry:Ljava/util/zip/ZipEntry;
    .end local v7           #entrySize:I
    .end local v9           #fileName:Ljava/lang/String;
    .end local v10           #fileParentDir:Ljava/io/File;
    .end local v11           #inStream:Ljava/io/InputStream;
    .end local v12           #newOk:Z
    .end local v13           #outStream:Ljava/io/OutputStream;
    :cond_c
    if-eqz v17, :cond_0

    .line 296
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 297
    :catch_0
    move-exception v4

    .line 298
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 280
    .end local v4           #e:Ljava/io/IOException;
    .restart local v3       #desFile:Ljava/io/File;
    .restart local v6       #entry:Ljava/util/zip/ZipEntry;
    .restart local v7       #entrySize:I
    .restart local v9       #fileName:Ljava/lang/String;
    .restart local v10       #fileParentDir:Ljava/io/File;
    .restart local v11       #inStream:Ljava/io/InputStream;
    .restart local v12       #newOk:Z
    .restart local v13       #outStream:Ljava/io/OutputStream;
    :catchall_3
    move-exception v18

    goto :goto_3
.end method

.method private static zipFile(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V
    .locals 16
    .parameter "resFile"
    .parameter "zipout"
    .parameter "rootpath"

    .prologue
    .line 333
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_0

    const-string v14, ""

    :goto_0
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 336
    const/4 v2, 0x0

    .line 337
    .local v2, bis:Ljava/io/BufferedInputStream;
    const/4 v8, 0x0

    .line 339
    .local v8, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v13, Ljava/lang/String;

    const-string v14, "8859_1"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    const-string v15, "GB2312"

    invoke-direct {v13, v14, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 340
    .end local p2
    .local v13, rootpath:Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 341
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 342
    .local v7, fileList:[Ljava/io/File;
    if-eqz v7, :cond_1

    .line 343
    move-object v1, v7

    .local v1, arr$:[Ljava/io/File;
    array-length v11, v1

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_1
    if-ge v10, v11, :cond_1

    aget-object v6, v1, v10

    .line 344
    .local v6, file:Ljava/io/File;
    move-object/from16 v0, p1

    invoke-static {v6, v0, v13}, Landroid/util/ZipUtil;->zipFile(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 343
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 333
    .end local v1           #arr$:[Ljava/io/File;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v6           #file:Ljava/io/File;
    .end local v7           #fileList:[Ljava/io/File;
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v13           #rootpath:Ljava/lang/String;
    .restart local p2
    :cond_0
    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    goto :goto_0

    .line 348
    .end local p2
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #fileList:[Ljava/io/File;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v13       #rootpath:Ljava/lang/String;
    :cond_1
    :try_start_2
    new-instance v14, Ljava/util/zip/ZipEntry;

    invoke-direct {v14, v13}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 368
    .end local v7           #fileList:[Ljava/io/File;
    :goto_2
    if-eqz v2, :cond_2

    .line 369
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 375
    :cond_2
    :goto_3
    if-eqz v8, :cond_3

    .line 376
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    move-object/from16 p2, v13

    .line 382
    .end local v13           #rootpath:Ljava/lang/String;
    .restart local p2
    :cond_4
    :goto_4
    return-void

    .line 351
    .end local p2
    .restart local v13       #rootpath:Ljava/lang/String;
    :cond_5
    const/16 v14, 0x2800

    :try_start_5
    new-array v4, v14, [B

    .line 352
    .local v4, buffer:[B
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 353
    .end local v8           #fis:Ljava/io/FileInputStream;
    .local v9, fis:Ljava/io/FileInputStream;
    :try_start_6
    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v14, 0x2800

    invoke-direct {v3, v9, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 355
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .local v3, bis:Ljava/io/BufferedInputStream;
    :try_start_7
    new-instance v14, Ljava/util/zip/ZipEntry;

    invoke-direct {v14, v13}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 357
    :goto_5
    invoke-virtual {v3, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v12

    .local v12, realLength:I
    const/4 v14, -0x1

    if-eq v12, v14, :cond_7

    .line 358
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v14, v12}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_5

    .line 364
    .end local v12           #realLength:I
    :catch_0
    move-exception v5

    move-object v8, v9

    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    move-object/from16 p2, v13

    .line 365
    .end local v4           #buffer:[B
    .end local v13           #rootpath:Ljava/lang/String;
    .local v5, e:Ljava/lang/Exception;
    .restart local p2
    :goto_6
    :try_start_8
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 368
    if-eqz v2, :cond_6

    .line 369
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 375
    .end local v5           #e:Ljava/lang/Exception;
    :cond_6
    :goto_7
    if-eqz v8, :cond_4

    .line 376
    :try_start_a
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_4

    .line 378
    :catch_1
    move-exception v5

    .line 379
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 360
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #e:Ljava/io/IOException;
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local p2
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #buffer:[B
    .restart local v9       #fis:Ljava/io/FileInputStream;
    .restart local v12       #realLength:I
    .restart local v13       #rootpath:Ljava/lang/String;
    :cond_7
    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 361
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 362
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    move-object v8, v9

    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 371
    .end local v4           #buffer:[B
    .end local v12           #realLength:I
    :catch_2
    move-exception v5

    .line 372
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 378
    .end local v5           #e:Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 379
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 p2, v13

    .line 381
    .end local v13           #rootpath:Ljava/lang/String;
    .restart local p2
    goto :goto_4

    .line 371
    .local v5, e:Ljava/lang/Exception;
    :catch_4
    move-exception v5

    .line 372
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 367
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 368
    :goto_8
    if-eqz v2, :cond_8

    .line 369
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 375
    :cond_8
    :goto_9
    if-eqz v8, :cond_9

    .line 376
    :try_start_d
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 380
    :cond_9
    :goto_a
    throw v14

    .line 371
    :catch_5
    move-exception v5

    .line 372
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 378
    .end local v5           #e:Ljava/io/IOException;
    :catch_6
    move-exception v5

    .line 379
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 367
    .end local v5           #e:Ljava/io/IOException;
    .end local p2
    .restart local v13       #rootpath:Ljava/lang/String;
    :catchall_1
    move-exception v14

    move-object/from16 p2, v13

    .end local v13           #rootpath:Ljava/lang/String;
    .restart local p2
    goto :goto_8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local p2
    .restart local v4       #buffer:[B
    .restart local v9       #fis:Ljava/io/FileInputStream;
    .restart local v13       #rootpath:Ljava/lang/String;
    :catchall_2
    move-exception v14

    move-object v8, v9

    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    move-object/from16 p2, v13

    .end local v13           #rootpath:Ljava/lang/String;
    .restart local p2
    goto :goto_8

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local p2
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    .restart local v13       #rootpath:Ljava/lang/String;
    :catchall_3
    move-exception v14

    move-object v8, v9

    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    move-object/from16 p2, v13

    .end local v13           #rootpath:Ljava/lang/String;
    .restart local p2
    goto :goto_8

    .line 364
    .end local v4           #buffer:[B
    :catch_7
    move-exception v5

    goto :goto_6

    .end local p2
    .restart local v13       #rootpath:Ljava/lang/String;
    :catch_8
    move-exception v5

    move-object/from16 p2, v13

    .end local v13           #rootpath:Ljava/lang/String;
    .restart local p2
    goto :goto_6

    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local p2
    .restart local v4       #buffer:[B
    .restart local v9       #fis:Ljava/io/FileInputStream;
    .restart local v13       #rootpath:Ljava/lang/String;
    :catch_9
    move-exception v5

    move-object v8, v9

    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    move-object/from16 p2, v13

    .end local v13           #rootpath:Ljava/lang/String;
    .restart local p2
    goto :goto_6
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter "zipFile"
    .parameter "comment"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    .local p0, resFileList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/io/File;>;"
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v5, 0x2800

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 76
    .local v2, zipout:Ljava/util/zip/ZipOutputStream;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 77
    .local v1, resFile:Ljava/io/File;
    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/util/ZipUtil;->zipFile(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    .end local v1           #resFile:Ljava/io/File;
    :cond_0
    invoke-virtual {v2, p2}, Ljava/util/zip/ZipOutputStream;->setComment(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 81
    return-void
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/io/File;)Z
    .locals 10
    .parameter
    .parameter "zipFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, resFileList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/io/File;>;"
    const/4 v7, 0x0

    .line 29
    .local v7, zipout:Ljava/util/zip/ZipOutputStream;
    const/4 v3, 0x0

    .line 30
    .local v3, fos:Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 32
    .local v0, bos:Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 33
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v9, 0x2800

    invoke-direct {v1, v4, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e

    .line 34
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .local v1, bos:Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v8, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v8, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f

    .line 35
    .end local v7           #zipout:Ljava/util/zip/ZipOutputStream;
    .local v8, zipout:Ljava/util/zip/ZipOutputStream;
    :try_start_3
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 36
    .local v6, resFile:Ljava/io/File;
    const-string v9, ""

    invoke-static {v6, v8, v9}, Landroid/util/ZipUtil;->zipFile(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_10

    goto :goto_0

    .line 39
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #resFile:Ljava/io/File;
    :catch_0
    move-exception v2

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    move-object v7, v8

    .line 40
    .end local v8           #zipout:Ljava/util/zip/ZipOutputStream;
    .local v2, e:Ljava/io/FileNotFoundException;
    .restart local v7       #zipout:Ljava/util/zip/ZipOutputStream;
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 46
    if-eqz v7, :cond_0

    .line 48
    :try_start_5
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 53
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    .line 55
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 60
    :cond_1
    :goto_3
    if-eqz v0, :cond_2

    .line 62
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 68
    :cond_2
    :goto_4
    const/4 v9, 0x0

    :goto_5
    return v9

    .line 38
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v7           #zipout:Ljava/util/zip/ZipOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v8       #zipout:Ljava/util/zip/ZipOutputStream;
    :cond_3
    const/4 v9, 0x1

    .line 46
    if-eqz v8, :cond_4

    .line 48
    :try_start_8
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 53
    :cond_4
    :goto_6
    if-eqz v4, :cond_5

    .line 55
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 60
    :cond_5
    :goto_7
    if-eqz v1, :cond_6

    .line 62
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :cond_6
    :goto_8
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    move-object v7, v8

    .line 65
    .end local v8           #zipout:Ljava/util/zip/ZipOutputStream;
    .restart local v7       #zipout:Ljava/util/zip/ZipOutputStream;
    goto :goto_5

    .line 49
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v7           #zipout:Ljava/util/zip/ZipOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v8       #zipout:Ljava/util/zip/ZipOutputStream;
    :catch_1
    move-exception v2

    .line 50
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 56
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 57
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 63
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 64
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 49
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #zipout:Ljava/util/zip/ZipOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    .local v2, e:Ljava/io/FileNotFoundException;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v7       #zipout:Ljava/util/zip/ZipOutputStream;
    :catch_4
    move-exception v2

    .line 50
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 56
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 57
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 63
    .end local v2           #e:Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 64
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 42
    .end local v2           #e:Ljava/io/IOException;
    :catch_7
    move-exception v2

    .line 43
    .restart local v2       #e:Ljava/io/IOException;
    :goto_9
    :try_start_b
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 46
    if-eqz v7, :cond_7

    .line 48
    :try_start_c
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 53
    :cond_7
    :goto_a
    if-eqz v3, :cond_8

    .line 55
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 60
    :cond_8
    :goto_b
    if-eqz v0, :cond_2

    .line 62
    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_4

    .line 63
    :catch_8
    move-exception v2

    .line 64
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 49
    :catch_9
    move-exception v2

    .line 50
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 56
    :catch_a
    move-exception v2

    .line 57
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 46
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_c
    if-eqz v7, :cond_9

    .line 48
    :try_start_f
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 53
    :cond_9
    :goto_d
    if-eqz v3, :cond_a

    .line 55
    :try_start_10
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 60
    :cond_a
    :goto_e
    if-eqz v0, :cond_b

    .line 62
    :try_start_11
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    .line 65
    :cond_b
    :goto_f
    throw v9

    .line 49
    :catch_b
    move-exception v2

    .line 50
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 56
    .end local v2           #e:Ljava/io/IOException;
    :catch_c
    move-exception v2

    .line 57
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 63
    .end local v2           #e:Ljava/io/IOException;
    :catch_d
    move-exception v2

    .line 64
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 46
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_c

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_c

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v7           #zipout:Ljava/util/zip/ZipOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v8       #zipout:Ljava/util/zip/ZipOutputStream;
    :catchall_3
    move-exception v9

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8           #zipout:Ljava/util/zip/ZipOutputStream;
    .restart local v7       #zipout:Ljava/util/zip/ZipOutputStream;
    goto :goto_c

    .line 42
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_e
    move-exception v2

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_9

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_f
    move-exception v2

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_9

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v7           #zipout:Ljava/util/zip/ZipOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v8       #zipout:Ljava/util/zip/ZipOutputStream;
    :catch_10
    move-exception v2

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8           #zipout:Ljava/util/zip/ZipOutputStream;
    .restart local v7       #zipout:Ljava/util/zip/ZipOutputStream;
    goto :goto_9

    .line 39
    :catch_11
    move-exception v2

    goto/16 :goto_1

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_12
    move-exception v2

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_13
    move-exception v2

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method
