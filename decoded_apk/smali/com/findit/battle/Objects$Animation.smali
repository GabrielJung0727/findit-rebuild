.class Lcom/findit/battle/Objects$Animation;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/Objects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Animation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/findit/battle/Objects$Animation$Order;
    }
.end annotation


# static fields
.field public static final DEVIDER:Ljava/lang/String; = "|"

.field public static final DEVIDER_DATA:Ljava/lang/String; = "/"

.field public static final DEVIDER_SUB:Ljava/lang/String; = "&"

.field public static final DEVIDER_SUBDATA:Ljava/lang/String; = ","

.field public static final TYPE_ALPHA:Ljava/lang/String; = "A"

.field public static final TYPE_DELAY:Ljava/lang/String; = "D"

.field public static final TYPE_IMGNUM:Ljava/lang/String; = "I"

.field public static final TYPE_INITIATE:Ljava/lang/String; = "N"

.field public static final TYPE_ROTATE:Ljava/lang/String; = "R"

.field public static final TYPE_SCAIL:Ljava/lang/String; = "S"

.field public static final TYPE_TRANSFER:Ljava/lang/String; = "T"


# instance fields
.field public mOrders:[Lcom/findit/battle/Objects$Animation$Order;

.field public mTime:I

.field public mTimeCount:I

.field final synthetic this$0:Lcom/findit/battle/Objects;


# direct methods
.method constructor <init>(Lcom/findit/battle/Objects;)V
    .locals 0

    .prologue
    .line 3961
    iput-object p1, p0, Lcom/findit/battle/Objects$Animation;->this$0:Lcom/findit/battle/Objects;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/findit/battle/Objects$Animation;)Lcom/findit/battle/Objects;
    .locals 1

    .prologue
    .line 3961
    iget-object v0, p0, Lcom/findit/battle/Objects$Animation;->this$0:Lcom/findit/battle/Objects;

    return-object v0
.end method


# virtual methods
.method public initiateData()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4220
    const-string v5, ">> initiateData()"

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 4221
    iput v6, p0, Lcom/findit/battle/Objects$Animation;->mTime:I

    .line 4223
    iget-object v5, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    array-length v4, v5

    .line 4224
    .local v4, "totalnum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v4, :cond_0

    .line 4231
    return-void

    .line 4225
    :cond_0
    iget-object v5, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v3, v5, v1

    .line 4227
    .local v3, "order":Lcom/findit/battle/Objects$Animation$Order;
    iget-object v5, v3, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    array-length v0, v5

    .line 4228
    .local v0, "datatotalnum":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 4224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4229
    :cond_1
    iget-object v5, v3, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v5, v5, v2

    iput v6, v5, Lcom/findit/battle/Objects$OrderData;->mStep:I

    .line 4228
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public set(Lcom/findit/battle/Objects$Animation;)V
    .locals 4
    .param p1, "animation"    # Lcom/findit/battle/Objects$Animation;

    .prologue
    .line 3980
    const-string v1, ">> set()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 3981
    iget-object v1, p1, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    if-eqz v1, :cond_0

    .line 3982
    iget-object v1, p1, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    array-length v1, v1

    new-array v1, v1, [Lcom/findit/battle/Objects$Animation$Order;

    iput-object v1, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    .line 3983
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 3987
    .end local v0    # "i":I
    :cond_0
    iget v1, p1, Lcom/findit/battle/Objects$Animation;->mTime:I

    iput v1, p0, Lcom/findit/battle/Objects$Animation;->mTime:I

    .line 3988
    iget v1, p1, Lcom/findit/battle/Objects$Animation;->mTimeCount:I

    iput v1, p0, Lcom/findit/battle/Objects$Animation;->mTimeCount:I

    .line 3989
    return-void

    .line 3984
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    new-instance v2, Lcom/findit/battle/Objects$Animation$Order;

    iget-object v3, p1, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v3, v3, v0

    invoke-direct {v2, p0, v3}, Lcom/findit/battle/Objects$Animation$Order;-><init>(Lcom/findit/battle/Objects$Animation;Lcom/findit/battle/Objects$Animation$Order;)V

    aput-object v2, v1, v0

    .line 3983
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public set(Ljava/lang/String;)V
    .locals 13
    .param p1, "animdata"    # Ljava/lang/String;

    .prologue
    .line 3992
    const-string v10, ">> set()"

    invoke-static {v10}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 3993
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->this$0:Lcom/findit/battle/Objects;

    const-string v11, "|"

    invoke-static {v10, p1, v11}, Lcom/findit/battle/Objects;->access$4(Lcom/findit/battle/Objects;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 3995
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 3996
    .local v6, "size":I
    new-array v10, v6, [Lcom/findit/battle/Objects$Animation$Order;

    iput-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    .line 3997
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v6, :cond_0

    .line 4217
    return-void

    .line 3998
    :cond_0
    iget-object v11, p0, Lcom/findit/battle/Objects$Animation;->this$0:Lcom/findit/battle/Objects;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v12, "&"

    invoke-static {v11, v10, v12}, Lcom/findit/battle/Objects;->access$4(Lcom/findit/battle/Objects;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 4000
    .local v8, "sublist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 4001
    .local v9, "subsize":I
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    new-instance v11, Lcom/findit/battle/Objects$Animation$Order;

    invoke-direct {v11, p0, v9}, Lcom/findit/battle/Objects$Animation$Order;-><init>(Lcom/findit/battle/Objects$Animation;I)V

    aput-object v11, v10, v3

    .line 4002
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-lt v4, v9, :cond_1

    .line 3997
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4003
    :cond_1
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4004
    .local v1, "data":Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 4005
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    new-instance v11, Lcom/findit/battle/Objects$OrderData;

    iget-object v12, p0, Lcom/findit/battle/Objects$Animation;->this$0:Lcom/findit/battle/Objects;

    invoke-direct {v11, v12}, Lcom/findit/battle/Objects$OrderData;-><init>(Lcom/findit/battle/Objects;)V

    aput-object v11, v10, v4

    .line 4007
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->this$0:Lcom/findit/battle/Objects;

    const-string v11, "/"

    invoke-static {v10, v1, v11}, Lcom/findit/battle/Objects;->access$4(Lcom/findit/battle/Objects;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4010
    .local v2, "datalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4011
    if-eqz v1, :cond_8

    .line 4013
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v10, v10, v4

    iput-object v1, v10, Lcom/findit/battle/Objects$OrderData;->mType:Ljava/lang/String;

    .line 4016
    const-string v10, "N"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 4018
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4019
    if-eqz v1, :cond_2

    .line 4020
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v10, v10, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/findit/battle/Objects$OrderData;->mImgnum:I

    .line 4023
    :cond_2
    const/4 v10, 0x2

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4024
    if-eqz v1, :cond_4

    .line 4025
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->this$0:Lcom/findit/battle/Objects;

    const-string v11, ","

    invoke-static {v10, v1, v11}, Lcom/findit/battle/Objects;->access$4(Lcom/findit/battle/Objects;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 4027
    .local v7, "subdatalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4028
    if-eqz v1, :cond_3

    .line 4029
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v10, v10, v4

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    iput v11, v10, Lcom/findit/battle/Objects$OrderData;->mX:F

    .line 4031
    :cond_3
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4032
    if-eqz v1, :cond_4

    .line 4033
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v10, v10, v4

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    iput v11, v10, Lcom/findit/battle/Objects$OrderData;->mY:F

    .line 4037
    .end local v7    # "subdatalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const/4 v10, 0x3

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4038
    if-eqz v1, :cond_6

    .line 4039
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->this$0:Lcom/findit/battle/Objects;

    const-string v11, ","

    invoke-static {v10, v1, v11}, Lcom/findit/battle/Objects;->access$4(Lcom/findit/battle/Objects;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 4041
    .restart local v7    # "subdatalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4042
    if-eqz v1, :cond_5

    .line 4043
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v10, v10, v4

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    iput v11, v10, Lcom/findit/battle/Objects$OrderData;->mWidth:F

    .line 4045
    :cond_5
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4046
    if-eqz v1, :cond_6

    .line 4047
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v10, v10, v4

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    iput v11, v10, Lcom/findit/battle/Objects$OrderData;->mHeight:F

    .line 4051
    .end local v7    # "subdatalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    const/4 v10, 0x4

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4052
    if-eqz v1, :cond_7

    .line 4053
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v10, v10, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/findit/battle/Objects$OrderData;->mAlpha:I

    .line 4056
    :cond_7
    const/4 v10, 0x5

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4057
    if-eqz v1, :cond_8

    .line 4058
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v10, v10, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/findit/battle/Objects$OrderData;->mRotate:I

    .line 4002
    .end local v2    # "datalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 4060
    .restart local v2    # "datalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    const-string v10, "I"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 4063
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4064
    if-eqz v1, :cond_b

    .line 4065
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->this$0:Lcom/findit/battle/Objects;

    const-string v11, ","

    invoke-static {v10, v1, v11}, Lcom/findit/battle/Objects;->access$4(Lcom/findit/battle/Objects;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 4067
    .restart local v7    # "subdatalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4068
    if-eqz v1, :cond_a

    .line 4069
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v10, v10, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/findit/battle/Objects$OrderData;->mFrom:I

    .line 4071
    :cond_a
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4072
    if-eqz v1, :cond_b

    .line 4073
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v10, v10, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/findit/battle/Objects$OrderData;->mTo:I

    .line 4077
    .end local v7    # "subdatalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b
    const/4 v10, 0x2

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4078
    if-eqz v1, :cond_c

    .line 4079
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v10, v10, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/findit/battle/Objects$OrderData;->mNum:I

    .line 4082
    :cond_c
    const/4 v10, 0x3

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4083
    if-eqz v1, :cond_8

    .line 4084
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v10, v10, v4

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    iput v11, v10, Lcom/findit/battle/Objects$OrderData;->mTime:F

    goto/16 :goto_2

    .line 4211
    :catch_0
    move-exception v10

    goto/16 :goto_2

    .line 4086
    :cond_d
    const-string v10, "T"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 4089
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4090
    if-eqz v1, :cond_f

    .line 4091
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->this$0:Lcom/findit/battle/Objects;

    const-string v11, ","

    invoke-static {v10, v1, v11}, Lcom/findit/battle/Objects;->access$4(Lcom/findit/battle/Objects;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 4093
    .restart local v7    # "subdatalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4094
    if-eqz v1, :cond_e

    .line 4095
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v10, v10, v4

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    iput v11, v10, Lcom/findit/battle/Objects$OrderData;->mFromX:F

    .line 4097
    :cond_e
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4098
    if-eqz v1, :cond_f

    .line 4099
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v10, v10, v4

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    iput v11, v10, Lcom/findit/battle/Objects$OrderData;->mFromY:F

    .line 4103
    .end local v7    # "subdatalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_f
    const/4 v10, 0x2

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4104
    if-eqz v1, :cond_11

    .line 4105
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->this$0:Lcom/findit/battle/Objects;

    const-string v11, ","

    invoke-static {v10, v1, v11}, Lcom/findit/battle/Objects;->access$4(Lcom/findit/battle/Objects;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 4107
    .restart local v7    # "subdatalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4108
    if-eqz v1, :cond_10

    .line 4109
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v10, v10, v4

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    iput v11, v10, Lcom/findit/battle/Objects$OrderData;->mToX:F

    .line 4111
    :cond_10
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4112
    if-eqz v1, :cond_11

    .line 4113
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v10, v10, v4

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    iput v11, v10, Lcom/findit/battle/Objects$OrderData;->mToY:F

    .line 4117
    .end local v7    # "subdatalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_11
    const/4 v10, 0x3

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4118
    if-eqz v1, :cond_8

    .line 4119
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v10, v10, v4

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    iput v11, v10, Lcom/findit/battle/Objects$OrderData;->mTime:F

    goto/16 :goto_2

    .line 4121
    :cond_12
    const-string v10, "S"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 4124
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4125
    if-eqz v1, :cond_14

    .line 4126
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->this$0:Lcom/findit/battle/Objects;

    const-string v11, ","

    invoke-static {v10, v1, v11}, Lcom/findit/battle/Objects;->access$4(Lcom/findit/battle/Objects;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 4128
    .restart local v7    # "subdatalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4129
    if-eqz v1, :cond_13

    .line 4130
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v10, v10, v4

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    iput v11, v10, Lcom/findit/battle/Objects$OrderData;->mFromX:F

    .line 4132
    :cond_13
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4133
    if-eqz v1, :cond_14

    .line 4134
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v10, v10, v4

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    iput v11, v10, Lcom/findit/battle/Objects$OrderData;->mFromY:F

    .line 4138
    .end local v7    # "subdatalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_14
    const/4 v10, 0x2

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4139
    if-eqz v1, :cond_16

    .line 4140
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->this$0:Lcom/findit/battle/Objects;

    const-string v11, ","

    invoke-static {v10, v1, v11}, Lcom/findit/battle/Objects;->access$4(Lcom/findit/battle/Objects;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 4142
    .restart local v7    # "subdatalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4143
    if-eqz v1, :cond_15

    .line 4144
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v10, v10, v4

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    iput v11, v10, Lcom/findit/battle/Objects$OrderData;->mToX:F

    .line 4146
    :cond_15
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4147
    if-eqz v1, :cond_16

    .line 4148
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v10, v10, v4

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    iput v11, v10, Lcom/findit/battle/Objects$OrderData;->mToY:F

    .line 4152
    .end local v7    # "subdatalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_16
    const/4 v10, 0x3

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4153
    if-eqz v1, :cond_8

    .line 4154
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v10, v10, v4

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    iput v11, v10, Lcom/findit/battle/Objects$OrderData;->mTime:F

    goto/16 :goto_2

    .line 4156
    :cond_17
    const-string v10, "A"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 4159
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4160
    if-eqz v1, :cond_19

    .line 4161
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->this$0:Lcom/findit/battle/Objects;

    const-string v11, ","

    invoke-static {v10, v1, v11}, Lcom/findit/battle/Objects;->access$4(Lcom/findit/battle/Objects;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 4163
    .restart local v7    # "subdatalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4164
    if-eqz v1, :cond_18

    .line 4165
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v10, v10, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/findit/battle/Objects$OrderData;->mFrom:I

    .line 4167
    :cond_18
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4168
    if-eqz v1, :cond_19

    .line 4169
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v10, v10, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/findit/battle/Objects$OrderData;->mTo:I

    .line 4173
    .end local v7    # "subdatalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_19
    const/4 v10, 0x2

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4174
    if-eqz v1, :cond_8

    .line 4175
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v10, v10, v4

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    iput v11, v10, Lcom/findit/battle/Objects$OrderData;->mTime:F

    goto/16 :goto_2

    .line 4177
    :cond_1a
    const-string v10, "R"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 4180
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4181
    if-eqz v1, :cond_1c

    .line 4182
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->this$0:Lcom/findit/battle/Objects;

    const-string v11, ","

    invoke-static {v10, v1, v11}, Lcom/findit/battle/Objects;->access$4(Lcom/findit/battle/Objects;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 4184
    .restart local v7    # "subdatalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4185
    if-eqz v1, :cond_1b

    .line 4186
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v10, v10, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/findit/battle/Objects$OrderData;->mFrom:I

    .line 4188
    :cond_1b
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4189
    if-eqz v1, :cond_1c

    .line 4190
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v10, v10, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/findit/battle/Objects$OrderData;->mTo:I

    .line 4194
    .end local v7    # "subdatalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1c
    const/4 v10, 0x2

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4195
    if-eqz v1, :cond_1d

    .line 4196
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v10, v10, v4

    const-string v11, "+"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, v10, Lcom/findit/battle/Objects$OrderData;->mDirect:Z

    .line 4199
    :cond_1d
    const/4 v10, 0x3

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4200
    if-eqz v1, :cond_8

    .line 4201
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v10, v10, v4

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    iput v11, v10, Lcom/findit/battle/Objects$OrderData;->mTime:F

    goto/16 :goto_2

    .line 4203
    :cond_1e
    const-string v10, "D"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 4206
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 4207
    if-eqz v1, :cond_8

    .line 4208
    iget-object v10, p0, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    aget-object v10, v10, v3

    iget-object v10, v10, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v10, v10, v4

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    iput v11, v10, Lcom/findit/battle/Objects$OrderData;->mTime:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2
.end method
