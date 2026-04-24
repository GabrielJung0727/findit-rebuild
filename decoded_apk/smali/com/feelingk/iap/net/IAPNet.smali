.class public Lcom/feelingk/iap/net/IAPNet;
.super Ljava/lang/Object;
.source "IAPNet.java"


# static fields
.field static final TAG:Ljava/lang/String; = "IAPNet"

.field private static connect:Z

.field private static connectBP:Z

.field private static inputStream:Ljava/io/InputStream;

.field private static inputStreamBP:Ljava/io/InputStream;

.field private static isInit:Z

.field private static isWifi:Z

.field private static mContext:Landroid/content/Context;

.field private static outputStream:Ljava/io/OutputStream;

.field private static outputStreamBP:Ljava/io/OutputStream;

.field private static socketBP:Ljava/net/Socket;

.field private static socketGateway:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 38
    sput-object v0, Lcom/feelingk/iap/net/IAPNet;->mContext:Landroid/content/Context;

    .line 40
    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->isWifi:Z

    .line 41
    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->connectBP:Z

    .line 42
    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->connect:Z

    .line 43
    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->isInit:Z

    .line 45
    sput-object v0, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    .line 46
    sput-object v0, Lcom/feelingk/iap/net/IAPNet;->inputStream:Ljava/io/InputStream;

    .line 47
    sput-object v0, Lcom/feelingk/iap/net/IAPNet;->outputStream:Ljava/io/OutputStream;

    .line 49
    sput-object v0, Lcom/feelingk/iap/net/IAPNet;->socketBP:Ljava/net/Socket;

    .line 50
    sput-object v0, Lcom/feelingk/iap/net/IAPNet;->inputStreamBP:Ljava/io/InputStream;

    .line 51
    sput-object v0, Lcom/feelingk/iap/net/IAPNet;->outputStreamBP:Ljava/io/OutputStream;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static LguIapSendItemPurchaseByDanal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 27
    .param p0, "mdn"    # Ljava/lang/String;
    .param p1, "pID"    # Ljava/lang/String;
    .param p2, "pName"    # Ljava/lang/String;
    .param p3, "pCarrier"    # I
    .param p4, "TID"    # Ljava/lang/String;
    .param p5, "BPInfo"    # Ljava/lang/String;
    .param p6, "bUseTCash"    # Z
    .param p7, "encJumin"    # Ljava/lang/String;

    .prologue
    .line 2388
    const/16 v23, 0x0

    .line 2390
    .local v23, "useXPProtocol":Z
    const-string v12, "MK"

    .line 2391
    .local v12, "headerParam":Ljava/lang/String;
    const/4 v10, 0x0

    .line 2392
    .local v10, "carrierStr":Ljava/lang/String;
    const/16 v18, 0xc

    .line 2393
    .local v18, "packet_len":I
    new-instance v14, Lcom/feelingk/iap/net/MsgConfirm;

    invoke-direct {v14}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 2395
    .local v14, "itemPurchaseDanalCfm":Lcom/feelingk/iap/net/MsgConfirm;
    const/16 v22, 0x0

    .line 2396
    .local v22, "smsAuthNumberKey":Ljava/lang/String;
    const/16 v21, 0x0

    .line 2399
    .local v21, "smsAuthKey":Ljava/lang/String;
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getSmsAuthNumberKey()Ljava/lang/String;

    move-result-object v22

    .line 2401
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getSmsAuthKey()Ljava/lang/String;

    move-result-object v21

    .line 2402
    if-eqz v22, :cond_c

    .line 2403
    const-string v24, "IAPNet"

    const-string v25, "LGU+ SMS \uc778\uc99d \uc5ec\ubd80 Y"

    invoke-static/range {v24 .. v25}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2404
    const-string v24, "IAPNet"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "smsAuthNumberKey: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2405
    const-string v24, "IAPNet"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "smsAuthKey: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2411
    :goto_0
    const-string v24, "IAPNet"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "[ DEBUG ] LguIapSendItemPurchaseByDanal() STart!! "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2413
    add-int/lit8 v18, v18, 0xa

    .line 2414
    add-int/lit8 v18, v18, 0x2

    .line 2415
    add-int/lit8 v18, v18, 0xb

    .line 2416
    add-int/lit8 v18, v18, 0x1

    .line 2417
    if-eqz p7, :cond_0

    .line 2418
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v18, v24, 0x24

    .line 2419
    :cond_0
    add-int/lit8 v18, v18, 0x1

    .line 2421
    if-nez p4, :cond_1

    if-eqz p5, :cond_2

    .line 2422
    :cond_1
    const/16 v23, 0x1

    .line 2424
    :cond_2
    add-int/lit8 v18, v18, 0x1

    .line 2425
    if-eqz p4, :cond_3

    .line 2426
    add-int/lit8 v18, v18, 0x64

    .line 2428
    :cond_3
    add-int/lit8 v18, v18, 0x1

    .line 2429
    if-eqz p2, :cond_4

    .line 2430
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v24

    add-int v18, v18, v24

    .line 2432
    :cond_4
    add-int/lit8 v18, v18, 0x1

    .line 2433
    if-eqz p5, :cond_5

    .line 2434
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v24

    add-int v18, v18, v24

    .line 2440
    :cond_5
    if-eqz v22, :cond_6

    .line 2441
    add-int/lit8 v18, v18, 0x1

    .line 2442
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v24

    add-int v18, v18, v24

    .line 2444
    add-int/lit8 v18, v18, 0x1

    .line 2445
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v24

    add-int v18, v18, v24

    .line 2457
    :cond_6
    add-int/lit8 v18, v18, 0x1

    .line 2461
    const/16 v24, 0x2

    move/from16 v0, p3

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 2462
    const-string v10, "12"

    .line 2471
    :goto_1
    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 2472
    .local v17, "packetBytes":[B
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    move/from16 v0, v18

    if-lt v13, v0, :cond_f

    .line 2474
    const/4 v15, 0x0

    .line 2475
    .local v15, "offset":I
    const/4 v11, 0x0

    check-cast v11, [B

    .line 2477
    .local v11, "header":[B
    add-int/lit8 v24, v18, -0xc

    move/from16 v0, v24

    invoke-static {v12, v0}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v11

    .line 2481
    const/16 v24, 0x0

    array-length v0, v11

    move/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v17

    move/from16 v2, v25

    invoke-static {v11, v0, v1, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2482
    add-int/lit8 v15, v15, 0xc

    .line 2485
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 2486
    .local v5, "byte_pID":[B
    const/16 v24, 0x0

    array-length v0, v5

    move/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v17

    move/from16 v2, v25

    invoke-static {v5, v0, v1, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2487
    add-int/lit8 v15, v15, 0xa

    .line 2490
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 2491
    .local v4, "byte_pCarrier":[B
    const/16 v24, 0x0

    array-length v0, v4

    move/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v17

    move/from16 v2, v25

    invoke-static {v4, v0, v1, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2492
    add-int/lit8 v15, v15, 0x2

    .line 2495
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 2496
    .local v7, "byte_pMdn":[B
    const/16 v24, 0x0

    array-length v0, v7

    move/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v17

    move/from16 v2, v25

    invoke-static {v7, v0, v1, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2497
    add-int/lit8 v15, v15, 0xb

    .line 2500
    if-eqz p7, :cond_10

    .line 2501
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .local v16, "offset":I
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v17, v15

    move/from16 v15, v16

    .line 2506
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    :goto_3
    if-eqz p7, :cond_7

    .line 2507
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 2508
    .local v6, "byte_pJumin":[B
    const/16 v24, 0x0

    array-length v0, v6

    move/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v17

    move/from16 v2, v25

    invoke-static {v6, v0, v1, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2509
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v15, v24, 0x24

    .line 2511
    const-string v24, "IAPNet"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Jumin length="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "  // Value = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v6    # "byte_pJumin":[B
    :cond_7
    move/from16 v16, v15

    .line 2516
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    if-eqz p6, :cond_11

    .line 2517
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    const/16 v24, 0x59

    aput-byte v24, v17, v16

    move/from16 v16, v15

    .line 2522
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :goto_4
    if-eqz p4, :cond_12

    .line 2523
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v17, v16

    .line 2528
    :goto_5
    if-eqz p4, :cond_8

    .line 2529
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v17

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2530
    add-int/lit8 v15, v15, 0x64

    .line 2534
    :cond_8
    if-eqz p2, :cond_9

    .line 2535
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v17, v15

    .line 2536
    :cond_9
    add-int/lit8 v15, v15, 0x1

    .line 2538
    if-eqz p2, :cond_a

    .line 2539
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v17

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2540
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int v15, v15, v24

    .line 2543
    :cond_a
    if-eqz v23, :cond_13

    .line 2545
    if-eqz p5, :cond_b

    .line 2546
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v17, v15

    .line 2548
    :cond_b
    add-int/lit8 v15, v15, 0x1

    .line 2551
    if-eqz p5, :cond_17

    .line 2552
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v17

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2553
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int v15, v15, v24

    move/from16 v16, v15

    .line 2563
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :goto_6
    if-eqz v22, :cond_16

    .line 2566
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v17, v16

    .line 2569
    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 2570
    .local v9, "byte_smsAuthNumberKey":[B
    const/16 v24, 0x0

    array-length v0, v9

    move/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v17

    move/from16 v2, v25

    invoke-static {v9, v0, v1, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2571
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int v15, v15, v24

    .line 2573
    const-string v24, "IAPNet"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "smsAuthNumberKey="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "  // Value = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2576
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v17, v15

    .line 2579
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 2580
    .local v8, "byte_smsAuthKey":[B
    const/16 v24, 0x0

    array-length v0, v8

    move/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v17

    move/from16 v2, v16

    move/from16 v3, v25

    invoke-static {v8, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2581
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int v15, v16, v24

    .line 2583
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    const-string v24, "IAPNet"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "smsAuthKey="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "  // Value = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2610
    .end local v8    # "byte_smsAuthKey":[B
    .end local v9    # "byte_smsAuthNumberKey":[B
    :goto_7
    add-int/lit8 v24, v18, -0x1

    const/16 v25, 0x17

    aput-byte v25, v17, v24

    .line 2613
    invoke-static/range {v17 .. v17}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v20

    .line 2614
    .local v20, "ret":B
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPNetworkUtil;->packetDebug([BI)V

    .line 2615
    if-eqz v20, :cond_14

    .line 2616
    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/feelingk/iap/net/MsgConfirm;->setResultCode(B)V

    .line 2617
    sget-object v24, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static/range {v24 .. v24}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 2633
    :goto_8
    return-object v14

    .line 2408
    .end local v4    # "byte_pCarrier":[B
    .end local v5    # "byte_pID":[B
    .end local v7    # "byte_pMdn":[B
    .end local v11    # "header":[B
    .end local v13    # "i":I
    .end local v15    # "offset":I
    .end local v17    # "packetBytes":[B
    .end local v20    # "ret":B
    :cond_c
    const-string v24, "IAPNet"

    const-string v25, "LGU+ SMS \uc778\uc99d \uc5ec\ubd80 N"

    invoke-static/range {v24 .. v25}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2464
    :cond_d
    const/16 v24, 0x3

    move/from16 v0, p3

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 2465
    const-string v10, "13"

    goto/16 :goto_1

    .line 2468
    :cond_e
    const-string v10, "11"

    goto/16 :goto_1

    .line 2473
    .restart local v13    # "i":I
    .restart local v17    # "packetBytes":[B
    :cond_f
    const/16 v24, 0x0

    aput-byte v24, v17, v13

    .line 2472
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 2503
    .restart local v4    # "byte_pCarrier":[B
    .restart local v5    # "byte_pID":[B
    .restart local v7    # "byte_pMdn":[B
    .restart local v11    # "header":[B
    .restart local v15    # "offset":I
    :cond_10
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    const/16 v24, 0x30

    aput-byte v24, v17, v15

    move/from16 v15, v16

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    goto/16 :goto_3

    .line 2519
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_11
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    const/16 v24, 0x4e

    aput-byte v24, v17, v16

    move/from16 v16, v15

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    goto/16 :goto_4

    .line 2525
    :cond_12
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    const/16 v24, 0x0

    aput-byte v24, v17, v16

    goto/16 :goto_5

    .line 2557
    :cond_13
    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v15

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    goto/16 :goto_6

    .line 2622
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    .restart local v20    # "ret":B
    :cond_14
    invoke-static {v14}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v19

    .line 2623
    .local v19, "recv":[B
    invoke-virtual {v14}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v24

    if-eqz v24, :cond_15

    .line 2624
    sget-object v24, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static/range {v24 .. v24}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_8

    .line 2628
    :cond_15
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    .line 2629
    const-string v24, "IAPNet"

    const-string v25, "[ DEBUG ] LguIapSendItemPurchaseByDanal()  End !!!!!!!!"

    invoke-static/range {v24 .. v25}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2631
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Lcom/feelingk/iap/IAPLib;->setOTPNumber(Ljava/lang/String;)V

    goto :goto_8

    .end local v15    # "offset":I
    .end local v19    # "recv":[B
    .end local v20    # "ret":B
    .restart local v16    # "offset":I
    :cond_16
    move/from16 v15, v16

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    goto/16 :goto_7

    :cond_17
    move/from16 v16, v15

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    goto/16 :goto_6
.end method

.method protected static ReIapSendItemPurchaseByDanal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 22
    .param p0, "mdn"    # Ljava/lang/String;
    .param p1, "pID"    # Ljava/lang/String;
    .param p2, "pName"    # Ljava/lang/String;
    .param p3, "pCarrier"    # I
    .param p4, "TID"    # Ljava/lang/String;
    .param p5, "BPInfo"    # Ljava/lang/String;
    .param p6, "bUseTCash"    # Z
    .param p7, "encJumin"    # Ljava/lang/String;

    .prologue
    .line 2229
    const/16 v18, 0x0

    .line 2231
    .local v18, "useXPProtocol":Z
    const-string v9, "KX"

    .line 2232
    .local v9, "headerParam":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2233
    .local v7, "carrierStr":Ljava/lang/String;
    const/16 v15, 0xc

    .line 2234
    .local v15, "packet_len":I
    new-instance v11, Lcom/feelingk/iap/net/MsgConfirm;

    invoke-direct {v11}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 2236
    .local v11, "itemPurchaseDanalCfm":Lcom/feelingk/iap/net/MsgConfirm;
    const-string v19, "IAPNet"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "[ DEBUG ] ReIapSendItemPurchaseByDanal() STart!! "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2238
    add-int/lit8 v15, v15, 0xa

    .line 2239
    add-int/lit8 v15, v15, 0x2

    .line 2240
    add-int/lit8 v15, v15, 0xb

    .line 2241
    add-int/lit8 v15, v15, 0x1

    .line 2242
    if-eqz p7, :cond_0

    .line 2243
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v15, v19, 0x24

    .line 2244
    :cond_0
    add-int/lit8 v15, v15, 0x1

    .line 2246
    if-nez p4, :cond_1

    if-eqz p5, :cond_2

    .line 2247
    :cond_1
    const/16 v18, 0x1

    .line 2249
    :cond_2
    add-int/lit8 v15, v15, 0x1

    .line 2250
    if-eqz p4, :cond_3

    .line 2251
    add-int/lit8 v15, v15, 0x64

    .line 2253
    :cond_3
    add-int/lit8 v15, v15, 0x1

    .line 2254
    if-eqz p2, :cond_4

    .line 2255
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v19

    add-int v15, v15, v19

    .line 2257
    :cond_4
    add-int/lit8 v15, v15, 0x1

    .line 2258
    if-eqz p5, :cond_5

    .line 2259
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v19

    add-int v15, v15, v19

    .line 2263
    :cond_5
    const/16 v19, 0x2

    move/from16 v0, p3

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 2264
    const-string v7, "12"

    .line 2273
    :goto_0
    new-array v14, v15, [B

    .line 2274
    .local v14, "packetBytes":[B
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-lt v10, v15, :cond_e

    .line 2276
    const/4 v12, 0x0

    .line 2277
    .local v12, "offset":I
    const/4 v8, 0x0

    check-cast v8, [B

    .line 2279
    .local v8, "header":[B
    add-int/lit8 v19, v15, -0xc

    move/from16 v0, v19

    invoke-static {v9, v0}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v8

    .line 2283
    const/16 v19, 0x0

    array-length v0, v8

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v8, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2284
    add-int/lit8 v12, v12, 0xc

    .line 2287
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 2288
    .local v4, "byte_pID":[B
    const/16 v19, 0x0

    array-length v0, v4

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v4, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2289
    add-int/lit8 v12, v12, 0xa

    .line 2292
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 2293
    .local v3, "byte_pCarrier":[B
    const/16 v19, 0x0

    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v3, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2294
    add-int/lit8 v12, v12, 0x2

    .line 2297
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 2298
    .local v6, "byte_pMdn":[B
    const/16 v19, 0x0

    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v6, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2299
    add-int/lit8 v12, v12, 0xb

    .line 2302
    if-eqz p7, :cond_f

    .line 2303
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .local v13, "offset":I
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v14, v12

    move v12, v13

    .line 2308
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    :goto_2
    if-eqz p7, :cond_6

    .line 2309
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 2310
    .local v5, "byte_pJumin":[B
    const/16 v19, 0x0

    array-length v0, v5

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v5, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2311
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v12, v19, 0x24

    .line 2313
    const-string v19, "IAPNet"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Jumin length="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "  // Value = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v5    # "byte_pJumin":[B
    :cond_6
    move v13, v12

    .line 2317
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    if-eqz p6, :cond_10

    .line 2318
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    const/16 v19, 0x59

    aput-byte v19, v14, v13

    move v13, v12

    .line 2323
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :goto_3
    if-eqz p4, :cond_11

    .line 2324
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v14, v13

    .line 2329
    :goto_4
    if-eqz p4, :cond_7

    .line 2330
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v14, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2331
    add-int/lit8 v12, v12, 0x64

    .line 2335
    :cond_7
    if-eqz p2, :cond_8

    .line 2336
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v14, v12

    .line 2337
    :cond_8
    add-int/lit8 v12, v12, 0x1

    .line 2339
    if-eqz p2, :cond_9

    .line 2340
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v14, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2341
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int v12, v12, v19

    .line 2344
    :cond_9
    if-eqz v18, :cond_b

    .line 2346
    if-eqz p5, :cond_a

    .line 2347
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v14, v12

    .line 2349
    :cond_a
    add-int/lit8 v12, v12, 0x1

    .line 2352
    if-eqz p5, :cond_b

    .line 2353
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v14, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2354
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int v12, v12, v19

    .line 2359
    :cond_b
    add-int/lit8 v19, v15, -0x1

    const/16 v20, 0x17

    aput-byte v20, v14, v19

    .line 2362
    invoke-static {v14}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v17

    .line 2363
    .local v17, "ret":B
    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v14, v0}, Lcom/feelingk/iap/net/IAPNetworkUtil;->packetDebug([BI)V

    .line 2364
    if-eqz v17, :cond_12

    .line 2365
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/feelingk/iap/net/MsgConfirm;->setResultCode(B)V

    .line 2366
    sget-object v19, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static/range {v19 .. v19}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 2379
    :goto_5
    return-object v11

    .line 2266
    .end local v3    # "byte_pCarrier":[B
    .end local v4    # "byte_pID":[B
    .end local v6    # "byte_pMdn":[B
    .end local v8    # "header":[B
    .end local v10    # "i":I
    .end local v12    # "offset":I
    .end local v14    # "packetBytes":[B
    .end local v17    # "ret":B
    :cond_c
    const/16 v19, 0x3

    move/from16 v0, p3

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 2267
    const-string v7, "13"

    goto/16 :goto_0

    .line 2270
    :cond_d
    const-string v7, "11"

    goto/16 :goto_0

    .line 2275
    .restart local v10    # "i":I
    .restart local v14    # "packetBytes":[B
    :cond_e
    const/16 v19, 0x0

    aput-byte v19, v14, v10

    .line 2274
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 2305
    .restart local v3    # "byte_pCarrier":[B
    .restart local v4    # "byte_pID":[B
    .restart local v6    # "byte_pMdn":[B
    .restart local v8    # "header":[B
    .restart local v12    # "offset":I
    :cond_f
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    const/16 v19, 0x30

    aput-byte v19, v14, v12

    move v12, v13

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto/16 :goto_2

    .line 2320
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_10
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    const/16 v19, 0x4e

    aput-byte v19, v14, v13

    move v13, v12

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    goto/16 :goto_3

    .line 2326
    :cond_11
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    const/16 v19, 0x0

    aput-byte v19, v14, v13

    goto/16 :goto_4

    .line 2371
    .restart local v17    # "ret":B
    :cond_12
    invoke-static {v11}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v16

    .line 2372
    .local v16, "recv":[B
    invoke-virtual {v11}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v19

    if-eqz v19, :cond_13

    .line 2373
    sget-object v19, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static/range {v19 .. v19}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_5

    .line 2377
    :cond_13
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    .line 2378
    const-string v19, "IAPNet"

    const-string v20, "[ DEBUG ] ReIapSendItemPurchaseByDanal()  End !!!!!!!!"

    invoke-static/range {v19 .. v20}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method protected static iapClose(Z)I
    .locals 4
    .param p0, "isResRelease"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 163
    const-string v0, "IAPNet"

    const-string v1, "[ DEBUG ] Socket Close!"

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :try_start_0
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 166
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 173
    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 174
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    :cond_1
    :goto_1
    :try_start_2
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    if-eqz v0, :cond_2

    .line 182
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 187
    :cond_2
    :goto_2
    sput-object v3, Lcom/feelingk/iap/net/IAPNet;->inputStream:Ljava/io/InputStream;

    .line 188
    sput-object v3, Lcom/feelingk/iap/net/IAPNet;->outputStream:Ljava/io/OutputStream;

    .line 189
    sput-object v3, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    .line 191
    sput-boolean v2, Lcom/feelingk/iap/net/IAPNet;->connect:Z

    .line 192
    sput-boolean v2, Lcom/feelingk/iap/net/IAPNet;->isInit:Z

    .line 195
    return v2

    .line 184
    :catch_0
    move-exception v0

    goto :goto_2

    .line 176
    :catch_1
    move-exception v0

    goto :goto_1

    .line 168
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method protected static iapCloseBP(Z)I
    .locals 3
    .param p0, "isResRelease"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 824
    :try_start_0
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->inputStreamBP:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 825
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->inputStreamBP:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 832
    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->outputStreamBP:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 833
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->outputStreamBP:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 839
    :cond_1
    :goto_1
    :try_start_2
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->socketBP:Ljava/net/Socket;

    if-eqz v0, :cond_2

    .line 840
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->socketBP:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 845
    :cond_2
    :goto_2
    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->inputStreamBP:Ljava/io/InputStream;

    .line 846
    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->outputStreamBP:Ljava/io/OutputStream;

    .line 847
    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->socketBP:Ljava/net/Socket;

    .line 849
    sput-boolean v2, Lcom/feelingk/iap/net/IAPNet;->connectBP:Z

    .line 850
    return v2

    .line 842
    :catch_0
    move-exception v0

    goto :goto_2

    .line 835
    :catch_1
    move-exception v0

    goto :goto_1

    .line 827
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method protected static iapConnect(Lcom/feelingk/iap/net/ServerInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Lcom/feelingk/iap/net/InitConfirm;
    .locals 16
    .param p0, "info"    # Lcom/feelingk/iap/net/ServerInfo;
    .param p1, "telecom"    # I
    .param p2, "mcid"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;
    .param p4, "bpServerIP"    # Ljava/lang/String;
    .param p5, "bpServerPort"    # I
    .param p6, "pID"    # Ljava/lang/String;
    .param p7, "pTID"    # Ljava/lang/String;
    .param p8, "pEncJumin"    # Ljava/lang/String;
    .param p9, "useBpServer"    # Z
    .param p10, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    sput-object p10, Lcom/feelingk/iap/net/IAPNet;->mContext:Landroid/content/Context;

    .line 69
    new-instance v0, Lcom/feelingk/iap/net/InitConfirm;

    invoke-direct {v0}, Lcom/feelingk/iap/net/InitConfirm;-><init>()V

    .line 70
    .local v0, "initConfirm":Lcom/feelingk/iap/net/InitConfirm;
    const-string v1, "IAPNet"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ DEBUG ] Server connect - Start : iapConnect Wifi= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/feelingk/iap/net/IAPNet;->isWifi:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-boolean v1, Lcom/feelingk/iap/net/IAPNet;->connect:Z

    if-eqz v1, :cond_1

    .line 72
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    .line 154
    :cond_0
    :goto_0
    return-object v0

    .line 77
    :cond_1
    :try_start_0
    sget-boolean v1, Lcom/feelingk/iap/net/IAPNet;->isWifi:Z

    if-eqz v1, :cond_4

    .line 78
    new-instance v13, Ljava/net/InetSocketAddress;

    invoke-virtual/range {p0 .. p0}, Lcom/feelingk/iap/net/ServerInfo;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/feelingk/iap/net/ServerInfo;->getPort()I

    move-result v2

    invoke-direct {v13, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 79
    .local v13, "socketAddress":Ljava/net/SocketAddress;
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v14

    .line 80
    .local v14, "sslcontext":Ljavax/net/ssl/SSLContext;
    const/4 v1, 0x1

    new-array v15, v1, [Lcom/feelingk/iap/net/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/feelingk/iap/net/TrustManager;

    invoke-direct {v2}, Lcom/feelingk/iap/net/TrustManager;-><init>()V

    aput-object v2, v15, v1

    .line 82
    .local v15, "trustManagers":[Lcom/feelingk/iap/net/TrustManager;
    const/4 v1, 0x0

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v14, v1, v15, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 84
    invoke-virtual {v14}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v10

    .line 86
    .local v10, "FACTORY":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {v10}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    .line 87
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    const/16 v2, 0x4e20

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 88
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    const/16 v2, 0x4e20

    invoke-virtual {v1, v13, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 90
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->inputStream:Ljava/io/InputStream;

    .line 91
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->outputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 128
    .end local v10    # "FACTORY":Ljavax/net/ssl/SSLSocketFactory;
    .end local v13    # "socketAddress":Ljava/net/SocketAddress;
    .end local v14    # "sslcontext":Ljavax/net/ssl/SSLContext;
    .end local v15    # "trustManagers":[Lcom/feelingk/iap/net/TrustManager;
    :goto_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->connect:Z

    .line 129
    const-string v1, "IAPNet"

    const-string v2, "[ DEBUG ] Server connect - Complete!!!"

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    .line 132
    invoke-static/range {v0 .. v9}, Lcom/feelingk/iap/net/IAPNet;->iapSendInit(Lcom/feelingk/iap/net/InitConfirm;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 133
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getResultCode()B

    move-result v1

    if-eqz v1, :cond_5

    .line 135
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getResultCode()B

    move-result v1

    const/4 v2, -0x7

    if-eq v1, v2, :cond_2

    .line 136
    const/4 v1, 0x0

    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->isInit:Z

    .line 137
    :cond_2
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getResultCode()B

    move-result v1

    const/4 v2, -0x5

    if-eq v1, v2, :cond_3

    .line 138
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getResultCode()B

    move-result v1

    const/4 v2, -0x4

    if-ne v1, v2, :cond_0

    .line 140
    :cond_3
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v1}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 94
    :cond_4
    :try_start_1
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    .line 95
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    const/16 v2, 0x4e20

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 96
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-virtual/range {p0 .. p0}, Lcom/feelingk/iap/net/ServerInfo;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/feelingk/iap/net/ServerInfo;->getPort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v3, 0x4e20

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 98
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->inputStream:Ljava/io/InputStream;

    .line 99
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->outputStream:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 102
    :catch_0
    move-exception v11

    .line 103
    .local v11, "e":Ljava/net/SocketTimeoutException;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->connect:Z

    .line 104
    const/16 v1, -0xb

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    .line 105
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v1}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v11}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    goto/16 :goto_0

    .line 109
    .end local v11    # "e":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v11

    .line 110
    .local v11, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->connect:Z

    .line 111
    const-string v1, "IAPNet"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ Exception ] iapConnect() DUMP!!! :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    .line 113
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v1}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 117
    .end local v11    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v11

    .line 118
    .local v11, "e":Ljava/lang/Exception;
    const-string v1, "IAPNet"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ Exception ] iapConnect() ~~~~~DUMP~! :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v1, 0x0

    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->connect:Z

    .line 121
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    .line 122
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v1}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->SetDumpMessage(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 145
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v12

    .line 146
    .local v12, "recv":[B
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getResultCode()B

    move-result v1

    if-eqz v1, :cond_6

    .line 147
    const/4 v1, 0x0

    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->isInit:Z

    .line 148
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v1}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    :cond_6
    invoke-virtual {v0, v12}, Lcom/feelingk/iap/net/InitConfirm;->parse([B)V

    goto/16 :goto_0
.end method

.method protected static iapConnectBP(Lcom/feelingk/iap/net/ServerInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/feelingk/iap/net/InitConfirm;
    .locals 11
    .param p0, "info"    # Lcom/feelingk/iap/net/ServerInfo;
    .param p1, "telecom"    # I
    .param p2, "mcid"    # Ljava/lang/String;
    .param p3, "min"    # Ljava/lang/String;
    .param p4, "bpServerIP"    # Ljava/lang/String;
    .param p5, "bpServerPort"    # I

    .prologue
    .line 757
    new-instance v0, Lcom/feelingk/iap/net/InitConfirm;

    invoke-direct {v0}, Lcom/feelingk/iap/net/InitConfirm;-><init>()V

    .line 759
    .local v0, "init":Lcom/feelingk/iap/net/InitConfirm;
    const-string v1, "IAPNet"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ DEBUG ] iapConnectBP - Start! isWifi= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/feelingk/iap/net/IAPNet;->isWifi:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    sget-boolean v1, Lcom/feelingk/iap/net/IAPNet;->connectBP:Z

    if-eqz v1, :cond_0

    .line 761
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    .line 814
    :goto_0
    return-object v0

    .line 766
    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/feelingk/iap/net/IAPNet;->isWifi:Z

    if-eqz v1, :cond_1

    .line 767
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v7

    .line 768
    .local v7, "context":Ljavax/net/ssl/SSLContext;
    const/4 v10, 0x0

    check-cast v10, [Lcom/feelingk/iap/net/TrustManager;

    .line 769
    .local v10, "trustManagers":[Lcom/feelingk/iap/net/TrustManager;
    const/4 v1, 0x1

    new-array v10, v1, [Lcom/feelingk/iap/net/TrustManager;

    .end local v10    # "trustManagers":[Lcom/feelingk/iap/net/TrustManager;
    const/4 v1, 0x0

    new-instance v2, Lcom/feelingk/iap/net/TrustManager;

    invoke-direct {v2}, Lcom/feelingk/iap/net/TrustManager;-><init>()V

    aput-object v2, v10, v1

    .line 770
    .restart local v10    # "trustManagers":[Lcom/feelingk/iap/net/TrustManager;
    const/4 v1, 0x0

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v7, v1, v10, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 771
    invoke-virtual {v7}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    .line 772
    .local v6, "FACTORY":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->socketBP:Ljava/net/Socket;

    .line 777
    .end local v6    # "FACTORY":Ljavax/net/ssl/SSLSocketFactory;
    .end local v7    # "context":Ljavax/net/ssl/SSLContext;
    .end local v10    # "trustManagers":[Lcom/feelingk/iap/net/TrustManager;
    :goto_1
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketBP:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lcom/feelingk/iap/net/ServerInfo;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/feelingk/iap/net/ServerInfo;->getPort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v3, 0x2710

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 779
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketBP:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->inputStreamBP:Ljava/io/InputStream;

    .line 780
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketBP:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->outputStreamBP:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    const/4 v1, 0x1

    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->connectBP:Z

    .line 793
    const-string v1, "IAPNet"

    const-string v2, "[ DEBUG ] iapConnectBP - Connection Complete!"

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/feelingk/iap/net/IAPNet;->iapSendInitBP(Lcom/feelingk/iap/net/InitConfirm;ILjava/lang/String;Ljava/lang/String;[BI)V

    .line 797
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getResultCode()B

    move-result v1

    if-eqz v1, :cond_2

    .line 798
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getResultCode()B

    move-result v1

    const/4 v2, -0x7

    if-eq v1, v2, :cond_2

    .line 799
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v1}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 775
    :cond_1
    :try_start_1
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->socketBP:Ljava/net/Socket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 782
    :catch_0
    move-exception v8

    .line 783
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "IAPNet"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ Exception ] iapConnectBP() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const/4 v1, 0x0

    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->connectBP:Z

    .line 785
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    .line 786
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v1}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 805
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->iapReceiveBP(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v9

    .line 806
    .local v9, "recv":[B
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getResultCode()B

    move-result v1

    if-eqz v1, :cond_3

    .line 807
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v1}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 812
    :cond_3
    invoke-virtual {v0, v9}, Lcom/feelingk/iap/net/InitConfirm;->parse([B)V

    goto/16 :goto_0
.end method

.method protected static iapReAuth(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/feelingk/iap/net/InitConfirm;
    .locals 11
    .param p0, "pTelecom"    # I
    .param p1, "applicationID"    # Ljava/lang/String;
    .param p2, "pJuminNumber"    # Ljava/lang/String;
    .param p3, "MDN"    # Ljava/lang/String;
    .param p4, "bpServerIP"    # Ljava/lang/String;
    .param p5, "bpServerPort"    # I
    .param p6, "pID"    # Ljava/lang/String;
    .param p7, "pTID"    # Ljava/lang/String;

    .prologue
    .line 598
    new-instance v0, Lcom/feelingk/iap/net/InitConfirm;

    invoke-direct {v0}, Lcom/feelingk/iap/net/InitConfirm;-><init>()V

    .line 601
    .local v0, "initConfirm":Lcom/feelingk/iap/net/InitConfirm;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->isInit:Z

    .line 604
    const/4 v9, 0x0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v9}, Lcom/feelingk/iap/net/IAPNet;->iapSendInit(Lcom/feelingk/iap/net/InitConfirm;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 606
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getResultCode()B

    move-result v1

    if-eqz v1, :cond_0

    .line 618
    :goto_0
    return-object v0

    .line 610
    :cond_0
    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v10

    .line 611
    .local v10, "recv":[B
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getResultCode()B

    move-result v1

    if-eqz v1, :cond_1

    .line 612
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v1}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 617
    :cond_1
    invoke-virtual {v0, v10}, Lcom/feelingk/iap/net/InitConfirm;->parse([B)V

    goto :goto_0
.end method

.method private static declared-synchronized iapReceive(Lcom/feelingk/iap/net/Confirm;)[B
    .locals 15
    .param p0, "confirm"    # Lcom/feelingk/iap/net/Confirm;

    .prologue
    const/16 v14, 0xc

    const/4 v13, -0x1

    const/4 v8, 0x0

    .line 662
    const-class v9, Lcom/feelingk/iap/net/IAPNet;

    monitor-enter v9

    :try_start_0
    const-string v10, "IAPNet"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[ DEBUG ] iapReceive() Header Start ("

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v12, Lcom/feelingk/iap/net/IAPNet;->isInit:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    sget-boolean v10, Lcom/feelingk/iap/net/IAPNet;->isInit:Z

    if-nez v10, :cond_0

    .line 664
    const/4 v10, -0x6

    invoke-virtual {p0, v10}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v8

    .line 741
    :goto_0
    monitor-exit v9

    return-object v7

    .line 668
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    check-cast v4, [B

    .line 669
    .local v4, "header":[B
    const/4 v0, 0x0

    check-cast v0, [B

    .line 670
    .local v0, "data":[B
    const/4 v7, 0x0

    check-cast v7, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 671
    .local v7, "returnData":[B
    const/4 v6, 0x0

    .line 672
    .local v6, "receivedBytes":I
    const/4 v5, 0x0

    .line 673
    .local v5, "reads":I
    const/4 v1, 0x0

    .line 677
    .local v1, "data_len":I
    const/16 v10, 0xc

    :try_start_2
    new-array v4, v10, [B

    .line 679
    :goto_1
    if-lt v6, v14, :cond_3

    .line 693
    :cond_1
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x2

    const/16 v12, 0xa

    invoke-direct {v10, v4, v11, v12}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 695
    .local v2, "datalength":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 696
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 702
    new-array v0, v1, [B

    .line 703
    const/4 v6, 0x0

    .line 706
    :goto_2
    if-lt v6, v1, :cond_6

    .line 714
    :cond_2
    const/16 v10, 0x17

    add-int/lit8 v11, v1, -0x1

    aget-byte v11, v0, v11

    if-eq v10, v11, :cond_7

    .line 715
    const-string v10, "IAPNet"

    const-string v11, "[ DEBUG ] IAP_ERR_INVALIDPARITY ="

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const/4 v10, -0x8

    invoke-virtual {p0, v10}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V

    move-object v7, v8

    .line 717
    goto :goto_0

    .line 680
    .end local v2    # "datalength":Ljava/lang/String;
    :cond_3
    sget-object v10, Lcom/feelingk/iap/net/IAPNet;->inputStream:Ljava/io/InputStream;

    array-length v11, v4

    sub-int/2addr v11, v6

    invoke-virtual {v10, v4, v6, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 682
    if-eq v5, v13, :cond_4

    .line 683
    add-int/2addr v6, v5

    goto :goto_1

    .line 684
    :cond_4
    if-ne v5, v13, :cond_1

    .line 686
    const/4 v10, -0x5

    invoke-virtual {p0, v10}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V

    move-object v7, v8

    .line 687
    goto :goto_0

    .line 698
    .restart local v2    # "datalength":Ljava/lang/String;
    :cond_5
    const/4 v10, -0x5

    invoke-virtual {p0, v10}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V

    move-object v7, v8

    .line 699
    goto :goto_0

    .line 707
    :cond_6
    sget-object v10, Lcom/feelingk/iap/net/IAPNet;->inputStream:Ljava/io/InputStream;

    array-length v11, v0

    sub-int/2addr v11, v6

    invoke-virtual {v10, v0, v6, v11}, Ljava/io/InputStream;->read([BII)I
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    .line 708
    if-eq v5, v13, :cond_2

    .line 709
    add-int/2addr v6, v5

    goto :goto_2

    .line 720
    .end local v2    # "datalength":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 721
    .local v3, "e":Ljava/net/SocketTimeoutException;
    :try_start_3
    const-string v10, "IAPNet"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[ Exception ] iapReceive() "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const/16 v10, -0xd

    invoke-virtual {p0, v10}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V

    move-object v7, v8

    .line 723
    goto/16 :goto_0

    .line 725
    .end local v3    # "e":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v3

    .line 726
    .local v3, "e":Ljava/lang/Exception;
    const-string v10, "IAPNet"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[ Exception ] iapReceive() "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const/4 v10, -0x5

    invoke-virtual {p0, v10}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V

    move-object v7, v8

    .line 729
    goto/16 :goto_0

    .line 732
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "datalength":Ljava/lang/String;
    :cond_7
    array-length v8, v4

    array-length v10, v0

    add-int/2addr v8, v10

    new-array v7, v8, [B

    .line 733
    const/4 v8, 0x0

    const/4 v10, 0x0

    array-length v11, v4

    invoke-static {v4, v8, v7, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 734
    const/4 v8, 0x0

    array-length v10, v4

    array-length v11, v0

    add-int/lit8 v11, v11, -0x1

    invoke-static {v0, v8, v7, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 736
    if-eqz p0, :cond_8

    .line 737
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V

    .line 738
    :cond_8
    array-length v8, v4

    array-length v10, v0

    add-int/2addr v8, v10

    invoke-static {v7, v8}, Lcom/feelingk/iap/net/IAPNetworkUtil;->packetDebug([BI)V

    .line 740
    const-string v8, "IAPNet"

    const-string v10, "[ DEBUG ] iapReceive() Success!!  "

    invoke-static {v8, v10}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 662
    .end local v0    # "data":[B
    .end local v1    # "data_len":I
    .end local v2    # "datalength":Ljava/lang/String;
    .end local v4    # "header":[B
    .end local v5    # "reads":I
    .end local v6    # "receivedBytes":I
    .end local v7    # "returnData":[B
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method private static declared-synchronized iapReceiveBP(Lcom/feelingk/iap/net/Confirm;)[B
    .locals 14
    .param p0, "c"    # Lcom/feelingk/iap/net/Confirm;

    .prologue
    const/16 v12, 0xc

    const/4 v13, -0x1

    const/4 v8, 0x0

    .line 1047
    const-class v9, Lcom/feelingk/iap/net/IAPNet;

    monitor-enter v9

    const/4 v4, 0x0

    :try_start_0
    check-cast v4, [B

    .line 1048
    .local v4, "header":[B
    const/4 v0, 0x0

    check-cast v0, [B

    .line 1049
    .local v0, "data":[B
    const/4 v7, 0x0

    check-cast v7, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1050
    .local v7, "returnData":[B
    const/4 v6, 0x0

    .line 1051
    .local v6, "receivedBytes":I
    const/4 v5, 0x0

    .line 1052
    .local v5, "reads":I
    const/4 v1, 0x0

    .line 1055
    .local v1, "data_len":I
    const/16 v10, 0xc

    :try_start_1
    new-array v4, v10, [B

    .line 1057
    :goto_0
    if-lt v6, v12, :cond_3

    .line 1069
    :cond_0
    const-string v10, "IAPNet"

    const-string v11, "[ DEBUG ] iapReceiveBP() Header Receive Complete!"

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x2

    const/16 v12, 0xa

    invoke-direct {v10, v4, v11, v12}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1072
    .local v2, "datalength":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 1073
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1078
    const-string v10, "IAPNet"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[ DEBUG ] iapReceiveBP() Data Length: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    new-array v0, v1, [B

    .line 1081
    const/4 v6, 0x0

    .line 1082
    :goto_1
    if-lt v6, v1, :cond_6

    .line 1093
    :cond_1
    add-int/lit8 v10, v1, -0x1

    aget-byte v8, v0, v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1103
    :try_start_2
    array-length v8, v4

    array-length v10, v0

    add-int/2addr v8, v10

    new-array v7, v8, [B

    .line 1104
    const/4 v8, 0x0

    const/4 v10, 0x0

    array-length v11, v4

    invoke-static {v4, v8, v7, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1105
    const/4 v8, 0x0

    array-length v10, v4

    array-length v11, v0

    add-int/lit8 v11, v11, -0x1

    invoke-static {v0, v8, v7, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1107
    if-eqz p0, :cond_2

    .line 1108
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V

    .line 1110
    :cond_2
    array-length v8, v4

    array-length v10, v0

    add-int/2addr v8, v10

    invoke-static {v7, v8}, Lcom/feelingk/iap/net/IAPNetworkUtil;->packetDebug([BI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v8, v7

    .line 1111
    .end local v2    # "datalength":Ljava/lang/String;
    :goto_2
    monitor-exit v9

    return-object v8

    .line 1058
    :cond_3
    :try_start_3
    sget-object v10, Lcom/feelingk/iap/net/IAPNet;->inputStreamBP:Ljava/io/InputStream;

    array-length v11, v4

    sub-int/2addr v11, v6

    invoke-virtual {v10, v4, v6, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 1060
    if-eq v5, v13, :cond_4

    .line 1061
    add-int/2addr v6, v5

    goto :goto_0

    .line 1062
    :cond_4
    if-ne v5, v13, :cond_0

    .line 1064
    const/4 v10, -0x5

    invoke-virtual {p0, v10}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1097
    :catch_0
    move-exception v3

    .line 1098
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v10, "IAPNet"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[ Exception ] iapReceiveBP() "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    const/4 v10, -0x5

    invoke-virtual {p0, v10}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 1047
    .end local v0    # "data":[B
    .end local v1    # "data_len":I
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "header":[B
    .end local v5    # "reads":I
    .end local v6    # "receivedBytes":I
    .end local v7    # "returnData":[B
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 1075
    .restart local v0    # "data":[B
    .restart local v1    # "data_len":I
    .restart local v2    # "datalength":Ljava/lang/String;
    .restart local v4    # "header":[B
    .restart local v5    # "reads":I
    .restart local v6    # "receivedBytes":I
    .restart local v7    # "returnData":[B
    :cond_5
    const/4 v10, -0x5

    :try_start_5
    invoke-virtual {p0, v10}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V

    goto :goto_2

    .line 1083
    :cond_6
    sget-object v10, Lcom/feelingk/iap/net/IAPNet;->inputStreamBP:Ljava/io/InputStream;

    array-length v11, v0

    sub-int/2addr v11, v6

    invoke-virtual {v10, v0, v6, v11}, Ljava/io/InputStream;->read([BII)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v5

    .line 1085
    if-eq v5, v13, :cond_1

    .line 1086
    add-int/2addr v6, v5

    goto :goto_1
.end method

.method protected static iapSendAutoPurchaseDismiss(Ljava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 12
    .param p0, "pID"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 3010
    new-instance v3, Lcom/feelingk/iap/net/MsgConfirm;

    invoke-direct {v3}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 3012
    .local v3, "msgConfirm":Lcom/feelingk/iap/net/MsgConfirm;
    const-string v9, "IAPNet"

    const-string v10, "[ DEBUG ] iapSendPurchaseDismiss()"

    invoke-static {v9, v10}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3014
    const/16 v6, 0xc

    .line 3017
    .local v6, "packet_len":I
    add-int/lit8 v6, v6, 0xa

    .line 3018
    add-int/lit8 v6, v6, 0x1

    .line 3020
    new-array v5, v6, [B

    .line 3021
    .local v5, "packetBytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 3024
    const/4 v4, 0x0

    .line 3026
    .local v4, "offset":I
    const-string v9, "JP"

    .line 3027
    const/16 v10, 0xb

    .line 3026
    invoke-static {v9, v10}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v1

    .line 3030
    .local v1, "header":[B
    array-length v9, v1

    invoke-static {v1, v11, v5, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3031
    add-int/lit8 v4, v4, 0xc

    .line 3033
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 3034
    .local v0, "byte_pID":[B
    array-length v9, v0

    invoke-static {v0, v11, v5, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3036
    const/16 v9, 0x16

    const/16 v10, 0x17

    aput-byte v10, v5, v9

    .line 3039
    invoke-static {v5}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v8

    .line 3040
    .local v8, "ret":B
    if-eqz v8, :cond_1

    .line 3041
    invoke-virtual {v3, v8}, Lcom/feelingk/iap/net/MsgConfirm;->setResultCode(B)V

    .line 3043
    sget-object v9, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v9}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 3059
    :goto_1
    return-object v3

    .line 3022
    .end local v0    # "byte_pID":[B
    .end local v1    # "header":[B
    .end local v4    # "offset":I
    .end local v8    # "ret":B
    :cond_0
    aput-byte v11, v5, v2

    .line 3021
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3048
    .restart local v0    # "byte_pID":[B
    .restart local v1    # "header":[B
    .restart local v4    # "offset":I
    .restart local v8    # "ret":B
    :cond_1
    invoke-static {v3}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v7

    .line 3049
    .local v7, "recv":[B
    invoke-virtual {v3}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v9

    if-eqz v9, :cond_2

    .line 3051
    sget-object v9, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v9}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 3055
    :cond_2
    invoke-virtual {v3, v7}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    .line 3057
    const-string v9, "IAPNet"

    const-string v10, "[ DEBUG ] iapSendPurchaseDismiss() End"

    invoke-static {v9, v10}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected static iapSendAutoPurchaseDismissCheck(Ljava/lang/String;)Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;
    .locals 12
    .param p0, "pID"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 3065
    new-instance v0, Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;

    invoke-direct {v0}, Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;-><init>()V

    .line 3067
    .local v0, "autoPurchaseDismissCheckConfirm":Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;
    const-string v9, "IAPNet"

    const-string v10, "[ DEBUG ] iapSendPurchaseDismissCheck()"

    invoke-static {v9, v10}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3069
    const/16 v6, 0xc

    .line 3072
    .local v6, "packet_len":I
    add-int/lit8 v6, v6, 0xa

    .line 3073
    add-int/lit8 v6, v6, 0x1

    .line 3075
    new-array v5, v6, [B

    .line 3076
    .local v5, "packetBytes":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v6, :cond_0

    .line 3079
    const/4 v4, 0x0

    .line 3081
    .local v4, "offset":I
    const-string v9, "CP"

    .line 3082
    const/16 v10, 0xb

    .line 3081
    invoke-static {v9, v10}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v2

    .line 3085
    .local v2, "header":[B
    array-length v9, v2

    invoke-static {v2, v11, v5, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3086
    add-int/lit8 v4, v4, 0xc

    .line 3088
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 3089
    .local v1, "byte_pID":[B
    array-length v9, v1

    invoke-static {v1, v11, v5, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3091
    const/16 v9, 0x16

    const/16 v10, 0x17

    aput-byte v10, v5, v9

    .line 3094
    invoke-static {v5}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v8

    .line 3095
    .local v8, "ret":B
    if-eqz v8, :cond_1

    .line 3096
    invoke-virtual {v0, v8}, Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;->setResultCode(B)V

    .line 3098
    sget-object v9, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v9}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 3114
    :goto_1
    return-object v0

    .line 3077
    .end local v1    # "byte_pID":[B
    .end local v2    # "header":[B
    .end local v4    # "offset":I
    .end local v8    # "ret":B
    :cond_0
    aput-byte v11, v5, v3

    .line 3076
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3103
    .restart local v1    # "byte_pID":[B
    .restart local v2    # "header":[B
    .restart local v4    # "offset":I
    .restart local v8    # "ret":B
    :cond_1
    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v7

    .line 3104
    .local v7, "recv":[B
    invoke-virtual {v0}, Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;->getResultCode()B

    move-result v9

    if-eqz v9, :cond_2

    .line 3106
    sget-object v9, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v9}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 3110
    :cond_2
    invoke-virtual {v0, v7}, Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;->parse([B)V

    .line 3112
    const-string v9, "IAPNet"

    const-string v10, "[ DEBUG ] iapSendPurchaseDismissCheck() End"

    invoke-static {v9, v10}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected static iapSendCommonInfo()Lcom/feelingk/iap/net/MsgConfirm;
    .locals 23

    .prologue
    .line 379
    new-instance v12, Lcom/feelingk/iap/net/MsgConfirm;

    invoke-direct {v12}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 380
    .local v12, "msgConfirm":Lcom/feelingk/iap/net/MsgConfirm;
    const-string v20, "IAPNet"

    const-string v21, "====================iapSendCommonInfo  Start()===================="

    invoke-static/range {v20 .. v21}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v19, "IR"

    .line 385
    .local v19, "sHeaderPacket":Ljava/lang/String;
    sget-object v20, Lcom/feelingk/iap/net/IAPNet;->mContext:Landroid/content/Context;

    invoke-static/range {v20 .. v20}, Lcom/feelingk/iap/util/CommonF;->getModelName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 386
    .local v11, "modelName":Ljava/lang/String;
    const-string v20, "IAPNet"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "modelName= "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    sget-object v20, Lcom/feelingk/iap/net/IAPNet;->mContext:Landroid/content/Context;

    invoke-static/range {v20 .. v20}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v7

    .line 389
    .local v7, "carrier":I
    const-string v20, "IAPNet"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Carrier= "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    sget-object v20, Lcom/feelingk/iap/net/IAPNet;->mContext:Landroid/content/Context;

    invoke-static/range {v20 .. v20}, Lcom/feelingk/iap/util/CommonF;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 392
    .local v8, "encImei":Ljava/lang/String;
    const-string v20, "IAPNet"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "encImei= "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-static {v7}, Lcom/feelingk/iap/util/CommonF;->getUAProfileData(I)Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, "UACD":Ljava/lang/String;
    const-string v20, "IAPNet"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "UACD= "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const/16 v16, 0xc

    .line 401
    .local v16, "packet_len":I
    add-int/lit8 v16, v16, 0x32

    .line 402
    add-int/lit8 v16, v16, 0x4

    .line 403
    add-int/lit8 v16, v16, 0x1

    .line 404
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v16, v20, 0x43

    .line 405
    add-int/lit8 v16, v16, 0x4

    .line 406
    add-int/lit8 v16, v16, 0x1

    .line 408
    move/from16 v0, v16

    new-array v15, v0, [B

    .line 410
    .local v15, "packetBytes":[B
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move/from16 v0, v16

    if-lt v10, v0, :cond_0

    .line 413
    const/4 v13, 0x0

    .line 414
    .local v13, "offset":I
    add-int/lit8 v20, v16, -0xc

    invoke-static/range {v19 .. v20}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v9

    .line 417
    .local v9, "header":[B
    const/16 v20, 0x0

    array-length v0, v9

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v9, v0, v15, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    add-int/lit8 v13, v13, 0xc

    .line 421
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 422
    .local v5, "byte_pModelName":[B
    const/16 v20, 0x0

    array-length v0, v5

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v5, v0, v15, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    add-int/lit8 v13, v13, 0x32

    .line 426
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 427
    .local v3, "byte_mUACD":[B
    const/16 v20, 0x0

    array-length v0, v3

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v3, v0, v15, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 428
    add-int/lit8 v13, v13, 0x4

    .line 431
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "offset":I
    .local v14, "offset":I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v15, v13

    .line 434
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 435
    .local v4, "byte_pEncImei":[B
    const/16 v20, 0x0

    array-length v0, v4

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v4, v0, v15, v14, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 436
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v13, v20, 0x43

    .line 439
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    const-string v20, "0002"

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 440
    .local v6, "byte_versionCode":[B
    const/16 v20, 0x0

    array-length v0, v6

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v6, v0, v15, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 441
    add-int/lit8 v13, v13, 0x4

    .line 444
    add-int/lit8 v20, v16, -0x1

    const/16 v21, 0x17

    aput-byte v21, v15, v20

    .line 446
    invoke-static {v15}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v18

    .line 447
    .local v18, "ret":B
    if-eqz v18, :cond_1

    .line 448
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/feelingk/iap/net/MsgConfirm;->setResultCode(B)V

    .line 449
    sget-object v20, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static/range {v20 .. v20}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 464
    :goto_1
    return-object v12

    .line 411
    .end local v3    # "byte_mUACD":[B
    .end local v4    # "byte_pEncImei":[B
    .end local v5    # "byte_pModelName":[B
    .end local v6    # "byte_versionCode":[B
    .end local v9    # "header":[B
    .end local v13    # "offset":I
    .end local v18    # "ret":B
    :cond_0
    const/16 v20, 0x0

    aput-byte v20, v15, v10

    .line 410
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 454
    .restart local v3    # "byte_mUACD":[B
    .restart local v4    # "byte_pEncImei":[B
    .restart local v5    # "byte_pModelName":[B
    .restart local v6    # "byte_versionCode":[B
    .restart local v9    # "header":[B
    .restart local v13    # "offset":I
    .restart local v18    # "ret":B
    :cond_1
    invoke-static {v12}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v17

    .line 455
    .local v17, "recv":[B
    invoke-virtual {v12}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v20

    if-eqz v20, :cond_2

    .line 457
    sget-object v20, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static/range {v20 .. v20}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 462
    :cond_2
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    .line 463
    const-string v20, "IAPNet"

    const-string v21, "====================iapSendCommonInfo  End()===================="

    invoke-static/range {v20 .. v21}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected static iapSendCultureLandCashInfoQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/feelingk/iap/net/CultureLandCashConfirm;
    .locals 13
    .param p0, "pID"    # Ljava/lang/String;
    .param p1, "cultureLandID"    # Ljava/lang/String;
    .param p2, "cultureLandPW"    # Ljava/lang/String;

    .prologue
    .line 1538
    new-instance v0, Lcom/feelingk/iap/net/CultureLandCashConfirm;

    invoke-direct {v0}, Lcom/feelingk/iap/net/CultureLandCashConfirm;-><init>()V

    .line 1539
    .local v0, "CultureLandCashCfm":Lcom/feelingk/iap/net/CultureLandCashConfirm;
    const-string v11, "IAPNet"

    const-string v12, "====================iapSendCultureLandCashInfoQuery() Start()===================="

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    const/16 v8, 0xc

    .line 1543
    .local v8, "packet_len":I
    add-int/lit8 v8, v8, 0xa

    .line 1544
    add-int/lit8 v8, v8, 0x14

    .line 1545
    add-int/lit8 v8, v8, 0x32

    .line 1546
    add-int/lit8 v8, v8, 0x1

    .line 1549
    new-array v7, v8, [B

    .line 1550
    .local v7, "packetBytes":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-lt v5, v8, :cond_0

    .line 1552
    const/4 v6, 0x0

    .line 1554
    .local v6, "offset":I
    const-string v11, "CQ"

    const/16 v12, 0x51

    invoke-static {v11, v12}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v4

    .line 1557
    .local v4, "header":[B
    const/4 v11, 0x0

    array-length v12, v4

    invoke-static {v4, v11, v7, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1559
    add-int/lit8 v6, v6, 0xc

    .line 1562
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1563
    .local v3, "byte_pID":[B
    const/4 v11, 0x0

    array-length v12, v3

    invoke-static {v3, v11, v7, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1564
    add-int/lit8 v6, v6, 0xa

    .line 1567
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1568
    .local v1, "byte_cultureLandID":[B
    const/4 v11, 0x0

    array-length v12, v1

    invoke-static {v1, v11, v7, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1569
    add-int/lit8 v6, v6, 0x14

    .line 1572
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 1573
    .local v2, "byte_cultureLandPW":[B
    const/4 v11, 0x0

    array-length v12, v2

    invoke-static {v2, v11, v7, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1574
    add-int/lit8 v6, v6, 0x32

    .line 1576
    const/16 v11, 0x5c

    const/16 v12, 0x17

    aput-byte v12, v7, v11

    .line 1578
    invoke-static {v7}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v10

    .line 1579
    .local v10, "ret":B
    if-eqz v10, :cond_1

    .line 1580
    invoke-virtual {v0, v10}, Lcom/feelingk/iap/net/CultureLandCashConfirm;->setResultCode(B)V

    .line 1581
    sget-object v11, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v11}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/feelingk/iap/net/CultureLandCashConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 1597
    :goto_1
    return-object v0

    .line 1551
    .end local v1    # "byte_cultureLandID":[B
    .end local v2    # "byte_cultureLandPW":[B
    .end local v3    # "byte_pID":[B
    .end local v4    # "header":[B
    .end local v6    # "offset":I
    .end local v10    # "ret":B
    :cond_0
    const/4 v11, 0x0

    aput-byte v11, v7, v5

    .line 1550
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1586
    .restart local v1    # "byte_cultureLandID":[B
    .restart local v2    # "byte_cultureLandPW":[B
    .restart local v3    # "byte_pID":[B
    .restart local v4    # "header":[B
    .restart local v6    # "offset":I
    .restart local v10    # "ret":B
    :cond_1
    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v9

    .line 1587
    .local v9, "recv":[B
    invoke-virtual {v0}, Lcom/feelingk/iap/net/CultureLandCashConfirm;->getResultCode()B

    move-result v11

    if-eqz v11, :cond_2

    .line 1588
    sget-object v11, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v11}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/feelingk/iap/net/CultureLandCashConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 1592
    :cond_2
    invoke-virtual {v0, v9}, Lcom/feelingk/iap/net/CultureLandCashConfirm;->parse([B)V

    .line 1594
    const-string v11, "IAPNet"

    const-string v12, "====================iapSendCultureLandCashInfoQuery() End()===================="

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected static iapSendData([B)[B
    .locals 11
    .param p0, "data"    # [B

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 1123
    new-instance v0, Lcom/feelingk/iap/net/DataPacket;

    invoke-direct {v0}, Lcom/feelingk/iap/net/DataPacket;-><init>()V

    .line 1126
    .local v0, "datapacket":Lcom/feelingk/iap/net/DataPacket;
    const-string v8, "IAPNet"

    const-string v9, "[ DEBUG ] iapSendData!!!!() Start ~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v8, v9}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    array-length v8, p0

    add-int/lit8 v8, v8, 0xc

    add-int/lit8 v4, v8, 0x1

    .line 1128
    .local v4, "packet_len":I
    new-array v3, v4, [B

    .line 1130
    .local v3, "packetBytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v4, :cond_1

    .line 1133
    const-string v8, "DP"

    array-length v9, p0

    add-int/lit8 v9, v9, 0x1

    invoke-static {v8, v9}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1134
    .local v1, "header":[B
    array-length v8, v1

    invoke-static {v1, v10, v3, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1139
    const/16 v8, 0xc

    array-length v9, p0

    invoke-static {p0, v10, v3, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1142
    add-int/lit8 v8, v4, -0x1

    const/16 v9, 0x17

    aput-byte v9, v3, v8

    .line 1144
    invoke-static {v3}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v6

    .line 1145
    .local v6, "ret":B
    if-eqz v6, :cond_2

    .line 1157
    :cond_0
    :goto_1
    return-object v7

    .line 1131
    .end local v1    # "header":[B
    .end local v6    # "ret":B
    :cond_1
    aput-byte v10, v3, v2

    .line 1130
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1149
    .restart local v1    # "header":[B
    .restart local v6    # "ret":B
    :cond_2
    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v5

    .line 1150
    .local v5, "recv":[B
    invoke-virtual {v0}, Lcom/feelingk/iap/net/DataPacket;->getResultCode()B

    move-result v8

    if-nez v8, :cond_0

    .line 1154
    invoke-virtual {v0, v5}, Lcom/feelingk/iap/net/DataPacket;->parse([B)V

    .line 1155
    const-string v7, "IAPNet"

    const-string v8, "[ DEBUG ] iapSendData() End~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    invoke-virtual {v0}, Lcom/feelingk/iap/net/DataPacket;->getData()[B

    move-result-object v7

    goto :goto_1
.end method

.method protected static iapSendDataBP([B)[B
    .locals 11
    .param p0, "data"    # [B

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 999
    new-instance v0, Lcom/feelingk/iap/net/DataPacket;

    invoke-direct {v0}, Lcom/feelingk/iap/net/DataPacket;-><init>()V

    .line 1002
    .local v0, "dp":Lcom/feelingk/iap/net/DataPacket;
    const-string v8, "IAPNet"

    const-string v9, "[ DEBUG ] iapSendDataBP()"

    invoke-static {v8, v9}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    array-length v8, p0

    add-int/lit8 v8, v8, 0xc

    add-int/lit8 v4, v8, 0x1

    .line 1004
    .local v4, "packet_len":I
    new-array v3, v4, [B

    .line 1006
    .local v3, "packetBytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v4, :cond_1

    .line 1009
    const-string v8, "DP"

    array-length v9, p0

    add-int/lit8 v9, v9, 0x1

    invoke-static {v8, v9}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1010
    .local v1, "header":[B
    array-length v8, v1

    invoke-static {v1, v10, v3, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1015
    const/16 v8, 0xc

    array-length v9, p0

    invoke-static {p0, v10, v3, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1018
    add-int/lit8 v8, v4, -0x1

    const/16 v9, 0x17

    aput-byte v9, v3, v8

    .line 1020
    invoke-static {v3}, Lcom/feelingk/iap/net/IAPNet;->iapWriteBP([B)B

    move-result v6

    .line 1021
    .local v6, "ret":B
    if-eqz v6, :cond_2

    .line 1034
    :cond_0
    :goto_1
    return-object v7

    .line 1007
    .end local v1    # "header":[B
    .end local v6    # "ret":B
    :cond_1
    aput-byte v10, v3, v2

    .line 1006
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1026
    .restart local v1    # "header":[B
    .restart local v6    # "ret":B
    :cond_2
    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->iapReceiveBP(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v5

    .line 1027
    .local v5, "recv":[B
    array-length v8, v5

    invoke-static {v5, v8}, Lcom/feelingk/iap/net/IAPNetworkUtil;->packetDebug([BI)V

    .line 1028
    invoke-virtual {v0}, Lcom/feelingk/iap/net/DataPacket;->getResultCode()B

    move-result v8

    if-nez v8, :cond_0

    .line 1033
    invoke-virtual {v0, v5}, Lcom/feelingk/iap/net/DataPacket;->parse([B)V

    .line 1034
    invoke-virtual {v0}, Lcom/feelingk/iap/net/DataPacket;->getData()[B

    move-result-object v7

    goto :goto_1
.end method

.method protected static iapSendDataMembership(ILjava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 17
    .param p0, "pTelecom"    # I
    .param p1, "pMdn"    # Ljava/lang/String;

    .prologue
    .line 2889
    new-instance v8, Lcom/feelingk/iap/net/MsgConfirm;

    invoke-direct {v8}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 2890
    .local v8, "msgConfirm":Lcom/feelingk/iap/net/MsgConfirm;
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2893
    .local v7, "modelName":Ljava/lang/String;
    const-string v14, "IAPNet"

    const-string v15, "[ DEBUG ] iapSendItemMembership()"

    invoke-static {v14, v15}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2895
    const/16 v11, 0xc

    .line 2898
    .local v11, "packet_len":I
    add-int/lit8 v11, v11, 0x2

    .line 2899
    add-int/lit8 v11, v11, 0xb

    .line 2900
    add-int/lit8 v11, v11, 0x1

    .line 2903
    const/4 v14, 0x2

    move/from16 v0, p0

    if-eq v0, v14, :cond_0

    const/4 v14, 0x3

    move/from16 v0, p0

    if-ne v0, v14, :cond_1

    .line 2906
    :cond_0
    if-eqz v7, :cond_1

    .line 2907
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    array-length v14, v14

    const/16 v15, 0x40

    if-le v14, v15, :cond_5

    .line 2908
    add-int/lit8 v11, v11, 0x40

    .line 2915
    :cond_1
    :goto_0
    add-int/lit8 v11, v11, 0x1

    .line 2918
    new-array v10, v11, [B

    .line 2919
    .local v10, "packetBytes":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-lt v6, v11, :cond_6

    .line 2922
    const/4 v9, 0x0

    .line 2924
    .local v9, "offset":I
    const-string v14, "SP"

    .line 2925
    add-int/lit8 v15, v11, -0xc

    .line 2924
    invoke-static {v14, v15}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v5

    .line 2928
    .local v5, "header":[B
    const/4 v14, 0x0

    array-length v15, v5

    invoke-static {v5, v14, v10, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2929
    add-int/lit8 v9, v9, 0xc

    .line 2933
    const/4 v14, 0x1

    move/from16 v0, p0

    if-ne v0, v14, :cond_7

    .line 2934
    const-string v4, "11"

    .line 2935
    .local v4, "currTelecom":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 2936
    .local v3, "byte_pTelecom":[B
    const/4 v14, 0x0

    array-length v15, v3

    invoke-static {v3, v14, v10, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2948
    .end local v3    # "byte_pTelecom":[B
    .end local v4    # "currTelecom":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x2

    .line 2951
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 2952
    .local v1, "byte_pMdn":[B
    const/4 v14, 0x0

    array-length v15, v1

    invoke-static {v1, v14, v10, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2953
    add-int/lit8 v9, v9, 0xb

    .line 2957
    const/4 v14, 0x1

    move/from16 v0, p0

    if-ne v0, v14, :cond_9

    .line 2960
    const/4 v14, 0x0

    aput-byte v14, v10, v9

    .line 2961
    const-string v14, "IAPNet"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "[ DEBUG ] byte_modelLength = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x19

    aget-byte v16, v10, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2966
    :goto_3
    add-int/lit8 v9, v9, 0x1

    .line 2969
    const/4 v14, 0x2

    move/from16 v0, p0

    if-eq v0, v14, :cond_3

    const/4 v14, 0x3

    move/from16 v0, p0

    if-ne v0, v14, :cond_4

    .line 2970
    :cond_3
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 2971
    .local v2, "byte_pModelName":[B
    const/4 v14, 0x0

    array-length v15, v2

    invoke-static {v2, v14, v10, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2972
    array-length v14, v2

    add-int/lit8 v9, v14, 0x1a

    .line 2976
    .end local v2    # "byte_pModelName":[B
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 2978
    add-int/lit8 v14, v11, -0x1

    const/16 v15, 0x17

    aput-byte v15, v10, v14

    .line 2980
    invoke-static {v10}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v13

    .line 2981
    .local v13, "ret":B
    if-eqz v13, :cond_a

    .line 2982
    invoke-virtual {v8, v13}, Lcom/feelingk/iap/net/MsgConfirm;->setResultCode(B)V

    .line 2984
    sget-object v14, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v14}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 2997
    :goto_4
    return-object v8

    .line 2910
    .end local v1    # "byte_pMdn":[B
    .end local v5    # "header":[B
    .end local v6    # "i":I
    .end local v9    # "offset":I
    .end local v10    # "packetBytes":[B
    .end local v13    # "ret":B
    :cond_5
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    array-length v14, v14

    add-int/lit8 v11, v14, 0x1a

    goto/16 :goto_0

    .line 2920
    .restart local v6    # "i":I
    .restart local v10    # "packetBytes":[B
    :cond_6
    const/4 v14, 0x0

    aput-byte v14, v10, v6

    .line 2919
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 2938
    .restart local v5    # "header":[B
    .restart local v9    # "offset":I
    :cond_7
    const/4 v14, 0x2

    move/from16 v0, p0

    if-ne v0, v14, :cond_8

    .line 2939
    const-string v4, "12"

    .line 2940
    .restart local v4    # "currTelecom":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 2941
    .restart local v3    # "byte_pTelecom":[B
    const/4 v14, 0x0

    array-length v15, v3

    invoke-static {v3, v14, v10, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_2

    .line 2943
    .end local v3    # "byte_pTelecom":[B
    .end local v4    # "currTelecom":Ljava/lang/String;
    :cond_8
    const/4 v14, 0x3

    move/from16 v0, p0

    if-ne v0, v14, :cond_2

    .line 2944
    const-string v4, "13"

    .line 2945
    .restart local v4    # "currTelecom":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 2946
    .restart local v3    # "byte_pTelecom":[B
    const/4 v14, 0x0

    array-length v15, v3

    invoke-static {v3, v14, v10, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_2

    .line 2964
    .end local v3    # "byte_pTelecom":[B
    .end local v4    # "currTelecom":Ljava/lang/String;
    .restart local v1    # "byte_pMdn":[B
    :cond_9
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v10, v9

    goto :goto_3

    .line 2989
    .restart local v13    # "ret":B
    :cond_a
    invoke-static {v8}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v12

    .line 2990
    .local v12, "recv":[B
    invoke-virtual {v8}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v14

    if-eqz v14, :cond_b

    .line 2992
    sget-object v14, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v14}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_4

    .line 2996
    :cond_b
    invoke-virtual {v8, v12}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    goto :goto_4
.end method

.method protected static iapSendDiscountInfoQuery(Lcom/feelingk/iap/net/ItemInfoConfirm;Lcom/feelingk/iap/net/CultureLandCashConfirm;Lcom/feelingk/iap/net/OKCashbagPointInfoConfirm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 27
    .param p0, "itemInfoConfirm"    # Lcom/feelingk/iap/net/ItemInfoConfirm;
    .param p1, "cultureLandCashConfirm"    # Lcom/feelingk/iap/net/CultureLandCashConfirm;
    .param p2, "oKCashbagPointInfoConfirm"    # Lcom/feelingk/iap/net/OKCashbagPointInfoConfirm;
    .param p3, "OCBCardNum"    # Ljava/lang/String;
    .param p4, "OCBPwNum"    # Ljava/lang/String;
    .param p5, "cultureLandId"    # Ljava/lang/String;
    .param p6, "octUse"    # I
    .param p7, "dotoriUse"    # I
    .param p8, "cultureUse"    # I
    .param p9, "tCashUse"    # I

    .prologue
    .line 1860
    new-instance v17, Lcom/feelingk/iap/net/MsgConfirm;

    invoke-direct/range {v17 .. v17}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 1862
    .local v17, "msgConfirm":Lcom/feelingk/iap/net/MsgConfirm;
    const-string v24, "IAPNet"

    const-string v25, "====================iapSendDiscountInfoQuery() Start()===================="

    invoke-static/range {v24 .. v25}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    const-string v24, "IAPNet"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "OCBUse: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", dotoriUse: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", cultureUse: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", tCashUse: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1865
    if-nez p3, :cond_0

    .line 1866
    const-string p3, "0"

    .line 1868
    :cond_0
    const/16 v21, 0xc

    .line 1871
    .local v21, "packet_len":I
    add-int/lit8 v21, v21, 0x1

    .line 1872
    add-int/lit8 v21, v21, 0x14

    .line 1873
    add-int/lit8 v21, v21, 0xc

    .line 1874
    add-int/lit8 v21, v21, 0x19

    .line 1875
    add-int/lit8 v21, v21, 0x1

    .line 1876
    add-int/lit8 v21, v21, 0x6

    .line 1879
    add-int/lit8 v21, v21, 0x1

    .line 1880
    add-int/lit8 v21, v21, 0x1

    .line 1881
    add-int/lit8 v21, v21, 0xb

    .line 1882
    add-int/lit8 v21, v21, 0x6

    .line 1885
    add-int/lit8 v21, v21, 0x1

    .line 1886
    add-int/lit8 v21, v21, 0x1

    .line 1887
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v21, v24, 0x62

    .line 1888
    add-int/lit8 v21, v21, 0x1

    .line 1889
    if-eqz p4, :cond_1

    .line 1890
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v24

    add-int v21, v21, v24

    .line 1891
    :cond_1
    add-int/lit8 v21, v21, 0x6

    .line 1892
    add-int/lit8 v21, v21, 0x1

    .line 1893
    add-int/lit8 v21, v21, 0x6

    .line 1895
    add-int/lit8 v21, v21, 0x1

    .line 1898
    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 1899
    .local v20, "packetBytes":[B
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v21

    if-lt v0, v1, :cond_8

    .line 1901
    const/16 v18, 0x0

    .line 1903
    .local v18, "offset":I
    const-string v24, "LM"

    add-int/lit8 v25, v21, -0xc

    invoke-static/range {v24 .. v25}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v15

    .line 1906
    .local v15, "header":[B
    const/16 v24, 0x0

    array-length v0, v15

    move/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v25

    invoke-static {v15, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1907
    add-int/lit8 v18, v18, 0xc

    .line 1910
    if-eqz p8, :cond_9

    .line 1911
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "offset":I
    .local v19, "offset":I
    const/16 v24, 0x59

    aput-byte v24, v20, v18

    move/from16 v18, v19

    .line 1916
    .end local v19    # "offset":I
    .restart local v18    # "offset":I
    :goto_1
    if-eqz p5, :cond_2

    .line 1917
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    .line 1918
    .local v11, "byte_cultureLandId":[B
    const/16 v24, 0x0

    array-length v0, v11

    move/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v25

    invoke-static {v11, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1920
    .end local v11    # "byte_cultureLandId":[B
    :cond_2
    add-int/lit8 v18, v18, 0x14

    .line 1923
    if-eqz p1, :cond_3

    .line 1924
    invoke-virtual/range {p1 .. p1}, Lcom/feelingk/iap/net/CultureLandCashConfirm;->getCultureLandUserKey()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    .line 1925
    .local v14, "byte_userKey":[B
    const/16 v24, 0x0

    array-length v0, v14

    move/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v25

    invoke-static {v14, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1927
    .end local v14    # "byte_userKey":[B
    :cond_3
    add-int/lit8 v18, v18, 0xc

    .line 1930
    if-eqz p1, :cond_4

    .line 1931
    invoke-virtual/range {p1 .. p1}, Lcom/feelingk/iap/net/CultureLandCashConfirm;->getCultureLandUserAuthNum()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    .line 1932
    .local v13, "byte_userAuthNum":[B
    const/16 v24, 0x0

    array-length v0, v13

    move/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v25

    invoke-static {v13, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1935
    .end local v13    # "byte_userAuthNum":[B
    :cond_4
    add-int/lit8 v18, v18, 0x19

    .line 1938
    if-eqz p1, :cond_5

    .line 1939
    invoke-virtual/range {p1 .. p1}, Lcom/feelingk/iap/net/CultureLandCashConfirm;->getCultureLandAuth()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 1940
    .local v9, "byte_auth":[B
    const/16 v24, 0x0

    array-length v0, v9

    move/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v25

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1942
    .end local v9    # "byte_auth":[B
    :cond_5
    add-int/lit8 v18, v18, 0x1

    .line 1945
    invoke-static/range {p8 .. p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 1946
    .local v10, "byte_cultureLandCash":[B
    const/16 v24, 0x0

    array-length v0, v10

    move/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v25

    invoke-static {v10, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1947
    add-int/lit8 v18, v18, 0x6

    .line 1950
    if-eqz p7, :cond_a

    .line 1951
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "offset":I
    .restart local v19    # "offset":I
    const/16 v24, 0x59

    aput-byte v24, v20, v18

    .line 1956
    :goto_2
    if-eqz p0, :cond_d

    .line 1957
    invoke-virtual/range {p0 .. p0}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getmNCMembershipInfo()Ljava/lang/String;

    move-result-object v24

    const-string v25, "N"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 1958
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "offset":I
    .restart local v18    # "offset":I
    const/16 v24, 0x4e

    aput-byte v24, v20, v19

    .line 1969
    :goto_3
    if-eqz p0, :cond_e

    .line 1970
    invoke-virtual/range {p0 .. p0}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getmNCMembershipNumber()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 1971
    .local v4, "byte_NCMenbershipNumber":[B
    const/16 v24, 0x0

    array-length v0, v4

    move/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v25

    invoke-static {v4, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1972
    add-int/lit8 v18, v18, 0xb

    .line 1979
    .end local v4    # "byte_NCMenbershipNumber":[B
    :goto_4
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .line 1980
    .local v12, "byte_dotoriCash":[B
    const/16 v24, 0x0

    array-length v0, v12

    move/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v25

    invoke-static {v12, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1981
    add-int/lit8 v18, v18, 0x6

    .line 1984
    if-eqz p6, :cond_f

    .line 1985
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "offset":I
    .restart local v19    # "offset":I
    const/16 v24, 0x59

    aput-byte v24, v20, v18

    move/from16 v18, v19

    .line 1990
    .end local v19    # "offset":I
    .restart local v18    # "offset":I
    :goto_5
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "offset":I
    .restart local v19    # "offset":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v20, v18

    .line 1993
    if-eqz p3, :cond_6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 1994
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 1995
    .local v5, "byte_OCBCardNum":[B
    const/16 v24, 0x0

    array-length v0, v5

    move/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v19

    move/from16 v3, v25

    invoke-static {v5, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1996
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v18, v24, 0x62

    .end local v19    # "offset":I
    .restart local v18    # "offset":I
    move/from16 v19, v18

    .line 2001
    .end local v5    # "byte_OCBCardNum":[B
    .end local v18    # "offset":I
    .restart local v19    # "offset":I
    :cond_6
    if-eqz p4, :cond_10

    .line 2002
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "offset":I
    .restart local v18    # "offset":I
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v20, v19

    .line 2009
    :goto_6
    if-eqz p4, :cond_7

    .line 2010
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 2011
    .local v6, "byte_OCBPwNum":[B
    const/16 v24, 0x0

    array-length v0, v6

    move/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v25

    invoke-static {v6, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2012
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int v18, v18, v24

    .line 2016
    .end local v6    # "byte_OCBPwNum":[B
    :cond_7
    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 2017
    .local v7, "byte_Ocb":[B
    const/16 v24, 0x0

    array-length v0, v7

    move/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v25

    invoke-static {v7, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2018
    add-int/lit8 v18, v18, 0x6

    .line 2021
    if-eqz p9, :cond_11

    .line 2022
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "offset":I
    .restart local v19    # "offset":I
    const/16 v24, 0x59

    aput-byte v24, v20, v18

    move/from16 v18, v19

    .line 2027
    .end local v19    # "offset":I
    .restart local v18    # "offset":I
    :goto_7
    invoke-static/range {p9 .. p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 2028
    .local v8, "byte_TCash":[B
    const/16 v24, 0x0

    array-length v0, v8

    move/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v25

    invoke-static {v8, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2029
    add-int/lit8 v18, v18, 0x6

    .line 2031
    add-int/lit8 v24, v21, -0x1

    const/16 v25, 0x17

    aput-byte v25, v20, v24

    .line 2033
    invoke-static/range {v20 .. v20}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v23

    .line 2034
    .local v23, "ret":B
    if-eqz v23, :cond_12

    .line 2035
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/MsgConfirm;->setResultCode(B)V

    .line 2036
    sget-object v24, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static/range {v24 .. v24}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 2050
    :goto_8
    return-object v17

    .line 1900
    .end local v7    # "byte_Ocb":[B
    .end local v8    # "byte_TCash":[B
    .end local v10    # "byte_cultureLandCash":[B
    .end local v12    # "byte_dotoriCash":[B
    .end local v15    # "header":[B
    .end local v18    # "offset":I
    .end local v23    # "ret":B
    :cond_8
    const/16 v24, 0x0

    aput-byte v24, v20, v16

    .line 1899
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 1913
    .restart local v15    # "header":[B
    .restart local v18    # "offset":I
    :cond_9
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "offset":I
    .restart local v19    # "offset":I
    const/16 v24, 0x4e

    aput-byte v24, v20, v18

    move/from16 v18, v19

    .end local v19    # "offset":I
    .restart local v18    # "offset":I
    goto/16 :goto_1

    .line 1953
    .restart local v10    # "byte_cultureLandCash":[B
    :cond_a
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "offset":I
    .restart local v19    # "offset":I
    const/16 v24, 0x4e

    aput-byte v24, v20, v18

    goto/16 :goto_2

    .line 1959
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getmNCMembershipInfo()Ljava/lang/String;

    move-result-object v24

    const-string v25, "C"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 1960
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "offset":I
    .restart local v18    # "offset":I
    const/16 v24, 0x43

    aput-byte v24, v20, v19

    goto/16 :goto_3

    .line 1962
    .end local v18    # "offset":I
    .restart local v19    # "offset":I
    :cond_c
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "offset":I
    .restart local v18    # "offset":I
    const/16 v24, 0x0

    aput-byte v24, v20, v19

    goto/16 :goto_3

    .line 1965
    .end local v18    # "offset":I
    .restart local v19    # "offset":I
    :cond_d
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "offset":I
    .restart local v18    # "offset":I
    const/16 v24, 0x0

    aput-byte v24, v20, v19

    goto/16 :goto_3

    .line 1975
    :cond_e
    add-int/lit8 v18, v18, 0xb

    goto/16 :goto_4

    .line 1987
    .restart local v12    # "byte_dotoriCash":[B
    :cond_f
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "offset":I
    .restart local v19    # "offset":I
    const/16 v24, 0x4e

    aput-byte v24, v20, v18

    move/from16 v18, v19

    .end local v19    # "offset":I
    .restart local v18    # "offset":I
    goto/16 :goto_5

    .line 2005
    .end local v18    # "offset":I
    .restart local v19    # "offset":I
    :cond_10
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "offset":I
    .restart local v18    # "offset":I
    goto/16 :goto_6

    .line 2024
    .restart local v7    # "byte_Ocb":[B
    :cond_11
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "offset":I
    .restart local v19    # "offset":I
    const/16 v24, 0x4e

    aput-byte v24, v20, v18

    move/from16 v18, v19

    .end local v19    # "offset":I
    .restart local v18    # "offset":I
    goto/16 :goto_7

    .line 2041
    .restart local v8    # "byte_TCash":[B
    .restart local v23    # "ret":B
    :cond_12
    invoke-static/range {v17 .. v17}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v22

    .line 2042
    .local v22, "recv":[B
    invoke-virtual/range {v17 .. v17}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v24

    if-eqz v24, :cond_13

    .line 2043
    sget-object v24, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static/range {v24 .. v24}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_8

    .line 2047
    :cond_13
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    .line 2048
    const-string v24, "IAPNet"

    const-string v25, "====================iapSendDiscountInfoQuery() End()===================="

    invoke-static/range {v24 .. v25}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8
.end method

.method protected static iapSendDotoriSmsAuthInfoQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 16
    .param p0, "mdn"    # Ljava/lang/String;
    .param p1, "userCode"    # Ljava/lang/String;
    .param p2, "mobileSign"    # Ljava/lang/String;
    .param p3, "signData"    # Ljava/lang/String;
    .param p4, "pId"    # Ljava/lang/String;

    .prologue
    .line 1704
    new-instance v7, Lcom/feelingk/iap/net/MsgConfirm;

    invoke-direct {v7}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 1706
    .local v7, "msgConfirm":Lcom/feelingk/iap/net/MsgConfirm;
    const-string v14, "IAPNet"

    const-string v15, "====================iapSendDotoriSmsAuthInfoQuery() Start()===================="

    invoke-static {v14, v15}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    const/16 v11, 0xc

    .line 1709
    .local v11, "packet_len":I
    add-int/lit8 v11, v11, 0xb

    .line 1710
    add-int/lit8 v11, v11, 0x6

    .line 1711
    add-int/lit8 v11, v11, 0x1

    .line 1712
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v11, v14, 0x1e

    .line 1713
    add-int/lit8 v11, v11, 0x1

    .line 1714
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v11, v14

    .line 1715
    add-int/lit8 v11, v11, 0xa

    .line 1716
    add-int/lit8 v11, v11, 0x1

    .line 1718
    new-array v10, v11, [B

    .line 1719
    .local v10, "packetBytes":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-lt v6, v11, :cond_0

    .line 1721
    const/4 v8, 0x0

    .line 1723
    .local v8, "offset":I
    const-string v14, "DA"

    add-int/lit8 v15, v11, -0xc

    invoke-static {v14, v15}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v5

    .line 1726
    .local v5, "header":[B
    const/4 v14, 0x0

    array-length v15, v5

    invoke-static {v5, v14, v10, v8, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1728
    add-int/lit8 v8, v8, 0xc

    .line 1731
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1732
    .local v0, "byte_pMdn":[B
    const/4 v14, 0x0

    array-length v15, v0

    invoke-static {v0, v14, v10, v8, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1733
    add-int/lit8 v8, v8, 0xb

    .line 1736
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 1737
    .local v4, "byte_pUserCode":[B
    const/4 v14, 0x0

    array-length v15, v4

    invoke-static {v4, v14, v10, v8, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1738
    add-int/lit8 v8, v8, 0x6

    .line 1741
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .local v9, "offset":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v10, v8

    .line 1744
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1745
    .local v1, "byte_pMobileSign":[B
    const/4 v14, 0x0

    array-length v15, v1

    invoke-static {v1, v14, v10, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1746
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    array-length v14, v14

    add-int/lit8 v8, v14, 0x1e

    .line 1749
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v10, v8

    .line 1752
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1753
    .local v3, "byte_pSignData":[B
    const/4 v14, 0x0

    array-length v15, v3

    invoke-static {v3, v14, v10, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1754
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    array-length v14, v14

    add-int v8, v9, v14

    .line 1757
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 1758
    .local v2, "byte_pPid":[B
    const/4 v14, 0x0

    array-length v15, v2

    invoke-static {v2, v14, v10, v8, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1759
    add-int/lit8 v8, v8, 0xa

    .line 1762
    add-int/lit8 v14, v11, -0x1

    const/16 v15, 0x17

    aput-byte v15, v10, v14

    .line 1764
    invoke-static {v10}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v13

    .line 1765
    .local v13, "ret":B
    if-eqz v13, :cond_1

    .line 1766
    invoke-virtual {v7, v13}, Lcom/feelingk/iap/net/MsgConfirm;->setResultCode(B)V

    .line 1767
    sget-object v14, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v14}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 1783
    :goto_1
    return-object v7

    .line 1720
    .end local v0    # "byte_pMdn":[B
    .end local v1    # "byte_pMobileSign":[B
    .end local v2    # "byte_pPid":[B
    .end local v3    # "byte_pSignData":[B
    .end local v4    # "byte_pUserCode":[B
    .end local v5    # "header":[B
    .end local v8    # "offset":I
    .end local v13    # "ret":B
    :cond_0
    const/4 v14, 0x0

    aput-byte v14, v10, v6

    .line 1719
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1772
    .restart local v0    # "byte_pMdn":[B
    .restart local v1    # "byte_pMobileSign":[B
    .restart local v2    # "byte_pPid":[B
    .restart local v3    # "byte_pSignData":[B
    .restart local v4    # "byte_pUserCode":[B
    .restart local v5    # "header":[B
    .restart local v8    # "offset":I
    .restart local v13    # "ret":B
    :cond_1
    invoke-static {v7}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v12

    .line 1773
    .local v12, "recv":[B
    invoke-virtual {v7}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v14

    if-eqz v14, :cond_2

    .line 1774
    sget-object v14, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v14}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 1778
    :cond_2
    invoke-virtual {v7, v12}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    .line 1780
    const-string v14, "IAPNet"

    const-string v15, "====================iapSendDotoriSmsAuthInfoQuery() End()===================="

    invoke-static {v14, v15}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected static iapSendDotoriSmsAuthNumberInfoQuery(Ljava/lang/String;ILjava/lang/String;)Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;
    .locals 14
    .param p0, "mdn"    # Ljava/lang/String;
    .param p1, "pCarrier"    # I
    .param p2, "pId"    # Ljava/lang/String;

    .prologue
    .line 1613
    new-instance v0, Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;

    invoke-direct {v0}, Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;-><init>()V

    .line 1615
    .local v0, "DotoriSmsAuthCfm":Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;
    const/4 v4, 0x0

    .line 1617
    .local v4, "carrierStr":Ljava/lang/String;
    const-string v12, "IAPNet"

    const-string v13, "====================iapSendDotoriSmsAuthNumberInfoQuery() Start()===================="

    invoke-static {v12, v13}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    const/4 v12, 0x2

    if-ne p1, v12, :cond_0

    .line 1621
    const-string v4, "K"

    .line 1631
    :goto_0
    const/16 v9, 0xc

    .line 1633
    .local v9, "packet_len":I
    add-int/lit8 v9, v9, 0xb

    .line 1634
    add-int/lit8 v9, v9, 0x1

    .line 1635
    add-int/lit8 v9, v9, 0xa

    .line 1636
    add-int/lit8 v9, v9, 0x1

    .line 1639
    new-array v8, v9, [B

    .line 1640
    .local v8, "packetBytes":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-lt v6, v9, :cond_2

    .line 1642
    const/4 v7, 0x0

    .line 1644
    .local v7, "offset":I
    const-string v12, "DR"

    const/16 v13, 0x17

    invoke-static {v12, v13}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v5

    .line 1647
    .local v5, "header":[B
    const/4 v12, 0x0

    array-length v13, v5

    invoke-static {v5, v12, v8, v7, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1649
    add-int/lit8 v7, v7, 0xc

    .line 1652
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 1653
    .local v2, "byte_pMdn":[B
    const/4 v12, 0x0

    array-length v13, v2

    invoke-static {v2, v12, v8, v7, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1654
    add-int/lit8 v7, v7, 0xb

    .line 1657
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1658
    .local v1, "byte_pCarrier":[B
    const/4 v12, 0x0

    array-length v13, v1

    invoke-static {v1, v12, v8, v7, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1659
    add-int/lit8 v7, v7, 0x1

    .line 1662
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1663
    .local v3, "byte_pPid":[B
    const/4 v12, 0x0

    array-length v13, v3

    invoke-static {v3, v12, v8, v7, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1664
    add-int/lit8 v7, v7, 0xa

    .line 1666
    const/16 v12, 0x22

    const/16 v13, 0x17

    aput-byte v13, v8, v12

    .line 1668
    invoke-static {v8}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v11

    .line 1669
    .local v11, "ret":B
    if-eqz v11, :cond_3

    .line 1670
    invoke-virtual {v0, v11}, Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;->setResultCode(B)V

    .line 1671
    sget-object v12, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v12}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 1687
    :goto_2
    return-object v0

    .line 1623
    .end local v1    # "byte_pCarrier":[B
    .end local v2    # "byte_pMdn":[B
    .end local v3    # "byte_pPid":[B
    .end local v5    # "header":[B
    .end local v6    # "i":I
    .end local v7    # "offset":I
    .end local v8    # "packetBytes":[B
    .end local v9    # "packet_len":I
    .end local v11    # "ret":B
    :cond_0
    const/4 v12, 0x3

    if-ne p1, v12, :cond_1

    .line 1624
    const-string v4, "L"

    goto :goto_0

    .line 1627
    :cond_1
    const-string v4, "S"

    goto :goto_0

    .line 1641
    .restart local v6    # "i":I
    .restart local v8    # "packetBytes":[B
    .restart local v9    # "packet_len":I
    :cond_2
    const/4 v12, 0x0

    aput-byte v12, v8, v6

    .line 1640
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1676
    .restart local v1    # "byte_pCarrier":[B
    .restart local v2    # "byte_pMdn":[B
    .restart local v3    # "byte_pPid":[B
    .restart local v5    # "header":[B
    .restart local v7    # "offset":I
    .restart local v11    # "ret":B
    :cond_3
    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v10

    .line 1677
    .local v10, "recv":[B
    invoke-virtual {v0}, Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;->getResultCode()B

    move-result v12

    if-eqz v12, :cond_4

    .line 1678
    sget-object v12, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v12}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_2

    .line 1682
    :cond_4
    invoke-virtual {v0, v10}, Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;->parse([B)V

    .line 1684
    const-string v12, "IAPNet"

    const-string v13, "====================iapSendDotoriSmsAuthNumberInfoQuery() End()===================="

    invoke-static {v12, v13}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected static iapSendISImeiAuthReq(Ljava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 15
    .param p0, "MDN"    # Ljava/lang/String;

    .prologue
    const/16 v14, 0x17

    const/4 v13, 0x0

    .line 474
    new-instance v3, Lcom/feelingk/iap/net/MsgConfirm;

    invoke-direct {v3}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 475
    .local v3, "msgConfirm":Lcom/feelingk/iap/net/MsgConfirm;
    const-string v10, "IAPNet"

    const-string v11, "====================iapSendISImeiAuthReq  Start()===================="

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v10, "IAPNet"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "MDN= "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v9, "AR"

    .line 483
    .local v9, "sHeaderPacket":Ljava/lang/String;
    const/16 v6, 0xc

    .line 485
    .local v6, "packet_len":I
    add-int/lit8 v6, v6, 0xb

    .line 486
    add-int/lit8 v6, v6, 0x1

    .line 488
    new-array v5, v6, [B

    .line 490
    .local v5, "packetBytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 493
    const/4 v4, 0x0

    .line 494
    .local v4, "offset":I
    const/16 v10, 0xc

    invoke-static {v9, v10}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v1

    .line 497
    .local v1, "header":[B
    array-length v10, v1

    invoke-static {v1, v13, v5, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    add-int/lit8 v4, v4, 0xc

    .line 501
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 502
    .local v0, "byte_pMDN":[B
    array-length v10, v0

    invoke-static {v0, v13, v5, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 503
    add-int/lit8 v4, v4, 0xb

    .line 506
    aput-byte v14, v5, v14

    .line 508
    invoke-static {v5}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v8

    .line 509
    .local v8, "ret":B
    if-eqz v8, :cond_1

    .line 510
    invoke-virtual {v3, v8}, Lcom/feelingk/iap/net/MsgConfirm;->setResultCode(B)V

    .line 511
    sget-object v10, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v10}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 526
    :goto_1
    return-object v3

    .line 491
    .end local v0    # "byte_pMDN":[B
    .end local v1    # "header":[B
    .end local v4    # "offset":I
    .end local v8    # "ret":B
    :cond_0
    aput-byte v13, v5, v2

    .line 490
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 516
    .restart local v0    # "byte_pMDN":[B
    .restart local v1    # "header":[B
    .restart local v4    # "offset":I
    .restart local v8    # "ret":B
    :cond_1
    invoke-static {v3}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v7

    .line 517
    .local v7, "recv":[B
    invoke-virtual {v3}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v10

    if-eqz v10, :cond_2

    .line 519
    sget-object v10, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v10}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 524
    :cond_2
    invoke-virtual {v3, v7}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    .line 525
    const-string v10, "IAPNet"

    const-string v11, "====================iapSendISImeiAuthReq  End()===================="

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected static iapSendImeiAuthReq(Ljava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 15
    .param p0, "MDN"    # Ljava/lang/String;

    .prologue
    const/16 v14, 0x17

    const/4 v13, 0x0

    .line 535
    new-instance v3, Lcom/feelingk/iap/net/MsgConfirm;

    invoke-direct {v3}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 536
    .local v3, "msgConfirm":Lcom/feelingk/iap/net/MsgConfirm;
    const-string v10, "IAPNet"

    const-string v11, "====================iapSendImeiAuthReq  Start()===================="

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v10, "IAPNet"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "MDN= "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v9, "AM"

    .line 544
    .local v9, "sHeaderPacket":Ljava/lang/String;
    const/16 v6, 0xc

    .line 546
    .local v6, "packet_len":I
    add-int/lit8 v6, v6, 0xb

    .line 547
    add-int/lit8 v6, v6, 0x1

    .line 549
    new-array v5, v6, [B

    .line 551
    .local v5, "packetBytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 554
    const/4 v4, 0x0

    .line 555
    .local v4, "offset":I
    const/16 v10, 0xc

    invoke-static {v9, v10}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v1

    .line 558
    .local v1, "header":[B
    array-length v10, v1

    invoke-static {v1, v13, v5, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 559
    add-int/lit8 v4, v4, 0xc

    .line 562
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 563
    .local v0, "byte_pMDN":[B
    array-length v10, v0

    invoke-static {v0, v13, v5, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 564
    add-int/lit8 v4, v4, 0xb

    .line 567
    aput-byte v14, v5, v14

    .line 569
    invoke-static {v5}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v8

    .line 570
    .local v8, "ret":B
    if-eqz v8, :cond_1

    .line 571
    invoke-virtual {v3, v8}, Lcom/feelingk/iap/net/MsgConfirm;->setResultCode(B)V

    .line 572
    sget-object v10, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v10}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 587
    :goto_1
    return-object v3

    .line 552
    .end local v0    # "byte_pMDN":[B
    .end local v1    # "header":[B
    .end local v4    # "offset":I
    .end local v8    # "ret":B
    :cond_0
    aput-byte v13, v5, v2

    .line 551
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 577
    .restart local v0    # "byte_pMDN":[B
    .restart local v1    # "header":[B
    .restart local v4    # "offset":I
    .restart local v8    # "ret":B
    :cond_1
    invoke-static {v3}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v7

    .line 578
    .local v7, "recv":[B
    invoke-virtual {v3}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v10

    if-eqz v10, :cond_2

    .line 580
    sget-object v10, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v10}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 585
    :cond_2
    invoke-virtual {v3, v7}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    .line 586
    const-string v10, "IAPNet"

    const-string v11, "====================iapSendImeiAuthReq  End()===================="

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected static iapSendInit(Lcom/feelingk/iap/net/InitConfirm;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 23
    .param p0, "initConfirm"    # Lcom/feelingk/iap/net/InitConfirm;
    .param p1, "pTelecom"    # I
    .param p2, "applicationID"    # Ljava/lang/String;
    .param p3, "encJuminNumber"    # Ljava/lang/String;
    .param p4, "MIN"    # Ljava/lang/String;
    .param p5, "bpServerIP"    # Ljava/lang/String;
    .param p6, "bpServerPort"    # I
    .param p7, "pID"    # Ljava/lang/String;
    .param p8, "pTID"    # Ljava/lang/String;
    .param p9, "useBpServer"    # Z

    .prologue
    .line 217
    const-string v19, "IAPNet"

    const-string v20, "====================iapSendInit  Start()===================="

    invoke-static/range {v19 .. v20}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v19, "IAPNet"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "iapSendInit  Start() isInit="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v21, Lcom/feelingk/iap/net/IAPNet;->isInit:Z

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v19, "IAPNet"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "iapSendInit  Start() useBpServer ="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v20, "IAPNet"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v19, "iapSendInit  Start() encJuminNumberCheck ="

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const/16 v19, 0x1

    :goto_0
    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    if-nez p3, :cond_0

    .line 223
    const-string p3, "0000000000"

    .line 225
    :cond_0
    sget-boolean v19, Lcom/feelingk/iap/net/IAPNet;->isInit:Z

    if-eqz v19, :cond_2

    .line 226
    const/16 v19, -0x7

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    .line 376
    :goto_1
    return-void

    .line 220
    :cond_1
    const/16 v19, 0x0

    goto :goto_0

    .line 230
    :cond_2
    if-eqz p5, :cond_c

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    .line 231
    .local v11, "ipBytes":[B
    :goto_2
    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    .line 235
    .local v16, "portBytes":[B
    const/16 v15, 0xc

    .line 237
    .local v15, "packet_len":I
    if-eqz p8, :cond_d

    .line 238
    const-string v18, "QP"

    .line 239
    .local v18, "sHeaderPacket":Ljava/lang/String;
    add-int/lit8 v15, v15, 0x64

    .line 244
    :goto_3
    add-int/lit8 v15, v15, 0x1

    .line 245
    add-int/lit8 v15, v15, 0x8

    .line 246
    add-int/lit8 v15, v15, 0x1

    .line 247
    add-int/lit8 v15, v15, 0xa

    .line 248
    add-int/lit8 v15, v15, 0xb

    .line 249
    add-int/lit8 v15, v15, 0x1

    .line 251
    if-eqz v11, :cond_3

    .line 252
    array-length v0, v11

    move/from16 v19, v0

    add-int v15, v15, v19

    .line 253
    :cond_3
    add-int/lit8 v15, v15, 0x7

    .line 254
    add-int/lit8 v15, v15, 0xa

    .line 257
    const/16 v19, 0x2

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    const/16 v19, 0x3

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 258
    :cond_4
    add-int/lit8 v15, v15, 0x2

    .line 260
    if-eqz p9, :cond_e

    .line 261
    add-int/lit8 v15, v15, 0x1

    .line 262
    const-string v19, "SENDBPDATA"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v15, v15, v19

    .line 271
    :cond_5
    :goto_4
    add-int/lit8 v15, v15, 0x1

    .line 273
    add-int/lit8 v15, v15, 0x1

    .line 275
    new-array v14, v15, [B

    .line 277
    .local v14, "packetBytes":[B
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    if-lt v10, v15, :cond_f

    .line 280
    const/4 v12, 0x0

    .line 282
    .local v12, "offset":I
    add-int/lit8 v19, v15, -0xc

    invoke-static/range {v18 .. v19}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v9

    .line 285
    .local v9, "header":[B
    const/16 v19, 0x0

    array-length v0, v9

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v9, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    add-int/lit8 v12, v12, 0xc

    .line 288
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .local v13, "offset":I
    const/16 v19, 0x47

    aput-byte v19, v14, v12

    .line 291
    const-string v19, "12.09.17"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v14, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    add-int/lit8 v12, v13, 0x8

    .line 295
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    const/16 v19, 0x41

    aput-byte v19, v14, v12

    .line 297
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0xa

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v14, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    add-int/lit8 v12, v13, 0xa

    .line 300
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0xb

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v14, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    add-int/lit8 v12, v12, 0xb

    .line 303
    if-eqz v11, :cond_6

    .line 304
    array-length v0, v11

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v14, v12

    .line 305
    :cond_6
    add-int/lit8 v12, v12, 0x1

    .line 307
    if-eqz v11, :cond_7

    .line 309
    const/16 v19, 0x0

    array-length v0, v11

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v11, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    array-length v0, v11

    move/from16 v19, v0

    add-int/lit8 v12, v19, 0x2c

    .line 312
    const/16 v19, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v14, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    :cond_7
    add-int/lit8 v12, v12, 0x7

    .line 318
    if-eqz p7, :cond_8

    .line 319
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 320
    .local v3, "byte_pID":[B
    array-length v0, v3

    move/from16 v19, v0

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_8

    .line 321
    const/16 v19, 0x0

    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v3, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    .end local v3    # "byte_pID":[B
    :cond_8
    add-int/lit8 v12, v12, 0xa

    .line 326
    if-eqz p8, :cond_9

    .line 327
    invoke-static/range {p8 .. p8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 328
    .local v6, "byte_pTID":[B
    const/16 v19, 0x0

    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v6, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    add-int/lit8 v12, v12, 0x64

    .line 333
    .end local v6    # "byte_pTID":[B
    :cond_9
    const/16 v19, 0x2

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    const/16 v19, 0x3

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 335
    :cond_a
    const/16 v19, 0x2

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    const-string v8, "12"

    .line 336
    .local v8, "currTelecom":Ljava/lang/String;
    :goto_6
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 337
    .local v7, "byte_pTelecom":[B
    const/16 v19, 0x0

    array-length v0, v7

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v7, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 338
    add-int/lit8 v12, v12, 0x2

    .line 340
    if-eqz p9, :cond_11

    .line 342
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    const-string v19, "SENDBPDATA"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v14, v12

    .line 343
    const-string v19, "SENDBPDATA"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 344
    .local v5, "byte_pSendBPData":[B
    const/16 v19, 0x0

    array-length v0, v5

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v5, v0, v14, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    array-length v0, v5

    move/from16 v19, v0

    add-int v12, v13, v19

    .line 360
    .end local v5    # "byte_pSendBPData":[B
    .end local v7    # "byte_pTelecom":[B
    .end local v8    # "currTelecom":Ljava/lang/String;
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    :cond_b
    :goto_7
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    const/16 v19, 0x4e

    aput-byte v19, v14, v12

    .line 363
    add-int/lit8 v19, v15, -0x1

    const/16 v20, 0x17

    aput-byte v20, v14, v19

    .line 365
    invoke-static {v14}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v17

    .line 366
    .local v17, "ret":B
    if-eqz v17, :cond_12

    .line 367
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    .line 368
    sget-object v19, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static/range {v19 .. v19}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 230
    .end local v9    # "header":[B
    .end local v10    # "i":I
    .end local v11    # "ipBytes":[B
    .end local v13    # "offset":I
    .end local v14    # "packetBytes":[B
    .end local v15    # "packet_len":I
    .end local v16    # "portBytes":[B
    .end local v17    # "ret":B
    .end local v18    # "sHeaderPacket":Ljava/lang/String;
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 242
    .restart local v11    # "ipBytes":[B
    .restart local v15    # "packet_len":I
    .restart local v16    # "portBytes":[B
    :cond_d
    const-string v18, "IP"

    .restart local v18    # "sHeaderPacket":Ljava/lang/String;
    goto/16 :goto_3

    .line 266
    :cond_e
    add-int/lit8 v15, v15, 0x1

    .line 267
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v19

    add-int v15, v15, v19

    goto/16 :goto_4

    .line 278
    .restart local v10    # "i":I
    .restart local v14    # "packetBytes":[B
    :cond_f
    const/16 v19, 0x0

    aput-byte v19, v14, v10

    .line 277
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    .line 335
    .restart local v9    # "header":[B
    .restart local v12    # "offset":I
    :cond_10
    const-string v8, "13"

    goto/16 :goto_6

    .line 349
    .restart local v7    # "byte_pTelecom":[B
    .restart local v8    # "currTelecom":Ljava/lang/String;
    :cond_11
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v14, v12

    .line 350
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 351
    .local v4, "byte_pJumin":[B
    const/16 v19, 0x0

    array-length v0, v4

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v4, v0, v14, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int v12, v13, v19

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto :goto_7

    .line 372
    .end local v4    # "byte_pJumin":[B
    .end local v7    # "byte_pTelecom":[B
    .end local v8    # "currTelecom":Ljava/lang/String;
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    .restart local v17    # "ret":B
    :cond_12
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    .line 373
    const/16 v19, 0x1

    sput-boolean v19, Lcom/feelingk/iap/net/IAPNet;->isInit:Z

    .line 375
    const-string v19, "IAPNet"

    const-string v20, "====================iapSendInit  End()===================="

    invoke-static/range {v19 .. v20}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected static iapSendInitBP(Lcom/feelingk/iap/net/InitConfirm;ILjava/lang/String;Ljava/lang/String;[BI)V
    .locals 16
    .param p0, "init"    # Lcom/feelingk/iap/net/InitConfirm;
    .param p1, "pTelecom"    # I
    .param p2, "applicationID"    # Ljava/lang/String;
    .param p3, "MIN"    # Ljava/lang/String;
    .param p4, "ip"    # [B
    .param p5, "port"    # I

    .prologue
    .line 865
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 868
    .local v10, "portBytes":[B
    const-string v12, "IAPNet"

    const-string v13, "[ DEBUG ] iapSendInitBP()  __ Start"

    invoke-static {v12, v13}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const/16 v9, 0xc

    .line 871
    .local v9, "packet_len":I
    add-int/lit8 v9, v9, 0x1

    .line 872
    add-int/lit8 v9, v9, 0x8

    .line 873
    add-int/lit8 v9, v9, 0x1

    .line 874
    add-int/lit8 v9, v9, 0xa

    .line 875
    add-int/lit8 v9, v9, 0xb

    .line 876
    add-int/lit8 v9, v9, 0x1

    .line 877
    if-eqz p4, :cond_0

    .line 878
    move-object/from16 v0, p4

    array-length v12, v0

    add-int/lit8 v9, v12, 0x2c

    .line 879
    :cond_0
    add-int/lit8 v9, v9, 0x7

    .line 880
    add-int/lit8 v9, v9, 0xa

    .line 882
    const/4 v12, 0x2

    move/from16 v0, p1

    if-eq v0, v12, :cond_1

    const/4 v12, 0x3

    move/from16 v0, p1

    if-ne v0, v12, :cond_2

    .line 883
    :cond_1
    add-int/lit8 v9, v9, 0x2

    .line 885
    add-int/lit8 v9, v9, 0x1

    .line 886
    const-string v12, "SENDBPDATA"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v9, v12

    .line 889
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 891
    new-array v8, v9, [B

    .line 893
    .local v8, "packetBytes":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-lt v5, v9, :cond_7

    .line 896
    const/4 v6, 0x0

    .line 898
    .local v6, "offset":I
    const-string v12, "IP"

    add-int/lit8 v13, v9, -0xc

    invoke-static {v12, v13}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v4

    .line 901
    .local v4, "header":[B
    const/4 v12, 0x0

    array-length v13, v4

    invoke-static {v4, v12, v8, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 902
    add-int/lit8 v6, v6, 0xc

    .line 904
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .local v7, "offset":I
    const/16 v12, 0x47

    aput-byte v12, v8, v6

    .line 907
    const-string v12, "12.09.17"

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/4 v13, 0x0

    const/16 v14, 0x8

    invoke-static {v12, v13, v8, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 908
    add-int/lit8 v6, v7, 0x8

    .line 911
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/16 v12, 0x41

    aput-byte v12, v8, v6

    .line 914
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    array-length v14, v14

    const/16 v15, 0xa

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v12, v13, v8, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 915
    add-int/lit8 v6, v7, 0xa

    .line 917
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    array-length v14, v14

    const/16 v15, 0xb

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v12, v13, v8, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 918
    add-int/lit8 v6, v6, 0xb

    .line 920
    if-eqz p4, :cond_3

    .line 921
    move-object/from16 v0, p4

    array-length v12, v0

    int-to-byte v12, v12

    aput-byte v12, v8, v6

    .line 922
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 924
    if-eqz p4, :cond_4

    .line 926
    const/4 v12, 0x0

    move-object/from16 v0, p4

    array-length v13, v0

    move-object/from16 v0, p4

    invoke-static {v0, v12, v8, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 927
    move-object/from16 v0, p4

    array-length v12, v0

    add-int/lit8 v6, v12, 0x2c

    .line 929
    const/4 v12, 0x0

    array-length v13, v10

    invoke-static {v10, v12, v8, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 931
    :cond_4
    add-int/lit8 v6, v6, 0x7

    .line 933
    add-int/lit8 v6, v6, 0xa

    .line 937
    const/4 v12, 0x2

    move/from16 v0, p1

    if-eq v0, v12, :cond_5

    const/4 v12, 0x3

    move/from16 v0, p1

    if-ne v0, v12, :cond_6

    .line 939
    :cond_5
    const/4 v12, 0x2

    move/from16 v0, p1

    if-ne v0, v12, :cond_8

    const-string v3, "12"

    .line 940
    .local v3, "currTelecom":Ljava/lang/String;
    :goto_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 941
    .local v2, "byte_pTelecom":[B
    const/4 v12, 0x0

    array-length v13, v2

    invoke-static {v2, v12, v8, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 942
    add-int/lit8 v6, v6, 0x2

    .line 944
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const-string v12, "SENDBPDATA"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v8, v6

    .line 945
    const-string v12, "SENDBPDATA"

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 946
    .local v1, "byte_pSendBPData":[B
    const/4 v12, 0x0

    array-length v13, v1

    invoke-static {v1, v12, v8, v7, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 947
    array-length v12, v1

    add-int v6, v7, v12

    .line 951
    .end local v1    # "byte_pSendBPData":[B
    .end local v2    # "byte_pTelecom":[B
    .end local v3    # "currTelecom":Ljava/lang/String;
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    :cond_6
    add-int/lit8 v12, v9, -0x1

    const/16 v13, 0x17

    aput-byte v13, v8, v12

    .line 953
    invoke-static {v8}, Lcom/feelingk/iap/net/IAPNet;->iapWriteBP([B)B

    move-result v11

    .line 954
    .local v11, "ret":B
    if-eqz v11, :cond_9

    .line 955
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    .line 956
    sget-object v12, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v12}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/feelingk/iap/net/InitConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 963
    :goto_2
    return-void

    .line 894
    .end local v4    # "header":[B
    .end local v6    # "offset":I
    .end local v11    # "ret":B
    :cond_7
    const/4 v12, 0x0

    aput-byte v12, v8, v5

    .line 893
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 939
    .restart local v4    # "header":[B
    .restart local v6    # "offset":I
    :cond_8
    const-string v3, "13"

    goto :goto_1

    .line 960
    .restart local v11    # "ret":B
    :cond_9
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    goto :goto_2
.end method

.method protected static iapSendItemInfoQuery(Ljava/lang/String;)Lcom/feelingk/iap/net/ItemInfoConfirm;
    .locals 12
    .param p0, "pID"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 1793
    new-instance v3, Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-direct {v3}, Lcom/feelingk/iap/net/ItemInfoConfirm;-><init>()V

    .line 1795
    .local v3, "itemInfoConfirm":Lcom/feelingk/iap/net/ItemInfoConfirm;
    const-string v9, "IAPNet"

    const-string v10, "====================iapSendItemInfoQuery() Start()===================="

    invoke-static {v9, v10}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    const/16 v6, 0xc

    .line 1798
    .local v6, "packet_len":I
    add-int/lit8 v6, v6, 0xa

    .line 1799
    add-int/lit8 v6, v6, 0x1

    .line 1801
    new-array v5, v6, [B

    .line 1802
    .local v5, "packetBytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 1804
    const/4 v4, 0x0

    .line 1806
    .local v4, "offset":I
    const-string v9, "GP"

    const/16 v10, 0xb

    invoke-static {v9, v10}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1809
    .local v1, "header":[B
    array-length v9, v1

    invoke-static {v1, v11, v5, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1811
    add-int/lit8 v4, v4, 0xc

    .line 1814
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1815
    .local v0, "byte_pID":[B
    array-length v9, v0

    invoke-static {v0, v11, v5, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1816
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v9, v9

    add-int/lit8 v4, v9, 0xc

    .line 1818
    const/16 v9, 0x16

    const/16 v10, 0x17

    aput-byte v10, v5, v9

    .line 1820
    invoke-static {v5}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v8

    .line 1821
    .local v8, "ret":B
    if-eqz v8, :cond_1

    .line 1822
    invoke-virtual {v3, v8}, Lcom/feelingk/iap/net/ItemInfoConfirm;->setResultCode(B)V

    .line 1823
    sget-object v9, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v9}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/feelingk/iap/net/ItemInfoConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 1836
    :goto_1
    return-object v3

    .line 1803
    .end local v0    # "byte_pID":[B
    .end local v1    # "header":[B
    .end local v4    # "offset":I
    .end local v8    # "ret":B
    :cond_0
    aput-byte v11, v5, v2

    .line 1802
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1828
    .restart local v0    # "byte_pID":[B
    .restart local v1    # "header":[B
    .restart local v4    # "offset":I
    .restart local v8    # "ret":B
    :cond_1
    invoke-static {v3}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v7

    .line 1829
    .local v7, "recv":[B
    invoke-virtual {v3}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getResultCode()B

    move-result v9

    if-eqz v9, :cond_2

    .line 1830
    sget-object v9, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v9}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/feelingk/iap/net/ItemInfoConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 1834
    :cond_2
    invoke-virtual {v3, v7}, Lcom/feelingk/iap/net/ItemInfoConfirm;->parse([B)V

    .line 1835
    const-string v9, "IAPNet"

    const-string v10, "====================iapSendItemInfoQuery() End()===================="

    invoke-static {v9, v10}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected static iapSendItemPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 14
    .param p0, "pID"    # Ljava/lang/String;
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "bTCash"    # Ljava/lang/Boolean;
    .param p3, "TID"    # Ljava/lang/String;
    .param p4, "BPInfo"    # Ljava/lang/String;
    .param p5, "bUseBPProtocol"    # Ljava/lang/Boolean;

    .prologue
    .line 2068
    new-instance v5, Lcom/feelingk/iap/net/MsgConfirm;

    invoke-direct {v5}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 2070
    .local v5, "msgConfirm":Lcom/feelingk/iap/net/MsgConfirm;
    const-string v11, "IAPNet"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "[ DEBUG ] iapSendItemPurchase() bUseBPProtocol = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  START !!!!!!!!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2072
    const/16 v8, 0xc

    .line 2073
    .local v8, "packet_len":I
    add-int/lit8 v8, v8, 0xa

    .line 2075
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2077
    const-string v3, "BP"

    .line 2098
    .local v3, "headerParam":Ljava/lang/String;
    :cond_0
    :goto_0
    add-int/lit8 v8, v8, 0x1

    .line 2100
    new-array v7, v8, [B

    .line 2101
    .local v7, "packetBytes":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-lt v4, v8, :cond_9

    .line 2103
    const/4 v6, 0x0

    .line 2105
    .local v6, "offset":I
    const/4 v2, 0x0

    check-cast v2, [B

    .line 2106
    .local v2, "header":[B
    const-string v12, "IAPNet"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "[ DEBUG ] iapSendItemPurchase()  bTCash="

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "// PName="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez p1, :cond_a

    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    add-int/lit8 v11, v8, -0xc

    invoke-static {v3, v11}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v2

    .line 2115
    const/4 v11, 0x0

    array-length v12, v2

    invoke-static {v2, v11, v7, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2116
    add-int/lit8 v6, v6, 0xc

    .line 2118
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 2119
    .local v1, "byte_pID":[B
    const/4 v11, 0x0

    array-length v12, v1

    invoke-static {v1, v11, v7, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2120
    add-int/lit8 v6, v6, 0xa

    .line 2143
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_5

    .line 2145
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 2146
    const/16 v11, 0x59

    aput-byte v11, v7, v6

    .line 2150
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 2153
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    const/16 v12, 0x7a

    if-le v11, v12, :cond_1

    .line 2154
    const-string v11, "IAPNet"

    const-string v12, "pName overflow and reset!!"

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2155
    const-string p1, "0"

    .line 2157
    :cond_1
    if-eqz p1, :cond_2

    .line 2158
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v6

    .line 2161
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 2163
    if-eqz p1, :cond_3

    .line 2164
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    array-length v13, v13

    invoke-static {v11, v12, v7, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2165
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v6, v11, 0x18

    .line 2169
    :cond_3
    if-eqz p3, :cond_4

    .line 2170
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    array-length v13, v13

    invoke-static {v11, v12, v7, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2171
    add-int/lit8 v6, v6, 0x64

    .line 2175
    :cond_4
    if-eqz p4, :cond_5

    .line 2176
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v6

    .line 2177
    add-int/lit8 v6, v6, 0x1

    .line 2178
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    array-length v13, v13

    invoke-static {v11, v12, v7, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2179
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    add-int/2addr v6, v11

    .line 2184
    :cond_5
    add-int/lit8 v11, v8, -0x1

    const/16 v12, 0x17

    aput-byte v12, v7, v11

    .line 2186
    invoke-static {v7}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v10

    .line 2187
    .local v10, "ret":B
    if-eqz v10, :cond_c

    .line 2188
    invoke-virtual {v5, v10}, Lcom/feelingk/iap/net/MsgConfirm;->setResultCode(B)V

    .line 2189
    sget-object v11, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v11}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 2201
    :goto_4
    return-object v5

    .line 2080
    .end local v1    # "byte_pID":[B
    .end local v2    # "header":[B
    .end local v3    # "headerParam":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v6    # "offset":I
    .end local v7    # "packetBytes":[B
    .end local v10    # "ret":B
    :cond_6
    const-string v3, "HP"

    .line 2082
    .restart local v3    # "headerParam":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    .line 2083
    add-int/lit8 v8, v8, 0x1

    .line 2084
    if-eqz p1, :cond_7

    .line 2085
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v8, v11, 0x18

    .line 2087
    :cond_7
    if-eqz p3, :cond_8

    .line 2088
    const-string v3, "OP"

    .line 2089
    add-int/lit8 v8, v8, 0x64

    .line 2090
    add-int/lit8 v8, v8, 0x1

    .line 2093
    :cond_8
    if-eqz p4, :cond_0

    .line 2094
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    add-int/2addr v8, v11

    goto/16 :goto_0

    .line 2102
    .restart local v4    # "i":I
    .restart local v7    # "packetBytes":[B
    :cond_9
    const/4 v11, 0x0

    aput-byte v11, v7, v4

    .line 2101
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 2106
    .restart local v2    # "header":[B
    .restart local v6    # "offset":I
    :cond_a
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 2148
    .restart local v1    # "byte_pID":[B
    :cond_b
    const/16 v11, 0x4e

    aput-byte v11, v7, v6

    goto/16 :goto_3

    .line 2194
    .restart local v10    # "ret":B
    :cond_c
    invoke-static {v5}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v9

    .line 2195
    .local v9, "recv":[B
    invoke-virtual {v5}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v11

    if-eqz v11, :cond_d

    .line 2196
    sget-object v11, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v11}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_4

    .line 2200
    :cond_d
    invoke-virtual {v5, v9}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    goto :goto_4
.end method

.method protected static iapSendItemPurchaseByDanal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 22
    .param p0, "mdn"    # Ljava/lang/String;
    .param p1, "pID"    # Ljava/lang/String;
    .param p2, "pName"    # Ljava/lang/String;
    .param p3, "pCarrier"    # I
    .param p4, "TID"    # Ljava/lang/String;
    .param p5, "BPInfo"    # Ljava/lang/String;
    .param p6, "bUseTCash"    # Z
    .param p7, "encJumin"    # Ljava/lang/String;

    .prologue
    .line 2645
    const/16 v18, 0x0

    .line 2647
    .local v18, "useXPProtocol":Z
    const-string v9, "KP"

    .line 2648
    .local v9, "headerParam":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2649
    .local v7, "carrierStr":Ljava/lang/String;
    const/16 v15, 0xc

    .line 2650
    .local v15, "packet_len":I
    new-instance v11, Lcom/feelingk/iap/net/MsgConfirm;

    invoke-direct {v11}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 2652
    .local v11, "itemPurchaseDanalCfm":Lcom/feelingk/iap/net/MsgConfirm;
    add-int/lit8 v15, v15, 0x1

    .line 2653
    if-eqz p2, :cond_0

    .line 2654
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v15, v19, 0xd

    .line 2656
    :cond_0
    if-nez p4, :cond_1

    if-eqz p5, :cond_2

    .line 2657
    :cond_1
    const-string v9, "XP"

    .line 2658
    const/16 v18, 0x1

    .line 2659
    add-int/lit8 v15, v15, 0x64

    .line 2660
    add-int/lit8 v15, v15, 0x1

    .line 2661
    if-eqz p5, :cond_2

    .line 2662
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v19

    add-int v15, v15, v19

    .line 2665
    :cond_2
    const-string v19, "IAPNet"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "[ DEBUG ] iapSendItemPurchaseByDanal() STart!! "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2666
    add-int/lit8 v15, v15, 0xa

    .line 2667
    add-int/lit8 v15, v15, 0x2

    .line 2668
    add-int/lit8 v15, v15, 0xb

    .line 2669
    add-int/lit8 v15, v15, 0x1

    .line 2670
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v19

    add-int v15, v15, v19

    .line 2671
    add-int/lit8 v15, v15, 0x1

    .line 2672
    add-int/lit8 v15, v15, 0x1

    .line 2675
    const/16 v19, 0x2

    move/from16 v0, p3

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 2676
    const-string v7, "12"

    .line 2685
    :goto_0
    new-array v14, v15, [B

    .line 2686
    .local v14, "packetBytes":[B
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-lt v10, v15, :cond_a

    .line 2688
    const/4 v12, 0x0

    .line 2689
    .local v12, "offset":I
    const/4 v8, 0x0

    check-cast v8, [B

    .line 2691
    .local v8, "header":[B
    add-int/lit8 v19, v15, -0xc

    move/from16 v0, v19

    invoke-static {v9, v0}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v8

    .line 2694
    const/16 v19, 0x0

    array-length v0, v8

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v8, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2695
    add-int/lit8 v12, v12, 0xc

    .line 2698
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 2699
    .local v4, "byte_pID":[B
    const/16 v19, 0x0

    array-length v0, v4

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v4, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2700
    add-int/lit8 v12, v12, 0xa

    .line 2703
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 2704
    .local v3, "byte_pCarrier":[B
    const/16 v19, 0x0

    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v3, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2705
    add-int/lit8 v12, v12, 0x2

    .line 2708
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 2709
    .local v6, "byte_pMdn":[B
    const/16 v19, 0x0

    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v6, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2710
    add-int/lit8 v12, v12, 0xb

    .line 2713
    if-eqz p4, :cond_3

    .line 2714
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v14, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2715
    add-int/lit8 v12, v12, 0x64

    .line 2719
    :cond_3
    if-eqz p2, :cond_4

    .line 2720
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v14, v12

    .line 2721
    :cond_4
    add-int/lit8 v12, v12, 0x1

    .line 2723
    if-eqz p2, :cond_5

    .line 2724
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v14, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2725
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int v12, v12, v19

    .line 2728
    :cond_5
    if-eqz v18, :cond_7

    .line 2730
    if-eqz p5, :cond_6

    .line 2731
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v14, v12

    .line 2733
    :cond_6
    add-int/lit8 v12, v12, 0x1

    .line 2735
    if-eqz p5, :cond_7

    .line 2736
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v14, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2737
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int v12, v12, v19

    .line 2742
    :cond_7
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .local v13, "offset":I
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v14, v12

    .line 2743
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 2744
    .local v5, "byte_pJumin":[B
    const/16 v19, 0x0

    array-length v0, v5

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v5, v0, v14, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2745
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int v12, v13, v19

    .line 2747
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    const-string v19, "DEBUG"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Jumin="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "  // Value = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2751
    if-eqz p6, :cond_b

    .line 2752
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    const/16 v19, 0x59

    aput-byte v19, v14, v12

    move v12, v13

    .line 2756
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    :goto_2
    add-int/lit8 v19, v15, -0x1

    const/16 v20, 0x17

    aput-byte v20, v14, v19

    .line 2759
    invoke-static {v14}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v17

    .line 2760
    .local v17, "ret":B
    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v14, v0}, Lcom/feelingk/iap/net/IAPNetworkUtil;->packetDebug([BI)V

    .line 2761
    if-eqz v17, :cond_c

    .line 2762
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/feelingk/iap/net/MsgConfirm;->setResultCode(B)V

    .line 2763
    sget-object v19, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static/range {v19 .. v19}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 2776
    :goto_3
    return-object v11

    .line 2678
    .end local v3    # "byte_pCarrier":[B
    .end local v4    # "byte_pID":[B
    .end local v5    # "byte_pJumin":[B
    .end local v6    # "byte_pMdn":[B
    .end local v8    # "header":[B
    .end local v10    # "i":I
    .end local v12    # "offset":I
    .end local v14    # "packetBytes":[B
    .end local v17    # "ret":B
    :cond_8
    const/16 v19, 0x3

    move/from16 v0, p3

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 2679
    const-string v7, "13"

    goto/16 :goto_0

    .line 2682
    :cond_9
    const-string v7, "11"

    goto/16 :goto_0

    .line 2687
    .restart local v10    # "i":I
    .restart local v14    # "packetBytes":[B
    :cond_a
    const/16 v19, 0x0

    aput-byte v19, v14, v10

    .line 2686
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 2754
    .restart local v3    # "byte_pCarrier":[B
    .restart local v4    # "byte_pID":[B
    .restart local v5    # "byte_pJumin":[B
    .restart local v6    # "byte_pMdn":[B
    .restart local v8    # "header":[B
    .restart local v12    # "offset":I
    :cond_b
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    const/16 v19, 0x4e

    aput-byte v19, v14, v12

    move v12, v13

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto :goto_2

    .line 2768
    .restart local v17    # "ret":B
    :cond_c
    invoke-static {v11}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v16

    .line 2769
    .local v16, "recv":[B
    invoke-virtual {v11}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v19

    if-eqz v19, :cond_d

    .line 2770
    sget-object v19, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static/range {v19 .. v19}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_3

    .line 2774
    :cond_d
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    .line 2775
    const-string v19, "IAPNet"

    const-string v20, "[ DEBUG ] iapSendItemPurchaseByDanal()  End !!!!!!!!"

    invoke-static/range {v19 .. v20}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected static iapSendItemQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 14
    .param p0, "pID"    # Ljava/lang/String;
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "pTID"    # Ljava/lang/String;
    .param p3, "pBPInfo"    # Ljava/lang/String;

    .prologue
    .line 1201
    const-string v3, "LP"

    .line 1202
    .local v3, "headerParam":Ljava/lang/String;
    new-instance v5, Lcom/feelingk/iap/net/MsgConfirm;

    invoke-direct {v5}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 1204
    .local v5, "msgConfirm":Lcom/feelingk/iap/net/MsgConfirm;
    const-string v11, "IAPNet"

    const-string v12, "====================iapSendItemQuery Start()===================="

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    const-string v11, "IAPNet"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "[ DEBUG ] iapSendItemQuery() PID="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    const/16 v8, 0xc

    .line 1208
    .local v8, "packet_len":I
    add-int/lit8 v8, v8, 0xa

    .line 1209
    add-int/lit8 v8, v8, 0x1

    .line 1210
    if-eqz p1, :cond_0

    .line 1213
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v8, v11, 0x17

    .line 1214
    const-string v3, "EP"

    .line 1215
    const-string v11, "IAPNet"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "pName: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    :cond_0
    if-eqz p2, :cond_1

    .line 1219
    add-int/lit8 v8, v8, 0x64

    .line 1220
    const-string v3, "NP"

    .line 1221
    add-int/lit8 v8, v8, 0x1

    .line 1222
    const-string v11, "IAPNet"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "pTID: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    :cond_1
    if-eqz p3, :cond_2

    .line 1226
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    add-int/2addr v8, v11

    .line 1227
    const-string v11, "IAPNet"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "pBPInfo: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 1242
    new-array v7, v8, [B

    .line 1243
    .local v7, "packetBytes":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v8, :cond_8

    .line 1245
    const/4 v6, 0x0

    .line 1247
    .local v6, "offset":I
    const/4 v2, 0x0

    check-cast v2, [B

    .line 1249
    .local v2, "header":[B
    add-int/lit8 v11, v8, -0xc

    invoke-static {v3, v11}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v2

    .line 1259
    const/16 v11, 0xc

    invoke-static {v2, v11}, Lcom/feelingk/iap/net/IAPNetworkUtil;->packetDebug([BI)V

    .line 1262
    const/4 v11, 0x0

    array-length v12, v2

    invoke-static {v2, v11, v7, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1264
    add-int/lit8 v6, v6, 0xc

    .line 1266
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1267
    .local v1, "byte_pID":[B
    const/4 v11, 0x0

    array-length v12, v1

    invoke-static {v1, v11, v7, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1269
    add-int/lit8 v6, v6, 0xa

    .line 1282
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    const/16 v12, 0x7a

    if-le v11, v12, :cond_3

    .line 1283
    const-string v11, "IAPNet"

    const-string v12, "pName overflow and reset!!"

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    const-string p1, "0"

    .line 1286
    :cond_3
    if-eqz p1, :cond_4

    .line 1287
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    int-to-byte v11, v11

    aput-byte v11, v7, v6

    .line 1288
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 1290
    if-eqz p1, :cond_5

    .line 1291
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    array-length v13, v13

    invoke-static {v11, v12, v7, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1292
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v6, v11, 0x17

    .line 1297
    :cond_5
    if-eqz p2, :cond_6

    .line 1298
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    array-length v13, v13

    invoke-static {v11, v12, v7, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1299
    add-int/lit8 v6, v6, 0x64

    .line 1300
    add-int/lit8 v6, v6, 0x1

    .line 1303
    :cond_6
    if-eqz p3, :cond_7

    .line 1304
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    int-to-byte v11, v11

    aput-byte v11, v7, v6

    .line 1305
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    array-length v13, v13

    invoke-static {v11, v12, v7, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1306
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    add-int/2addr v6, v11

    .line 1355
    :cond_7
    add-int/lit8 v11, v8, -0x1

    const/16 v12, 0x17

    aput-byte v12, v7, v11

    .line 1357
    invoke-static {v7}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v10

    .line 1358
    .local v10, "ret":B
    if-eqz v10, :cond_9

    .line 1359
    invoke-virtual {v5, v10}, Lcom/feelingk/iap/net/MsgConfirm;->setResultCode(B)V

    .line 1360
    sget-object v11, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v11}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 1374
    :goto_1
    return-object v5

    .line 1244
    .end local v1    # "byte_pID":[B
    .end local v2    # "header":[B
    .end local v6    # "offset":I
    .end local v10    # "ret":B
    :cond_8
    const/4 v11, 0x0

    aput-byte v11, v7, v4

    .line 1243
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1365
    .restart local v1    # "byte_pID":[B
    .restart local v2    # "header":[B
    .restart local v6    # "offset":I
    .restart local v10    # "ret":B
    :cond_9
    invoke-static {v5}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v9

    .line 1366
    .local v9, "recv":[B
    invoke-virtual {v5}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v11

    if-eqz v11, :cond_a

    .line 1367
    sget-object v11, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v11}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 1372
    :cond_a
    invoke-virtual {v5, v9}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    .line 1373
    const-string v11, "IAPNet"

    const-string v12, "====================iapSendItemQuery End()===================="

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected static iapSendItemUse(Ljava/lang/String;)Lcom/feelingk/iap/net/ItemUseConfirm;
    .locals 12
    .param p0, "pID"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 2839
    new-instance v3, Lcom/feelingk/iap/net/ItemUseConfirm;

    invoke-direct {v3}, Lcom/feelingk/iap/net/ItemUseConfirm;-><init>()V

    .line 2842
    .local v3, "itemUseConfirmMsg":Lcom/feelingk/iap/net/ItemUseConfirm;
    const/16 v6, 0xc

    .line 2843
    .local v6, "packet_len":I
    add-int/lit8 v6, v6, 0xa

    .line 2844
    add-int/lit8 v6, v6, 0x1

    .line 2846
    new-array v5, v6, [B

    .line 2847
    .local v5, "packetBytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 2849
    const/4 v4, 0x0

    .line 2851
    .local v4, "offset":I
    const-string v9, "MP"

    const/16 v10, 0xb

    invoke-static {v9, v10}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v1

    .line 2854
    .local v1, "header":[B
    array-length v9, v1

    invoke-static {v1, v11, v5, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2855
    add-int/lit8 v4, v4, 0xc

    .line 2857
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2858
    .local v0, "byte_pID":[B
    array-length v9, v0

    invoke-static {v0, v11, v5, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2860
    const/16 v9, 0x16

    const/16 v10, 0x17

    aput-byte v10, v5, v9

    .line 2862
    invoke-static {v5}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v8

    .line 2863
    .local v8, "ret":B
    if-eqz v8, :cond_1

    .line 2864
    invoke-virtual {v3, v8}, Lcom/feelingk/iap/net/ItemUseConfirm;->setResultCode(B)V

    .line 2865
    sget-object v9, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v9}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/feelingk/iap/net/ItemUseConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 2878
    :goto_1
    return-object v3

    .line 2848
    .end local v0    # "byte_pID":[B
    .end local v1    # "header":[B
    .end local v4    # "offset":I
    .end local v8    # "ret":B
    :cond_0
    aput-byte v11, v5, v2

    .line 2847
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2870
    .restart local v0    # "byte_pID":[B
    .restart local v1    # "header":[B
    .restart local v4    # "offset":I
    .restart local v8    # "ret":B
    :cond_1
    invoke-static {v3}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v7

    .line 2871
    .local v7, "recv":[B
    invoke-virtual {v3}, Lcom/feelingk/iap/net/ItemUseConfirm;->getResultCode()B

    move-result v9

    if-eqz v9, :cond_2

    .line 2872
    sget-object v9, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v9}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/feelingk/iap/net/ItemUseConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 2877
    :cond_2
    invoke-virtual {v3, v7}, Lcom/feelingk/iap/net/ItemUseConfirm;->parse([B)V

    goto :goto_1
.end method

.method protected static iapSendItemWholeAuth()Lcom/feelingk/iap/net/ItemWholeAuthConfirm;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 2794
    new-instance v2, Lcom/feelingk/iap/net/ItemWholeAuthConfirm;

    invoke-direct {v2}, Lcom/feelingk/iap/net/ItemWholeAuthConfirm;-><init>()V

    .line 2796
    .local v2, "itemWholeAutchConfirm":Lcom/feelingk/iap/net/ItemWholeAuthConfirm;
    const-string v8, "IAPNet"

    const-string v9, "[ DEBUG ] iapSendItemWholeAuth()"

    invoke-static {v8, v9}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2798
    const/16 v5, 0xc

    .line 2799
    .local v5, "packet_len":I
    add-int/lit8 v5, v5, 0x1

    .line 2801
    new-array v4, v5, [B

    .line 2802
    .local v4, "packetBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v5, :cond_0

    .line 2804
    const/4 v3, 0x0

    .line 2806
    .local v3, "offset":I
    const-string v8, "AP"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2809
    .local v0, "header":[B
    array-length v8, v0

    invoke-static {v0, v10, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2811
    const/16 v8, 0xc

    const/16 v9, 0x17

    aput-byte v9, v4, v8

    .line 2813
    invoke-static {v4}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v7

    .line 2814
    .local v7, "ret":B
    if-eqz v7, :cond_1

    .line 2815
    invoke-virtual {v2, v7}, Lcom/feelingk/iap/net/ItemWholeAuthConfirm;->setResultCode(B)V

    .line 2816
    sget-object v8, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v8}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/feelingk/iap/net/ItemWholeAuthConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 2829
    :goto_1
    return-object v2

    .line 2803
    .end local v0    # "header":[B
    .end local v3    # "offset":I
    .end local v7    # "ret":B
    :cond_0
    aput-byte v10, v4, v1

    .line 2802
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2821
    .restart local v0    # "header":[B
    .restart local v3    # "offset":I
    .restart local v7    # "ret":B
    :cond_1
    invoke-static {v2}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v6

    .line 2822
    .local v6, "recv":[B
    invoke-virtual {v2}, Lcom/feelingk/iap/net/ItemWholeAuthConfirm;->getResultCode()B

    move-result v8

    if-eqz v8, :cond_2

    .line 2823
    sget-object v8, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v8}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/feelingk/iap/net/ItemWholeAuthConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 2828
    :cond_2
    invoke-virtual {v2, v6}, Lcom/feelingk/iap/net/ItemWholeAuthConfirm;->parse([B)V

    goto :goto_1
.end method

.method protected static iapSendLGUSmsAuthNumberReq(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;
    .locals 20
    .param p0, "pId"    # Ljava/lang/String;
    .param p1, "pCarrier"    # I
    .param p2, "mdn"    # Ljava/lang/String;
    .param p3, "encJumin"    # Ljava/lang/String;

    .prologue
    .line 3190
    new-instance v10, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

    invoke-direct {v10}, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;-><init>()V

    .line 3191
    .local v10, "msgConfirm":Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;
    const/4 v7, 0x0

    .line 3193
    .local v7, "carrierStr":Ljava/lang/String;
    const-string v17, "IAPNet"

    const-string v18, "[ DEBUG ] iapSendLGUSmsAuthNumberReq() Start"

    invoke-static/range {v17 .. v18}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3195
    const/16 v14, 0xc

    .line 3197
    .local v14, "packet_len":I
    add-int/lit8 v14, v14, 0xa

    .line 3198
    add-int/lit8 v14, v14, 0x2

    .line 3199
    add-int/lit8 v14, v14, 0xb

    .line 3200
    add-int/lit8 v14, v14, 0x1

    .line 3201
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v14, v17, 0x24

    .line 3205
    add-int/lit8 v14, v14, 0x6

    .line 3207
    add-int/lit8 v14, v14, 0x1

    .line 3211
    const/16 v17, 0x2

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 3212
    const-string v7, "12"

    .line 3221
    :goto_0
    new-array v13, v14, [B

    .line 3222
    .local v13, "packetBytes":[B
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-lt v9, v14, :cond_2

    .line 3225
    const/4 v11, 0x0

    .line 3227
    .local v11, "offset":I
    const-string v17, "MR"

    .line 3228
    add-int/lit8 v18, v14, -0xc

    .line 3227
    invoke-static/range {v17 .. v18}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v8

    .line 3231
    .local v8, "header":[B
    const/16 v17, 0x0

    array-length v0, v8

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v0, v13, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3232
    add-int/lit8 v11, v11, 0xc

    .line 3235
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 3236
    .local v3, "byte_pID":[B
    const/16 v17, 0x0

    array-length v0, v3

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v3, v0, v13, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3237
    add-int/lit8 v11, v11, 0xa

    .line 3240
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 3241
    .local v2, "byte_pCarrier":[B
    const/16 v17, 0x0

    array-length v0, v2

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v2, v0, v13, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3242
    add-int/lit8 v11, v11, 0x2

    .line 3245
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 3246
    .local v5, "byte_pMdn":[B
    const/16 v17, 0x0

    array-length v0, v5

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v5, v0, v13, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3247
    add-int/lit8 v11, v11, 0xb

    .line 3250
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "offset":I
    .local v12, "offset":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v13, v11

    .line 3253
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 3254
    .local v4, "byte_pJumin":[B
    const/16 v17, 0x0

    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v4, v0, v13, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3255
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v11, v17, 0x24

    .line 3257
    .end local v12    # "offset":I
    .restart local v11    # "offset":I
    const-string v17, "DEBUG"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Jumin="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "  // Value = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3264
    invoke-static {}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getInstance()Lcom/feelingk/iap/gui/data/SingletonCounter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getmPostPay()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 3265
    .local v6, "byte_pPostPay":[B
    const/16 v17, 0x0

    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v6, v0, v13, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3266
    add-int/lit8 v11, v11, 0x6

    .line 3269
    invoke-static {}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getInstance()Lcom/feelingk/iap/gui/data/SingletonCounter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/feelingk/iap/gui/data/SingletonCounter;->clear()V

    .line 3271
    add-int/lit8 v17, v14, -0x1

    const/16 v18, 0x17

    aput-byte v18, v13, v17

    .line 3273
    invoke-static {v13}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v16

    .line 3274
    .local v16, "ret":B
    if-eqz v16, :cond_3

    .line 3275
    move/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;->setResultCode(B)V

    .line 3277
    sget-object v17, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static/range {v17 .. v17}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 3294
    :goto_2
    return-object v10

    .line 3214
    .end local v2    # "byte_pCarrier":[B
    .end local v3    # "byte_pID":[B
    .end local v4    # "byte_pJumin":[B
    .end local v5    # "byte_pMdn":[B
    .end local v6    # "byte_pPostPay":[B
    .end local v8    # "header":[B
    .end local v9    # "i":I
    .end local v11    # "offset":I
    .end local v13    # "packetBytes":[B
    .end local v16    # "ret":B
    :cond_0
    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 3215
    const-string v7, "13"

    goto/16 :goto_0

    .line 3218
    :cond_1
    const-string v7, "11"

    goto/16 :goto_0

    .line 3223
    .restart local v9    # "i":I
    .restart local v13    # "packetBytes":[B
    :cond_2
    const/16 v17, 0x0

    aput-byte v17, v13, v9

    .line 3222
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 3282
    .restart local v2    # "byte_pCarrier":[B
    .restart local v3    # "byte_pID":[B
    .restart local v4    # "byte_pJumin":[B
    .restart local v5    # "byte_pMdn":[B
    .restart local v6    # "byte_pPostPay":[B
    .restart local v8    # "header":[B
    .restart local v11    # "offset":I
    .restart local v16    # "ret":B
    :cond_3
    invoke-static {v10}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v15

    .line 3283
    .local v15, "recv":[B
    invoke-virtual {v10}, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;->getResultCode()B

    move-result v17

    if-eqz v17, :cond_4

    .line 3285
    sget-object v17, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static/range {v17 .. v17}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_2

    .line 3290
    :cond_4
    invoke-virtual {v10, v15}, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;->parse([B)V

    .line 3292
    const-string v17, "IAPNet"

    const-string v18, "[ DEBUG ] iapSendLGUSmsAuthNumberReq()  End"

    invoke-static/range {v17 .. v18}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected static iapSendLGUSmsAuthReq(Ljava/lang/String;Ljava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 14
    .param p0, "smsAuthKey"    # Ljava/lang/String;
    .param p1, "OTPNumber"    # Ljava/lang/String;

    .prologue
    .line 3308
    new-instance v4, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

    invoke-direct {v4}, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;-><init>()V

    .line 3310
    .local v4, "msgConfirm":Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;
    const-string v11, "IAPNet"

    const-string v12, "[ DEBUG ] iapSendLGUSmsAuthReq() Start"

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3312
    const/16 v8, 0xc

    .line 3314
    .local v8, "packet_len":I
    add-int/lit8 v8, v8, 0x1

    .line 3315
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v8, v11, 0xd

    .line 3316
    add-int/lit8 v8, v8, 0x1

    .line 3317
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v8, v11

    .line 3319
    add-int/lit8 v8, v8, 0x1

    .line 3321
    new-array v7, v8, [B

    .line 3322
    .local v7, "packetBytes":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v8, :cond_0

    .line 3325
    const/4 v5, 0x0

    .line 3327
    .local v5, "offset":I
    const-string v11, "MA"

    .line 3328
    add-int/lit8 v12, v8, -0xc

    .line 3327
    invoke-static {v11, v12}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v2

    .line 3331
    .local v2, "header":[B
    const/4 v11, 0x0

    array-length v12, v2

    invoke-static {v2, v11, v7, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3332
    add-int/lit8 v5, v5, 0xc

    .line 3335
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v5

    .line 3338
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 3339
    .local v1, "byte_smsAuthKey":[B
    const/4 v11, 0x0

    array-length v12, v1

    invoke-static {v1, v11, v7, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3340
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v5, v11, 0xd

    .line 3342
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    const-string v11, "DEBUG"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "smsAuthKey: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  // Value = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3345
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v5

    .line 3348
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 3349
    .local v0, "byte_OTPNumber":[B
    const/4 v11, 0x0

    array-length v12, v0

    invoke-static {v0, v11, v7, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3350
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    add-int v5, v6, v11

    .line 3352
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    const-string v11, "DEBUG"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "OTPNumber: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  // Value = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3354
    add-int/lit8 v11, v8, -0x1

    const/16 v12, 0x17

    aput-byte v12, v7, v11

    .line 3356
    invoke-static {v7}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v10

    .line 3357
    .local v10, "ret":B
    if-eqz v10, :cond_1

    .line 3358
    invoke-virtual {v4, v10}, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;->setResultCode(B)V

    .line 3360
    sget-object v11, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v11}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 3378
    :goto_1
    return-object v4

    .line 3323
    .end local v0    # "byte_OTPNumber":[B
    .end local v1    # "byte_smsAuthKey":[B
    .end local v2    # "header":[B
    .end local v5    # "offset":I
    .end local v10    # "ret":B
    :cond_0
    const/4 v11, 0x0

    aput-byte v11, v7, v3

    .line 3322
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 3365
    .restart local v0    # "byte_OTPNumber":[B
    .restart local v1    # "byte_smsAuthKey":[B
    .restart local v2    # "header":[B
    .restart local v5    # "offset":I
    .restart local v10    # "ret":B
    :cond_1
    invoke-static {v4}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v9

    .line 3366
    .local v9, "recv":[B
    invoke-virtual {v4}, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;->getResultCode()B

    move-result v11

    if-eqz v11, :cond_2

    .line 3368
    sget-object v11, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v11}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 3373
    :cond_2
    invoke-virtual {v4, v9}, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;->parse([B)V

    .line 3375
    const-string v11, "IAPNet"

    const-string v12, "[ DEBUG ] iapSendLGUSmsAuthReq()  End"

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected static iapSendOCBCardUpdateQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 14
    .param p0, "updateType"    # Ljava/lang/String;
    .param p1, "OCBCardNum"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    .line 1391
    new-instance v0, Lcom/feelingk/iap/net/MsgConfirm;

    invoke-direct {v0}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 1393
    .local v0, "OCBInfoCfm":Lcom/feelingk/iap/net/MsgConfirm;
    const-string v11, "IAPNet"

    const-string v12, "====================iapSendOCBCardUpdateQuery() Start()===================="

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    const/16 v8, 0xc

    .line 1396
    .local v8, "packet_len":I
    add-int/lit8 v8, v8, 0x1

    .line 1397
    add-int/lit8 v8, v8, 0x1

    .line 1398
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v8, v11, 0xe

    .line 1399
    add-int/lit8 v8, v8, 0x1

    .line 1402
    new-array v7, v8, [B

    .line 1403
    .local v7, "packetBytes":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v8, :cond_0

    .line 1405
    const/4 v5, 0x0

    .line 1407
    .local v5, "offset":I
    const-string v11, "OU"

    add-int/lit8 v12, v8, -0xc

    invoke-static {v11, v12}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v3

    .line 1410
    .local v3, "header":[B
    array-length v11, v3

    invoke-static {v3, v13, v7, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1412
    add-int/lit8 v5, v5, 0xc

    .line 1415
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 1416
    .local v2, "byte_updateType":[B
    array-length v11, v2

    invoke-static {v2, v13, v7, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1417
    add-int/lit8 v5, v5, 0x1

    .line 1420
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v5

    .line 1423
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1424
    .local v1, "byte_encOCBCardNum":[B
    array-length v11, v1

    invoke-static {v1, v13, v7, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1425
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v5, v11, 0xe

    .line 1427
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/lit8 v11, v8, -0x1

    const/16 v12, 0x17

    aput-byte v12, v7, v11

    .line 1429
    invoke-static {v7}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v10

    .line 1430
    .local v10, "ret":B
    if-eqz v10, :cond_1

    .line 1431
    invoke-virtual {v0, v10}, Lcom/feelingk/iap/net/MsgConfirm;->setResultCode(B)V

    .line 1432
    sget-object v11, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v11}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 1447
    :goto_1
    return-object v0

    .line 1404
    .end local v1    # "byte_encOCBCardNum":[B
    .end local v2    # "byte_updateType":[B
    .end local v3    # "header":[B
    .end local v5    # "offset":I
    .end local v10    # "ret":B
    :cond_0
    aput-byte v13, v7, v4

    .line 1403
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1437
    .restart local v1    # "byte_encOCBCardNum":[B
    .restart local v2    # "byte_updateType":[B
    .restart local v3    # "header":[B
    .restart local v5    # "offset":I
    .restart local v10    # "ret":B
    :cond_1
    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v9

    .line 1438
    .local v9, "recv":[B
    invoke-virtual {v0}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v11

    if-eqz v11, :cond_2

    .line 1439
    sget-object v11, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v11}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 1443
    :cond_2
    invoke-virtual {v0, v9}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    .line 1445
    const-string v11, "IAPNet"

    const-string v12, "====================iapSendOCBCardUpdateQuery() End()===================="

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected static iapSendOCBPointInfoQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/feelingk/iap/net/OKCashbagPointInfoConfirm;
    .locals 14
    .param p0, "OCBCardNum"    # Ljava/lang/String;
    .param p1, "OCBCardPWNum"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    .line 1462
    new-instance v0, Lcom/feelingk/iap/net/OKCashbagPointInfoConfirm;

    invoke-direct {v0}, Lcom/feelingk/iap/net/OKCashbagPointInfoConfirm;-><init>()V

    .line 1464
    .local v0, "OCBPointCfm":Lcom/feelingk/iap/net/OKCashbagPointInfoConfirm;
    const-string v11, "IAPNet"

    const-string v12, "====================iapSendOKCashbagPointInfoQuery() Start()===================="

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    const/16 v8, 0xc

    .line 1467
    .local v8, "packet_len":I
    add-int/lit8 v8, v8, 0x1

    .line 1468
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v8, v11, 0xd

    .line 1469
    add-int/lit8 v8, v8, 0x1

    .line 1470
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v8, v11

    .line 1471
    add-int/lit8 v8, v8, 0x1

    .line 1474
    new-array v7, v8, [B

    .line 1475
    .local v7, "packetBytes":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v8, :cond_0

    .line 1477
    const/4 v5, 0x0

    .line 1479
    .local v5, "offset":I
    const-string v11, "OQ"

    add-int/lit8 v12, v8, -0xc

    invoke-static {v11, v12}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v3

    .line 1482
    .local v3, "header":[B
    array-length v11, v3

    invoke-static {v3, v13, v7, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1484
    add-int/lit8 v5, v5, 0xc

    .line 1487
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v5

    .line 1490
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 1491
    .local v2, "byte_entOCBCardNum":[B
    array-length v11, v2

    invoke-static {v2, v13, v7, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1492
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v5, v11, 0xd

    .line 1495
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v5

    .line 1498
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1499
    .local v1, "byte_encOCBPWNum":[B
    array-length v11, v1

    invoke-static {v1, v13, v7, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1500
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    add-int v5, v6, v11

    .line 1502
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/lit8 v11, v8, -0x1

    const/16 v12, 0x17

    aput-byte v12, v7, v11

    .line 1504
    invoke-static {v7}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v10

    .line 1505
    .local v10, "ret":B
    if-eqz v10, :cond_1

    .line 1506
    invoke-virtual {v0, v10}, Lcom/feelingk/iap/net/OKCashbagPointInfoConfirm;->setResultCode(B)V

    .line 1507
    sget-object v11, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v11}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/feelingk/iap/net/OKCashbagPointInfoConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 1522
    :goto_1
    return-object v0

    .line 1476
    .end local v1    # "byte_encOCBPWNum":[B
    .end local v2    # "byte_entOCBCardNum":[B
    .end local v3    # "header":[B
    .end local v5    # "offset":I
    .end local v10    # "ret":B
    :cond_0
    aput-byte v13, v7, v4

    .line 1475
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1512
    .restart local v1    # "byte_encOCBPWNum":[B
    .restart local v2    # "byte_entOCBCardNum":[B
    .restart local v3    # "header":[B
    .restart local v5    # "offset":I
    .restart local v10    # "ret":B
    :cond_1
    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v9

    .line 1513
    .local v9, "recv":[B
    invoke-virtual {v0}, Lcom/feelingk/iap/net/OKCashbagPointInfoConfirm;->getResultCode()B

    move-result v11

    if-eqz v11, :cond_2

    .line 1514
    sget-object v11, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v11}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/feelingk/iap/net/OKCashbagPointInfoConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 1518
    :cond_2
    invoke-virtual {v0, v9}, Lcom/feelingk/iap/net/OKCashbagPointInfoConfirm;->parse([B)V

    .line 1520
    const-string v11, "IAPNet"

    const-string v12, "====================iapSendOKCashbagPointInfoQuery() End()===================="

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected static iapSendOTPAgreeCheck(Ljava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 12
    .param p0, "agree"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 3125
    new-instance v3, Lcom/feelingk/iap/net/MsgConfirm;

    invoke-direct {v3}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 3127
    .local v3, "msgConfirm":Lcom/feelingk/iap/net/MsgConfirm;
    const-string v9, "IAPNet"

    const-string v10, "[ DEBUG ] iapSendOTPAgreeCheck() Start"

    invoke-static {v9, v10}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3129
    const/16 v6, 0xc

    .line 3131
    .local v6, "packet_len":I
    add-int/lit8 v6, v6, 0x1

    .line 3132
    add-int/lit8 v6, v6, 0x1

    .line 3134
    new-array v5, v6, [B

    .line 3135
    .local v5, "packetBytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 3138
    const/4 v4, 0x0

    .line 3140
    .local v4, "offset":I
    const-string v9, "TP"

    .line 3141
    const/4 v10, 0x2

    .line 3140
    invoke-static {v9, v10}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v1

    .line 3144
    .local v1, "header":[B
    array-length v9, v1

    invoke-static {v1, v11, v5, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3145
    add-int/lit8 v4, v4, 0xc

    .line 3147
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 3149
    .local v0, "byte_agreeCheck":[B
    array-length v9, v0

    invoke-static {v0, v11, v5, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3151
    const/16 v9, 0xd

    const/16 v10, 0x17

    aput-byte v10, v5, v9

    .line 3153
    invoke-static {v5}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v8

    .line 3154
    .local v8, "ret":B
    if-eqz v8, :cond_1

    .line 3155
    invoke-virtual {v3, v8}, Lcom/feelingk/iap/net/MsgConfirm;->setResultCode(B)V

    .line 3157
    sget-object v9, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v9}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 3174
    :goto_1
    return-object v3

    .line 3136
    .end local v0    # "byte_agreeCheck":[B
    .end local v1    # "header":[B
    .end local v4    # "offset":I
    .end local v8    # "ret":B
    :cond_0
    aput-byte v11, v5, v2

    .line 3135
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3162
    .restart local v0    # "byte_agreeCheck":[B
    .restart local v1    # "header":[B
    .restart local v4    # "offset":I
    .restart local v8    # "ret":B
    :cond_1
    invoke-static {v3}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v7

    .line 3163
    .local v7, "recv":[B
    invoke-virtual {v3}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v9

    if-eqz v9, :cond_2

    .line 3165
    sget-object v9, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v9}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 3170
    :cond_2
    invoke-virtual {v3, v7}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    .line 3172
    const-string v9, "IAPNet"

    const-string v10, "[ DEBUG ] iapSendOTPAgreeCheck()  End"

    invoke-static {v9, v10}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected static iapSendSellerInfoReq(Ljava/lang/String;)Lcom/feelingk/iap/net/SellerInfoConfirm;
    .locals 12
    .param p0, "pId"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 3392
    new-instance v8, Lcom/feelingk/iap/net/SellerInfoConfirm;

    invoke-direct {v8}, Lcom/feelingk/iap/net/SellerInfoConfirm;-><init>()V

    .line 3394
    .local v8, "sellerInfogConfirm":Lcom/feelingk/iap/net/SellerInfoConfirm;
    const-string v9, "IAPNet"

    const-string v10, "[ DEBUG ] iapSendSellerInfoReq() Start"

    invoke-static {v9, v10}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3396
    const/16 v5, 0xc

    .line 3398
    .local v5, "packet_len":I
    add-int/lit8 v5, v5, 0xa

    .line 3399
    add-int/lit8 v5, v5, 0x1

    .line 3401
    new-array v4, v5, [B

    .line 3402
    .local v4, "packetBytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v5, :cond_0

    .line 3405
    const/4 v3, 0x0

    .line 3407
    .local v3, "offset":I
    const-string v9, "BK"

    .line 3408
    const/16 v10, 0xb

    .line 3407
    invoke-static {v9, v10}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v1

    .line 3411
    .local v1, "header":[B
    array-length v9, v1

    invoke-static {v1, v11, v4, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3412
    add-int/lit8 v3, v3, 0xc

    .line 3415
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 3416
    .local v0, "byte_pId":[B
    array-length v9, v0

    invoke-static {v0, v11, v4, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3417
    add-int/lit8 v3, v3, 0xa

    .line 3419
    const/16 v9, 0x16

    const/16 v10, 0x17

    aput-byte v10, v4, v9

    .line 3421
    invoke-static {v4}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v7

    .line 3422
    .local v7, "ret":B
    if-eqz v7, :cond_1

    .line 3423
    invoke-virtual {v8, v7}, Lcom/feelingk/iap/net/SellerInfoConfirm;->setResultCode(B)V

    .line 3425
    sget-object v9, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v9}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/feelingk/iap/net/SellerInfoConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 3442
    :goto_1
    return-object v8

    .line 3403
    .end local v0    # "byte_pId":[B
    .end local v1    # "header":[B
    .end local v3    # "offset":I
    .end local v7    # "ret":B
    :cond_0
    aput-byte v11, v4, v2

    .line 3402
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3430
    .restart local v0    # "byte_pId":[B
    .restart local v1    # "header":[B
    .restart local v3    # "offset":I
    .restart local v7    # "ret":B
    :cond_1
    invoke-static {v8}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v6

    .line 3431
    .local v6, "recv":[B
    invoke-virtual {v8}, Lcom/feelingk/iap/net/SellerInfoConfirm;->getResultCode()B

    move-result v9

    if-eqz v9, :cond_2

    .line 3433
    sget-object v9, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v9}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/feelingk/iap/net/SellerInfoConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 3438
    :cond_2
    invoke-virtual {v8, v6}, Lcom/feelingk/iap/net/SellerInfoConfirm;->parse([B)V

    .line 3440
    const-string v9, "IAPNet"

    const-string v10, "[ DEBUG ] iapSendSellerInfoReq()  End"

    invoke-static {v9, v10}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected static declared-synchronized iapWrite([B)B
    .locals 6
    .param p0, "sendBuf"    # [B

    .prologue
    const/4 v1, 0x0

    .line 629
    const-class v2, Lcom/feelingk/iap/net/IAPNet;

    monitor-enter v2

    :try_start_0
    const-string v3, "IAPNet"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ DEBUG ] iapWrite connect("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lcom/feelingk/iap/net/IAPNet;->connect:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    sget-boolean v3, Lcom/feelingk/iap/net/IAPNet;->connect:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 631
    const/4 v1, -0x2

    .line 650
    :goto_0
    monitor-exit v2

    return v1

    .line 634
    :cond_0
    :try_start_1
    array-length v3, p0

    invoke-static {p0, v3}, Lcom/feelingk/iap/net/IAPNetworkUtil;->packetDebug([BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 636
    :try_start_2
    sget-object v3, Lcom/feelingk/iap/net/IAPNet;->outputStream:Ljava/io/OutputStream;

    const/4 v4, 0x0

    array-length v5, p0

    invoke-virtual {v3, p0, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 637
    sget-object v3, Lcom/feelingk/iap/net/IAPNet;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 649
    :try_start_3
    const-string v3, "IAPNet"

    const-string v4, "[ DEBUG ] iapWrite End  "

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 629
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, "e":Ljava/net/SocketTimeoutException;
    :try_start_4
    const-string v1, "IAPNet"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ Exception ] iapWrite() "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 642
    const/16 v1, -0xc

    goto :goto_0

    .line 644
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v0

    .line 645
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "IAPNet"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ Exception ] iapWrite() "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 646
    const/4 v1, -0x4

    goto :goto_0
.end method

.method protected static declared-synchronized iapWriteBP([B)B
    .locals 6
    .param p0, "sendBuf"    # [B

    .prologue
    const/4 v1, 0x0

    .line 973
    const-class v2, Lcom/feelingk/iap/net/IAPNet;

    monitor-enter v2

    :try_start_0
    sget-boolean v3, Lcom/feelingk/iap/net/IAPNet;->connectBP:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 974
    const/4 v1, -0x2

    .line 987
    :goto_0
    monitor-exit v2

    return v1

    .line 978
    :cond_0
    :try_start_1
    sget-object v3, Lcom/feelingk/iap/net/IAPNet;->outputStreamBP:Ljava/io/OutputStream;

    const/4 v4, 0x0

    array-length v5, p0

    invoke-virtual {v3, p0, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 979
    sget-object v3, Lcom/feelingk/iap/net/IAPNet;->outputStreamBP:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 982
    :catch_0
    move-exception v0

    .line 983
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v1, "IAPNet"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ DEBUG ] iapWriteBP() "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 984
    const/4 v1, -0x4

    goto :goto_0

    .line 973
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected static isConnect()Z
    .locals 1

    .prologue
    .line 1165
    sget-boolean v0, Lcom/feelingk/iap/net/IAPNet;->connect:Z

    return v0
.end method

.method protected static isWifi()Z
    .locals 1

    .prologue
    .line 1172
    sget-boolean v0, Lcom/feelingk/iap/net/IAPNet;->isWifi:Z

    return v0
.end method

.method protected static setWifi(Z)V
    .locals 0
    .param p0, "isWifi"    # Z

    .prologue
    .line 1180
    sput-boolean p0, Lcom/feelingk/iap/net/IAPNet;->isWifi:Z

    .line 1181
    return-void
.end method
