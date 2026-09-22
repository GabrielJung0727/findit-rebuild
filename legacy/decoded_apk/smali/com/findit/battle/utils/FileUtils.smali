.class public Lcom/findit/battle/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyDb()V
    .locals 18

    .prologue
    .line 15
    const/4 v13, 0x0

    .line 16
    .local v13, "is":Ljava/io/FileInputStream;
    const/4 v15, 0x0

    .line 18
    .local v15, "os":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 19
    .local v2, "src":Ljava/nio/channels/FileChannel;
    const/4 v1, 0x0

    .line 22
    .local v1, "dst":Ljava/nio/channels/FileChannel;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v11

    .line 23
    .local v11, "data":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v17

    .line 26
    .local v17, "sd":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 27
    const-string v10, "//data//com.findit.battle//databases//FinditData"

    .line 28
    .local v10, "currentDBPath":Ljava/lang/String;
    const-string v8, "FinditData.db"

    .line 29
    .local v8, "backupDBPath":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v11, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    .local v9, "currentDB":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    .local v7, "backupDB":Ljava/io/File;
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .end local v13    # "is":Ljava/io/FileInputStream;
    .local v14, "is":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    .end local v15    # "os":Ljava/io/FileOutputStream;
    .local v16, "os":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v14}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 35
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 36
    const-wide/16 v3, 0x0

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v15, v16

    .end local v16    # "os":Ljava/io/FileOutputStream;
    .restart local v15    # "os":Ljava/io/FileOutputStream;
    move-object v13, v14

    .line 41
    .end local v7    # "backupDB":Ljava/io/File;
    .end local v8    # "backupDBPath":Ljava/lang/String;
    .end local v9    # "currentDB":Ljava/io/File;
    .end local v10    # "currentDBPath":Ljava/lang/String;
    .end local v14    # "is":Ljava/io/FileInputStream;
    .restart local v13    # "is":Ljava/io/FileInputStream;
    :cond_0
    if-eqz v13, :cond_1

    .line 43
    :try_start_3
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 48
    :cond_1
    :goto_0
    if-eqz v15, :cond_2

    .line 50
    :try_start_4
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    .line 55
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 57
    :try_start_5
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b

    .line 62
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 64
    :try_start_6
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c

    .line 70
    .end local v11    # "data":Ljava/io/File;
    .end local v17    # "sd":Ljava/io/File;
    :cond_4
    :goto_3
    return-void

    .line 38
    :catch_0
    move-exception v12

    .line 39
    .local v12, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_7
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 41
    if-eqz v13, :cond_5

    .line 43
    :try_start_8
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 48
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_5
    if-eqz v15, :cond_6

    .line 50
    :try_start_9
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 55
    :cond_6
    :goto_6
    if-eqz v2, :cond_7

    .line 57
    :try_start_a
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 62
    :cond_7
    :goto_7
    if-eqz v1, :cond_4

    .line 64
    :try_start_b
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_3

    .line 65
    :catch_1
    move-exception v12

    .line 66
    .local v12, "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 44
    .local v12, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v12

    .line 45
    .local v12, "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 51
    .end local v12    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v12

    .line 52
    .restart local v12    # "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 58
    .end local v12    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v12

    .line 59
    .restart local v12    # "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 40
    .end local v12    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 41
    :goto_8
    if-eqz v13, :cond_8

    .line 43
    :try_start_c
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 48
    :cond_8
    :goto_9
    if-eqz v15, :cond_9

    .line 50
    :try_start_d
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 55
    :cond_9
    :goto_a
    if-eqz v2, :cond_a

    .line 57
    :try_start_e
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 62
    :cond_a
    :goto_b
    if-eqz v1, :cond_b

    .line 64
    :try_start_f
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    .line 69
    :cond_b
    :goto_c
    throw v3

    .line 44
    :catch_5
    move-exception v12

    .line 45
    .restart local v12    # "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 51
    .end local v12    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v12

    .line 52
    .restart local v12    # "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 58
    .end local v12    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v12

    .line 59
    .restart local v12    # "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 65
    .end local v12    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v12

    .line 66
    .restart local v12    # "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 44
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v11    # "data":Ljava/io/File;
    .restart local v17    # "sd":Ljava/io/File;
    :catch_9
    move-exception v12

    .line 45
    .restart local v12    # "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 51
    .end local v12    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v12

    .line 52
    .restart local v12    # "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 58
    .end local v12    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v12

    .line 59
    .restart local v12    # "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 65
    .end local v12    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v12

    .line 66
    .restart local v12    # "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 40
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "is":Ljava/io/FileInputStream;
    .restart local v7    # "backupDB":Ljava/io/File;
    .restart local v8    # "backupDBPath":Ljava/lang/String;
    .restart local v9    # "currentDB":Ljava/io/File;
    .restart local v10    # "currentDBPath":Ljava/lang/String;
    .restart local v14    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    move-object v13, v14

    .end local v14    # "is":Ljava/io/FileInputStream;
    .restart local v13    # "is":Ljava/io/FileInputStream;
    goto :goto_8

    .end local v13    # "is":Ljava/io/FileInputStream;
    .end local v15    # "os":Ljava/io/FileOutputStream;
    .restart local v14    # "is":Ljava/io/FileInputStream;
    .restart local v16    # "os":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v3

    move-object/from16 v15, v16

    .end local v16    # "os":Ljava/io/FileOutputStream;
    .restart local v15    # "os":Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14    # "is":Ljava/io/FileInputStream;
    .restart local v13    # "is":Ljava/io/FileInputStream;
    goto :goto_8

    .line 38
    .end local v13    # "is":Ljava/io/FileInputStream;
    .restart local v14    # "is":Ljava/io/FileInputStream;
    :catch_d
    move-exception v12

    move-object v13, v14

    .end local v14    # "is":Ljava/io/FileInputStream;
    .restart local v13    # "is":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v13    # "is":Ljava/io/FileInputStream;
    .end local v15    # "os":Ljava/io/FileOutputStream;
    .restart local v14    # "is":Ljava/io/FileInputStream;
    .restart local v16    # "os":Ljava/io/FileOutputStream;
    :catch_e
    move-exception v12

    move-object/from16 v15, v16

    .end local v16    # "os":Ljava/io/FileOutputStream;
    .restart local v15    # "os":Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14    # "is":Ljava/io/FileInputStream;
    .restart local v13    # "is":Ljava/io/FileInputStream;
    goto :goto_4
.end method
