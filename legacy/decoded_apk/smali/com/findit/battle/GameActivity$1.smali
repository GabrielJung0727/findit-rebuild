.class Lcom/findit/battle/GameActivity$1;
.super Landroid/os/Handler;
.source "GameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/GameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/findit/battle/GameActivity;


# direct methods
.method constructor <init>(Lcom/findit/battle/GameActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/findit/battle/GameActivity$1;->this$0:Lcom/findit/battle/GameActivity;

    .line 1290
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 31
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1292
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">> handleMessage() msg.what: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1293
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/findit/battle/GameActivity$1;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v1, v1, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v1}, Lcom/findit/battle/CommonDialog;->cancelProgressDlg()V

    .line 1295
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 1296
    const-string v2, "result"

    .line 1295
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v29

    .line 1297
    .local v29, "value":Z
    if-eqz v29, :cond_11

    .line 1298
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/findit/battle/GameActivity$1;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v1, v1, Lcom/findit/battle/GameActivity;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-virtual {v1}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->getJSONObject()Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v16

    .line 1300
    .local v16, "jsonobject":Lorg/json/JSONObject;
    :try_start_1
    const-string v1, "result"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1301
    .local v23, "result":Ljava/lang/String;
    if-nez v23, :cond_1

    .line 1302
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/findit/battle/GameActivity$1;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v1, v1, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameActivity$1;->this$0:Lcom/findit/battle/GameActivity;

    .line 1303
    const v3, 0x7f09000b

    const-string v30, "[0]"

    .line 1302
    move-object/from16 v0, v30

    invoke-virtual {v1, v2, v3, v0}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1469
    .end local v16    # "jsonobject":Lorg/json/JSONObject;
    .end local v23    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1305
    .restart local v16    # "jsonobject":Lorg/json/JSONObject;
    .restart local v23    # "result":Ljava/lang/String;
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mLoginResultHandler result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1306
    const-string v1, "000"

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1308
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/findit/battle/GameActivity$1;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v1}, Lcom/findit/battle/GameActivity;->access$0(Lcom/findit/battle/GameActivity;)Lcom/findit/battle/GameView;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Lcom/findit/battle/GameView;->mLogin:I

    .line 1309
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/findit/battle/GameActivity$1;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v1, v1, Lcom/findit/battle/GameActivity;->mLoginDlg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 1311
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/findit/battle/GameActivity$1;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v1}, Lcom/findit/battle/GameActivity;->access$0(Lcom/findit/battle/GameActivity;)Lcom/findit/battle/GameView;

    move-result-object v10

    .line 1313
    .local v10, "gameview":Lcom/findit/battle/GameView;
    iget-object v0, v10, Lcom/findit/battle/GameView;->mEmail:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 1316
    .local v19, "preemail":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/findit/battle/GameActivity$1;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v1, v1, Lcom/findit/battle/GameActivity;->mLoginDlg:Landroid/app/Dialog;

    .line 1317
    const v2, 0x7f0b0059

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1316
    check-cast v9, Landroid/widget/EditText;

    .line 1318
    .local v9, "edittext":Landroid/widget/EditText;
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1320
    .local v4, "email":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/findit/battle/GameActivity$1;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v1, v1, Lcom/findit/battle/GameActivity;->mLoginDlg:Landroid/app/Dialog;

    .line 1321
    const v2, 0x7f0b005a

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1320
    .end local v9    # "edittext":Landroid/widget/EditText;
    check-cast v9, Landroid/widget/EditText;

    .line 1322
    .restart local v9    # "edittext":Landroid/widget/EditText;
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1324
    .local v5, "password":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1325
    if-eqz v5, :cond_3

    .line 1326
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1327
    const/4 v6, 0x0

    .line 1328
    .local v6, "autologin":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/findit/battle/GameActivity$1;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v1}, Lcom/findit/battle/GameActivity;->access$1(Lcom/findit/battle/GameActivity;)Landroid/widget/ImageView;

    move-result-object v1

    .line 1329
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v27

    .line 1328
    check-cast v27, Ljava/lang/String;

    .line 1330
    .local v27, "tag":Ljava/lang/String;
    if-eqz v27, :cond_2

    .line 1331
    const-string v1, "on"

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1333
    :cond_2
    iget-object v1, v10, Lcom/findit/battle/GameView;->mDbhelper:Lcom/findit/battle/DBAdapter;

    .line 1334
    const-wide/16 v2, 0x0

    .line 1333
    invoke-virtual/range {v1 .. v6}, Lcom/findit/battle/DBAdapter;->updateSettingLogin(JLjava/lang/String;Ljava/lang/String;Z)Z

    .line 1336
    iput-object v4, v10, Lcom/findit/battle/GameView;->mEmail:Ljava/lang/String;

    .line 1337
    iput-object v5, v10, Lcom/findit/battle/GameView;->mPassword:Ljava/lang/String;

    .line 1338
    iput-boolean v6, v10, Lcom/findit/battle/GameView;->mAutoLogin:Z

    .line 1341
    if-eqz v6, :cond_3

    .line 1342
    const-wide/16 v1, 0x0

    .line 1343
    const/4 v3, 0x0

    .line 1342
    invoke-virtual {v10, v1, v2, v3}, Lcom/findit/battle/GameView;->loadState(JZ)V

    .line 1348
    .end local v6    # "autologin":Z
    .end local v27    # "tag":Ljava/lang/String;
    :cond_3
    const-string v1, "user"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    .line 1349
    .local v26, "subjsonobject":Lorg/json/JSONObject;
    if-eqz v26, :cond_4

    .line 1351
    const-string v1, "userId"

    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1353
    const-string v1, "level"

    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1352
    iput v1, v10, Lcom/findit/battle/GameView;->mLevel:I

    .line 1355
    const-string v1, "score"

    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    .line 1354
    iput-wide v1, v10, Lcom/findit/battle/GameView;->mScore:J

    .line 1357
    const-string v1, "coin"

    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    .line 1356
    iput-wide v1, v10, Lcom/findit/battle/GameView;->mCoin:J

    .line 1359
    const-string v1, "point"

    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1358
    iput v1, v10, Lcom/findit/battle/GameView;->mPoint:I

    .line 1361
    const-string v1, "userNick"

    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1360
    iput-object v1, v10, Lcom/findit/battle/GameView;->mNickName:Ljava/lang/String;

    .line 1362
    iget-object v1, v10, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v1, v1, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 1363
    const-string v2, "userCharacter"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1362
    iput v2, v1, Lcom/findit/battle/Objects$Character;->mBodyNum:I

    .line 1365
    iget-object v1, v10, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    .line 1366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameActivity$1;->this$0:Lcom/findit/battle/GameActivity;

    invoke-virtual {v1, v2}, Lcom/findit/battle/Objects;->loadCharactersImage(Landroid/content/Context;)V

    .line 1372
    :cond_4
    const-string v1, "item"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v25

    .line 1373
    .local v25, "subjsonarray":Lorg/json/JSONArray;
    if-eqz v25, :cond_5

    .line 1374
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1375
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/findit/battle/GameActivity$1;->this$0:Lcom/findit/battle/GameActivity;

    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-static {v1, v2, v0}, Lcom/findit/battle/GameActivity;->access$2(Lcom/findit/battle/GameActivity;Lcom/findit/battle/Items;Lorg/json/JSONArray;)Lcom/findit/battle/Items;

    move-result-object v14

    .line 1377
    .local v14, "items":Lcom/findit/battle/Items;
    iget-object v1, v10, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v0, v1, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v21, v0

    .line 1379
    .local v21, "preitems":Lcom/findit/battle/Items;
    iget v0, v14, Lcom/findit/battle/Items;->mItemTotalnum:I

    move/from16 v28, v0

    .line 1380
    .local v28, "totalnum":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move/from16 v0, v28

    if-lt v11, v0, :cond_7

    .line 1413
    .end local v11    # "i":I
    .end local v14    # "items":Lcom/findit/battle/Items;
    .end local v21    # "preitems":Lcom/findit/battle/Items;
    .end local v28    # "totalnum":I
    :cond_5
    :goto_2
    const-string v1, "skill"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v25

    .line 1414
    if-eqz v25, :cond_6

    .line 1415
    iget-object v1, v10, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v0, v1, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    move-object/from16 v24, v0

    .line 1416
    .local v24, "skills":Lcom/findit/battle/Objects$Skills;
    invoke-virtual/range {v24 .. v24}, Lcom/findit/battle/Objects$Skills;->initiateBuyData()V

    .line 1418
    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 1419
    .local v7, "count":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_3
    if-lt v11, v7, :cond_c

    .line 1447
    .end local v7    # "count":I
    .end local v11    # "i":I
    .end local v24    # "skills":Lcom/findit/battle/Objects$Skills;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/findit/battle/GameActivity$1;->this$0:Lcom/findit/battle/GameActivity;

    invoke-virtual {v10}, Lcom/findit/battle/GameView;->getListImageNum()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/findit/battle/GameActivity;->receiveImageList(J)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1462
    .end local v4    # "email":Ljava/lang/String;
    .end local v5    # "password":Ljava/lang/String;
    .end local v9    # "edittext":Landroid/widget/EditText;
    .end local v10    # "gameview":Lcom/findit/battle/GameView;
    .end local v19    # "preemail":Ljava/lang/String;
    .end local v23    # "result":Ljava/lang/String;
    .end local v25    # "subjsonarray":Lorg/json/JSONArray;
    .end local v26    # "subjsonobject":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    .line 1463
    .local v8, "e":Lorg/json/JSONException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/findit/battle/GameActivity$1;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v1, v1, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameActivity$1;->this$0:Lcom/findit/battle/GameActivity;

    .line 1464
    const v3, 0x7f09000b

    const-string v30, "[1]"

    .line 1463
    move-object/from16 v0, v30

    invoke-virtual {v1, v2, v3, v0}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1292
    .end local v8    # "e":Lorg/json/JSONException;
    .end local v16    # "jsonobject":Lorg/json/JSONObject;
    .end local v29    # "value":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1381
    .restart local v4    # "email":Ljava/lang/String;
    .restart local v5    # "password":Ljava/lang/String;
    .restart local v9    # "edittext":Landroid/widget/EditText;
    .restart local v10    # "gameview":Lcom/findit/battle/GameView;
    .restart local v11    # "i":I
    .restart local v14    # "items":Lcom/findit/battle/Items;
    .restart local v16    # "jsonobject":Lorg/json/JSONObject;
    .restart local v19    # "preemail":Ljava/lang/String;
    .restart local v21    # "preitems":Lcom/findit/battle/Items;
    .restart local v23    # "result":Ljava/lang/String;
    .restart local v25    # "subjsonarray":Lorg/json/JSONArray;
    .restart local v26    # "subjsonobject":Lorg/json/JSONObject;
    .restart local v28    # "totalnum":I
    .restart local v29    # "value":Z
    :cond_7
    :try_start_4
    iget-object v1, v14, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v13, v1, v11

    .line 1384
    .local v13, "item":Lcom/findit/battle/Items$Item;
    const/16 v17, 0x0

    .line 1385
    .local v17, "matching":Z
    move-object/from16 v0, v21

    iget v0, v0, Lcom/findit/battle/Items;->mItemTotalnum:I

    move/from16 v22, v0

    .line 1386
    .local v22, "pretotalnum":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_4
    move/from16 v0, v22

    if-lt v15, v0, :cond_9

    .line 1397
    :goto_5
    if-nez v17, :cond_8

    .line 1398
    iget-object v1, v10, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v1, v1, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    .line 1399
    iget v2, v13, Lcom/findit/battle/Items$Item;->mType:I

    .line 1400
    iget v3, v13, Lcom/findit/battle/Items$Item;->mSubType:I

    .line 1399
    invoke-virtual {v1, v2, v3}, Lcom/findit/battle/Items;->createItem(II)Lcom/findit/battle/Items$Item;

    move-result-object v18

    .line 1401
    .local v18, "newitem":Lcom/findit/battle/Items$Item;
    iget v1, v13, Lcom/findit/battle/Items$Item;->mNum:I

    move-object/from16 v0, v18

    iput v1, v0, Lcom/findit/battle/Items$Item;->mNum:I

    .line 1402
    iget-object v1, v13, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v1, v0, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    .line 1380
    .end local v18    # "newitem":Lcom/findit/battle/Items$Item;
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1387
    :cond_9
    move-object/from16 v0, v21

    iget-object v1, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v20, v1, v15

    .line 1389
    .local v20, "preitem":Lcom/findit/battle/Items$Item;
    iget v1, v13, Lcom/findit/battle/Items$Item;->mType:I

    move-object/from16 v0, v20

    iget v2, v0, Lcom/findit/battle/Items$Item;->mType:I

    if-ne v1, v2, :cond_a

    .line 1390
    iget v1, v13, Lcom/findit/battle/Items$Item;->mSubType:I

    move-object/from16 v0, v20

    iget v2, v0, Lcom/findit/battle/Items$Item;->mSubType:I

    if-ne v1, v2, :cond_a

    .line 1391
    const/16 v17, 0x1

    .line 1392
    goto :goto_5

    .line 1386
    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1407
    .end local v11    # "i":I
    .end local v13    # "item":Lcom/findit/battle/Items$Item;
    .end local v14    # "items":Lcom/findit/battle/Items;
    .end local v15    # "j":I
    .end local v17    # "matching":Z
    .end local v20    # "preitem":Lcom/findit/battle/Items$Item;
    .end local v21    # "preitems":Lcom/findit/battle/Items;
    .end local v22    # "pretotalnum":I
    .end local v28    # "totalnum":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/findit/battle/GameActivity$1;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v2, v10, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v2, v2, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v0, v25

    invoke-static {v1, v2, v0}, Lcom/findit/battle/GameActivity;->access$2(Lcom/findit/battle/GameActivity;Lcom/findit/battle/Items;Lorg/json/JSONArray;)Lcom/findit/battle/Items;

    goto/16 :goto_2

    .line 1421
    .restart local v7    # "count":I
    .restart local v11    # "i":I
    .restart local v24    # "skills":Lcom/findit/battle/Objects$Skills;
    :cond_c
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    .line 1423
    const-string v1, "skillId"

    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1422
    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Lcom/findit/battle/Objects$Skills;->getIndex(I)I

    move-result v12

    .line 1424
    .local v12, "index":I
    move-object/from16 v0, v24

    iget-object v1, v0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v1, v1, v12

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/findit/battle/Objects$Skills$Skill;->mBuy:Z

    .line 1425
    move-object/from16 v0, v24

    iget-object v1, v0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v1, v1, v12

    iput v11, v1, Lcom/findit/battle/Objects$Skills$Skill;->mNum:I

    .line 1426
    move-object/from16 v0, v24

    iget-object v1, v0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v1, v1, v12

    const/4 v2, -0x1

    iput v2, v1, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    .line 1419
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 1448
    .end local v4    # "email":Ljava/lang/String;
    .end local v5    # "password":Ljava/lang/String;
    .end local v7    # "count":I
    .end local v9    # "edittext":Landroid/widget/EditText;
    .end local v10    # "gameview":Lcom/findit/battle/GameView;
    .end local v11    # "i":I
    .end local v12    # "index":I
    .end local v19    # "preemail":Ljava/lang/String;
    .end local v24    # "skills":Lcom/findit/battle/Objects$Skills;
    .end local v25    # "subjsonarray":Lorg/json/JSONArray;
    .end local v26    # "subjsonobject":Lorg/json/JSONObject;
    :cond_d
    const-string v1, "901"

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1449
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/findit/battle/GameActivity$1;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v1, v1, Lcom/findit/battle/GameActivity;->mLoginDlg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1450
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/findit/battle/GameActivity$1;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v1, v1, Lcom/findit/battle/GameActivity;->mLoginDlg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1452
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/findit/battle/GameActivity$1;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v1, v1, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    .line 1453
    const v2, 0x7f090008

    invoke-virtual {v1, v2}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    goto/16 :goto_0

    .line 1454
    :cond_f
    const-string v1, "999"

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1455
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/findit/battle/GameActivity$1;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v1, v1, Lcom/findit/battle/GameActivity;->mLoginDlg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_10

    .line 1456
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/findit/battle/GameActivity$1;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v1, v1, Lcom/findit/battle/GameActivity;->mLoginDlg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1458
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/findit/battle/GameActivity$1;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v1, v1, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    const v2, 0x7f090007

    invoke-virtual {v1, v2}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1468
    .end local v16    # "jsonobject":Lorg/json/JSONObject;
    .end local v23    # "result":Ljava/lang/String;
    :cond_11
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/findit/battle/GameActivity$1;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v1, v1, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    const v2, 0x7f09000b

    invoke-virtual {v1, v2}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method
