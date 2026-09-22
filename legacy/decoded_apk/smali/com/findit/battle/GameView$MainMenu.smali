.class Lcom/findit/battle/GameView$MainMenu;
.super Ljava/lang/Object;
.source "GameView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/GameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainMenu"
.end annotation


# static fields
.field public static final MTIME_MAINMENU_1:I = 0x1

.field public static final MTIME_MAINMENU_2:I = 0x2

.field public static final MTIME_MAINMENU_4:I = 0x4

.field public static final MTIME_MAINMENU_ANIMATION_APPEAR:I = 0x0

.field public static final MTIME_MAINMENU_ANIMATION_BUTTONS_FADE:I = 0x3

.field public static final MTIME_MAINMENU_RESULT_ACTION:I = 0x5


# instance fields
.field private mAlpha:I

.field private mBackboard:Z

.field private mPaint:Landroid/graphics/Paint;

.field public mResult:I

.field public mTime:I

.field public mTimeCount:I

.field final synthetic this$0:Lcom/findit/battle/GameView;


# direct methods
.method public constructor <init>(Lcom/findit/battle/GameView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1476
    iput-object p1, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1477
    const-string v0, ">> MainMenu()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1479
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/findit/battle/GameView$MainMenu;->mPaint:Landroid/graphics/Paint;

    .line 1480
    iget-object v0, p0, Lcom/findit/battle/GameView$MainMenu;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1481
    iput v1, p0, Lcom/findit/battle/GameView$MainMenu;->mAlpha:I

    .line 1482
    iget-object v0, p1, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v0, v0, Lcom/findit/battle/Objects;->mMainMenuButtons:Lcom/findit/battle/Objects$Buttons;

    invoke-virtual {v0, v1}, Lcom/findit/battle/Objects$Buttons;->setAlpha(I)V

    .line 1484
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/findit/battle/GameView$MainMenu;->setBackboard(Z)V

    .line 1485
    return-void
.end method

.method static synthetic access$0(Lcom/findit/battle/GameView$MainMenu;I)V
    .locals 0

    .prologue
    .line 1471
    iput p1, p0, Lcom/findit/battle/GameView$MainMenu;->mAlpha:I

    return-void
.end method

.method static synthetic access$1(Lcom/findit/battle/GameView$MainMenu;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/findit/battle/GameView$MainMenu;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private gotoInventoryGoogle()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1752
    iget-object v3, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-object v3, v3, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v3, v3, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v1, v3, v6

    .line 1753
    .local v1, "character":Lcom/findit/battle/Objects$Character;
    sget-object v3, Lcom/findit/battle/Objects;->mCharacterDatas:[Lcom/findit/battle/Objects$CharacterData;

    iget v4, v1, Lcom/findit/battle/Objects$Character;->mBodyType:I

    aget-object v2, v3, v4

    .line 1755
    .local v2, "characterdata":Lcom/findit/battle/Objects$CharacterData;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1756
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "displaywidth"

    iget-object v4, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v4}, Lcom/findit/battle/GameView;->getWidth()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1757
    const-string v3, "displayheight"

    iget-object v4, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v4}, Lcom/findit/battle/GameView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1758
    const-string v3, "login"

    iget-object v4, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget v4, v4, Lcom/findit/battle/GameView;->mLogin:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1759
    const-string v3, "level"

    iget-object v4, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget v4, v4, Lcom/findit/battle/GameView;->mLevel:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1760
    const-string v3, "score"

    iget-object v4, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-wide v4, v4, Lcom/findit/battle/GameView;->mScore:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1761
    const-string v3, "point"

    iget-object v4, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget v4, v4, Lcom/findit/battle/GameView;->mPoint:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1763
    iget v3, v1, Lcom/findit/battle/Objects$Character;->mBodyType:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 1764
    const-string v3, "bodyimgid"

    .line 1765
    iget-object v4, v2, Lcom/findit/battle/Objects$CharacterData;->mBodyImgIds:[I

    iget v5, v1, Lcom/findit/battle/Objects$Character;->mBodyNum:I

    aget v4, v4, v5

    .line 1764
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1767
    const-string v3, "actionimgid"

    .line 1768
    iget-object v4, v2, Lcom/findit/battle/Objects$CharacterData;->mNormalActionImgIds:[I

    iget v5, v1, Lcom/findit/battle/Objects$Character;->mBodyNum:I

    aget v4, v4, v5

    .line 1766
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1769
    const-string v3, "faceimgid"

    .line 1770
    iget-object v4, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-object v4, v4, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v4, v4, Lcom/findit/battle/Objects;->mBodyFaceImgIds:[I

    iget v5, v1, Lcom/findit/battle/Objects$Character;->mFaceImgnum:I

    aget v4, v4, v5

    .line 1769
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1771
    const-string v3, "bodyimgpath"

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1773
    const-string v3, "actionimgpath"

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    const-string v3, "faceimgpath"

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1790
    :goto_0
    const-string v3, "soundon"

    iget-object v4, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-boolean v4, v4, Lcom/findit/battle/GameView;->mSoundon:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1792
    iget-object v3, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v3}, Lcom/findit/battle/GameView;->access$4(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameActivity;

    move-result-object v3

    const-class v4, Lcom/findit/battle/InventoryActivity_Google;

    invoke-virtual {v3, v4, v6, v0}, Lcom/findit/battle/GameActivity;->movePage(Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 1795
    return-void

    .line 1778
    :cond_0
    const-string v3, "bodyimgid"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1779
    const-string v3, "actionimgid"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1780
    const-string v3, "faceimgid"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1781
    const-string v3, "bodyimgpath"

    .line 1782
    iget-object v4, v2, Lcom/findit/battle/Objects$CharacterData;->mBodyImgPaths:[Ljava/lang/String;

    iget v5, v1, Lcom/findit/battle/Objects$Character;->mBodyNum:I

    aget-object v4, v4, v5

    .line 1781
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    const-string v3, "actionimgpath"

    .line 1785
    iget-object v4, v2, Lcom/findit/battle/Objects$CharacterData;->mNormalActionImgPaths:[Ljava/lang/String;

    iget v5, v1, Lcom/findit/battle/Objects$Character;->mBodyNum:I

    aget-object v4, v4, v5

    .line 1783
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    const-string v3, "faceimgpath"

    .line 1787
    iget-object v4, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-object v4, v4, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v4, v4, Lcom/findit/battle/Objects;->mBodyFaceImgPaths:[Ljava/lang/String;

    iget v5, v1, Lcom/findit/battle/Objects$Character;->mFaceImgnum:I

    aget-object v4, v4, v5

    .line 1786
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private gotoInventoryOlleh()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1702
    iget-object v3, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-object v3, v3, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v3, v3, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v1, v3, v6

    .line 1703
    .local v1, "character":Lcom/findit/battle/Objects$Character;
    sget-object v3, Lcom/findit/battle/Objects;->mCharacterDatas:[Lcom/findit/battle/Objects$CharacterData;

    iget v4, v1, Lcom/findit/battle/Objects$Character;->mBodyType:I

    aget-object v2, v3, v4

    .line 1705
    .local v2, "characterdata":Lcom/findit/battle/Objects$CharacterData;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1706
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "displaywidth"

    iget-object v4, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v4}, Lcom/findit/battle/GameView;->getWidth()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1707
    const-string v3, "displayheight"

    iget-object v4, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v4}, Lcom/findit/battle/GameView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1708
    const-string v3, "login"

    iget-object v4, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget v4, v4, Lcom/findit/battle/GameView;->mLogin:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1709
    const-string v3, "level"

    iget-object v4, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget v4, v4, Lcom/findit/battle/GameView;->mLevel:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1710
    const-string v3, "score"

    iget-object v4, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-wide v4, v4, Lcom/findit/battle/GameView;->mScore:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1711
    const-string v3, "point"

    iget-object v4, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget v4, v4, Lcom/findit/battle/GameView;->mPoint:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1713
    iget v3, v1, Lcom/findit/battle/Objects$Character;->mBodyType:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 1714
    const-string v3, "bodyimgid"

    .line 1715
    iget-object v4, v2, Lcom/findit/battle/Objects$CharacterData;->mBodyImgIds:[I

    iget v5, v1, Lcom/findit/battle/Objects$Character;->mBodyNum:I

    aget v4, v4, v5

    .line 1714
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1717
    const-string v3, "actionimgid"

    .line 1718
    iget-object v4, v2, Lcom/findit/battle/Objects$CharacterData;->mNormalActionImgIds:[I

    iget v5, v1, Lcom/findit/battle/Objects$Character;->mBodyNum:I

    aget v4, v4, v5

    .line 1716
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1719
    const-string v3, "faceimgid"

    .line 1720
    iget-object v4, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-object v4, v4, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v4, v4, Lcom/findit/battle/Objects;->mBodyFaceImgIds:[I

    iget v5, v1, Lcom/findit/battle/Objects$Character;->mFaceImgnum:I

    aget v4, v4, v5

    .line 1719
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1721
    const-string v3, "bodyimgpath"

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    const-string v3, "actionimgpath"

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    const-string v3, "faceimgpath"

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    :goto_0
    const-string v3, "soundon"

    iget-object v4, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-boolean v4, v4, Lcom/findit/battle/GameView;->mSoundon:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1742
    iget-object v3, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v3}, Lcom/findit/battle/GameView;->access$4(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameActivity;

    move-result-object v3

    const-class v4, Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-virtual {v3, v4, v6, v0}, Lcom/findit/battle/GameActivity;->movePage(Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 1745
    return-void

    .line 1728
    :cond_0
    const-string v3, "bodyimgid"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1729
    const-string v3, "actionimgid"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1730
    const-string v3, "faceimgid"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1731
    const-string v3, "bodyimgpath"

    .line 1732
    iget-object v4, v2, Lcom/findit/battle/Objects$CharacterData;->mBodyImgPaths:[Ljava/lang/String;

    iget v5, v1, Lcom/findit/battle/Objects$Character;->mBodyNum:I

    aget-object v4, v4, v5

    .line 1731
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    const-string v3, "actionimgpath"

    .line 1735
    iget-object v4, v2, Lcom/findit/battle/Objects$CharacterData;->mNormalActionImgPaths:[Ljava/lang/String;

    iget v5, v1, Lcom/findit/battle/Objects$Character;->mBodyNum:I

    aget-object v4, v4, v5

    .line 1733
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    const-string v3, "faceimgpath"

    .line 1737
    iget-object v4, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-object v4, v4, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v4, v4, Lcom/findit/battle/Objects;->mBodyFaceImgPaths:[Ljava/lang/String;

    iget v5, v1, Lcom/findit/battle/Objects$Character;->mFaceImgnum:I

    aget-object v4, v4, v5

    .line 1736
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private gotoInventoryT()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1802
    iget-object v3, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-object v3, v3, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v3, v3, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v1, v3, v6

    .line 1803
    .local v1, "character":Lcom/findit/battle/Objects$Character;
    sget-object v3, Lcom/findit/battle/Objects;->mCharacterDatas:[Lcom/findit/battle/Objects$CharacterData;

    iget v4, v1, Lcom/findit/battle/Objects$Character;->mBodyType:I

    aget-object v2, v3, v4

    .line 1805
    .local v2, "characterdata":Lcom/findit/battle/Objects$CharacterData;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1806
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "displaywidth"

    iget-object v4, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v4}, Lcom/findit/battle/GameView;->getWidth()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1807
    const-string v3, "displayheight"

    iget-object v4, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v4}, Lcom/findit/battle/GameView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1808
    const-string v3, "login"

    iget-object v4, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget v4, v4, Lcom/findit/battle/GameView;->mLogin:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1809
    const-string v3, "level"

    iget-object v4, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget v4, v4, Lcom/findit/battle/GameView;->mLevel:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1810
    const-string v3, "score"

    iget-object v4, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-wide v4, v4, Lcom/findit/battle/GameView;->mScore:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1811
    const-string v3, "point"

    iget-object v4, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget v4, v4, Lcom/findit/battle/GameView;->mPoint:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1813
    iget v3, v1, Lcom/findit/battle/Objects$Character;->mBodyType:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 1814
    const-string v3, "bodyimgid"

    .line 1815
    iget-object v4, v2, Lcom/findit/battle/Objects$CharacterData;->mBodyImgIds:[I

    iget v5, v1, Lcom/findit/battle/Objects$Character;->mBodyNum:I

    aget v4, v4, v5

    .line 1814
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1817
    const-string v3, "actionimgid"

    .line 1818
    iget-object v4, v2, Lcom/findit/battle/Objects$CharacterData;->mNormalActionImgIds:[I

    iget v5, v1, Lcom/findit/battle/Objects$Character;->mBodyNum:I

    aget v4, v4, v5

    .line 1816
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1819
    const-string v3, "faceimgid"

    .line 1820
    iget-object v4, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-object v4, v4, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v4, v4, Lcom/findit/battle/Objects;->mBodyFaceImgIds:[I

    iget v5, v1, Lcom/findit/battle/Objects$Character;->mFaceImgnum:I

    aget v4, v4, v5

    .line 1819
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1821
    const-string v3, "bodyimgpath"

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    const-string v3, "actionimgpath"

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    const-string v3, "faceimgpath"

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    :goto_0
    const-string v3, "soundon"

    iget-object v4, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-boolean v4, v4, Lcom/findit/battle/GameView;->mSoundon:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1842
    iget-object v3, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v3}, Lcom/findit/battle/GameView;->access$4(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameActivity;

    move-result-object v3

    const-class v4, Lcom/findit/battle/InventoryActivity_T;

    invoke-virtual {v3, v4, v6, v0}, Lcom/findit/battle/GameActivity;->movePage(Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 1845
    return-void

    .line 1828
    :cond_0
    const-string v3, "bodyimgid"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1829
    const-string v3, "actionimgid"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1830
    const-string v3, "faceimgid"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1831
    const-string v3, "bodyimgpath"

    .line 1832
    iget-object v4, v2, Lcom/findit/battle/Objects$CharacterData;->mBodyImgPaths:[Ljava/lang/String;

    iget v5, v1, Lcom/findit/battle/Objects$Character;->mBodyNum:I

    aget-object v4, v4, v5

    .line 1831
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    const-string v3, "actionimgpath"

    .line 1835
    iget-object v4, v2, Lcom/findit/battle/Objects$CharacterData;->mNormalActionImgPaths:[Ljava/lang/String;

    iget v5, v1, Lcom/findit/battle/Objects$Character;->mBodyNum:I

    aget-object v4, v4, v5

    .line 1833
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    const-string v3, "faceimgpath"

    .line 1837
    iget-object v4, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-object v4, v4, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v4, v4, Lcom/findit/battle/Objects;->mBodyFaceImgPaths:[Ljava/lang/String;

    iget v5, v1, Lcom/findit/battle/Objects$Character;->mFaceImgnum:I

    aget-object v4, v4, v5

    .line 1836
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public animate()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x41700000    # 15.0f

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 1508
    iget v2, p0, Lcom/findit/battle/GameView$MainMenu;->mTime:I

    packed-switch v2, :pswitch_data_0

    .line 1592
    :cond_0
    :goto_0
    return-void

    .line 1511
    :pswitch_0
    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1512
    iput v5, p0, Lcom/findit/battle/GameView$MainMenu;->mAlpha:I

    .line 1513
    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-object v2, v2, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v2, v2, Lcom/findit/battle/Objects;->mMainMenuButtons:Lcom/findit/battle/Objects$Buttons;

    invoke-virtual {v2, v5}, Lcom/findit/battle/Objects$Buttons;->setAlpha(I)V

    .line 1514
    invoke-virtual {p0, v7}, Lcom/findit/battle/GameView$MainMenu;->setBackboard(Z)V

    .line 1515
    iget v2, p0, Lcom/findit/battle/GameView$MainMenu;->mTime:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/findit/battle/GameView$MainMenu;->mTime:I

    .line 1516
    iput v5, p0, Lcom/findit/battle/GameView$MainMenu;->mTimeCount:I

    goto :goto_0

    .line 1520
    :pswitch_1
    iget v2, p0, Lcom/findit/battle/GameView$MainMenu;->mTimeCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/findit/battle/GameView$MainMenu;->mTimeCount:I

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    iget-object v4, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget v4, v4, Lcom/findit/battle/GameView;->mSpeedRate:F

    div-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 1521
    iget v2, p0, Lcom/findit/battle/GameView$MainMenu;->mTime:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/findit/battle/GameView$MainMenu;->mTime:I

    .line 1522
    iput v5, p0, Lcom/findit/battle/GameView$MainMenu;->mTimeCount:I

    goto :goto_0

    .line 1527
    :pswitch_2
    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    iget-object v3, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget v3, v3, Lcom/findit/battle/GameView;->mSpeedRate:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    add-int v1, v2, v3

    .line 1528
    .local v1, "alpha":I
    iget v2, p0, Lcom/findit/battle/GameView$MainMenu;->mAlpha:I

    iget-object v3, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget v3, v3, Lcom/findit/battle/GameView;->mSpeedRate:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    add-int v1, v2, v3

    .line 1530
    const/16 v2, 0xfa

    if-ge v1, v2, :cond_1

    .line 1531
    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1532
    iput v1, p0, Lcom/findit/battle/GameView$MainMenu;->mAlpha:I

    .line 1533
    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-object v2, v2, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v2, v2, Lcom/findit/battle/Objects;->mMainMenuButtons:Lcom/findit/battle/Objects$Buttons;

    invoke-virtual {v2, v1}, Lcom/findit/battle/Objects$Buttons;->setAlpha(I)V

    goto :goto_0

    .line 1535
    :cond_1
    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1536
    iput v4, p0, Lcom/findit/battle/GameView$MainMenu;->mAlpha:I

    .line 1537
    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-object v2, v2, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v2, v2, Lcom/findit/battle/Objects;->mMainMenuButtons:Lcom/findit/battle/Objects$Buttons;

    invoke-virtual {v2, v4}, Lcom/findit/battle/Objects$Buttons;->setAlpha(I)V

    .line 1540
    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget v2, v2, Lcom/findit/battle/GameView;->mLogin:I

    if-nez v2, :cond_6

    .line 1541
    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-boolean v2, v2, Lcom/findit/battle/GameView;->mAutoLogin:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-object v2, v2, Lcom/findit/battle/GameView;->mEmail:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-object v2, v2, Lcom/findit/battle/GameView;->mPassword:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1542
    :cond_2
    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-object v2, v2, Lcom/findit/battle/GameView;->mPassword:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-object v2, v2, Lcom/findit/battle/GameView;->mPassword:Ljava/lang/String;

    .line 1543
    const-string v3, "facebook"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1544
    :cond_3
    new-instance v0, Lcom/findit/battle/GameView$ActionRunnable;

    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    .line 1545
    const/4 v3, 0x2

    .line 1544
    invoke-direct {v0, v2, v3}, Lcom/findit/battle/GameView$ActionRunnable;-><init>(Lcom/findit/battle/GameView;I)V

    .line 1546
    .local v0, "action":Lcom/findit/battle/GameView$ActionRunnable;
    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v2, v0}, Lcom/findit/battle/GameView;->post(Ljava/lang/Runnable;)Z

    .line 1562
    .end local v0    # "action":Lcom/findit/battle/GameView$ActionRunnable;
    :cond_4
    :goto_1
    invoke-virtual {p0, v5}, Lcom/findit/battle/GameView$MainMenu;->setBackboard(Z)V

    .line 1563
    iput v4, p0, Lcom/findit/battle/GameView$MainMenu;->mTime:I

    goto/16 :goto_0

    .line 1548
    :cond_5
    new-instance v0, Lcom/findit/battle/GameView$ActionRunnable;

    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    .line 1549
    iget-object v3, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v3}, Lcom/findit/battle/GameView;->access$4(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/findit/battle/GameActivity;->mLoginDlg:Landroid/app/Dialog;

    .line 1548
    invoke-direct {v0, v2, v3}, Lcom/findit/battle/GameView$ActionRunnable;-><init>(Lcom/findit/battle/GameView;Landroid/app/Dialog;)V

    .line 1550
    .restart local v0    # "action":Lcom/findit/battle/GameView$ActionRunnable;
    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v2, v0}, Lcom/findit/battle/GameView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1553
    .end local v0    # "action":Lcom/findit/battle/GameView$ActionRunnable;
    :cond_6
    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget v2, v2, Lcom/findit/battle/GameView;->mLogin:I

    if-ne v2, v7, :cond_4

    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-object v2, v2, Lcom/findit/battle/GameView;->mEmail:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 1554
    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-object v2, v2, Lcom/findit/battle/GameView;->mPassword:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 1555
    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iput v5, v2, Lcom/findit/battle/GameView;->mLogin:I

    .line 1557
    new-instance v0, Lcom/findit/battle/GameView$ActionRunnable;

    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    .line 1558
    iget-object v3, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v3}, Lcom/findit/battle/GameView;->access$4(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/findit/battle/GameActivity;->mLoginDlg:Landroid/app/Dialog;

    .line 1557
    invoke-direct {v0, v2, v3}, Lcom/findit/battle/GameView$ActionRunnable;-><init>(Lcom/findit/battle/GameView;Landroid/app/Dialog;)V

    .line 1559
    .restart local v0    # "action":Lcom/findit/battle/GameView$ActionRunnable;
    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v2, v0}, Lcom/findit/battle/GameView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1569
    .end local v0    # "action":Lcom/findit/battle/GameView$ActionRunnable;
    .end local v1    # "alpha":I
    :pswitch_3
    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-object v2, v2, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v2, v2, Lcom/findit/battle/Objects;->mMainMenuButtons:Lcom/findit/battle/Objects$Buttons;

    const/16 v3, 0xf5

    invoke-virtual {v2, v3}, Lcom/findit/battle/Objects$Buttons;->setAlpha(I)V

    .line 1570
    iget v2, p0, Lcom/findit/battle/GameView$MainMenu;->mTime:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/findit/battle/GameView$MainMenu;->mTime:I

    goto/16 :goto_0

    .line 1574
    :pswitch_4
    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-object v2, v2, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v2, v2, Lcom/findit/battle/Objects;->mMainMenuButtons:Lcom/findit/battle/Objects$Buttons;

    iget-object v2, v2, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/findit/battle/Objects$Button;->mPaint:Landroid/graphics/Paint;

    .line 1575
    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    iget-object v3, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget v3, v3, Lcom/findit/battle/GameView;->mSpeedRate:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    .line 1574
    sub-int v1, v2, v3

    .line 1577
    .restart local v1    # "alpha":I
    if-lez v1, :cond_7

    .line 1578
    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-object v2, v2, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v2, v2, Lcom/findit/battle/Objects;->mMainMenuButtons:Lcom/findit/battle/Objects$Buttons;

    invoke-virtual {v2, v1}, Lcom/findit/battle/Objects$Buttons;->setAlpha(I)V

    goto/16 :goto_0

    .line 1580
    :cond_7
    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-object v2, v2, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v2, v2, Lcom/findit/battle/Objects;->mMainMenuButtons:Lcom/findit/battle/Objects$Buttons;

    invoke-virtual {v2, v4}, Lcom/findit/battle/Objects$Buttons;->setAlpha(I)V

    .line 1582
    iget v2, p0, Lcom/findit/battle/GameView$MainMenu;->mTime:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/findit/battle/GameView$MainMenu;->mTime:I

    goto/16 :goto_0

    .line 1587
    .end local v1    # "alpha":I
    :pswitch_5
    invoke-virtual {p0}, Lcom/findit/battle/GameView$MainMenu;->resultAction()V

    .line 1589
    iput v4, p0, Lcom/findit/battle/GameView$MainMenu;->mTime:I

    goto/16 :goto_0

    .line 1508
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public doDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1666
    invoke-virtual {p0}, Lcom/findit/battle/GameView$MainMenu;->isBackboard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1667
    iget-object v0, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v0}, Lcom/findit/battle/GameView;->access$5(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameView$Opening;

    move-result-object v0

    iget v0, v0, Lcom/findit/battle/GameView$Opening;->mBgColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1674
    :cond_0
    iget-object v0, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v0}, Lcom/findit/battle/GameView;->access$6(Lcom/findit/battle/GameView;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1675
    iget-object v0, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v0}, Lcom/findit/battle/GameView;->access$6(Lcom/findit/battle/GameView;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iget v1, p0, Lcom/findit/battle/GameView$MainMenu;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1676
    iget-object v0, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v0}, Lcom/findit/battle/GameView;->access$6(Lcom/findit/battle/GameView;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1678
    iget-object v0, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v0, v0, Lcom/findit/battle/Objects;->mMainMenuButtons:Lcom/findit/battle/Objects$Buttons;

    invoke-virtual {v0, p1}, Lcom/findit/battle/Objects$Buttons;->doDraw(Landroid/graphics/Canvas;)V

    .line 1680
    :cond_1
    return-void
.end method

.method public isBackboard()Z
    .locals 1

    .prologue
    .line 1683
    iget-boolean v0, p0, Lcom/findit/battle/GameView$MainMenu;->mBackboard:Z

    return v0
.end method

.method public loadImage(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1488
    const-string v0, ">> loadImage()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1496
    iget-object v0, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v0, v0, Lcom/findit/battle/Objects;->mMainMenuButtons:Lcom/findit/battle/Objects$Buttons;

    invoke-virtual {v0, p1}, Lcom/findit/battle/Objects$Buttons;->loadImage(Landroid/content/Context;)V

    .line 1497
    return-void
.end method

.method public recycleImageInButton()V
    .locals 1

    .prologue
    .line 1500
    const-string v0, ">> recycleImageInButton()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1501
    iget-object v0, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v0, v0, Lcom/findit/battle/Objects;->mMainMenuButtons:Lcom/findit/battle/Objects$Buttons;

    invoke-virtual {v0}, Lcom/findit/battle/Objects$Buttons;->recycleImageInButton()V

    .line 1502
    return-void
.end method

.method public resultAction()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 1595
    const-string v2, ">> resultAction()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1599
    iget v2, p0, Lcom/findit/battle/GameView$MainMenu;->mResult:I

    packed-switch v2, :pswitch_data_0

    .line 1662
    :goto_0
    return-void

    .line 1601
    :pswitch_0
    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget v2, v2, Lcom/findit/battle/GameView;->mLogin:I

    if-ne v2, v4, :cond_0

    .line 1602
    new-instance v0, Lcom/findit/battle/GameView$ActionRunnable;

    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    .line 1603
    const/4 v3, 0x4

    .line 1604
    new-array v4, v4, [I

    .line 1605
    const/4 v5, 0x0

    .line 1602
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/findit/battle/GameView$ActionRunnable;-><init>(Lcom/findit/battle/GameView;I[I[J)V

    .line 1606
    .local v0, "action":Lcom/findit/battle/GameView$ActionRunnable;
    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v2, v0}, Lcom/findit/battle/GameView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1608
    .end local v0    # "action":Lcom/findit/battle/GameView$ActionRunnable;
    :cond_0
    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    const-string v3, ""

    .line 1609
    const/4 v4, 0x2

    .line 1608
    invoke-virtual {v2, v3, v4}, Lcom/findit/battle/GameView;->enterBattleRoom(Ljava/lang/String;I)V

    goto :goto_0

    .line 1617
    :pswitch_1
    invoke-direct {p0}, Lcom/findit/battle/GameView$MainMenu;->gotoInventoryGoogle()V

    goto :goto_0

    .line 1623
    :pswitch_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1624
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "url"

    .line 1625
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://14.63.220.39/app/member/rankList?userId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    iget-object v4, v4, Lcom/findit/battle/GameView;->mEmail:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1624
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v2}, Lcom/findit/battle/GameView;->access$4(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameActivity;

    move-result-object v2

    const-class v3, Lcom/findit/battle/RankActivity;

    invoke-virtual {v2, v3, v1}, Lcom/findit/battle/GameActivity;->movePage(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1644
    .end local v1    # "bundle":Landroid/os/Bundle;
    :pswitch_3
    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v2}, Lcom/findit/battle/GameView;->access$4(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameActivity;

    move-result-object v2

    const-class v3, Lcom/findit/battle/SetupActivity;

    invoke-virtual {v2, v3}, Lcom/findit/battle/GameActivity;->movePage(Ljava/lang/Class;)V

    goto :goto_0

    .line 1648
    :pswitch_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1649
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string v2, "url"

    .line 1650
    const-string v3, "http://14.63.220.39/app/member/notice.json"

    .line 1649
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v2}, Lcom/findit/battle/GameView;->access$4(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameActivity;

    move-result-object v2

    const-class v3, Lcom/findit/battle/NoticeActivity;

    invoke-virtual {v2, v3, v1}, Lcom/findit/battle/GameActivity;->movePage(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1655
    .end local v1    # "bundle":Landroid/os/Bundle;
    :pswitch_5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1656
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string v2, "url"

    .line 1657
    const-string v3, "http://www.facebook.com/finditbattle"

    .line 1656
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    iget-object v2, p0, Lcom/findit/battle/GameView$MainMenu;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v2}, Lcom/findit/battle/GameView;->access$4(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameActivity;

    move-result-object v2

    const-class v3, Lcom/findit/battle/NoticeActivity;

    invoke-virtual {v2, v3, v1}, Lcom/findit/battle/GameActivity;->movePage(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1599
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setBackboard(Z)V
    .locals 1
    .param p1, "bBackboard"    # Z

    .prologue
    .line 1687
    const-string v0, ">> setBackboard()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1688
    iput-boolean p1, p0, Lcom/findit/battle/GameView$MainMenu;->mBackboard:Z

    .line 1689
    if-nez p1, :cond_0

    .line 1690
    const/4 p1, 0x0

    .line 1692
    :cond_0
    return-void
.end method
