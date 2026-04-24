.class public Lcom/findit/battle/WaitingRoom;
.super Ljava/lang/Object;
.source "WaitingRoom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/findit/battle/WaitingRoom$RoomAdapter;,
        Lcom/findit/battle/WaitingRoom$RoomData;,
        Lcom/findit/battle/WaitingRoom$doSendSocketMsgTask;
    }
.end annotation


# instance fields
.field private mButtonClickSize:I

.field private mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

.field private mContext:Landroid/content/Context;

.field private mGameView:Lcom/findit/battle/GameView;

.field private mListView:Landroid/widget/ListView;

.field public mMainDlg:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/findit/battle/GameView;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gameview"    # Lcom/findit/battle/GameView;
    .param p3, "displaywidth"    # I
    .param p4, "displayheight"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v1, ">> WaitingRoom()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    move-object v0, p1

    .line 51
    check-cast v0, Lcom/findit/battle/GameActivity;

    .line 53
    .local v0, "gameactivity":Lcom/findit/battle/GameActivity;
    iput-object p1, p0, Lcom/findit/battle/WaitingRoom;->mContext:Landroid/content/Context;

    .line 54
    iget-object v1, v0, Lcom/findit/battle/GameActivity;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    iput-object v1, p0, Lcom/findit/battle/WaitingRoom;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 55
    iput-object p2, p0, Lcom/findit/battle/WaitingRoom;->mGameView:Lcom/findit/battle/GameView;

    .line 58
    invoke-direct {p0, p1, p3, p4}, Lcom/findit/battle/WaitingRoom;->createMainDlg(Landroid/content/Context;II)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/findit/battle/WaitingRoom;->mMainDlg:Landroid/app/Dialog;

    .line 59
    iget-object v1, p0, Lcom/findit/battle/WaitingRoom;->mMainDlg:Landroid/app/Dialog;

    const v2, 0x7f0b006d

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/findit/battle/WaitingRoom;->mListView:Landroid/widget/ListView;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/findit/battle/WaitingRoom;->mButtonClickSize:I

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/findit/battle/WaitingRoom;)Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/findit/battle/WaitingRoom;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    return-object v0
.end method

.method static synthetic access$1(Lcom/findit/battle/WaitingRoom;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/findit/battle/WaitingRoom;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/findit/battle/WaitingRoom;)Lcom/findit/battle/GameView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/findit/battle/WaitingRoom;->mGameView:Lcom/findit/battle/GameView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/findit/battle/WaitingRoom;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/findit/battle/WaitingRoom;->mButtonClickSize:I

    return v0
.end method

.method static synthetic access$4(Lcom/findit/battle/WaitingRoom;Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 381
    invoke-direct/range {p0 .. p5}, Lcom/findit/battle/WaitingRoom;->setMargin(Landroid/view/View;IIII)V

    return-void
.end method

.method static synthetic access$5(Lcom/findit/battle/WaitingRoom;Lcom/jargoandroid/connectnetwork/ConnectNetwork;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/findit/battle/WaitingRoom;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    return-void
.end method

.method private createMainDlg(Landroid/content/Context;II)Landroid/app/Dialog;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displaywidth"    # I
    .param p3, "displayheight"    # I

    .prologue
    .line 104
    const-string v14, ">> createMainDlg()"

    invoke-static {v14}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 105
    new-instance v4, Landroid/app/Dialog;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 106
    .local v4, "dialog":Landroid/app/Dialog;
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    .line 107
    .local v13, "window":Landroid/view/Window;
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/view/Window;->requestFeature(I)Z

    .line 108
    const/4 v14, 0x2

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Landroid/view/Window;->setFlags(II)V

    .line 110
    const/4 v14, 0x1

    const/4 v15, 0x1

    sget-object v16, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 111
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, "#e9e0c2"

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v1, v14, v15, v0}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 113
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 114
    .local v3, "bytearray":Ljava/io/ByteArrayOutputStream;
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x64

    invoke-virtual {v1, v14, v15, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 115
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 116
    .local v7, "in":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 118
    const-string v14, "img"

    invoke-static {v7, v14}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    const v14, 0x7f030019

    invoke-virtual {v4, v14}, Landroid/app/Dialog;->setContentView(I)V

    .line 122
    const v14, 0x7f0b000c

    invoke-virtual {v4, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 123
    .local v8, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 124
    .local v10, "params":Landroid/widget/LinearLayout$LayoutParams;
    move/from16 v0, p2

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 125
    move/from16 v0, p3

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 128
    const v14, 0x7f0b0082

    invoke-virtual {v4, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 129
    .local v2, "button":Landroid/widget/Button;
    new-instance v14, Lcom/findit/battle/WaitingRoom$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/findit/battle/WaitingRoom$1;-><init>(Lcom/findit/battle/WaitingRoom;)V

    invoke-virtual {v2, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    invoke-direct/range {p0 .. p0}, Lcom/findit/battle/WaitingRoom;->makeButtonOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 170
    const v14, 0x7f0b006c

    invoke-virtual {v4, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "button":Landroid/widget/Button;
    check-cast v2, Landroid/widget/Button;

    .line 171
    .restart local v2    # "button":Landroid/widget/Button;
    new-instance v14, Lcom/findit/battle/WaitingRoom$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/findit/battle/WaitingRoom$2;-><init>(Lcom/findit/battle/WaitingRoom;)V

    invoke-virtual {v2, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    new-instance v14, Lcom/findit/battle/WaitingRoom$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/findit/battle/WaitingRoom$3;-><init>(Lcom/findit/battle/WaitingRoom;)V

    invoke-virtual {v2, v14}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 205
    const v14, 0x7f0b0081

    invoke-virtual {v4, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "button":Landroid/widget/Button;
    check-cast v2, Landroid/widget/Button;

    .line 206
    .restart local v2    # "button":Landroid/widget/Button;
    new-instance v14, Lcom/findit/battle/WaitingRoom$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/findit/battle/WaitingRoom$4;-><init>(Lcom/findit/battle/WaitingRoom;)V

    invoke-virtual {v2, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    invoke-direct/range {p0 .. p0}, Lcom/findit/battle/WaitingRoom;->makeButtonOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 217
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f080003

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    .line 218
    .local v11, "subheight":F
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f080002

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v12, v14

    .line 219
    .local v12, "subwidth":I
    move/from16 v0, p3

    int-to-float v14, v0

    const v15, 0x3f4ccccd    # 0.8f

    mul-float/2addr v14, v15

    div-float/2addr v14, v11

    float-to-int v9, v14

    .line 221
    .local v9, "length":I
    const v14, 0x7f0b0067

    invoke-virtual {v4, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8    # "layout":Landroid/widget/LinearLayout;
    check-cast v8, Landroid/widget/LinearLayout;

    .line 222
    .restart local v8    # "layout":Landroid/widget/LinearLayout;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .end local v10    # "params":Landroid/widget/LinearLayout$LayoutParams;
    float-to-int v14, v11

    invoke-direct {v10, v12, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 224
    .restart local v10    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-lt v5, v9, :cond_0

    .line 233
    new-instance v14, Lcom/findit/battle/WaitingRoom$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/findit/battle/WaitingRoom$5;-><init>(Lcom/findit/battle/WaitingRoom;)V

    invoke-virtual {v4, v14}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 254
    return-object v4

    .line 225
    :cond_0
    new-instance v6, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 226
    .local v6, "imageview":Landroid/widget/ImageView;
    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    const v14, 0x7f020177

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 229
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 224
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private getRoomData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "devider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/findit/battle/WaitingRoom$RoomData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 545
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ">> getRoomData() text: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " devider: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 546
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 548
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/findit/battle/WaitingRoom$RoomData;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 549
    .local v1, "length":I
    const/4 v4, 0x0

    .line 550
    .local v4, "startindex":I
    :goto_0
    if-lt v4, v1, :cond_0

    .line 585
    :goto_1
    return-object v2

    .line 551
    :cond_0
    new-instance v3, Lcom/findit/battle/WaitingRoom$RoomData;

    invoke-direct {v3, p0}, Lcom/findit/battle/WaitingRoom$RoomData;-><init>(Lcom/findit/battle/WaitingRoom;)V

    .line 554
    .local v3, "room":Lcom/findit/battle/WaitingRoom$RoomData;
    invoke-virtual {p1, p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 555
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 556
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/findit/battle/WaitingRoom$RoomData;->mName:Ljava/lang/String;

    goto :goto_1

    .line 560
    :cond_1
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/findit/battle/WaitingRoom$RoomData;->mName:Ljava/lang/String;

    .line 562
    add-int/lit8 v4, v0, 0x1

    .line 564
    if-ne v4, v1, :cond_2

    .line 565
    const-string v5, ""

    iput-object v5, v3, Lcom/findit/battle/WaitingRoom$RoomData;->mName:Ljava/lang/String;

    .line 568
    :cond_2
    invoke-virtual {p1, p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 569
    if-gez v0, :cond_3

    .line 570
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/findit/battle/WaitingRoom$RoomData;->mUserNum:I

    .line 571
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 575
    :cond_3
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/findit/battle/WaitingRoom$RoomData;->mUserNum:I

    .line 577
    add-int/lit8 v4, v0, 0x1

    .line 579
    if-ne v4, v1, :cond_4

    .line 580
    const/4 v5, 0x0

    iput v5, v3, Lcom/findit/battle/WaitingRoom$RoomData;->mUserNum:I

    .line 582
    :cond_4
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private makeButtonOnTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 358
    new-instance v0, Lcom/findit/battle/WaitingRoom$6;

    invoke-direct {v0, p0}, Lcom/findit/battle/WaitingRoom$6;-><init>(Lcom/findit/battle/WaitingRoom;)V

    return-object v0
.end method

.method private setMargin(Landroid/view/View;IIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 382
    const-string v2, ">> setMargin()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 384
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 385
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, p2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 386
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, p3

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 387
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, p4

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 388
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, p5

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 390
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 393
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, p2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 394
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, p3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 395
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, p4

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 396
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, p5

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 398
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public addData(Ljava/lang/String;I)V
    .locals 5
    .param p1, "roomName"    # Ljava/lang/String;
    .param p2, "userNum"    # I

    .prologue
    .line 423
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ">> addData() roomName: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " userNum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 424
    new-instance v2, Lcom/findit/battle/WaitingRoom$RoomData;

    invoke-direct {v2, p0}, Lcom/findit/battle/WaitingRoom$RoomData;-><init>(Lcom/findit/battle/WaitingRoom;)V

    .line 425
    .local v2, "roomData":Lcom/findit/battle/WaitingRoom$RoomData;
    iput-object p1, v2, Lcom/findit/battle/WaitingRoom$RoomData;->mName:Ljava/lang/String;

    .line 426
    iput p2, v2, Lcom/findit/battle/WaitingRoom$RoomData;->mUserNum:I

    .line 428
    iget-object v3, p0, Lcom/findit/battle/WaitingRoom;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/findit/battle/WaitingRoom$RoomAdapter;

    .line 429
    .local v0, "adapter":Lcom/findit/battle/WaitingRoom$RoomAdapter;
    invoke-virtual {v0, v2}, Lcom/findit/battle/WaitingRoom$RoomAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    .line 430
    .local v1, "pos":I
    if-ltz v1, :cond_0

    .line 431
    invoke-virtual {v0, v2}, Lcom/findit/battle/WaitingRoom$RoomAdapter;->remove(Ljava/lang/Object;)V

    .line 432
    invoke-virtual {v0, v2, v1}, Lcom/findit/battle/WaitingRoom$RoomAdapter;->insert(Ljava/lang/Object;I)V

    .line 436
    :goto_0
    return-void

    .line 434
    :cond_0
    invoke-virtual {v0, v2}, Lcom/findit/battle/WaitingRoom$RoomAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public clearData()V
    .locals 2

    .prologue
    .line 403
    const-string v0, ">> clearData()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/findit/battle/WaitingRoom;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 405
    return-void
.end method

.method public enterBattleRoom(Ljava/lang/String;)V
    .locals 7
    .param p1, "roomname"    # Ljava/lang/String;

    .prologue
    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">> enterBattleRoom() roomname: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 301
    iget-object v2, p0, Lcom/findit/battle/WaitingRoom;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    if-nez v2, :cond_0

    .line 302
    const-string v2, "mConnectNetwork is null and get mConnectNetwork"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 303
    iget-object v2, p0, Lcom/findit/battle/WaitingRoom;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/findit/battle/GameActivity;

    iget-object v2, v2, Lcom/findit/battle/GameActivity;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    iput-object v2, p0, Lcom/findit/battle/WaitingRoom;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 305
    :cond_0
    iget-object v2, p0, Lcom/findit/battle/WaitingRoom;->mGameView:Lcom/findit/battle/GameView;

    iput-object p1, v2, Lcom/findit/battle/GameView;->mRoomName:Ljava/lang/String;

    .line 306
    iget-object v2, p0, Lcom/findit/battle/WaitingRoom;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/findit/battle/GameActivity;

    iget-object v2, v2, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v2}, Lcom/findit/battle/CommonDialog;->showProgressDlg()V

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|103|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "sendmsg":Ljava/lang/String;
    iget-object v2, p0, Lcom/findit/battle/WaitingRoom;->mGameView:Lcom/findit/battle/GameView;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/findit/battle/GameView;->getLengthText(I)Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "length":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "StartGameButton: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 317
    new-instance v2, Lcom/findit/battle/WaitingRoom$doSendSocketMsgTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/findit/battle/WaitingRoom$doSendSocketMsgTask;-><init>(Lcom/findit/battle/WaitingRoom;Lcom/findit/battle/WaitingRoom$doSendSocketMsgTask;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "false"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/findit/battle/WaitingRoom$doSendSocketMsgTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 319
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 65
    const-string v0, ">> exit()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public fillData(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">> fillData() data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 418
    new-instance v0, Lcom/findit/battle/WaitingRoom$RoomAdapter;

    iget-object v1, p0, Lcom/findit/battle/WaitingRoom;->mContext:Landroid/content/Context;

    const v2, 0x7f030016

    const-string v3, ","

    invoke-direct {p0, p1, v3}, Lcom/findit/battle/WaitingRoom;->getRoomData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/findit/battle/WaitingRoom$RoomAdapter;-><init>(Lcom/findit/battle/WaitingRoom;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 419
    .local v0, "adapter":Lcom/findit/battle/WaitingRoom$RoomAdapter;
    iget-object v1, p0, Lcom/findit/battle/WaitingRoom;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 420
    return-void
.end method

.method public getUserList(Ljava/lang/String;)V
    .locals 7
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">> getUserList() email: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 265
    iget-object v2, p0, Lcom/findit/battle/WaitingRoom;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/findit/battle/GameActivity;

    iget-object v2, v2, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v2}, Lcom/findit/battle/CommonDialog;->showProgressDlg()V

    .line 268
    iget-object v2, p0, Lcom/findit/battle/WaitingRoom;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    if-nez v2, :cond_0

    .line 269
    const-string v2, "++ getUserList() mConnectNetwork is null and get mConnectNetwork"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 270
    iget-object v2, p0, Lcom/findit/battle/WaitingRoom;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/findit/battle/GameActivity;

    iget-object v2, v2, Lcom/findit/battle/GameActivity;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    iput-object v2, p0, Lcom/findit/battle/WaitingRoom;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 274
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|100|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "sendmsg":Ljava/lang/String;
    iget-object v2, p0, Lcom/findit/battle/WaitingRoom;->mGameView:Lcom/findit/battle/GameView;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/findit/battle/GameView;->getLengthText(I)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "length":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getUserList: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 293
    new-instance v2, Lcom/findit/battle/WaitingRoom$doSendSocketMsgTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/findit/battle/WaitingRoom$doSendSocketMsgTask;-><init>(Lcom/findit/battle/WaitingRoom;Lcom/findit/battle/WaitingRoom$doSendSocketMsgTask;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "false"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/findit/battle/WaitingRoom$doSendSocketMsgTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 296
    return-void
.end method

.method public removeData(Ljava/lang/String;)V
    .locals 4
    .param p1, "roomName"    # Ljava/lang/String;

    .prologue
    .line 439
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">> removeData() roomName: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 440
    new-instance v1, Lcom/findit/battle/WaitingRoom$RoomData;

    invoke-direct {v1, p0}, Lcom/findit/battle/WaitingRoom$RoomData;-><init>(Lcom/findit/battle/WaitingRoom;)V

    .line 441
    .local v1, "roomData":Lcom/findit/battle/WaitingRoom$RoomData;
    iput-object p1, v1, Lcom/findit/battle/WaitingRoom$RoomData;->mName:Ljava/lang/String;

    .line 443
    iget-object v2, p0, Lcom/findit/battle/WaitingRoom;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/findit/battle/WaitingRoom$RoomAdapter;

    .line 444
    .local v0, "adapter":Lcom/findit/battle/WaitingRoom$RoomAdapter;
    invoke-virtual {v0, v1}, Lcom/findit/battle/WaitingRoom$RoomAdapter;->remove(Ljava/lang/Object;)V

    .line 446
    iget-object v2, p0, Lcom/findit/battle/WaitingRoom;->mGameView:Lcom/findit/battle/GameView;

    iget-object v2, v2, Lcom/findit/battle/GameView;->mRoomName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 447
    iget-object v2, p0, Lcom/findit/battle/WaitingRoom;->mGameView:Lcom/findit/battle/GameView;

    iget-object v3, p0, Lcom/findit/battle/WaitingRoom;->mGameView:Lcom/findit/battle/GameView;

    iget-object v3, v3, Lcom/findit/battle/GameView;->mEmail:Ljava/lang/String;

    iput-object v3, v2, Lcom/findit/battle/GameView;->mRoomName:Ljava/lang/String;

    .line 449
    :cond_0
    return-void
.end method
