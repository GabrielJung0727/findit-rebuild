.class Lcom/findit/battle/GameView$1;
.super Ljava/util/TimerTask;
.source "GameView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/GameView;->startBattleRoomAndGameRoomTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mFrame:I

.field private mSFrame:I

.field private mSFramecount:I

.field private mTimecount:I

.field final synthetic this$0:Lcom/findit/battle/GameView;


# direct methods
.method constructor <init>(Lcom/findit/battle/GameView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    .line 5099
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5105
    const-string v0, "TimerTask::init()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 5106
    iput v1, p0, Lcom/findit/battle/GameView$1;->mFrame:I

    .line 5107
    iput v1, p0, Lcom/findit/battle/GameView$1;->mTimecount:I

    .line 5108
    iput v1, p0, Lcom/findit/battle/GameView$1;->mSFramecount:I

    .line 5109
    iput v1, p0, Lcom/findit/battle/GameView$1;->mSFrame:I

    .line 5110
    iget-object v0, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v0, v1}, Lcom/findit/battle/GameView;->access$9(Lcom/findit/battle/GameView;Z)V

    .line 5111
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 5116
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v8}, Lcom/findit/battle/GameView;->access$10(Lcom/findit/battle/GameView;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 5117
    invoke-direct {p0}, Lcom/findit/battle/GameView$1;->init()V

    .line 5121
    :cond_0
    iget v8, p0, Lcom/findit/battle/GameView$1;->mSFramecount:I

    iget-object v9, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v9, v9, Lcom/findit/battle/GameView;->mGameThread:Lcom/findit/battle/GameView$GameThread;

    invoke-static {v9}, Lcom/findit/battle/GameView$GameThread;->access$2(Lcom/findit/battle/GameView$GameThread;)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/findit/battle/GameView$1;->mSFramecount:I

    .line 5122
    iget v8, p0, Lcom/findit/battle/GameView$1;->mTimecount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/findit/battle/GameView$1;->mTimecount:I

    const/16 v9, 0x14

    if-le v8, v9, :cond_2

    .line 5123
    iget v8, p0, Lcom/findit/battle/GameView$1;->mSFramecount:I

    iput v8, p0, Lcom/findit/battle/GameView$1;->mSFrame:I

    .line 5124
    const/4 v8, 0x0

    iput v8, p0, Lcom/findit/battle/GameView$1;->mSFramecount:I

    .line 5126
    const/4 v8, 0x0

    iput v8, p0, Lcom/findit/battle/GameView$1;->mTimecount:I

    .line 5128
    const/high16 v8, 0x42700000    # 60.0f

    iget v9, p0, Lcom/findit/battle/GameView$1;->mSFrame:I

    int-to-float v9, v9

    div-float v5, v8, v9

    .line 5129
    .local v5, "rate":F
    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v8, v5, v8

    if-gez v8, :cond_11

    .line 5130
    const/high16 v5, 0x3f800000    # 1.0f

    .line 5134
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iput v5, v8, Lcom/findit/battle/GameView;->mSpeedRate:F

    .line 5141
    .end local v5    # "rate":F
    :cond_2
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mGameThread:Lcom/findit/battle/GameView$GameThread;

    invoke-static {v8}, Lcom/findit/battle/GameView$GameThread;->access$2(Lcom/findit/battle/GameView$GameThread;)I

    move-result v8

    iput v8, p0, Lcom/findit/battle/GameView$1;->mFrame:I

    .line 5142
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mGameThread:Lcom/findit/battle/GameView$GameThread;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/findit/battle/GameView$GameThread;->access$3(Lcom/findit/battle/GameView$GameThread;I)V

    .line 5145
    iget v8, p0, Lcom/findit/battle/GameView$1;->mFrame:I

    const/4 v9, 0x2

    if-ge v8, v9, :cond_12

    .line 5146
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mGameThread:Lcom/findit/battle/GameView$GameThread;

    invoke-static {v8}, Lcom/findit/battle/GameView$GameThread;->access$4(Lcom/findit/battle/GameView$GameThread;)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v8, v9}, Lcom/findit/battle/GameView$GameThread;->access$5(Lcom/findit/battle/GameView$GameThread;I)V

    .line 5150
    :cond_3
    :goto_1
    iget v8, p0, Lcom/findit/battle/GameView$1;->mFrame:I

    const/16 v9, 0x8

    if-gt v8, v9, :cond_4

    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mGameThread:Lcom/findit/battle/GameView$GameThread;

    invoke-static {v8}, Lcom/findit/battle/GameView$GameThread;->access$4(Lcom/findit/battle/GameView$GameThread;)I

    move-result v8

    if-gez v8, :cond_5

    .line 5151
    :cond_4
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mGameThread:Lcom/findit/battle/GameView$GameThread;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/findit/battle/GameView$GameThread;->access$5(Lcom/findit/battle/GameView$GameThread;I)V

    .line 5162
    :cond_5
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    iget v8, v8, Lcom/findit/battle/GameView$BattleRoom;->mSingleTimeCount:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_6

    .line 5163
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    iget v9, v8, Lcom/findit/battle/GameView$BattleRoom;->mSingleTimeCount:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Lcom/findit/battle/GameView$BattleRoom;->mSingleTimeCount:I

    const/16 v8, 0x64

    if-le v9, v8, :cond_6

    .line 5167
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v8, v8, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    if-gez v8, :cond_6

    .line 5168
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    const/4 v9, 0x2

    iput v9, v8, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    .line 5169
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    const/4 v9, 0x4

    iput v9, v8, Lcom/findit/battle/GameView$BattleRoom;->mTime:I

    .line 5170
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    const/4 v9, -0x1

    iput v9, v8, Lcom/findit/battle/GameView$BattleRoom;->mSingleTimeCount:I

    .line 5177
    :cond_6
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    invoke-virtual {v8}, Lcom/findit/battle/GameView$GameRoom;->isExitGameRoom()Z

    move-result v8

    if-nez v8, :cond_10

    .line 5178
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v8, v8, Lcom/findit/battle/GameView$GameRoom;->mGameTime:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_10

    .line 5179
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v9, v8, Lcom/findit/battle/GameView$GameRoom;->mGameTimeCount:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Lcom/findit/battle/GameView$GameRoom;->mGameTimeCount:I

    const/16 v8, 0x13

    if-le v9, v8, :cond_7

    .line 5180
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v9, v8, Lcom/findit/battle/GameView$GameRoom;->mGameTime:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/findit/battle/GameView$GameRoom;->mGameTime:I

    .line 5181
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    const/4 v9, 0x0

    iput v9, v8, Lcom/findit/battle/GameView$GameRoom;->mGameTimeCount:I

    .line 5188
    :cond_7
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    invoke-virtual {v8}, Lcom/findit/battle/GameView$GameRoom;->isExitGameRoom()Z

    move-result v8

    if-nez v8, :cond_8

    .line 5189
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget-boolean v8, v8, Lcom/findit/battle/GameView$GameRoom;->mAI:Z

    if-eqz v8, :cond_8

    .line 5190
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v9, v8, Lcom/findit/battle/GameView$GameRoom;->mAIFindTime:I

    add-int/lit8 v10, v9, -0x1

    iput v10, v8, Lcom/findit/battle/GameView$GameRoom;->mAIFindTime:I

    const/4 v8, 0x1

    if-ge v9, v8, :cond_8

    .line 5191
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v4, v8, Lcom/findit/battle/GameView$GameRoom;->mRightNum:I

    add-int/lit8 v9, v4, -0x1

    iput v9, v8, Lcom/findit/battle/GameView$GameRoom;->mRightNum:I

    .line 5192
    .local v4, "num":I
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget-object v9, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v9, v9, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    .line 5193
    invoke-static {v9}, Lcom/findit/battle/GameView$GameRoom;->access$2(Lcom/findit/battle/GameView$GameRoom;)I

    move-result v9

    .line 5192
    iput v9, v8, Lcom/findit/battle/GameView$GameRoom;->mAIFindTime:I

    .line 5196
    rsub-int/lit8 v4, v4, 0x5

    .line 5197
    const/4 v8, -0x1

    if-le v4, v8, :cond_8

    const/4 v8, 0x4

    if-ge v4, v8, :cond_8

    .line 5198
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    invoke-static {v8}, Lcom/findit/battle/GameView$GameRoom;->access$3(Lcom/findit/battle/GameView$GameRoom;)[I

    move-result-object v8

    aget v7, v8, v4

    .line 5201
    .local v7, "skillindex":I
    const/4 v8, -0x1

    if-le v7, v8, :cond_8

    .line 5202
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iput v7, v8, Lcom/findit/battle/GameView$GameRoom;->mRightSkillNum:I

    .line 5203
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    const/4 v9, 0x0

    iput v9, v8, Lcom/findit/battle/GameView$GameRoom;->mRightSkilTimeCount:I

    .line 5210
    .end local v4    # "num":I
    .end local v7    # "skillindex":I
    :cond_8
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    invoke-virtual {v8}, Lcom/findit/battle/GameView$GameRoom;->isExitGameRoom()Z

    move-result v8

    if-nez v8, :cond_a

    .line 5211
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v8, v8, Lcom/findit/battle/GameView$GameRoom;->mLeftSkilTimeCount:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_a

    .line 5212
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    invoke-virtual {v8}, Lcom/findit/battle/GameView$GameRoom;->getLeftSkillNum()I

    move-result v4

    .line 5213
    .restart local v4    # "num":I
    const/4 v8, -0x1

    if-le v4, v8, :cond_a

    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v8, v8, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget v8, v8, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    if-ge v4, v8, :cond_a

    .line 5214
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v8, v8, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v8, v8, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v6, v8, v4

    .line 5215
    .local v6, "skill":Lcom/findit/battle/Objects$Skills$Skill;
    if-eqz v6, :cond_a

    .line 5216
    const/4 v1, 0x0

    .line 5217
    .local v1, "addtime":I
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v3, v8, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    .line 5218
    .local v3, "items":Lcom/findit/battle/Items;
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/findit/battle/Items;->getSetIndex(I)I

    move-result v2

    .line 5219
    .local v2, "index":I
    const/4 v8, -0x1

    if-le v2, v8, :cond_9

    .line 5220
    iget-object v8, v3, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v8, v8, v2

    iget v1, v8, Lcom/findit/battle/Items$Item;->mPower:I

    .line 5222
    :cond_9
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v9, v8, Lcom/findit/battle/GameView$GameRoom;->mLeftSkilTimeCount:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Lcom/findit/battle/GameView$GameRoom;->mLeftSkilTimeCount:I

    iget v8, v6, Lcom/findit/battle/Objects$Skills$Skill;->mSustainmentTime:I

    .line 5223
    add-int/2addr v8, v1

    if-le v9, v8, :cond_a

    .line 5226
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    const/4 v9, -0x1

    iput v9, v8, Lcom/findit/battle/GameView$GameRoom;->mLeftSkillNum:I

    .line 5227
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    const/4 v9, -0x1

    iput v9, v8, Lcom/findit/battle/GameView$GameRoom;->mLeftSkilTimeCount:I

    .line 5234
    .end local v1    # "addtime":I
    .end local v2    # "index":I
    .end local v3    # "items":Lcom/findit/battle/Items;
    .end local v4    # "num":I
    .end local v6    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    :cond_a
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    invoke-virtual {v8}, Lcom/findit/battle/GameView$GameRoom;->isExitGameRoom()Z

    move-result v8

    if-nez v8, :cond_f

    .line 5235
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v8, v8, Lcom/findit/battle/GameView$GameRoom;->mRightSkilTimeCount:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_f

    .line 5236
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v4, v8, Lcom/findit/battle/GameView$GameRoom;->mRightSkillNum:I

    .line 5237
    .restart local v4    # "num":I
    const/4 v8, -0x1

    if-le v4, v8, :cond_f

    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v8, v8, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget v8, v8, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    if-ge v4, v8, :cond_f

    .line 5238
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v8, v8, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v8, v8, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v6, v8, v4

    .line 5239
    .restart local v6    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    if-eqz v6, :cond_f

    .line 5240
    const/4 v1, 0x0

    .line 5243
    .restart local v1    # "addtime":I
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v3, v8, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    .line 5244
    .restart local v3    # "items":Lcom/findit/battle/Items;
    if-eqz v3, :cond_f

    .line 5245
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v2, v8, Lcom/findit/battle/GameView$GameRoom;->mRightPenNum:I

    .line 5246
    .restart local v2    # "index":I
    const/4 v8, -0x1

    if-le v2, v8, :cond_b

    .line 5248
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/findit/battle/Items;->getSetIndex(I)I

    move-result v2

    .line 5249
    const/4 v8, -0x1

    if-le v2, v8, :cond_b

    .line 5250
    iget-object v8, v3, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v8, v8, v2

    if-eqz v8, :cond_b

    .line 5251
    iget-object v8, v3, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v8, v8, v2

    iget v8, v8, Lcom/findit/battle/Items$Item;->mPower:I

    sub-int/2addr v1, v8

    .line 5256
    :cond_b
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/findit/battle/Items;->getSetIndex(I)I

    move-result v2

    .line 5257
    const/4 v8, -0x1

    if-le v2, v8, :cond_c

    .line 5258
    iget-object v8, v3, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v8, v8, v2

    if-eqz v8, :cond_c

    .line 5259
    iget-object v8, v3, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v8, v8, v2

    iget v8, v8, Lcom/findit/battle/Items$Item;->mPower:I

    add-int/2addr v1, v8

    .line 5263
    :cond_c
    const/4 v8, 0x3

    invoke-virtual {v3, v8}, Lcom/findit/battle/Items;->getSetIndex(I)I

    move-result v2

    .line 5264
    const/4 v8, -0x1

    if-le v2, v8, :cond_d

    .line 5265
    iget-object v8, v3, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v8, v8, v2

    if-eqz v8, :cond_d

    .line 5266
    iget-object v8, v3, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v8, v8, v2

    iget v8, v8, Lcom/findit/battle/Items$Item;->mPower:I

    add-int/2addr v1, v8

    .line 5269
    :cond_d
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v9, v8, Lcom/findit/battle/GameView$GameRoom;->mRightSkilTimeCount:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Lcom/findit/battle/GameView$GameRoom;->mRightSkilTimeCount:I

    iget v8, v6, Lcom/findit/battle/Objects$Skills$Skill;->mSustainmentTime:I

    .line 5270
    sub-int/2addr v8, v1

    if-le v9, v8, :cond_f

    .line 5273
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    const/4 v9, -0x1

    iput v9, v8, Lcom/findit/battle/GameView$GameRoom;->mRightSkillNum:I

    .line 5274
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    const/4 v9, -0x1

    iput v9, v8, Lcom/findit/battle/GameView$GameRoom;->mRightSkilTimeCount:I

    .line 5279
    const/4 v8, -0x1

    if-le v2, v8, :cond_e

    .line 5280
    iget-object v8, v3, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v8, v8, v2

    if-eqz v8, :cond_e

    .line 5282
    new-instance v0, Lcom/findit/battle/GameView$ActionRunnable;

    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    .line 5283
    const/4 v9, 0x6

    .line 5284
    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v2, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x1

    aput v12, v10, v11

    .line 5285
    const/4 v11, 0x0

    .line 5282
    invoke-direct {v0, v8, v9, v10, v11}, Lcom/findit/battle/GameView$ActionRunnable;-><init>(Lcom/findit/battle/GameView;I[I[J)V

    .line 5286
    .local v0, "action":Lcom/findit/battle/GameView$ActionRunnable;
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v8, v0}, Lcom/findit/battle/GameView;->post(Ljava/lang/Runnable;)Z

    .line 5291
    .end local v0    # "action":Lcom/findit/battle/GameView$ActionRunnable;
    :cond_e
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v8, v8, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    invoke-virtual {v8}, Lcom/findit/battle/Objects$Skills;->initiateData()V

    .line 5300
    .end local v1    # "addtime":I
    .end local v2    # "index":I
    .end local v3    # "items":Lcom/findit/battle/Items;
    .end local v4    # "num":I
    .end local v6    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    :cond_f
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v8, v8, Lcom/findit/battle/GameView$GameRoom;->mDimTime:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_10

    .line 5301
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v9, v8, Lcom/findit/battle/GameView$GameRoom;->mDimTime:I

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Lcom/findit/battle/GameView$GameRoom;->mDimTime:I

    .line 5306
    :cond_10
    return-void

    .line 5131
    .restart local v5    # "rate":F
    :cond_11
    const/high16 v8, 0x40800000    # 4.0f

    cmpl-float v8, v5, v8

    if-lez v8, :cond_1

    .line 5132
    const/high16 v5, 0x40800000    # 4.0f

    goto/16 :goto_0

    .line 5147
    .end local v5    # "rate":F
    :cond_12
    iget v8, p0, Lcom/findit/battle/GameView$1;->mFrame:I

    const/4 v9, 0x2

    if-le v8, v9, :cond_3

    .line 5148
    iget-object v8, p0, Lcom/findit/battle/GameView$1;->this$0:Lcom/findit/battle/GameView;

    iget-object v8, v8, Lcom/findit/battle/GameView;->mGameThread:Lcom/findit/battle/GameView$GameThread;

    invoke-static {v8}, Lcom/findit/battle/GameView$GameThread;->access$4(Lcom/findit/battle/GameView$GameThread;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v8, v9}, Lcom/findit/battle/GameView$GameThread;->access$5(Lcom/findit/battle/GameView$GameThread;I)V

    goto/16 :goto_1
.end method
