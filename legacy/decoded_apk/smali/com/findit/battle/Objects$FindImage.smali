.class Lcom/findit/battle/Objects$FindImage;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/Objects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FindImage"
.end annotation


# static fields
.field public static final TOUCHRECT_FINDED:I = -0x2

.field public static final TOUCHRECT_NOT:I = -0x1

.field public static final TYPE_AD:I = 0x1

.field public static final TYPE_NORMAR:I


# instance fields
.field public mAdCount:J

.field public mAdImgId:I

.field public mAdImgPath:Ljava/lang/String;

.field public mAdNum:J

.field public mAdText:Ljava/lang/String;

.field public mAdView:J

.field public mDetailUrl:Ljava/lang/String;

.field public mDownloadUrl:Ljava/lang/String;

.field public mExpireDate:Ljava/lang/String;

.field public mFindRect:[Lcom/findit/battle/Objects$FindRect;

.field public mFindRectTotalnum:I

.field public mHeight:I

.field public mImgId:I

.field public mImgNum:J

.field public mImgPath:Ljava/lang/String;

.field public mRegDate:Ljava/lang/String;

.field public mSoundEventId:I

.field public mSoundEventPath:Ljava/lang/String;

.field public mSoundId:I

.field public mSoundPath:Ljava/lang/String;

.field public mType:I

.field public mVideoUrl:Ljava/lang/String;

.field public mWidth:I

.field final synthetic this$0:Lcom/findit/battle/Objects;


# direct methods
.method public constructor <init>(Lcom/findit/battle/Objects;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1133
    iput-object p1, p0, Lcom/findit/battle/Objects$FindImage;->this$0:Lcom/findit/battle/Objects;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1134
    const-string v0, ">> FindImage()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 1135
    iput v2, p0, Lcom/findit/battle/Objects$FindImage;->mImgId:I

    .line 1136
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/findit/battle/Objects$FindImage;->mAdCount:J

    .line 1137
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/findit/battle/Objects$FindImage;->mAdView:J

    .line 1138
    iput v2, p0, Lcom/findit/battle/Objects$FindImage;->mSoundEventId:I

    .line 1139
    iput-object v3, p0, Lcom/findit/battle/Objects$FindImage;->mImgPath:Ljava/lang/String;

    .line 1140
    iput-object v3, p0, Lcom/findit/battle/Objects$FindImage;->mSoundPath:Ljava/lang/String;

    .line 1141
    iput-object v3, p0, Lcom/findit/battle/Objects$FindImage;->mSoundEventPath:Ljava/lang/String;

    .line 1142
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/findit/battle/Objects$FindRect;

    iput-object v0, p0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    .line 1143
    iput v2, p0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 1145
    invoke-virtual {p0}, Lcom/findit/battle/Objects$FindImage;->initiateVaule()V

    .line 1146
    return-void
.end method

.method public constructor <init>(Lcom/findit/battle/Objects;III)V
    .locals 3
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "imgid"    # I

    .prologue
    const-wide/16 v1, 0x0

    .line 1103
    iput-object p1, p0, Lcom/findit/battle/Objects$FindImage;->this$0:Lcom/findit/battle/Objects;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1104
    const-string v0, ">> FindImage()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 1105
    iput-wide v1, p0, Lcom/findit/battle/Objects$FindImage;->mImgNum:J

    .line 1106
    iput-wide v1, p0, Lcom/findit/battle/Objects$FindImage;->mAdCount:J

    .line 1107
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/findit/battle/Objects$FindImage;->mAdView:J

    .line 1108
    iput p2, p0, Lcom/findit/battle/Objects$FindImage;->mWidth:I

    .line 1109
    iput p3, p0, Lcom/findit/battle/Objects$FindImage;->mHeight:I

    .line 1110
    iput p4, p0, Lcom/findit/battle/Objects$FindImage;->mImgId:I

    .line 1111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/findit/battle/Objects$FindImage;->mImgPath:Ljava/lang/String;

    .line 1112
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/findit/battle/Objects$FindRect;

    iput-object v0, p0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    .line 1113
    const/4 v0, 0x0

    iput v0, p0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 1115
    invoke-virtual {p0}, Lcom/findit/battle/Objects$FindImage;->initiateVaule()V

    .line 1116
    return-void
.end method

.method public constructor <init>(Lcom/findit/battle/Objects;IILjava/lang/String;)V
    .locals 5
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "imgpath"    # Ljava/lang/String;

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 1118
    iput-object p1, p0, Lcom/findit/battle/Objects$FindImage;->this$0:Lcom/findit/battle/Objects;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1119
    const-string v0, ">> FindImage()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 1120
    iput-wide v3, p0, Lcom/findit/battle/Objects$FindImage;->mImgNum:J

    .line 1121
    iput-wide v3, p0, Lcom/findit/battle/Objects$FindImage;->mAdCount:J

    .line 1122
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/findit/battle/Objects$FindImage;->mAdView:J

    .line 1123
    iput p2, p0, Lcom/findit/battle/Objects$FindImage;->mWidth:I

    .line 1124
    iput p3, p0, Lcom/findit/battle/Objects$FindImage;->mHeight:I

    .line 1125
    iput v2, p0, Lcom/findit/battle/Objects$FindImage;->mImgId:I

    .line 1126
    iput-object p4, p0, Lcom/findit/battle/Objects$FindImage;->mImgPath:Ljava/lang/String;

    .line 1127
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/findit/battle/Objects$FindRect;

    iput-object v0, p0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    .line 1128
    iput v2, p0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 1130
    invoke-virtual {p0}, Lcom/findit/battle/Objects$FindImage;->initiateVaule()V

    .line 1131
    return-void
.end method


# virtual methods
.method public animation(FII)Z
    .locals 5
    .param p1, "speedrate"    # F
    .param p2, "space"    # I
    .param p3, "rightx"    # I

    .prologue
    .line 1228
    const-string v3, ">> animation()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 1229
    const/4 v0, 0x0

    .line 1231
    .local v0, "anim":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    if-lt v2, v3, :cond_0

    .line 1241
    return v0

    .line 1232
    :cond_0
    iget-object v3, p0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    aget-object v1, v3, v2

    .line 1233
    .local v1, "findrect":Lcom/findit/battle/Objects$FindRect;
    iget-boolean v3, v1, Lcom/findit/battle/Objects$FindRect;->mShow:Z

    if-eqz v3, :cond_1

    iget-boolean v3, v1, Lcom/findit/battle/Objects$FindRect;->mFinded:Z

    if-eqz v3, :cond_1

    .line 1234
    invoke-virtual {v1, p1, p2, p3}, Lcom/findit/battle/Objects$FindRect;->animation(FII)V

    .line 1236
    iget v3, v1, Lcom/findit/battle/Objects$FindRect;->mTime:I

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 1237
    const/4 v0, 0x1

    .line 1231
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public doDraw(Landroid/graphics/Canvas;II)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "space"    # I
    .param p3, "rightx"    # I

    .prologue
    const/4 v5, 0x0

    .line 1261
    const-string v2, ">> doDraw()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 1262
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    if-lt v1, v2, :cond_0

    .line 1276
    return-void

    .line 1263
    :cond_0
    iget-object v2, p0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    aget-object v0, v2, v1

    .line 1264
    .local v0, "findrect":Lcom/findit/battle/Objects$FindRect;
    iget-boolean v2, v0, Lcom/findit/battle/Objects$FindRect;->mShow:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lcom/findit/battle/Objects$FindRect;->mFinded:Z

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/findit/battle/Objects$FindRect;->mTime:I

    if-lez v2, :cond_1

    .line 1266
    iget-object v2, p0, Lcom/findit/battle/Objects$FindImage;->this$0:Lcom/findit/battle/Objects;

    iget-object v2, v2, Lcom/findit/battle/Objects;->mImgPng:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v5

    iget-object v3, v0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1267
    iget-object v2, p0, Lcom/findit/battle/Objects$FindImage;->this$0:Lcom/findit/battle/Objects;

    iget-object v2, v2, Lcom/findit/battle/Objects;->mImgPng:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v5

    iget v3, v0, Lcom/findit/battle/Objects$FindRect;->mAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1268
    iget-object v2, p0, Lcom/findit/battle/Objects$FindImage;->this$0:Lcom/findit/battle/Objects;

    iget-object v2, v2, Lcom/findit/battle/Objects;->mImgPng:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v5

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1271
    iget-object v2, p0, Lcom/findit/battle/Objects$FindImage;->this$0:Lcom/findit/battle/Objects;

    iget-object v2, v2, Lcom/findit/battle/Objects;->mImgPng:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v5

    iget-object v3, v0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1272
    iget-object v2, p0, Lcom/findit/battle/Objects$FindImage;->this$0:Lcom/findit/battle/Objects;

    iget-object v2, v2, Lcom/findit/battle/Objects;->mImgPng:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v5

    iget v3, v0, Lcom/findit/battle/Objects$FindRect;->mAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1273
    iget-object v2, p0, Lcom/findit/battle/Objects$FindImage;->this$0:Lcom/findit/battle/Objects;

    iget-object v2, v2, Lcom/findit/battle/Objects;->mImgPng:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v5

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1262
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public initiateRect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1165
    const-string v1, ">> initiateRect()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 1166
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    if-lt v0, v1, :cond_0

    .line 1172
    return-void

    .line 1167
    :cond_0
    iget-object v1, p0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    aget-object v1, v1, v0

    iput-boolean v2, v1, Lcom/findit/battle/Objects$FindRect;->mShow:Z

    .line 1168
    iget-object v1, p0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    aget-object v1, v1, v0

    iput-boolean v2, v1, Lcom/findit/battle/Objects$FindRect;->mFinded:Z

    .line 1169
    iget-object v1, p0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    aget-object v1, v1, v0

    iput v2, v1, Lcom/findit/battle/Objects$FindRect;->mTime:I

    .line 1170
    iget-object v1, p0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    aget-object v1, v1, v0

    iput v2, v1, Lcom/findit/battle/Objects$FindRect;->mTimeCount:I

    .line 1166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public initiateVaule()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1149
    const-string v0, ">> initiateVaule()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 1150
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/findit/battle/Objects$FindImage;->mAdNum:J

    .line 1151
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/findit/battle/Objects$FindImage;->mAdCount:J

    .line 1152
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/findit/battle/Objects$FindImage;->mAdView:J

    .line 1153
    const/4 v0, 0x0

    iput v0, p0, Lcom/findit/battle/Objects$FindImage;->mType:I

    .line 1154
    const-string v0, ""

    iput-object v0, p0, Lcom/findit/battle/Objects$FindImage;->mAdText:Ljava/lang/String;

    .line 1155
    const/4 v0, -0x1

    iput v0, p0, Lcom/findit/battle/Objects$FindImage;->mAdImgId:I

    .line 1156
    iput-object v2, p0, Lcom/findit/battle/Objects$FindImage;->mAdImgPath:Ljava/lang/String;

    .line 1157
    iput-object v2, p0, Lcom/findit/battle/Objects$FindImage;->mRegDate:Ljava/lang/String;

    .line 1158
    iput-object v2, p0, Lcom/findit/battle/Objects$FindImage;->mExpireDate:Ljava/lang/String;

    .line 1159
    iput-object v2, p0, Lcom/findit/battle/Objects$FindImage;->mDownloadUrl:Ljava/lang/String;

    .line 1160
    iput-object v2, p0, Lcom/findit/battle/Objects$FindImage;->mVideoUrl:Ljava/lang/String;

    .line 1161
    iput-object v2, p0, Lcom/findit/battle/Objects$FindImage;->mDetailUrl:Ljava/lang/String;

    .line 1162
    return-void
.end method

.method public moveRect(II)V
    .locals 6
    .param p1, "leftspeed"    # I
    .param p2, "rightspeed"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1245
    const-string v2, ">> moveRect()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 1246
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    if-lt v1, v2, :cond_0

    .line 1258
    return-void

    .line 1247
    :cond_0
    iget-object v2, p0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    aget-object v0, v2, v1

    .line 1248
    .local v0, "findrect":Lcom/findit/battle/Objects$FindRect;
    iget-boolean v2, v0, Lcom/findit/battle/Objects$FindRect;->mShow:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lcom/findit/battle/Objects$FindRect;->mFinded:Z

    if-eqz v2, :cond_1

    .line 1250
    iget-object v2, v0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 1251
    iget-object v2, v0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, p1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 1254
    iget-object v2, v0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v5

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p2

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 1255
    iget-object v2, v0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v5

    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, p2

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 1246
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setRect(III)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "srcwidth"    # I
    .param p3, "srcheight"    # I

    .prologue
    .line 1175
    const-string v1, ">> setRect()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 1176
    iget-object v1, p0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    aget-object v0, v1, p1

    .line 1178
    .local v0, "findrect":Lcom/findit/battle/Objects$FindRect;
    iget v1, v0, Lcom/findit/battle/Objects$FindRect;->mRateX:I

    if-gez v1, :cond_0

    .line 1179
    iget-object v1, p0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    aget-object v1, v1, p1

    int-to-float v2, p2

    iget v3, p0, Lcom/findit/battle/Objects$FindImage;->mWidth:I

    int-to-float v3, v3

    iget v4, v0, Lcom/findit/battle/Objects$FindRect;->mX:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/findit/battle/Objects$FindRect;->mRateX:I

    .line 1181
    :cond_0
    iget v1, v0, Lcom/findit/battle/Objects$FindRect;->mRateY:I

    if-gez v1, :cond_1

    .line 1182
    iget-object v1, p0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    aget-object v1, v1, p1

    int-to-float v2, p3

    iget v3, p0, Lcom/findit/battle/Objects$FindImage;->mHeight:I

    int-to-float v3, v3

    iget v4, v0, Lcom/findit/battle/Objects$FindRect;->mY:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/findit/battle/Objects$FindRect;->mRateY:I

    .line 1184
    :cond_1
    iget v1, v0, Lcom/findit/battle/Objects$FindRect;->mRateWidth:I

    if-gez v1, :cond_2

    .line 1185
    iget-object v1, p0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    aget-object v1, v1, p1

    int-to-float v2, p2

    iget v3, p0, Lcom/findit/battle/Objects$FindImage;->mWidth:I

    int-to-float v3, v3

    iget v4, v0, Lcom/findit/battle/Objects$FindRect;->mWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/findit/battle/Objects$FindRect;->mRateWidth:I

    .line 1187
    :cond_2
    iget v1, v0, Lcom/findit/battle/Objects$FindRect;->mRateHeight:I

    if-gez v1, :cond_3

    .line 1188
    iget-object v1, p0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    aget-object v1, v1, p1

    int-to-float v2, p3

    iget v3, p0, Lcom/findit/battle/Objects$FindImage;->mHeight:I

    int-to-float v3, v3

    iget v4, v0, Lcom/findit/battle/Objects$FindRect;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/findit/battle/Objects$FindRect;->mRateHeight:I

    .line 1190
    :cond_3
    iget-object v1, p0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/findit/battle/Objects$FindRect;->mShow:Z

    .line 1191
    return-void
.end method

.method public touchRect(IIII)I
    .locals 8
    .param p1, "tx"    # I
    .param p2, "ty"    # I
    .param p3, "space"    # I
    .param p4, "rightx"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v4, -0x2

    .line 1194
    const-string v5, ">> touchRect()"

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 1195
    sub-int v2, p1, p3

    .line 1196
    .local v2, "lefttx":I
    sub-int v3, v2, p4

    .line 1197
    .local v3, "righttx":I
    sub-int/2addr p2, p3

    .line 1199
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    if-lt v1, v5, :cond_0

    .line 1224
    const/4 v1, -0x1

    .end local v1    # "i":I
    :goto_1
    return v1

    .line 1200
    .restart local v1    # "i":I
    :cond_0
    iget-object v5, p0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    aget-object v0, v5, v1

    .line 1201
    .local v0, "findrect":Lcom/findit/battle/Objects$FindRect;
    iget-boolean v5, v0, Lcom/findit/battle/Objects$FindRect;->mShow:Z

    if-eqz v5, :cond_4

    .line 1203
    iget v5, v0, Lcom/findit/battle/Objects$FindRect;->mRateX:I

    if-ge v5, v2, :cond_2

    iget v5, v0, Lcom/findit/battle/Objects$FindRect;->mRateX:I

    iget v6, v0, Lcom/findit/battle/Objects$FindRect;->mRateWidth:I

    add-int/2addr v5, v6

    if-le v5, v2, :cond_2

    iget v5, v0, Lcom/findit/battle/Objects$FindRect;->mRateY:I

    if-ge v5, p2, :cond_2

    iget v5, v0, Lcom/findit/battle/Objects$FindRect;->mRateY:I

    iget v6, v0, Lcom/findit/battle/Objects$FindRect;->mRateHeight:I

    add-int/2addr v5, v6

    if-le v5, p2, :cond_2

    .line 1204
    iget-boolean v5, v0, Lcom/findit/battle/Objects$FindRect;->mFinded:Z

    if-eqz v5, :cond_1

    move v1, v4

    .line 1205
    goto :goto_1

    .line 1207
    :cond_1
    iget-object v4, p0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    aget-object v4, v4, v1

    iput-boolean v7, v4, Lcom/findit/battle/Objects$FindRect;->mFinded:Z

    goto :goto_1

    .line 1213
    :cond_2
    iget v5, v0, Lcom/findit/battle/Objects$FindRect;->mRateX:I

    if-ge v5, v3, :cond_4

    iget v5, v0, Lcom/findit/battle/Objects$FindRect;->mRateX:I

    iget v6, v0, Lcom/findit/battle/Objects$FindRect;->mRateWidth:I

    add-int/2addr v5, v6

    if-le v5, v3, :cond_4

    iget v5, v0, Lcom/findit/battle/Objects$FindRect;->mRateY:I

    if-ge v5, p2, :cond_4

    iget v5, v0, Lcom/findit/battle/Objects$FindRect;->mRateY:I

    iget v6, v0, Lcom/findit/battle/Objects$FindRect;->mRateHeight:I

    add-int/2addr v5, v6

    if-le v5, p2, :cond_4

    .line 1214
    iget-boolean v5, v0, Lcom/findit/battle/Objects$FindRect;->mFinded:Z

    if-eqz v5, :cond_3

    move v1, v4

    .line 1215
    goto :goto_1

    .line 1217
    :cond_3
    iget-object v4, p0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    aget-object v4, v4, v1

    iput-boolean v7, v4, Lcom/findit/battle/Objects$FindRect;->mFinded:Z

    goto :goto_1

    .line 1199
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
