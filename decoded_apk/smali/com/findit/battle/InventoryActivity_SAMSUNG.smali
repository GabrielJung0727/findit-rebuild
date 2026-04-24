.class public Lcom/findit/battle/InventoryActivity_SAMSUNG;
.super Lcom/feelingk/iap/IAPActivity;
.source "InventoryActivity_SAMSUNG.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/findit/battle/InventoryActivity_SAMSUNG$ActionRunnable;,
        Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;,
        Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyListAdapter;,
        Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;
    }
.end annotation


# static fields
.field private static final ANIMAION_DOWN:I = 0x0

.field private static final ANIMAION_SCALE:I = 0x2

.field private static final ANIMAION_UP:I = 0x1

.field private static final APP_ID:Ljava/lang/String; = "OA00316527"

.field private static final BERRYSLOT_RECT:I = 0x2

.field private static final CHARACTER_FILENAME:Ljava/lang/String; = "/CharacterImage"

.field private static final ITEM_ID_COIN1000:Ljava/lang/String; = "0900744574"

.field private static final ITEM_ID_COIN2500:Ljava/lang/String; = "0900744605"

.field private static final ITEM_ID_COIN5500:Ljava/lang/String; = "0900744606"

.field private static final ITEM_ID_COIN8500:Ljava/lang/String; = "0900744607"

.field private static final JSON_NAME_RESULT:Ljava/lang/String; = "result"

.field private static final JSON_VALUE_RESULT_PASS:Ljava/lang/String; = "000"

.field public static final KEY_ACTIONIMGID:Ljava/lang/String; = "actionimgid"

.field public static final KEY_ACTIONIMGPATH:Ljava/lang/String; = "actionimgpath"

.field public static final KEY_BODYIMGID:Ljava/lang/String; = "bodyimgid"

.field public static final KEY_BODYIMGPATH:Ljava/lang/String; = "bodyimgpath"

.field public static final KEY_COIN:Ljava/lang/String; = "coin"

.field public static final KEY_DISPLAYHEIGHT:Ljava/lang/String; = "displayheight"

.field public static final KEY_DISPLAYWIDTH:Ljava/lang/String; = "displaywidth"

.field public static final KEY_FACEIMGID:Ljava/lang/String; = "faceimgid"

.field public static final KEY_FACEIMGPATH:Ljava/lang/String; = "faceimgpath"

.field public static final KEY_LEVEL:Ljava/lang/String; = "level"

.field public static final KEY_LOGIN:Ljava/lang/String; = "login"

.field public static final KEY_POINT:Ljava/lang/String; = "point"

.field public static final KEY_SCORE:Ljava/lang/String; = "score"

.field public static final KEY_SOUNDON:Ljava/lang/String; = "soundon"

.field private static final MENUSLOTWINDOW_COLUM:I = 0x3

.field private static final MENUSLOTWINDOW_ROW:I = 0x2

.field private static final PARAMETER_COIN:Ljava/lang/String; = "coin"

.field private static final PARAMETER_ID:Ljava/lang/String; = "userId"

.field private static final PARAMETER_ITMENO:Ljava/lang/String; = "itemNo"

.field private static final PARAMETER_POINT:Ljava/lang/String; = "point"

.field private static final PARAMETER_QUANTITY:Ljava/lang/String; = "quantity"

.field private static final PARAMETER_SKILLID:Ljava/lang/String; = "skillId"

.field private static final PENSLOT_RECT:I = 0x0

.field private static final POTIONSLOT_RECT:I = 0x3

.field private static final REQUEST_ALBUM:I = 0xc8

.field private static final REQUEST_CAMERA:I = 0x64

.field public static final REQUEST_CROP:I = 0x12c

.field private static final RINGSLOT_RECT:I = 0x1

.field private static final SERVER_DOMAIN:Ljava/lang/String; = "http://14.63.220.39/"

.field private static final SERVER_FILE_ADDCOIN:Ljava/lang/String; = "app/member/addCoin.json"

.field private static final SERVER_FILE_BUYITEM:Ljava/lang/String; = "app/member/buyItemAndSpendCoin.json"

.field private static final SERVER_FILE_LEARNSKILL:Ljava/lang/String; = "app/member/buySkillAndSpendPoint.json"

.field private static final SERVER_FILE_SPENDCOIN:Ljava/lang/String; = "app/member/spendCoin.json"

.field private static final SLOTIMAGE_ALPHA:I = 0xdc

.field private static final SLOTWINDOW_COLUM:I = 0x5

.field private static final SLOTWINDOW_ROW:I = 0x3

.field public static final SOUND_SHOPPAGE:I = 0x0

.field private static final SOUND_VOLUME:F = 0.5f

.field private static final TAB_ACTIVE:I = 0x0

.field private static final TAB_INACTIVE:I = 0x1

.field private static final TAB_ITEM:I = 0x0

.field private static final TAB_SHOP:I = 0x1

.field private static final TAB_SKILL:I = 0x2


# instance fields
.field private mActionImg:Landroid/graphics/drawable/Drawable;

.field mActionImgId:I

.field mActionImgPath:Ljava/lang/String;

.field private mAnimation:[Landroid/view/animation/Animation;

.field private mAttack:I

.field private mAttackTextView:Landroid/widget/TextView;

.field private mBodyImg:Landroid/graphics/drawable/Drawable;

.field mBodyImgId:I

.field mBodyImgPath:Ljava/lang/String;

.field private mBuyItemDlg:Landroid/app/Dialog;

.field private mBuyItemImageView:Landroid/widget/ImageView;

.field private mBuyItemText:Ljava/lang/String;

.field private mBuyItemText1:Ljava/lang/String;

.field private mBuyItemTextView:Landroid/widget/TextView;

.field private mBuyListDlg:Landroid/app/Dialog;

.field private mBuyListTitleText:Ljava/lang/String;

.field private mBuyListTitleTextView:Landroid/widget/TextView;

.field private mBuyListView:Landroid/widget/ListView;

.field public mBuyResultHandler:Landroid/os/Handler;

.field private mCharacterImageView:Landroid/widget/ImageView;

.field mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

.field private mCoin:J

.field private mCoinNumTextView:Landroid/widget/TextView;

.field public mCoinResultHandler:Landroid/os/Handler;

.field private mCommonDialog:Lcom/findit/battle/CommonDialog;

.field private mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

.field private mCoverImg:Landroid/graphics/drawable/Drawable;

.field private mCutImagePath:Ljava/lang/String;

.field private mDbhelper:Lcom/findit/battle/DBAdapter;

.field private mDefense:I

.field private mDefenseTextView:Landroid/widget/TextView;

.field private mDeleteItemDlg:Landroid/app/Dialog;

.field private mDeleteItemImageView:Landroid/widget/ImageView;

.field private mExplainTextView:Landroid/widget/TextView;

.field private mFaceImg:Landroid/graphics/drawable/Drawable;

.field mFaceImgId:I

.field mFaceImgPath:Ljava/lang/String;

.field private mFirstTouchX:F

.field private mFirstTouchY:F

.field private mHeightRate:F

.field private mItemLayout:Landroid/widget/RelativeLayout;

.field private mItemTabButton:Landroid/widget/Button;

.field private mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

.field private mItems:Lcom/findit/battle/Items;

.field public mLearnResultHandler:Landroid/os/Handler;

.field private mLearnSkillDlg:Landroid/app/Dialog;

.field private mLearnSkillImageView:Landroid/widget/ImageView;

.field private mLearnSkillText:Ljava/lang/String;

.field private mLearnSkillTextView:Landroid/widget/TextView;

.field private mLevel:I

.field private mLevelScoreTable:[I

.field private mLevelTextView:Landroid/widget/TextView;

.field private mLoadingView:Z

.field private mMoveItemView:Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;

.field private mMoveStandard:F

.field private mPoint:I

.field private mPurchaseId:Ljava/lang/String;

.field private mPurchaseItemKey:[Ljava/lang/String;

.field private mPurchaseItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/findit/battle/Items$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mScore:J

.field private mScoreTextView:Landroid/widget/TextView;

.field private mSetItemTypeTable:[I

.field private mSetSlotsLayout:[Landroid/widget/RelativeLayout;

.field private mShopCoinNumTextView:Landroid/widget/TextView;

.field private mShopExplainTextView:Landroid/widget/TextView;

.field private mShopItemSlotNum:I

.field private mShopItemSlotWindowNum:I

.field private mShopItemSlotWindowTotalNum:I

.field private mShopItemSlotWindowWidth:I

.field private mShopItemSlotsLayout:[Landroid/widget/RelativeLayout;

.field private mShopItemSlotsScrollView:Landroid/widget/HorizontalScrollView;

.field private mShopItemTypeSlotNum:I

.field private mShopLayout:Landroid/widget/RelativeLayout;

.field private mShopLevelTextView:Landroid/widget/TextView;

.field private mShopScoreTextView:Landroid/widget/TextView;

.field private mShopSlotsLayout:[Landroid/widget/RelativeLayout;

.field private mShopTabButton:Landroid/widget/Button;

.field private mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

.field private mSkillExplainTextView:Landroid/widget/TextView;

.field private mSkillLayout:Landroid/widget/RelativeLayout;

.field private mSkillPointNumTextView:Landroid/widget/TextView;

.field private mSkillSlotNum:I

.field private mSkillSlotWindowNum:I

.field private mSkillSlotWindowTotalNum:I

.field private mSkillSlotWindowWidth:I

.field private mSkillSlotsLayout:[Landroid/widget/RelativeLayout;

.field private mSkillSlotsScrollView:Landroid/widget/HorizontalScrollView;

.field private mSkillTabButton:Landroid/widget/Button;

.field private mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

.field private mSkills:Lcom/findit/battle/Objects$Skills;

.field private mSlotNum:I

.field private mSlotWindowNum:I

.field private mSlotWindowTotalNum:I

.field private mSlotWindowWidth:I

.field private mSlotWindowX:I

.field private mSlotWindowY:I

.field private mSlotsLayout:[Landroid/widget/RelativeLayout;

.field private mSlotsScrollView:Landroid/widget/HorizontalScrollView;

.field public mSoundPoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundon:Z

.field public mSoundpool:Landroid/media/SoundPool;

.field private mTabNum:I

.field private mUserId:Ljava/lang/String;

.field private mWidthRate:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;-><init>()V

    .line 155
    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSoundPoolMap:Ljava/util/HashMap;

    .line 156
    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSoundpool:Landroid/media/SoundPool;

    .line 2973
    new-instance v0, Lcom/findit/battle/InventoryActivity_SAMSUNG$1;

    invoke-direct {v0, p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG$1;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    .line 3057
    new-instance v0, Lcom/findit/battle/InventoryActivity_SAMSUNG$2;

    invoke-direct {v0, p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG$2;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mBuyResultHandler:Landroid/os/Handler;

    .line 3119
    new-instance v0, Lcom/findit/battle/InventoryActivity_SAMSUNG$3;

    invoke-direct {v0, p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG$3;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mLearnResultHandler:Landroid/os/Handler;

    .line 3161
    new-instance v0, Lcom/findit/battle/InventoryActivity_SAMSUNG$4;

    invoke-direct {v0, p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG$4;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mCoinResultHandler:Landroid/os/Handler;

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mPurchaseItemMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mPurchaseId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/findit/battle/InventoryActivity_SAMSUNG;ILcom/findit/battle/Items$Item;)I
    .locals 1

    .prologue
    .line 1832
    invoke-direct {p0, p1, p2}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setItemSetSlot(ILcom/findit/battle/Items$Item;)I

    move-result v0

    return v0
.end method

.method static synthetic access$11(Lcom/findit/battle/InventoryActivity_SAMSUNG;ILcom/findit/battle/Items$Item;)V
    .locals 0

    .prologue
    .line 1767
    invoke-direct {p0, p1, p2}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setItemSlot(ILcom/findit/battle/Items$Item;)V

    return-void
.end method

.method static synthetic access$12(Lcom/findit/battle/InventoryActivity_SAMSUNG;)[Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillSlotsLayout:[Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$13(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Lcom/findit/battle/Objects$Skills;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkills:Lcom/findit/battle/Objects$Skills;

    return-object v0
.end method

.method static synthetic access$14(Lcom/findit/battle/InventoryActivity_SAMSUNG;)I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mPoint:I

    return v0
.end method

.method static synthetic access$15(Lcom/findit/battle/InventoryActivity_SAMSUNG;I)V
    .locals 0

    .prologue
    .line 168
    iput p1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mPoint:I

    return-void
.end method

.method static synthetic access$16(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillPointNumTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/findit/battle/InventoryActivity_SAMSUNG;I)V
    .locals 0

    .prologue
    .line 1893
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setSkillSlot(I)V

    return-void
.end method

.method static synthetic access$18(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Landroid/widget/HorizontalScrollView;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSlotsScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$19(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V
    .locals 0

    .prologue
    .line 953
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setItemTab()V

    return-void
.end method

.method static synthetic access$2(Lcom/findit/battle/InventoryActivity_SAMSUNG;Lcom/findit/battle/Items$Item;)V
    .locals 0

    .prologue
    .line 2740
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->applyPurchaseItem(Lcom/findit/battle/Items$Item;)V

    return-void
.end method

.method static synthetic access$20(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V
    .locals 0

    .prologue
    .line 968
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setShopTab()V

    return-void
.end method

.method static synthetic access$21(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V
    .locals 0

    .prologue
    .line 983
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setSkillTab()V

    return-void
.end method

.method static synthetic access$22(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mMoveItemView:Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;

    return-object v0
.end method

.method static synthetic access$23(Lcom/findit/battle/InventoryActivity_SAMSUNG;)I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSlotWindowX:I

    return v0
.end method

.method static synthetic access$24(Lcom/findit/battle/InventoryActivity_SAMSUNG;)I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSlotWindowY:I

    return v0
.end method

.method static synthetic access$25(Lcom/findit/battle/InventoryActivity_SAMSUNG;IZ)V
    .locals 0

    .prologue
    .line 2026
    invoke-direct {p0, p1, p2}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setSlotImageAlpha(IZ)V

    return-void
.end method

.method static synthetic access$26(Lcom/findit/battle/InventoryActivity_SAMSUNG;IIIII)Z
    .locals 1

    .prologue
    .line 1710
    invoke-direct/range {p0 .. p5}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->changeSetItemSlots(IIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$27(Lcom/findit/battle/InventoryActivity_SAMSUNG;I)V
    .locals 0

    .prologue
    .line 2657
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setDeleteItem(I)V

    return-void
.end method

.method static synthetic access$28(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mDeleteItemDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$29(Lcom/findit/battle/InventoryActivity_SAMSUNG;IIIII)V
    .locals 0

    .prologue
    .line 1658
    invoke-direct/range {p0 .. p5}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->changeItemSlots(IIIII)V

    return-void
.end method

.method static synthetic access$3(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Lcom/findit/battle/CommonDialog;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mCommonDialog:Lcom/findit/battle/CommonDialog;

    return-object v0
.end method

.method static synthetic access$30(Lcom/findit/battle/InventoryActivity_SAMSUNG;IIII)V
    .locals 0

    .prologue
    .line 2180
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setFirstTouch(IIII)V

    return-void
.end method

.method static synthetic access$31(Lcom/findit/battle/InventoryActivity_SAMSUNG;IIII)Z
    .locals 1

    .prologue
    .line 2163
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->isActionMove(IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$32(Lcom/findit/battle/InventoryActivity_SAMSUNG;)I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSlotNum:I

    return v0
.end method

.method static synthetic access$33(Lcom/findit/battle/InventoryActivity_SAMSUNG;)[Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSlotsLayout:[Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$34(Lcom/findit/battle/InventoryActivity_SAMSUNG;I)V
    .locals 0

    .prologue
    .line 170
    iput p1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSlotNum:I

    return-void
.end method

.method static synthetic access$35(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V
    .locals 0

    .prologue
    .line 1969
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setItemText()V

    return-void
.end method

.method static synthetic access$36(Lcom/findit/battle/InventoryActivity_SAMSUNG;I)V
    .locals 0

    .prologue
    .line 2051
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setMoveItemImage(I)V

    return-void
.end method

.method static synthetic access$37(Lcom/findit/battle/InventoryActivity_SAMSUNG;)I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSlotWindowNum:I

    return v0
.end method

.method static synthetic access$38(Lcom/findit/battle/InventoryActivity_SAMSUNG;I)V
    .locals 0

    .prologue
    .line 1020
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setItemSlotWindowLocation(I)V

    return-void
.end method

.method static synthetic access$39(Lcom/findit/battle/InventoryActivity_SAMSUNG;)[Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopSlotsLayout:[Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    return-object v0
.end method

.method static synthetic access$40(Lcom/findit/battle/InventoryActivity_SAMSUNG;)I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopItemTypeSlotNum:I

    return v0
.end method

.method static synthetic access$41(Lcom/findit/battle/InventoryActivity_SAMSUNG;I)V
    .locals 0

    .prologue
    .line 1940
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->clearShopSlot(I)V

    return-void
.end method

.method static synthetic access$42(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopExplainTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$43(Lcom/findit/battle/InventoryActivity_SAMSUNG;II)V
    .locals 0

    .prologue
    .line 1916
    invoke-direct {p0, p1, p2}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setShopSlot(II)V

    return-void
.end method

.method static synthetic access$44(Lcom/findit/battle/InventoryActivity_SAMSUNG;I)V
    .locals 0

    .prologue
    .line 171
    iput p1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopItemTypeSlotNum:I

    return-void
.end method

.method static synthetic access$45(Lcom/findit/battle/InventoryActivity_SAMSUNG;Landroid/widget/RelativeLayout;I)V
    .locals 0

    .prologue
    .line 2012
    invoke-direct {p0, p1, p2}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->selectShopItemSlot(Landroid/widget/RelativeLayout;I)V

    return-void
.end method

.method static synthetic access$46(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mBuyListTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$47(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$48(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mBuyListTitleText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$49(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V
    .locals 0

    .prologue
    .line 2708
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->fillBuyListData()V

    return-void
.end method

.method static synthetic access$5(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Lcom/findit/battle/Items;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    return-object v0
.end method

.method static synthetic access$50(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mBuyListDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$51(Lcom/findit/battle/InventoryActivity_SAMSUNG;)I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopItemSlotNum:I

    return v0
.end method

.method static synthetic access$52(Lcom/findit/battle/InventoryActivity_SAMSUNG;IIZ)V
    .locals 0

    .prologue
    .line 2670
    invoke-direct {p0, p1, p2, p3}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setBuyItem(IIZ)V

    return-void
.end method

.method static synthetic access$53(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mBuyItemDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$54(Lcom/findit/battle/InventoryActivity_SAMSUNG;)I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopItemSlotWindowNum:I

    return v0
.end method

.method static synthetic access$55(Lcom/findit/battle/InventoryActivity_SAMSUNG;I)V
    .locals 0

    .prologue
    .line 1034
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setShopItemSlotWindowLocation(I)V

    return-void
.end method

.method static synthetic access$56(Lcom/findit/battle/InventoryActivity_SAMSUNG;)I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillSlotNum:I

    return v0
.end method

.method static synthetic access$57(Lcom/findit/battle/InventoryActivity_SAMSUNG;I)V
    .locals 0

    .prologue
    .line 172
    iput p1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillSlotNum:I

    return-void
.end method

.method static synthetic access$58(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V
    .locals 0

    .prologue
    .line 1998
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setSkillText()V

    return-void
.end method

.method static synthetic access$59(Lcom/findit/battle/InventoryActivity_SAMSUNG;)I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillSlotWindowNum:I

    return v0
.end method

.method static synthetic access$6(Lcom/findit/battle/InventoryActivity_SAMSUNG;)[Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopItemSlotsLayout:[Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$60(Lcom/findit/battle/InventoryActivity_SAMSUNG;I)V
    .locals 0

    .prologue
    .line 1027
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setSkillSlotWindowLocation(I)V

    return-void
.end method

.method static synthetic access$61(Lcom/findit/battle/InventoryActivity_SAMSUNG;I)V
    .locals 0

    .prologue
    .line 2685
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setLearnSkill(I)V

    return-void
.end method

.method static synthetic access$62(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mLearnSkillDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$63(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mDeleteItemImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$64(Lcom/findit/battle/InventoryActivity_SAMSUNG;II)V
    .locals 0

    .prologue
    .line 1736
    invoke-direct {p0, p1, p2}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setItemSlot(II)V

    return-void
.end method

.method static synthetic access$65(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mBuyItemImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$66(Lcom/findit/battle/InventoryActivity_SAMSUNG;Lcom/findit/battle/Items$Item;)V
    .locals 0

    .prologue
    .line 2957
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->purchaseItem(Lcom/findit/battle/Items$Item;)V

    return-void
.end method

.method static synthetic access$67(Lcom/findit/battle/InventoryActivity_SAMSUNG;)J
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mCoin:J

    return-wide v0
.end method

.method static synthetic access$68(Lcom/findit/battle/InventoryActivity_SAMSUNG;Lcom/findit/battle/Items$Item;)V
    .locals 0

    .prologue
    .line 2586
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->sendBuyItem(Lcom/findit/battle/Items$Item;)V

    return-void
.end method

.method static synthetic access$69(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mLearnSkillImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/findit/battle/InventoryActivity_SAMSUNG;)[Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mAnimation:[Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$70(Lcom/findit/battle/InventoryActivity_SAMSUNG;I)V
    .locals 0

    .prologue
    .line 2608
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->sendLearnSkill(I)V

    return-void
.end method

.method static synthetic access$8(Lcom/findit/battle/InventoryActivity_SAMSUNG;Lcom/findit/battle/Items$Item;)Z
    .locals 1

    .prologue
    .line 1864
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setItemSlot(Lcom/findit/battle/Items$Item;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9(Lcom/findit/battle/InventoryActivity_SAMSUNG;I)V
    .locals 0

    .prologue
    .line 2699
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->calculateCoin(I)V

    return-void
.end method

.method private applyPurchaseItem(Lcom/findit/battle/Items$Item;)V
    .locals 2
    .param p1, "item"    # Lcom/findit/battle/Items$Item;

    .prologue
    .line 2741
    iget v0, p1, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 2743
    :cond_0
    iget v0, p1, Lcom/findit/battle/Items$Item;->mPower:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->sendAddCoin(J)V

    .line 2749
    :cond_1
    return-void
.end method

.method private calculateCoin(I)V
    .locals 6
    .param p1, "price"    # I

    .prologue
    .line 2700
    iget-wide v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mCoin:J

    int-to-long v4, p1

    sub-long v0, v2, v4

    .line 2702
    .local v0, "coin":J
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mCoinNumTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2703
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopCoinNumTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2704
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "calculateScore: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 2705
    iput-wide v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mCoin:J

    .line 2706
    return-void
.end method

.method private changeItemSlots(IIIII)V
    .locals 12
    .param p1, "touchx"    # I
    .param p2, "touchy"    # I
    .param p3, "standardx"    # I
    .param p4, "standardy"    # I
    .param p5, "index"    # I

    .prologue
    .line 1659
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v1, v1, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v8, v1, p5

    .line 1661
    .local v8, "item":Lcom/findit/battle/Items$Item;
    iget v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSlotWindowNum:I

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mMoveItemView:Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;

    iget v2, v2, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mWindowNum:I

    mul-int v9, v1, v2

    .line 1662
    .local v9, "min":I
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mMoveItemView:Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;

    iget v6, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSlotWindowNum:I

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->touchTile(IIIII)I

    move-result v10

    .line 1663
    .local v10, "slotnum":I
    if-lt v10, v9, :cond_0

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mMoveItemView:Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;

    iget v1, v1, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mWindowNum:I

    add-int/2addr v1, v9

    if-ge v10, v1, :cond_0

    .line 1664
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    invoke-virtual {v1, v10}, Lcom/findit/battle/Items;->getIndex(I)I

    move-result v7

    .line 1665
    .local v7, "index1":I
    if-gez v7, :cond_2

    .line 1667
    iget v11, v8, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 1668
    .local v11, "slotnum1":I
    if-gez v11, :cond_1

    .line 1670
    iget v1, v8, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setItemSetSlot(II)I

    .line 1676
    :goto_0
    move/from16 v0, p5

    invoke-direct {p0, v10, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setItemSlot(II)V

    .line 1678
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "changeItemSlots move slotnum: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 1706
    .end local v7    # "index1":I
    .end local v11    # "slotnum1":I
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setItemText()V

    .line 1707
    return-void

    .line 1674
    .restart local v7    # "index1":I
    .restart local v11    # "slotnum1":I
    :cond_1
    const/4 v1, -0x1

    invoke-direct {p0, v11, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setItemSlot(II)V

    goto :goto_0

    .line 1682
    .end local v11    # "slotnum1":I
    :cond_2
    iget v11, v8, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 1683
    .restart local v11    # "slotnum1":I
    if-gez v11, :cond_4

    .line 1685
    iget v1, v8, Lcom/findit/battle/Items$Item;->mType:I

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v2, v2, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/findit/battle/Items$Item;->mType:I

    if-ne v1, v2, :cond_3

    .line 1687
    iget v1, v8, Lcom/findit/battle/Items$Item;->mType:I

    invoke-direct {p0, v1, v7}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setItemSetSlot(II)I

    .line 1688
    move/from16 v0, p5

    invoke-direct {p0, v10, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setItemSlot(II)V

    .line 1701
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "changeItemSlots change slotnum: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 1692
    :cond_3
    iget v1, v8, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setItemSetSlot(II)I

    .line 1693
    invoke-direct {p0, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setItemSlot(Lcom/findit/battle/Items$Item;)Z

    goto :goto_2

    .line 1698
    :cond_4
    invoke-direct {p0, v11, v7}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setItemSlot(II)V

    .line 1699
    move/from16 v0, p5

    invoke-direct {p0, v10, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setItemSlot(II)V

    goto :goto_2
.end method

.method private changeSetItemSlots(IIIII)Z
    .locals 7
    .param p1, "touchx"    # I
    .param p2, "touchy"    # I
    .param p3, "standardx"    # I
    .param p4, "standardy"    # I
    .param p5, "index"    # I

    .prologue
    const/4 v6, -0x1

    .line 1711
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSetItemTypeTable:[I

    .line 1712
    .local v3, "typetable":[I
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v4, v4, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v4, p5

    .line 1714
    .local v1, "item":Lcom/findit/battle/Items$Item;
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mMoveItemView:Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->touchRect(IIII)I

    move-result v2

    .line 1715
    .local v2, "slotnum":I
    if-le v2, v6, :cond_2

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 1716
    iget v4, v1, Lcom/findit/battle/Items$Item;->mType:I

    if-ne v2, v4, :cond_0

    .line 1717
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget v5, v1, Lcom/findit/battle/Items$Item;->mType:I

    invoke-virtual {v4, v5}, Lcom/findit/battle/Items;->getSetIndex(I)I

    move-result v0

    .line 1718
    .local v0, "index1":I
    if-gez v0, :cond_1

    .line 1720
    iget v4, v1, Lcom/findit/battle/Items$Item;->mType:I

    invoke-direct {p0, v4, p5}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setItemSetSlot(II)I

    move-result v4

    invoke-direct {p0, v4, v6}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setItemSlot(II)V

    .line 1730
    .end local v0    # "index1":I
    :cond_0
    :goto_0
    const/4 v4, 0x1

    .line 1733
    :goto_1
    return v4

    .line 1725
    .restart local v0    # "index1":I
    :cond_1
    iget v4, v1, Lcom/findit/battle/Items$Item;->mType:I

    invoke-direct {p0, v4, p5}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setItemSetSlot(II)I

    move-result v4

    invoke-direct {p0, v4, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setItemSlot(II)V

    goto :goto_0

    .line 1733
    .end local v0    # "index1":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private clearShopSlot(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 1941
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopItemSlotsLayout:[Landroid/widget/RelativeLayout;

    aget-object v1, v3, p1

    .line 1942
    .local v1, "slotslayout":Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1943
    .local v0, "imageview":Landroid/widget/ImageView;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1946
    .local v2, "textview":Landroid/widget/TextView;
    invoke-direct {p0, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->recycleView(Landroid/view/View;)V

    .line 1947
    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1948
    return-void
.end method

.method private compressBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2239
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2240
    .local v0, "bytearray":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2241
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2243
    .local v1, "in":Ljava/io/ByteArrayInputStream;
    const-string v2, "img"

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method private createBuyItemDlg()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 2420
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2421
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 2422
    .local v2, "window":Landroid/view/Window;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 2423
    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 2424
    const v3, 0x7f020193

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 2426
    const v3, 0x7f030003

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 2428
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090044

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mBuyItemText:Ljava/lang/String;

    .line 2429
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090045

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mBuyItemText1:Ljava/lang/String;

    .line 2430
    const v3, 0x7f0b0008

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mBuyItemTextView:Landroid/widget/TextView;

    .line 2431
    const v3, 0x7f0b0007

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mBuyItemImageView:Landroid/widget/ImageView;

    .line 2434
    const v3, 0x7f0b0009

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2435
    .local v0, "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/InventoryActivity_SAMSUNG$27;

    invoke-direct {v3, p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG$27;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2495
    const v3, 0x7f0b000a

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 2496
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/InventoryActivity_SAMSUNG$28;

    invoke-direct {v3, p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG$28;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2503
    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mBuyItemDlg:Landroid/app/Dialog;

    .line 2504
    return-void
.end method

.method private createBuyListDlg()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 2564
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2565
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 2566
    .local v2, "window":Landroid/view/Window;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 2567
    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 2568
    const v3, 0x7f020193

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 2570
    const/high16 v3, 0x7f030000

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 2572
    const/high16 v3, 0x7f0b0000

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mBuyListTitleTextView:Landroid/widget/TextView;

    .line 2573
    const v3, 0x7f0b0005

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mBuyListView:Landroid/widget/ListView;

    .line 2575
    const v3, 0x7f0b0001

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 2576
    .local v1, "imagebutton":Landroid/widget/ImageButton;
    new-instance v3, Lcom/findit/battle/InventoryActivity_SAMSUNG$31;

    invoke-direct {v3, p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG$31;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2583
    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mBuyListDlg:Landroid/app/Dialog;

    .line 2584
    return-void
.end method

.method private createDeleteItemDlg()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 2374
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2375
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 2376
    .local v2, "window":Landroid/view/Window;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 2377
    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 2378
    const v3, 0x7f020193

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 2380
    const v3, 0x7f030003

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 2382
    const v3, 0x7f0b0007

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mDeleteItemImageView:Landroid/widget/ImageView;

    .line 2385
    const v3, 0x7f0b0009

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2386
    .local v0, "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/InventoryActivity_SAMSUNG$25;

    invoke-direct {v3, p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG$25;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2408
    const v3, 0x7f0b000a

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 2409
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/InventoryActivity_SAMSUNG$26;

    invoke-direct {v3, p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG$26;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2416
    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mDeleteItemDlg:Landroid/app/Dialog;

    .line 2417
    return-void
.end method

.method private createItemSlots(FF)V
    .locals 39
    .param p1, "widthrate"    # F
    .param p2, "heightrate"    # F

    .prologue
    .line 1042
    const/16 v36, 0x1

    .local v36, "windownum":I
    const/4 v7, 0x5

    .local v7, "colum":I
    const/4 v8, 0x3

    .line 1043
    .local v8, "row":I
    mul-int v37, v7, v8

    .line 1044
    .local v37, "windowslotsnum":I
    const/high16 v3, 0x42e00000    # 112.0f

    mul-float v3, v3, p2

    float-to-int v6, v3

    .line 1045
    .local v6, "size":I
    div-int/lit8 v31, v6, 0x8

    .line 1048
    .local v31, "textsize":I
    const/16 v3, 0xf

    new-array v3, v3, [Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSlotsLayout:[Landroid/widget/RelativeLayout;

    .line 1049
    mul-int/lit8 v29, v6, 0x5

    .line 1050
    .local v29, "slotwindowwidth":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSlotWindowNum:I

    .line 1051
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSlotWindowTotalNum:I

    .line 1052
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSlotNum:I

    .line 1054
    new-instance v3, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;

    const v4, 0x7f0b0054

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;Landroid/widget/ImageView;III)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mMoveItemView:Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;

    .line 1055
    const v3, 0x441c4000    # 625.0f

    mul-float v3, v3, p1

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSlotWindowX:I

    .line 1056
    const/high16 v3, 0x43610000    # 225.0f

    mul-float v3, v3, p2

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSlotWindowY:I

    .line 1058
    const/high16 v3, 0x42e00000    # 112.0f

    mul-float v3, v3, p1

    float-to-int v0, v3

    move/from16 v35, v0

    .line 1059
    .local v35, "width":I
    const/high16 v3, 0x42e00000    # 112.0f

    mul-float v3, v3, p2

    float-to-int v12, v3

    .line 1060
    .local v12, "height":I
    const/high16 v3, 0x422c0000    # 43.0f

    mul-float v3, v3, p1

    float-to-int v0, v3

    move/from16 v17, v0

    .line 1061
    .local v17, "left1":I
    const v3, 0x43d78000    # 431.0f

    mul-float v3, v3, p1

    float-to-int v0, v3

    move/from16 v18, v0

    .line 1062
    .local v18, "left2":I
    add-int v21, v17, v35

    .line 1063
    .local v21, "right1":I
    add-int v22, v18, v35

    .line 1064
    .local v22, "right2":I
    const v3, 0x43df8000    # 447.0f

    mul-float v3, v3, p2

    float-to-int v0, v3

    move/from16 v33, v0

    .line 1065
    .local v33, "top1":I
    const v3, 0x44158000    # 598.0f

    mul-float v3, v3, p2

    float-to-int v0, v3

    move/from16 v34, v0

    .line 1066
    .local v34, "top2":I
    add-int v9, v33, v12

    .line 1067
    .local v9, "bottom1":I
    add-int v10, v34, v12

    .line 1069
    .local v10, "bottom2":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mMoveItemView:Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;

    iget-object v3, v3, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mRect:[Landroid/graphics/Rect;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Rect;

    move/from16 v0, v17

    move/from16 v1, v33

    move/from16 v2, v21

    invoke-direct {v5, v0, v1, v2, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v3, v4

    .line 1070
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mMoveItemView:Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;

    iget-object v3, v3, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mRect:[Landroid/graphics/Rect;

    const/4 v4, 0x2

    new-instance v5, Landroid/graphics/Rect;

    move/from16 v0, v18

    move/from16 v1, v33

    move/from16 v2, v22

    invoke-direct {v5, v0, v1, v2, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v3, v4

    .line 1071
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mMoveItemView:Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;

    iget-object v3, v3, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mRect:[Landroid/graphics/Rect;

    const/4 v4, 0x1

    new-instance v5, Landroid/graphics/Rect;

    move/from16 v0, v17

    move/from16 v1, v34

    move/from16 v2, v21

    invoke-direct {v5, v0, v1, v2, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v3, v4

    .line 1072
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mMoveItemView:Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;

    iget-object v3, v3, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mRect:[Landroid/graphics/Rect;

    const/4 v4, 0x3

    new-instance v5, Landroid/graphics/Rect;

    move/from16 v0, v18

    move/from16 v1, v34

    move/from16 v2, v22

    invoke-direct {v5, v0, v1, v2, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v3, v4

    .line 1074
    new-instance v27, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v27

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1075
    .local v27, "slotparams1":Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v0, v31

    int-to-float v3, v0

    const v4, 0x3f99999a    # 1.2f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, v27

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1076
    move/from16 v0, v31

    int-to-float v3, v0

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, v27

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1078
    const/4 v3, 0x4

    new-array v0, v3, [I

    move-object/from16 v23, v0

    const/4 v3, 0x1

    const/4 v4, 0x1

    aput v4, v23, v3

    const/4 v3, 0x2

    const/4 v4, 0x2

    aput v4, v23, v3

    const/4 v3, 0x3

    const/4 v4, 0x3

    aput v4, v23, v3

    .line 1079
    .local v23, "setitemtypetable":[I
    const/4 v3, 0x4

    new-array v0, v3, [I

    move-object/from16 v24, v0

    fill-array-data v24, :array_0

    .line 1080
    .local v24, "setslotlayoutidtable":[I
    move-object/from16 v0, v24

    array-length v3, v0

    new-array v3, v3, [Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSetSlotsLayout:[Landroid/widget/RelativeLayout;

    .line 1081
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, v23

    array-length v3, v0

    if-lt v13, v3, :cond_0

    .line 1092
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSetItemTypeTable:[I

    .line 1094
    const v3, 0x7f0b0030

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/HorizontalScrollView;

    .line 1095
    .local v28, "slotscrollview":Landroid/widget/HorizontalScrollView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    move/from16 v0, v29

    invoke-direct {v3, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1097
    new-instance v3, Lcom/findit/battle/InventoryActivity_SAMSUNG$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG$8;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1148
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSlotsScrollView:Landroid/widget/HorizontalScrollView;

    .line 1150
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1151
    .local v20, "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v26, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v26

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1153
    .local v26, "slotparams":Landroid/widget/RelativeLayout$LayoutParams;
    const v3, 0x7f0b0031

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 1155
    .local v16, "layout":Landroid/widget/LinearLayout;
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSlotWindowWidth:I

    .line 1158
    const/4 v13, 0x0

    :goto_1
    move/from16 v0, v36

    if-lt v13, v0, :cond_1

    .line 1281
    const v3, 0x7f0b002f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 1282
    .local v11, "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/InventoryActivity_SAMSUNG$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG$11;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V

    invoke-virtual {v11, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1289
    const v3, 0x7f0b0032

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11    # "button":Landroid/widget/Button;
    check-cast v11, Landroid/widget/Button;

    .line 1290
    .restart local v11    # "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/InventoryActivity_SAMSUNG$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG$12;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V

    invoke-virtual {v11, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1296
    return-void

    .line 1082
    .end local v11    # "button":Landroid/widget/Button;
    .end local v16    # "layout":Landroid/widget/LinearLayout;
    .end local v20    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v26    # "slotparams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v28    # "slotscrollview":Landroid/widget/HorizontalScrollView;
    :cond_0
    aget v3, v24, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout;

    .line 1084
    .local v16, "layout":Landroid/widget/RelativeLayout;
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 1085
    .local v32, "textview":Landroid/widget/TextView;
    move/from16 v0, v31

    int-to-float v3, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1086
    const/16 v3, 0x55

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1087
    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1089
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSetSlotsLayout:[Landroid/widget/RelativeLayout;

    aget v4, v23, v13

    aput-object v16, v3, v4

    .line 1081
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 1159
    .end local v32    # "textview":Landroid/widget/TextView;
    .local v16, "layout":Landroid/widget/LinearLayout;
    .restart local v20    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v26    # "slotparams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v28    # "slotscrollview":Landroid/widget/HorizontalScrollView;
    :cond_1
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_2
    if-lt v15, v7, :cond_2

    .line 1158
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1160
    :cond_2
    new-instance v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1161
    .local v30, "sublayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1164
    const/16 v38, 0x0

    .local v38, "z":I
    :goto_3
    move/from16 v0, v38

    if-lt v0, v8, :cond_3

    .line 1273
    move-object/from16 v0, v16

    move-object/from16 v1, v30

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1159
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1165
    :cond_3
    mul-int v3, v15, v8

    add-int v3, v3, v38

    mul-int/lit8 v4, v13, 0xf

    add-int v19, v3, v4

    .line 1167
    .local v19, "num":I
    new-instance v25, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1168
    .local v25, "slotlayout":Landroid/widget/RelativeLayout;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1170
    if-nez v19, :cond_4

    .line 1171
    const v3, 0x7f0201bb

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1175
    :goto_4
    new-instance v3, Lcom/findit/battle/InventoryActivity_SAMSUNG$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG$9;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1194
    new-instance v3, Lcom/findit/battle/InventoryActivity_SAMSUNG$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG$10;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1251
    new-instance v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1252
    .local v14, "imageview":Landroid/widget/ImageView;
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v14, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1263
    new-instance v32, Landroid/widget/TextView;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1265
    .restart local v32    # "textview":Landroid/widget/TextView;
    move/from16 v0, v31

    int-to-float v3, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1266
    const/16 v3, 0x55

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1267
    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1269
    move-object/from16 v0, v30

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1270
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSlotsLayout:[Landroid/widget/RelativeLayout;

    aput-object v25, v3, v19

    .line 1164
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_3

    .line 1173
    .end local v14    # "imageview":Landroid/widget/ImageView;
    .end local v32    # "textview":Landroid/widget/TextView;
    :cond_4
    const v3, 0x7f0201b8

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 1079
    nop

    :array_0
    .array-data 4
        0x7f0b0010
        0x7f0b0014
        0x7f0b0018
        0x7f0b001c
    .end array-data
.end method

.method private createLearnSkillDlg()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 2507
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2508
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 2509
    .local v2, "window":Landroid/view/Window;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 2510
    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 2511
    const v3, 0x7f020193

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 2513
    const v3, 0x7f030003

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 2515
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09004b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mLearnSkillText:Ljava/lang/String;

    .line 2516
    const v3, 0x7f0b0008

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mLearnSkillTextView:Landroid/widget/TextView;

    .line 2517
    const v3, 0x7f0b0007

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mLearnSkillImageView:Landroid/widget/ImageView;

    .line 2520
    const v3, 0x7f0b0009

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2521
    .local v0, "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/InventoryActivity_SAMSUNG$29;

    invoke-direct {v3, p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG$29;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2552
    const v3, 0x7f0b000a

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 2553
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/InventoryActivity_SAMSUNG$30;

    invoke-direct {v3, p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG$30;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2560
    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mLearnSkillDlg:Landroid/app/Dialog;

    .line 2561
    return-void
.end method

.method private createLoadingView()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 2807
    const v4, 0x7f0b000c

    invoke-virtual {p0, v4}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2808
    .local v0, "layout":Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 2809
    const/16 v4, 0xae

    const/16 v5, 0xde

    const/16 v6, 0xe4

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 2811
    const/high16 v4, 0x41a00000    # 20.0f

    iget v5, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mHeightRate:F

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 2812
    .local v1, "margin":I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2813
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xb

    invoke-virtual {v2, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2814
    const/16 v4, 0xc

    invoke-virtual {v2, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2815
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2817
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2818
    .local v3, "textview":Landroid/widget/TextView;
    const v4, 0x7f090020

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2819
    const-string v4, "#146E9D"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2820
    const/high16 v4, 0x42200000    # 40.0f

    iget v5, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mHeightRate:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2822
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2825
    return-void
.end method

.method private createShopSlots(FF)V
    .locals 28
    .param p1, "widthrate"    # F
    .param p2, "heightrate"    # F

    .prologue
    .line 1299
    const/16 v22, 0x1

    .local v22, "windownum":I
    const/4 v4, 0x3

    .local v4, "colum":I
    const/4 v12, 0x2

    .line 1300
    .local v12, "row":I
    mul-int v23, v4, v12

    .line 1301
    .local v23, "windowslotsnum":I
    const/high16 v25, 0x43340000    # 180.0f

    mul-float v25, v25, p2

    move/from16 v0, v25

    float-to-int v13, v0

    .line 1303
    .local v13, "size":I
    const/high16 v25, 0x40000000    # 2.0f

    div-float v25, p1, v25

    div-float v25, p2, v25

    const v26, 0x3f99999a    # 1.2f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_0

    .line 1304
    const/high16 v25, 0x432a0000    # 170.0f

    mul-float v25, v25, p2

    move/from16 v0, v25

    float-to-int v13, v0

    .line 1307
    :cond_0
    const/16 v25, 0x6

    move/from16 v0, v25

    new-array v9, v0, [I

    fill-array-data v9, :array_0

    .line 1309
    .local v9, "menuslotimgid":[I
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v25, -0x2

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v11, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1310
    .local v11, "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-float v0, v13

    move/from16 v25, v0

    const v26, 0x3f8b645a    # 1.089f

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-direct {v15, v0, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1312
    .local v15, "slotparams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopSlotsLayout:[Landroid/widget/RelativeLayout;

    .line 1313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopSlotsLayout:[Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const v25, 0x7f0b0046

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/RelativeLayout;

    aput-object v25, v26, v27

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopSlotsLayout:[Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    const v25, 0x7f0b003d

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/RelativeLayout;

    aput-object v25, v26, v27

    .line 1315
    const v25, 0x7f0b0047

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 1317
    .local v8, "layout":Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move/from16 v0, v22

    if-lt v5, v0, :cond_1

    .line 1393
    const v25, 0x7f0b0048

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1394
    .local v3, "button":Landroid/widget/Button;
    new-instance v25, Lcom/findit/battle/InventoryActivity_SAMSUNG$15;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG$15;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1406
    const/16 v22, 0x1

    .line 1407
    const/4 v4, 0x5

    .line 1408
    const/4 v12, 0x3

    .line 1409
    mul-int v23, v4, v12

    .line 1410
    const/high16 v25, 0x42e00000    # 112.0f

    mul-float v25, v25, p2

    move/from16 v0, v25

    float-to-int v13, v0

    .line 1411
    div-int/lit8 v20, v13, 0x8

    .line 1412
    .local v20, "textsize":I
    mul-int/lit8 v18, v13, 0x5

    .line 1414
    .local v18, "slotwindowwidth":I
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillSlotNum:I

    .line 1415
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillSlotWindowNum:I

    .line 1416
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillSlotWindowTotalNum:I

    .line 1418
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v15    # "slotparams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v15, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1419
    .restart local v15    # "slotparams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v16

    invoke-direct {v0, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1420
    .local v16, "slotparams1":Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    const v26, 0x3f99999a    # 1.2f

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1421
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    const v26, 0x3f4ccccd    # 0.8f

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1423
    const v25, 0x7f0b003f

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/HorizontalScrollView;

    .line 1424
    .local v17, "slotscrollview":Landroid/widget/HorizontalScrollView;
    new-instance v25, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v26, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v18

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1425
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopItemSlotsScrollView:Landroid/widget/HorizontalScrollView;

    .line 1427
    const/16 v25, 0xf

    move/from16 v0, v25

    new-array v0, v0, [Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopItemSlotsLayout:[Landroid/widget/RelativeLayout;

    .line 1428
    const v25, 0x7f0b0040

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8    # "layout":Landroid/widget/LinearLayout;
    check-cast v8, Landroid/widget/LinearLayout;

    .line 1430
    .restart local v8    # "layout":Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    :goto_1
    move/from16 v0, v22

    if-lt v5, v0, :cond_4

    .line 1477
    const v25, 0x7f0b0044

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "button":Landroid/widget/Button;
    check-cast v3, Landroid/widget/Button;

    .line 1478
    .restart local v3    # "button":Landroid/widget/Button;
    new-instance v25, Lcom/findit/battle/InventoryActivity_SAMSUNG$17;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG$17;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1505
    const v25, 0x7f0b0045

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "button":Landroid/widget/Button;
    check-cast v3, Landroid/widget/Button;

    .line 1506
    .restart local v3    # "button":Landroid/widget/Button;
    new-instance v25, Lcom/findit/battle/InventoryActivity_SAMSUNG$18;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG$18;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1520
    const v25, 0x7f0b003e

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "button":Landroid/widget/Button;
    check-cast v3, Landroid/widget/Button;

    .line 1521
    .restart local v3    # "button":Landroid/widget/Button;
    new-instance v25, Lcom/findit/battle/InventoryActivity_SAMSUNG$19;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG$19;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1528
    const v25, 0x7f0b0041

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "button":Landroid/widget/Button;
    check-cast v3, Landroid/widget/Button;

    .line 1529
    .restart local v3    # "button":Landroid/widget/Button;
    new-instance v25, Lcom/findit/battle/InventoryActivity_SAMSUNG$20;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG$20;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1535
    return-void

    .line 1318
    .end local v3    # "button":Landroid/widget/Button;
    .end local v16    # "slotparams1":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v17    # "slotscrollview":Landroid/widget/HorizontalScrollView;
    .end local v18    # "slotwindowwidth":I
    .end local v20    # "textsize":I
    :cond_1
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    if-lt v7, v4, :cond_2

    .line 1317
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1319
    :cond_2
    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1320
    .local v19, "sublayout":Landroid/widget/LinearLayout;
    const/16 v25, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1323
    const/16 v24, 0x0

    .local v24, "z":I
    :goto_3
    move/from16 v0, v24

    if-lt v0, v12, :cond_3

    .line 1389
    move-object/from16 v0, v19

    invoke-virtual {v8, v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1318
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1324
    :cond_3
    mul-int v25, v7, v12

    add-int v25, v25, v24

    mul-int/lit8 v26, v5, 0x6

    add-int v10, v25, v26

    .line 1326
    .local v10, "num":I
    new-instance v14, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1327
    .local v14, "slotlayout":Landroid/widget/RelativeLayout;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1329
    const v25, 0x7f0201b8

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1331
    new-instance v25, Lcom/findit/battle/InventoryActivity_SAMSUNG$13;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG$13;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1363
    new-instance v25, Lcom/findit/battle/InventoryActivity_SAMSUNG$14;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG$14;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1382
    new-instance v6, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1383
    .local v6, "imageview":Landroid/widget/ImageView;
    aget v25, v9, v10

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1384
    invoke-virtual {v14, v6, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1386
    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1323
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 1431
    .end local v6    # "imageview":Landroid/widget/ImageView;
    .end local v7    # "j":I
    .end local v10    # "num":I
    .end local v14    # "slotlayout":Landroid/widget/RelativeLayout;
    .end local v19    # "sublayout":Landroid/widget/LinearLayout;
    .end local v24    # "z":I
    .restart local v3    # "button":Landroid/widget/Button;
    .restart local v16    # "slotparams1":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v17    # "slotscrollview":Landroid/widget/HorizontalScrollView;
    .restart local v18    # "slotwindowwidth":I
    .restart local v20    # "textsize":I
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_4
    if-lt v7, v4, :cond_5

    .line 1430
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 1432
    :cond_5
    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1433
    .restart local v19    # "sublayout":Landroid/widget/LinearLayout;
    const/16 v25, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1436
    const/16 v24, 0x0

    .restart local v24    # "z":I
    :goto_5
    move/from16 v0, v24

    if-lt v0, v12, :cond_6

    .line 1473
    move-object/from16 v0, v19

    invoke-virtual {v8, v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1431
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1437
    :cond_6
    mul-int v25, v7, v12

    add-int v25, v25, v24

    mul-int/lit8 v26, v5, 0xf

    add-int v10, v25, v26

    .line 1439
    .restart local v10    # "num":I
    new-instance v14, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1440
    .restart local v14    # "slotlayout":Landroid/widget/RelativeLayout;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1442
    if-nez v10, :cond_7

    .line 1443
    const v25, 0x7f0201bb

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1447
    :goto_6
    new-instance v25, Lcom/findit/battle/InventoryActivity_SAMSUNG$16;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG$16;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1459
    new-instance v6, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1460
    .restart local v6    # "imageview":Landroid/widget/ImageView;
    invoke-virtual {v14, v6, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1463
    new-instance v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1465
    .local v21, "textview":Landroid/widget/TextView;
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1466
    const/16 v25, 0x55

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1467
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1469
    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopItemSlotsLayout:[Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    aput-object v14, v25, v10

    .line 1436
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_5

    .line 1445
    .end local v6    # "imageview":Landroid/widget/ImageView;
    .end local v21    # "textview":Landroid/widget/TextView;
    :cond_7
    const v25, 0x7f0201b8

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_6

    .line 1307
    nop

    :array_0
    .array-data 4
        0x7f020196
        0x7f020199
        0x7f020197
        0x7f02019a
        0x7f020198
        0x7f02019b
    .end array-data
.end method

.method private createSkillSlots(FF)V
    .locals 26
    .param p1, "widthrate"    # F
    .param p2, "heightrate"    # F

    .prologue
    .line 1538
    const/16 v21, 0x1

    .local v21, "windownum":I
    const/4 v4, 0x5

    .local v4, "colum":I
    const/4 v11, 0x3

    .line 1539
    .local v11, "row":I
    mul-int v22, v4, v11

    .line 1540
    .local v22, "windowslotsnum":I
    const/high16 v24, 0x42e00000    # 112.0f

    mul-float v24, v24, p2

    move/from16 v0, v24

    float-to-int v12, v0

    .line 1541
    .local v12, "size":I
    mul-int/lit8 v17, v12, 0x5

    .line 1542
    .local v17, "slotwindowwidth":I
    div-int/lit8 v19, v12, 0x8

    .line 1544
    .local v19, "textsize":I
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillSlotNum:I

    .line 1545
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillSlotWindowNum:I

    .line 1546
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillSlotWindowTotalNum:I

    .line 1548
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v10, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1549
    .local v10, "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v14, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1550
    .local v14, "slotparams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v15, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1551
    .local v15, "slotparams1":Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v24, v0

    const v25, 0x3f99999a    # 1.2f

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v15, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1552
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v24, v0

    const v25, 0x3f4ccccd    # 0.8f

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v15, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1554
    const v24, 0x7f0b004c

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/HorizontalScrollView;

    .line 1555
    .local v16, "slotscrollview":Landroid/widget/HorizontalScrollView;
    new-instance v24, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v25, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v17

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1556
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillSlotsScrollView:Landroid/widget/HorizontalScrollView;

    .line 1558
    const/16 v24, 0xf

    move/from16 v0, v24

    new-array v0, v0, [Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillSlotsLayout:[Landroid/widget/RelativeLayout;

    .line 1559
    const v24, 0x7f0b004d

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 1561
    .local v8, "layout":Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move/from16 v0, v21

    if-lt v5, v0, :cond_0

    .line 1617
    const v24, 0x7f0b004b

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1618
    .local v3, "button":Landroid/widget/Button;
    new-instance v24, Lcom/findit/battle/InventoryActivity_SAMSUNG$22;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG$22;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1625
    const v24, 0x7f0b004e

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "button":Landroid/widget/Button;
    check-cast v3, Landroid/widget/Button;

    .line 1626
    .restart local v3    # "button":Landroid/widget/Button;
    new-instance v24, Lcom/findit/battle/InventoryActivity_SAMSUNG$23;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG$23;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1633
    const v24, 0x7f0b0053

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "button":Landroid/widget/Button;
    check-cast v3, Landroid/widget/Button;

    .line 1634
    .restart local v3    # "button":Landroid/widget/Button;
    new-instance v24, Lcom/findit/battle/InventoryActivity_SAMSUNG$24;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG$24;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1652
    const v24, 0x7f0b0052

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 1653
    .local v20, "textview":Landroid/widget/TextView;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mPoint:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1654
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillPointNumTextView:Landroid/widget/TextView;

    .line 1655
    return-void

    .line 1562
    .end local v3    # "button":Landroid/widget/Button;
    .end local v20    # "textview":Landroid/widget/TextView;
    :cond_0
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-lt v7, v4, :cond_1

    .line 1561
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1563
    :cond_1
    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1564
    .local v18, "sublayout":Landroid/widget/LinearLayout;
    const/16 v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1567
    const/16 v23, 0x0

    .local v23, "z":I
    :goto_2
    move/from16 v0, v23

    if-lt v0, v11, :cond_2

    .line 1613
    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1562
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1568
    :cond_2
    mul-int v24, v7, v11

    add-int v24, v24, v23

    mul-int/lit8 v25, v5, 0xf

    add-int v9, v24, v25

    .line 1570
    .local v9, "num":I
    new-instance v13, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1571
    .local v13, "slotlayout":Landroid/widget/RelativeLayout;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1573
    if-nez v9, :cond_3

    .line 1574
    const v24, 0x7f0201bb

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1578
    :goto_3
    new-instance v24, Lcom/findit/battle/InventoryActivity_SAMSUNG$21;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG$21;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1599
    new-instance v6, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1600
    .local v6, "imageview":Landroid/widget/ImageView;
    invoke-virtual {v13, v6, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1603
    new-instance v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1605
    .restart local v20    # "textview":Landroid/widget/TextView;
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1606
    const/16 v24, 0x55

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1607
    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1609
    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillSlotsLayout:[Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    aput-object v13, v24, v9

    .line 1567
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 1576
    .end local v6    # "imageview":Landroid/widget/ImageView;
    .end local v20    # "textview":Landroid/widget/TextView;
    :cond_3
    const v24, 0x7f0201b8

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_3
.end method

.method private cutImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "imgpath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 2279
    const/4 v3, 0x0

    .line 2280
    .local v3, "path":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 2282
    .local v4, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.camera.action.CROP"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2283
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "image/*"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2285
    const-string v6, "aspectX"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2286
    const-string v6, "aspectY"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2287
    const-string v6, "scale"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2291
    :try_start_0
    sget-object v6, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 2293
    .local v1, "file":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/CharacterImage"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2294
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2295
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 2297
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 2299
    .local v5, "uri1":Landroid/net/Uri;
    const-string v6, "output"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2305
    .end local v1    # "file":Ljava/io/File;
    .end local v5    # "uri1":Landroid/net/Uri;
    :goto_0
    const/16 v6, 0x12c

    invoke-virtual {p0, v2, v6}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2307
    return-object v3

    .line 2301
    :catch_0
    move-exception v0

    .line 2302
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private drawImg(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "bodyimg"    # Landroid/graphics/drawable/Drawable;
    .param p2, "poseimg"    # Landroid/graphics/drawable/Drawable;
    .param p3, "faceimg"    # Landroid/graphics/drawable/Drawable;
    .param p4, "widthrate"    # F
    .param p5, "heightrate"    # F

    .prologue
    const/4 v8, 0x0

    .line 2215
    const/high16 v4, 0x43b40000    # 360.0f

    mul-float/2addr v4, p4

    float-to-int v3, v4

    .line 2216
    .local v3, "imgwidth":I
    const/high16 v4, 0x43fa0000    # 500.0f

    mul-float/2addr v4, p5

    float-to-int v2, v4

    .line 2218
    .local v2, "imgheight":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2220
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 2221
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2224
    const/high16 v4, 0x42e20000    # 113.0f

    mul-float/2addr v4, p4

    float-to-int v4, v4

    const/high16 v5, 0x42a80000    # 84.0f

    mul-float/2addr v5, p5

    float-to-int v5, v5

    const/high16 v6, 0x43790000    # 249.0f

    mul-float/2addr v6, p4

    float-to-int v6, v6

    const/high16 v7, 0x434e0000    # 206.0f

    mul-float/2addr v7, p5

    float-to-int v7, v7

    invoke-virtual {p3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2225
    invoke-virtual {p3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2228
    invoke-virtual {p1, v8, v8, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2229
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2232
    const/high16 v4, 0x43c60000    # 396.0f

    mul-float/2addr v4, p5

    float-to-int v4, v4

    invoke-virtual {p2, v8, v8, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2233
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2235
    return-object v0
.end method

.method private fillBuyListData()V
    .locals 6

    .prologue
    .line 2709
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2710
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;>;"
    new-instance v2, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;

    const-string v3, "2012/05/12"

    const-string v4, "\ub0a0\uac1c\uc5f0\ud544"

    const-string v5, "1"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2711
    new-instance v2, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;

    const-string v3, "2012/05/12"

    const-string v4, "\ubd88\uaf43\uc5f0\ud544"

    const-string v5, "2"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2712
    new-instance v2, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;

    const-string v3, "2012/05/11"

    const-string v4, "\ub208\uaf43\uc5f0\ud544"

    const-string v5, "3"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2713
    new-instance v2, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;

    const-string v3, "2012/05/11"

    const-string v4, "\ub208\uaf43\uc5f0\ud544"

    const-string v5, "2"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2714
    new-instance v2, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;

    const-string v3, "2012/05/10"

    const-string v4, "\uae08\ubc18\uc9c0"

    const-string v5, "1"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2715
    new-instance v2, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;

    const-string v3, "2012/05/10"

    const-string v4, "\ubc29\uc5b4\ud3ec\uc158"

    const-string v5, "2"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2716
    new-instance v2, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;

    const-string v3, "2012/05/10"

    const-string v4, "\ub0a0\uac1c\uc5f0\ud544"

    const-string v5, "1"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2717
    new-instance v2, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;

    const-string v3, "2012/05/10"

    const-string v4, "\ubd88\uaf43\uc5f0\ud544"

    const-string v5, "7"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2718
    new-instance v2, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;

    const-string v3, "2012/05/10"

    const-string v4, "\ub208\uaf43\uc5f0\ud544"

    const-string v5, "3"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2719
    new-instance v2, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;

    const-string v3, "2012/05/05"

    const-string v4, "\ub208\uaf43\uc5f0\ud544"

    const-string v5, "2"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2720
    new-instance v2, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;

    const-string v3, "2012/04/25"

    const-string v4, "\uae08\ubc18\uc9c0"

    const-string v5, "1"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2721
    new-instance v2, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;

    const-string v3, "2012/04/25"

    const-string v4, "\ubc29\uc5b4\ud3ec\uc158"

    const-string v5, "3"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2722
    new-instance v2, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;

    const-string v3, "2012/04/12"

    const-string v4, "\ub0a0\uac1c\uc5f0\ud544"

    const-string v5, "1"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2723
    new-instance v2, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;

    const-string v3, "2012/04/11"

    const-string v4, "\ubd88\uaf43\uc5f0\ud544"

    const-string v5, "8"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2724
    new-instance v2, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;

    const-string v3, "2012/04/10"

    const-string v4, "\ub208\uaf43\uc5f0\ud544"

    const-string v5, "3"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2725
    new-instance v2, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;

    const-string v3, "2012/04/04"

    const-string v4, "\ub208\uaf43\uc5f0\ud544"

    const-string v5, "2"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2726
    new-instance v2, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;

    const-string v3, "2012/04/04"

    const-string v4, "\uae08\ubc18\uc9c0"

    const-string v5, "1"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2727
    new-instance v2, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;

    const-string v3, "2012/04/03"

    const-string v4, "\ubc29\uc5b4\ud3ec\uc158"

    const-string v5, "5"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2728
    new-instance v2, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;

    const-string v3, "2012/04/01"

    const-string v4, "\ub0a0\uac1c\uc5f0\ud544"

    const-string v5, "1"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2729
    new-instance v2, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;

    const-string v3, "2012/04/01"

    const-string v4, "\ubd88\uaf43\uc5f0\ud544"

    const-string v5, "2"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2730
    new-instance v2, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;

    const-string v3, ""

    const-string v4, "     \ub354 \ubcf4\uae30"

    const-string v5, ""

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2736
    new-instance v0, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyListAdapter;

    const v2, 0x7f030001

    invoke-direct {v0, p0, p0, v2, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyListAdapter;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;Landroid/content/Context;ILjava/util/List;)V

    .line 2737
    .local v0, "adapter":Lcom/findit/battle/InventoryActivity_SAMSUNG$BuyListAdapter;
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mBuyListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2738
    return-void
.end method

.method private getImagePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p1, "imageuri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 2247
    const/4 v8, 0x0

    .line 2248
    .local v8, "path":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .local v2, "projection":[Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 2249
    invoke-virtual/range {v0 .. v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2251
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2252
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 2254
    .local v7, "index":I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2255
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2257
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2260
    .end local v7    # "index":I
    :cond_1
    return-object v8
.end method

.method private getLastImagePath()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 2264
    const/4 v7, 0x0

    .line 2265
    .local v7, "path":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v8

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 2266
    .local v2, "projection":[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2268
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2269
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2270
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2272
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2275
    :cond_1
    return-object v7
.end method

.method private intiatieInAppPurchases()V
    .locals 3

    .prologue
    .line 2944
    :try_start_0
    new-instance v1, Lcom/feelingk/iap/IAPLibSetting;

    invoke-direct {v1}, Lcom/feelingk/iap/IAPLibSetting;-><init>()V

    .line 2945
    .local v1, "setting":Lcom/feelingk/iap/IAPLibSetting;
    const-string v2, "OA00316527"

    iput-object v2, v1, Lcom/feelingk/iap/IAPLibSetting;->AppID:Ljava/lang/String;

    .line 2946
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/feelingk/iap/IAPLibSetting;->BP_IP:Ljava/lang/String;

    .line 2947
    const/4 v2, 0x0

    iput v2, v1, Lcom/feelingk/iap/IAPLibSetting;->BP_Port:I

    .line 2948
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    iput-object v2, v1, Lcom/feelingk/iap/IAPLibSetting;->ClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    .line 2950
    invoke-virtual {p0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->IAPLibInit(Lcom/feelingk/iap/IAPLibSetting;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2955
    .end local v1    # "setting":Lcom/feelingk/iap/IAPLibSetting;
    :goto_0
    return-void

    .line 2952
    :catch_0
    move-exception v0

    .line 2953
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isActionMove(IIII)Z
    .locals 5
    .param p1, "touchx"    # I
    .param p2, "touchy"    # I
    .param p3, "standardx"    # I
    .param p4, "standardy"    # I

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    .line 2164
    add-int/2addr p1, p3

    .line 2165
    add-int/2addr p2, p4

    .line 2167
    iget v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mFirstTouchX:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mFirstTouchY:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 2168
    iget v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mMoveStandard:F

    .line 2169
    .local v2, "standard":F
    iget v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mFirstTouchX:F

    int-to-float v4, p1

    sub-float v0, v3, v4

    .line 2170
    .local v0, "distancex":F
    iget v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mFirstTouchY:F

    int-to-float v4, p2

    sub-float v1, v3, v4

    .line 2171
    .local v1, "distancey":F
    neg-float v3, v2

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    cmpg-float v3, v0, v2

    if-gez v3, :cond_0

    neg-float v3, v2

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    .line 2173
    const/4 v3, 0x0

    .line 2177
    .end local v0    # "distancex":F
    .end local v1    # "distancey":F
    .end local v2    # "standard":F
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private loadImages()V
    .locals 13

    .prologue
    const v12, 0x7f0201b9

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const v8, 0x7f020176

    .line 515
    const v0, 0x7f0b000c

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f02012b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 516
    const v0, 0x7f0b000d

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201d9

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 518
    const v0, 0x7f0b000f

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201c4

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 519
    const v0, 0x7f0b0010

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f02019d

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 521
    const v0, 0x7f0b0013

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201c6

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 522
    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f02019f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 524
    const v0, 0x7f0b0017

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201c5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 525
    const v0, 0x7f0b0018

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f02019e

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 527
    const v0, 0x7f0b001b

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201c7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 528
    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201a0

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 530
    new-array v0, v11, [Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    .line 531
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201ce

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    aput-object v4, v0, v10

    .line 532
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201cf

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    aput-object v4, v0, v9

    .line 534
    new-array v0, v11, [Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    .line 535
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201d4

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    aput-object v4, v0, v10

    .line 536
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201d5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    aput-object v4, v0, v9

    .line 538
    new-array v0, v11, [Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    .line 539
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201d6

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    aput-object v4, v0, v10

    .line 540
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201d7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    aput-object v4, v0, v9

    .line 542
    const v0, 0x7f0b0023

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v4, v4, v10

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 543
    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v4, v4, v9

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 544
    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v4, v4, v9

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 548
    const v0, 0x7f0b002e

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 549
    const v0, 0x7f0b002f

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201ba

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 550
    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 551
    const v0, 0x7f0b0033

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 553
    const v0, 0x7f0b003c

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 554
    const v0, 0x7f0b003e

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201ba

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 555
    const v0, 0x7f0b0041

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 556
    const v0, 0x7f0b0042

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 561
    const v0, 0x7f0b004a

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 562
    const v0, 0x7f0b004b

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201ba

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 563
    const v0, 0x7f0b004e

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 564
    const v0, 0x7f0b004f

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 568
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mBodyImgPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 569
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mBodyImgId:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 574
    .local v1, "bodyimg":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mBodyImgPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 575
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mActionImgId:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 580
    .local v2, "poseimg":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mBodyImgPath:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 581
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mFaceImgId:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 585
    .local v3, "faceimg":Landroid/graphics/drawable/Drawable;
    :goto_2
    iget v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mWidthRate:F

    iget v5, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mHeightRate:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->drawImg(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 586
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mCharacterImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v6}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->compressBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 587
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 588
    return-void

    .line 571
    .end local v1    # "bodyimg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "poseimg":Landroid/graphics/drawable/Drawable;
    .end local v3    # "faceimg":Landroid/graphics/drawable/Drawable;
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mBodyImgPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1    # "bodyimg":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mActionImgPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2    # "poseimg":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 583
    :cond_2
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mFaceImgPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .restart local v3    # "faceimg":Landroid/graphics/drawable/Drawable;
    goto :goto_2
.end method

.method private purchaseItem(Lcom/findit/battle/Items$Item;)V
    .locals 6
    .param p1, "item"    # Lcom/findit/battle/Items$Item;

    .prologue
    const/4 v5, 0x0

    .line 2958
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mPurchaseItemMap:Ljava/util/HashMap;

    .line 2959
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/findit/battle/Items$Item;>;"
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mPurchaseItemKey:[Ljava/lang/String;

    .line 2961
    .local v1, "keys":[Ljava/lang/String;
    array-length v3, v1

    .line 2962
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 2971
    :goto_1
    return-void

    .line 2963
    :cond_0
    aget-object v4, v1, v0

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/findit/battle/Items$Item;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2965
    aget-object v4, v1, v0

    invoke-virtual {p0, v4, v5, v5, v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->popPurchaseDlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2966
    aget-object v4, v1, v0

    iput-object v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mPurchaseId:Ljava/lang/String;

    .line 2967
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "purchaseItem1: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 2962
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private recycleImages()V
    .locals 9

    .prologue
    .line 591
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v5, v8

    .line 592
    .local v5, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v5, :cond_0

    .line 600
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v5, v8

    .line 601
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v5, :cond_2

    .line 609
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v5, v8

    .line 610
    const/4 v2, 0x0

    :goto_2
    if-lt v2, v5, :cond_4

    .line 618
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mCharacterImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->recycleView(Landroid/view/View;)V

    .line 620
    const v8, 0x7f0b000c

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 621
    .local v4, "layout":Landroid/widget/RelativeLayout;
    invoke-direct {p0, v4}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->recycleView(Landroid/view/View;)V

    .line 623
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v5

    .line 624
    const/4 v2, 0x0

    :goto_3
    if-lt v2, v5, :cond_6

    .line 666
    return-void

    .line 593
    .end local v4    # "layout":Landroid/widget/RelativeLayout;
    :cond_0
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 594
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 595
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 592
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 602
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 603
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 604
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 601
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 611
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 612
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 613
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 610
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 626
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "layout":Landroid/widget/RelativeLayout;
    :cond_6
    :try_start_0
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 627
    .local v6, "sublayout":Landroid/widget/RelativeLayout;
    invoke-direct {p0, v6}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->recycleView(Landroid/view/View;)V

    .line 629
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v7

    .line 630
    .local v7, "sublength":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_4
    if-lt v3, v7, :cond_7

    .line 624
    .end local v3    # "j":I
    .end local v6    # "sublayout":Landroid/widget/RelativeLayout;
    .end local v7    # "sublength":I
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 631
    .restart local v3    # "j":I
    .restart local v6    # "sublayout":Landroid/widget/RelativeLayout;
    .restart local v7    # "sublength":I
    :cond_7
    invoke-virtual {v6, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->recycleView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 634
    .end local v3    # "j":I
    .end local v6    # "sublayout":Landroid/widget/RelativeLayout;
    .end local v7    # "sublength":I
    :catch_0
    move-exception v1

    .line 635
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->recycleView(Landroid/view/View;)V

    goto :goto_5
.end method

.method private recycleView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 669
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 670
    .local v2, "tag":Ljava/lang/Object;
    if-eqz v2, :cond_0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "not"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 671
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 672
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 674
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 675
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 676
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    :cond_1
    :goto_0
    return-void

    .line 678
    :catch_0
    move-exception v1

    .line 679
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "recycleView error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private selectShopItemSlot(Landroid/widget/RelativeLayout;I)V
    .locals 2
    .param p1, "layout"    # Landroid/widget/RelativeLayout;
    .param p2, "slotnum"    # I

    .prologue
    .line 2013
    iget v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopItemSlotNum:I

    if-eq v0, p2, :cond_0

    .line 2015
    const v0, 0x7f0201bb

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 2018
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopItemSlotsLayout:[Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopItemSlotNum:I

    aget-object v0, v0, v1

    const v1, 0x7f0201b8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 2019
    iput p2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopItemSlotNum:I

    .line 2023
    :cond_0
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setShopItemText()V

    .line 2024
    return-void
.end method

.method private sendBuyItem(Lcom/findit/battle/Items$Item;)V
    .locals 7
    .param p1, "item"    # Lcom/findit/battle/Items$Item;

    .prologue
    .line 2587
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 2589
    .local v0, "connectnetwork":Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2590
    const-string v1, "http://14.63.220.39/"

    const-string v2, "app/member/buyItemAndSpendCoin.json"

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setServerUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 2591
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->clearParameter()V

    .line 2592
    const-string v1, "userId"

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    const-string v1, "itemNo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/findit/battle/Items$Item;->mTypeNo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    const-string v1, "coin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/findit/battle/Items$Item;->mPrice:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    iget v6, p1, Lcom/findit/battle/Items$Item;->mNum:I

    .line 2597
    .local v6, "num":I
    const/16 v1, 0x63

    if-le v6, v1, :cond_0

    .line 2598
    const/16 v6, 0x63

    .line 2600
    :cond_0
    const-string v1, "quantity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTypeNo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/findit/battle/Items$Item;->mTypeNo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPrice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/findit/battle/Items$Item;->mPrice:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 2602
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mCommonDialog:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v1}, Lcom/findit/battle/CommonDialog;->showProgressDlg()V

    .line 2603
    const-string v1, "utf-8"

    const-string v2, "GET"

    const/4 v3, 0x2

    .line 2604
    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/findit/battle/Items$Item;->mType:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/findit/battle/Items$Item;->mSubType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mBuyResultHandler:Landroid/os/Handler;

    .line 2603
    invoke-virtual/range {v0 .. v5}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->startParsingData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V

    .line 2606
    .end local v6    # "num":I
    :cond_1
    return-void
.end method

.method private sendLearnSkill(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 2609
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v1, v1, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v6, v1, p1

    .line 2610
    .local v6, "skill":Lcom/findit/battle/Objects$Skills$Skill;
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 2612
    .local v0, "connectnetwork":Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2613
    const-string v1, "http://14.63.220.39/"

    const-string v2, "app/member/buySkillAndSpendPoint.json"

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setServerUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 2614
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->clearParameter()V

    .line 2615
    const-string v1, "userId"

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    const-string v1, "skillId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v6, Lcom/findit/battle/Objects$Skills$Skill;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    const-string v1, "point"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v6, Lcom/findit/battle/Objects$Skills$Skill;->mPoint:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    const-string v1, "quantity"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/findit/battle/Objects$Skills$Skill;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/findit/battle/Objects$Skills$Skill;->mPoint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 2620
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mCommonDialog:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v1}, Lcom/findit/battle/CommonDialog;->showProgressDlg()V

    .line 2621
    const-string v1, "utf-8"

    const-string v2, "GET"

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mLearnResultHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->startParsingData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V

    .line 2623
    :cond_0
    return-void
.end method

.method private setAttackText()V
    .locals 5

    .prologue
    .line 1001
    const/4 v1, 0x0

    .line 1003
    .local v1, "power":I
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/findit/battle/Items;->getSetIndex(I)I

    move-result v0

    .line 1004
    .local v0, "index":I
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 1005
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v2, v2, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, v0

    iget v1, v2, Lcom/findit/battle/Items$Item;->mPower:I

    .line 1007
    :cond_0
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mAttackTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mAttack:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "(+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1008
    return-void
.end method

.method private setBuyItem(IIZ)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "subtype"    # I
    .param p3, "price"    # Z

    .prologue
    .line 2671
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v3, v3, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v3, p2

    .line 2672
    .local v2, "item":Lcom/findit/battle/Items$Item;
    iget-object v1, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    .line 2673
    .local v1, "imgpath":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2674
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 2675
    .local v0, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 2676
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mBuyItemImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2681
    .end local v0    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mBuyItemTextView:Landroid/widget/TextView;

    if-eqz p3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/findit/battle/Items$Item;->mPrice:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mBuyItemText:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2682
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mBuyItemImageView:Landroid/widget/ImageView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2683
    return-void

    .line 2679
    :cond_0
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mBuyItemImageView:Landroid/widget/ImageView;

    iget-object v4, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2681
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/findit/battle/Items$Item;->mMoney:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mBuyItemText1:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private setDefenseText()V
    .locals 5

    .prologue
    .line 1011
    const/4 v1, 0x0

    .line 1013
    .local v1, "power":I
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/findit/battle/Items;->getSetIndex(I)I

    move-result v0

    .line 1014
    .local v0, "index":I
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 1015
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v2, v2, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, v0

    iget v1, v2, Lcom/findit/battle/Items$Item;->mPower:I

    .line 1017
    :cond_0
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mDefenseTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mDefense:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "(+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1018
    return-void
.end method

.method private setDeleteItem(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 2658
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v2, v2, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, p1

    iget-object v1, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    .line 2659
    .local v1, "imgpath":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2660
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v3, v3, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 2661
    .local v0, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 2662
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mDeleteItemImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2667
    .end local v0    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mDeleteItemImageView:Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2668
    return-void

    .line 2665
    :cond_0
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mDeleteItemImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v3, v3, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setFirstTouch(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "standardx"    # I
    .param p4, "standardy"    # I

    .prologue
    .line 2181
    add-int v0, p1, p3

    int-to-float v0, v0

    iput v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mFirstTouchX:F

    .line 2182
    add-int v0, p2, p4

    int-to-float v0, v0

    iput v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mFirstTouchY:F

    .line 2183
    return-void
.end method

.method private setItemSetSlot(II)I
    .locals 10
    .param p1, "type"    # I
    .param p2, "itemindex"    # I

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 1790
    const/4 v3, -0x1

    .line 1792
    .local v3, "slotnum":I
    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSetSlotsLayout:[Landroid/widget/RelativeLayout;

    aget-object v4, v6, p1

    .line 1793
    .local v4, "slotslayout":Landroid/widget/RelativeLayout;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1794
    .local v0, "imageview":Landroid/widget/ImageView;
    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1795
    .local v5, "textview":Landroid/widget/TextView;
    if-gez p2, :cond_1

    .line 1798
    invoke-direct {p0, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->recycleView(Landroid/view/View;)V

    .line 1799
    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1821
    :goto_0
    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    invoke-virtual {v6, p1, p2}, Lcom/findit/battle/Items;->setSetTable(II)V

    .line 1824
    if-nez p1, :cond_5

    .line 1825
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setAttackText()V

    .line 1829
    :cond_0
    :goto_1
    return v3

    .line 1802
    :cond_1
    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v6, v6, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v6, p2

    .line 1805
    .local v2, "item":Lcom/findit/battle/Items$Item;
    iget-object v6, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 1806
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v2, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 1807
    .local v1, "img":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, v9}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1808
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1813
    .end local v1    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_2
    iget v6, v2, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    iget v6, v2, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    .line 1814
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v2, Lcom/findit/battle/Items$Item;->mNum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1816
    :cond_3
    iput-boolean v8, v2, Lcom/findit/battle/Items$Item;->mSet:Z

    .line 1817
    iget v3, v2, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 1818
    iput v9, v2, Lcom/findit/battle/Items$Item;->mSlotnum:I

    goto :goto_0

    .line 1811
    :cond_4
    iget-object v6, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    invoke-static {v6}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1826
    .end local v2    # "item":Lcom/findit/battle/Items$Item;
    :cond_5
    if-ne p1, v8, :cond_0

    .line 1827
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setDefenseText()V

    goto :goto_1
.end method

.method private setItemSetSlot(ILcom/findit/battle/Items$Item;)I
    .locals 8
    .param p1, "type"    # I
    .param p2, "item"    # Lcom/findit/battle/Items$Item;

    .prologue
    const/4 v7, 0x1

    .line 1833
    const/4 v2, -0x1

    .line 1835
    .local v2, "slotnum":I
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSetSlotsLayout:[Landroid/widget/RelativeLayout;

    aget-object v3, v5, p1

    .line 1836
    .local v3, "slotslayout":Landroid/widget/RelativeLayout;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1837
    .local v0, "imageview":Landroid/widget/ImageView;
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1840
    .local v4, "textview":Landroid/widget/TextView;
    iget-object v5, p2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 1841
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p2, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 1842
    .local v1, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1843
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1848
    .end local v1    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    const/4 v5, 0x2

    if-eq p1, v5, :cond_0

    const/4 v5, 0x3

    if-ne p1, v5, :cond_1

    .line 1849
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p2, Lcom/findit/battle/Items$Item;->mNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1852
    :cond_1
    iget v2, p2, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 1856
    if-nez p1, :cond_4

    .line 1857
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setAttackText()V

    .line 1861
    :cond_2
    :goto_1
    return v2

    .line 1846
    :cond_3
    iget-object v5, p2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1858
    :cond_4
    if-ne p1, v7, :cond_2

    .line 1859
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setDefenseText()V

    goto :goto_1
.end method

.method private setItemSlot(II)V
    .locals 8
    .param p1, "slotnum"    # I
    .param p2, "itemindex"    # I

    .prologue
    const/4 v7, 0x0

    .line 1737
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSlotsLayout:[Landroid/widget/RelativeLayout;

    aget-object v3, v5, p1

    .line 1739
    .local v3, "slotslayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1740
    .local v0, "imageview":Landroid/widget/ImageView;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1741
    .local v4, "textview":Landroid/widget/TextView;
    if-gez p2, :cond_0

    .line 1744
    invoke-direct {p0, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->recycleView(Landroid/view/View;)V

    .line 1745
    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1765
    :goto_0
    return-void

    .line 1748
    :cond_0
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v5, v5, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v5, p2

    .line 1751
    .local v2, "item":Lcom/findit/battle/Items$Item;
    iget-object v5, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 1752
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v2, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 1753
    .local v1, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1754
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1759
    .end local v1    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    iget v5, v2, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    iget v5, v2, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 1760
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v2, Lcom/findit/battle/Items$Item;->mNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1762
    :cond_2
    iput p1, v2, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 1763
    iput-boolean v7, v2, Lcom/findit/battle/Items$Item;->mSet:Z

    goto :goto_0

    .line 1757
    :cond_3
    iget-object v5, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private setItemSlot(ILcom/findit/battle/Items$Item;)V
    .locals 6
    .param p1, "slotnum"    # I
    .param p2, "item"    # Lcom/findit/battle/Items$Item;

    .prologue
    .line 1768
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSlotsLayout:[Landroid/widget/RelativeLayout;

    aget-object v2, v4, p1

    .line 1770
    .local v2, "slotslayout":Landroid/widget/RelativeLayout;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1771
    .local v0, "imageview":Landroid/widget/ImageView;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1774
    .local v3, "textview":Landroid/widget/TextView;
    iget-object v4, p2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 1775
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p2, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 1776
    .local v1, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1777
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1782
    .end local v1    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    iget v4, p2, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget v4, p2, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 1783
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p2, Lcom/findit/battle/Items$Item;->mNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1787
    :cond_1
    return-void

    .line 1780
    :cond_2
    iget-object v4, p2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setItemSlot(Lcom/findit/battle/Items$Item;)Z
    .locals 10
    .param p1, "item"    # Lcom/findit/battle/Items$Item;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1865
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSlotsLayout:[Landroid/widget/RelativeLayout;

    .line 1867
    .local v4, "slotslayout":[Landroid/widget/RelativeLayout;
    array-length v3, v4

    .line 1868
    .local v3, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    move v6, v7

    .line 1890
    :goto_1
    return v6

    .line 1869
    :cond_0
    aget-object v8, v4, v0

    invoke-virtual {v8, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1870
    .local v1, "imageview":Landroid/widget/ImageView;
    aget-object v8, v4, v0

    invoke-virtual {v8, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1871
    .local v5, "textview":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v8, :cond_4

    .line 1873
    iget-object v8, p1, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    if-nez v8, :cond_3

    .line 1874
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p1, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 1875
    .local v2, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v8, -0x1

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1876
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1881
    .end local v2    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_2
    iget v8, p1, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    iget v8, p1, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    .line 1882
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p1, Lcom/findit/battle/Items$Item;->mNum:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1884
    :cond_2
    iput v0, p1, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 1885
    iput-boolean v7, p1, Lcom/findit/battle/Items$Item;->mSet:Z

    goto :goto_1

    .line 1879
    :cond_3
    iget-object v8, p1, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    invoke-static {v8}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1868
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setItemSlotWindowLocation(I)V
    .locals 4
    .param p1, "num"    # I

    .prologue
    .line 1021
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSlotWindowTotalNum:I

    if-ge p1, v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSlotsScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/findit/battle/InventoryActivity_SAMSUNG$ActionRunnable;

    iget v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSlotWindowWidth:I

    mul-int/2addr v2, p1

    invoke-direct {v1, p0, v2}, Lcom/findit/battle/InventoryActivity_SAMSUNG$ActionRunnable;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;I)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1023
    iput p1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSlotWindowNum:I

    .line 1025
    :cond_0
    return-void
.end method

.method private setItemTab()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 957
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItemTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 958
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 959
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 961
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 962
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 963
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 965
    iput v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mTabNum:I

    .line 966
    return-void
.end method

.method private setItemText()V
    .locals 5

    .prologue
    .line 1970
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mExplainTextView:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1972
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    .line 1973
    .local v1, "items":Lcom/findit/battle/Items;
    iget v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSlotNum:I

    invoke-virtual {v1, v3}, Lcom/findit/battle/Items;->getIndex(I)I

    move-result v0

    .line 1974
    .local v0, "index":I
    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    iget-object v3, v1, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1975
    iget-object v3, v1, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 1976
    iget-object v3, v1, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v3, v3, v0

    iget-object v2, v3, Lcom/findit/battle/Items$Item;->mText:Ljava/lang/String;

    .line 1977
    .local v2, "text":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1978
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mExplainTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1981
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setLearnSkill(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 2686
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v2, v2, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v2, v2, p1

    iget-object v1, v2, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgPath:Ljava/lang/String;

    .line 2687
    .local v1, "imgpath":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2688
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v3, v3, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 2689
    .local v0, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 2690
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mLearnSkillImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2695
    .end local v0    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mLearnSkillTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v4, v4, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/findit/battle/Objects$Skills$Skill;->mPoint:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mLearnSkillText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2696
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mLearnSkillImageView:Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2697
    return-void

    .line 2693
    :cond_0
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mLearnSkillImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v3, v3, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setMoveItemImage(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 2052
    if-gez p1, :cond_0

    .line 2054
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mMoveItemView:Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;

    invoke-virtual {v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->clearImage()V

    .line 2055
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mMoveItemView:Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;

    const/4 v2, -0x1

    iput v2, v1, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mIndex:I

    .line 2056
    const-string v1, "MotionEvent.ACTION_DOWN clear"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 2069
    :goto_0
    return-void

    .line 2060
    :cond_0
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v1, v1, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v1, p1

    iget-object v0, v1, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    .line 2061
    .local v0, "imgpath":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2062
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mMoveItemView:Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v2, v2, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v1, v2}, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->setImage(I)V

    .line 2066
    :goto_1
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mMoveItemView:Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;

    iput p1, v1, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mIndex:I

    .line 2067
    const-string v1, "MotionEvent.ACTION_DOWN set"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 2064
    :cond_1
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mMoveItemView:Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v2, v2, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->setImage(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setSetSlotImageAlpha(IZ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "alpha"    # Z

    .prologue
    .line 2038
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v2, v2, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, p1

    iget v1, v2, Lcom/findit/battle/Items$Item;->mType:I

    .line 2039
    .local v1, "type":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSetSlotsLayout:[Landroid/widget/RelativeLayout;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 2040
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSetSlotsLayout:[Landroid/widget/RelativeLayout;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2042
    .local v0, "imageview":Landroid/widget/ImageView;
    if-eqz p2, :cond_1

    .line 2043
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mCoverImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2047
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setSlotImageAlpha alpha: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 2049
    .end local v0    # "imageview":Landroid/widget/ImageView;
    :cond_0
    return-void

    .line 2045
    .restart local v0    # "imageview":Landroid/widget/ImageView;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setShopItemSlotWindowLocation(I)V
    .locals 4
    .param p1, "num"    # I

    .prologue
    .line 1035
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopItemSlotWindowTotalNum:I

    if-ge p1, v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopItemSlotsScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/findit/battle/InventoryActivity_SAMSUNG$ActionRunnable;

    iget v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopItemSlotWindowWidth:I

    mul-int/2addr v2, p1

    invoke-direct {v1, p0, v2}, Lcom/findit/battle/InventoryActivity_SAMSUNG$ActionRunnable;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;I)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1037
    iput p1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopItemSlotWindowNum:I

    .line 1039
    :cond_0
    return-void
.end method

.method private setShopItemText()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 1984
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopExplainTextView:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1986
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    .line 1987
    .local v0, "items":Lcom/findit/battle/Items;
    iget v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopItemTypeSlotNum:I

    .line 1988
    .local v3, "type":I
    iget v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopItemSlotNum:I

    .line 1989
    .local v1, "subtype":I
    if-le v3, v6, :cond_0

    iget-object v4, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    if-le v1, v6, :cond_0

    iget-object v4, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 1990
    iget-object v4, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v4, v4, v1

    if-eqz v4, :cond_0

    .line 1991
    iget-object v4, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v4, v4, v1

    iget-object v2, v4, Lcom/findit/battle/Items$Item;->mText:Ljava/lang/String;

    .line 1992
    .local v2, "text":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1993
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopExplainTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1996
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setShopSlot(II)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "subtype"    # I

    .prologue
    .line 1917
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopItemSlotsLayout:[Landroid/widget/RelativeLayout;

    aget-object v3, v5, p2

    .line 1918
    .local v3, "slotslayout":Landroid/widget/RelativeLayout;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1919
    .local v0, "imageview":Landroid/widget/ImageView;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1921
    .local v4, "textview":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v5, v5, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v5, p2

    .line 1924
    .local v2, "item":Lcom/findit/battle/Items$Item;
    iget-object v5, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 1925
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v2, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 1926
    .local v1, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1927
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1932
    .end local v1    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    iget v5, v2, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    iget v5, v2, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 1933
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v2, Lcom/findit/battle/Items$Item;->mNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1938
    :cond_1
    return-void

    .line 1930
    :cond_2
    iget-object v5, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setShopTab()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 972
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItemTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 973
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 974
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 976
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 977
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 978
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 980
    iput v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mTabNum:I

    .line 981
    return-void
.end method

.method private setSkillSlot(I)V
    .locals 8
    .param p1, "index"    # I

    .prologue
    const/4 v7, -0x1

    .line 1894
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillSlotsLayout:[Landroid/widget/RelativeLayout;

    aget-object v3, v5, p1

    .line 1895
    .local v3, "slotslayout":Landroid/widget/RelativeLayout;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1896
    .local v0, "imageview":Landroid/widget/ImageView;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1898
    .local v4, "textview":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v5, v5, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v2, v5, p1

    .line 1899
    .local v2, "skill":Lcom/findit/battle/Objects$Skills$Skill;
    iget v5, v2, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgId:I

    if-eq v5, v7, :cond_0

    .line 1901
    iget-object v5, v2, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgPath:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 1902
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v2, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 1903
    .local v1, "img":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1904
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1909
    .end local v1    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    iget-boolean v5, v2, Lcom/findit/battle/Objects$Skills$Skill;->mBuy:Z

    if-eqz v5, :cond_2

    .line 1910
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v2, Lcom/findit/battle/Objects$Skills$Skill;->mUpgrade:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1914
    :cond_0
    :goto_1
    return-void

    .line 1907
    :cond_1
    iget-object v5, v2, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1912
    :cond_2
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mCoverImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private setSkillSlotWindowLocation(I)V
    .locals 4
    .param p1, "num"    # I

    .prologue
    .line 1028
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillSlotWindowTotalNum:I

    if-ge p1, v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillSlotsScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/findit/battle/InventoryActivity_SAMSUNG$ActionRunnable;

    iget v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillSlotWindowWidth:I

    mul-int/2addr v2, p1

    invoke-direct {v1, p0, v2}, Lcom/findit/battle/InventoryActivity_SAMSUNG$ActionRunnable;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;I)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1030
    iput p1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillSlotWindowNum:I

    .line 1032
    :cond_0
    return-void
.end method

.method private setSkillTab()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 987
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItemTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 988
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 989
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 991
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 992
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 993
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 995
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillPointNumTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mPoint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 997
    const/4 v0, 0x2

    iput v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mTabNum:I

    .line 998
    return-void
.end method

.method private setSkillText()V
    .locals 5

    .prologue
    .line 1999
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillExplainTextView:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2001
    iget v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillSlotNum:I

    .line 2002
    .local v0, "index":I
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkills:Lcom/findit/battle/Objects$Skills;

    .line 2003
    .local v1, "skills":Lcom/findit/battle/Objects$Skills;
    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    iget v3, v1, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    if-ge v0, v3, :cond_0

    .line 2004
    iget-object v3, v1, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 2005
    iget-object v3, v1, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v3, v3, v0

    iget-object v2, v3, Lcom/findit/battle/Objects$Skills$Skill;->mText:Ljava/lang/String;

    .line 2006
    .local v2, "text":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2007
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillExplainTextView:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/findit/battle/Objects$Skills$Skill;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2010
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setSlotImageAlpha(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "alpha"    # Z

    .prologue
    .line 2027
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSlotsLayout:[Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v2, v2, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/findit/battle/Items$Item;->mSlotnum:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2029
    .local v0, "imageview":Landroid/widget/ImageView;
    if-eqz p2, :cond_0

    .line 2030
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mCoverImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2034
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSlotImageAlpha alpha: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 2035
    return-void

    .line 2032
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setTab()V
    .locals 2

    .prologue
    .line 921
    const v1, 0x7f0b0027

    invoke-virtual {p0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItemLayout:Landroid/widget/RelativeLayout;

    .line 922
    const v1, 0x7f0b0035

    invoke-virtual {p0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopLayout:Landroid/widget/RelativeLayout;

    .line 923
    const v1, 0x7f0b0049

    invoke-virtual {p0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillLayout:Landroid/widget/RelativeLayout;

    .line 925
    const v1, 0x7f0b0023

    invoke-virtual {p0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 926
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Lcom/findit/battle/InventoryActivity_SAMSUNG$5;

    invoke-direct {v1, p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG$5;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 932
    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItemTabButton:Landroid/widget/Button;

    .line 934
    const v1, 0x7f0b0024

    invoke-virtual {p0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 935
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v1, Lcom/findit/battle/InventoryActivity_SAMSUNG$6;

    invoke-direct {v1, p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG$6;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 941
    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopTabButton:Landroid/widget/Button;

    .line 943
    const v1, 0x7f0b0025

    invoke-virtual {p0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 944
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v1, Lcom/findit/battle/InventoryActivity_SAMSUNG$7;

    invoke-direct {v1, p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG$7;-><init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 950
    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillTabButton:Landroid/widget/Button;

    .line 951
    return-void
.end method


# virtual methods
.method public coordinateLayout(Landroid/view/View;[Ljava/lang/String;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rects"    # [Ljava/lang/String;

    .prologue
    .line 456
    iget v9, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mWidthRate:F

    .line 457
    .local v9, "widthrate":F
    iget v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mHeightRate:F

    .local v4, "heightrate":F
    move-object v6, p1

    .line 459
    check-cast v6, Landroid/widget/RelativeLayout;

    .line 461
    .local v6, "layout":Landroid/widget/RelativeLayout;
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    .line 462
    .local v1, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-lt v5, v1, :cond_0

    .line 512
    return-void

    .line 463
    :cond_0
    aget-object v10, p2, v5

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 465
    .local v2, "data":[Ljava/lang/String;
    const/4 v0, 0x1

    .line 466
    .local v0, "apply":Z
    const/4 v10, 0x2

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 467
    .local v8, "width":I
    const/4 v10, 0x3

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 469
    .local v3, "height":I
    packed-switch v8, :pswitch_data_0

    .line 485
    int-to-float v10, v8

    mul-float/2addr v10, v9

    float-to-int v8, v10

    .line 488
    :goto_1
    if-eqz v0, :cond_1

    .line 489
    packed-switch v3, :pswitch_data_1

    .line 503
    int-to-float v10, v3

    mul-float/2addr v10, v4

    float-to-int v3, v10

    .line 507
    :cond_1
    :goto_2
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 508
    .local v7, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v10, 0x0

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v9

    float-to-int v10, v10

    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 509
    const/4 v10, 0x1

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v4

    float-to-int v10, v10

    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 510
    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 471
    .end local v7    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_0
    const/4 v8, -0x1

    .line 472
    goto :goto_1

    .line 475
    :pswitch_1
    const/4 v8, -0x2

    .line 476
    goto :goto_1

    .line 479
    :pswitch_2
    int-to-float v10, v3

    mul-float/2addr v10, v4

    float-to-int v8, v10

    .line 480
    move v3, v8

    .line 481
    const/4 v0, 0x0

    .line 482
    goto :goto_1

    .line 491
    :pswitch_3
    const/4 v3, -0x1

    .line 492
    goto :goto_2

    .line 495
    :pswitch_4
    const/4 v3, -0x2

    .line 496
    goto :goto_2

    .line 499
    :pswitch_5
    move v3, v8

    .line 500
    goto :goto_2

    .line 469
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 489
    :pswitch_data_1
    .packed-switch -0x3
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public loadState(J)V
    .locals 23
    .param p1, "rowid"    # J

    .prologue
    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mDbhelper:Lcom/findit/battle/DBAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/findit/battle/DBAdapter;->fetchState(J)Landroid/database/Cursor;

    move-result-object v3

    .line 754
    .local v3, "c":Landroid/database/Cursor;
    if-eqz v3, :cond_4

    .line 755
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v19

    if-eqz v19, :cond_3

    .line 758
    :try_start_0
    const-string v19, "mLevel"

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mLevel:I

    .line 759
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mLevel:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 760
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mLevel:I

    .line 762
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mLevelTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mLevel:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopLevelTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mLevel:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 766
    const-string v19, "mScore"

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mScore:J

    .line 768
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "/"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mLevelScoreTable:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mLevel:I

    move/from16 v21, v0

    aget v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 769
    .local v12, "maxscore":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mScoreTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mScore:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopScoreTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mScore:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    const-string v19, "mCoin"

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mCoin:J

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mCoinNumTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mCoin:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopCoinNumTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mCoin:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 779
    const-string v19, "mPoint"

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mPoint:I

    .line 782
    const-string v19, "mSkills"

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 783
    .local v5, "data":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_1

    .line 784
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    new-array v6, v0, [C

    .line 785
    .local v6, "datas":[C
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 787
    const/4 v10, 0x0

    .line 788
    .local v10, "j":I
    add-int/lit8 v10, v10, 0x1

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkills:Lcom/findit/battle/Objects$Skills;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSetSkillActiveIndexTable:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x0

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "j":I
    .local v11, "j":I
    aget-char v19, v6, v10

    const/16 v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    const/16 v19, 0x1

    :goto_0
    aput-boolean v19, v20, v21

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkills:Lcom/findit/battle/Objects$Skills;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSetSkillActiveIndexTable:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x1

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "j":I
    .restart local v10    # "j":I
    aget-char v19, v6, v11

    const/16 v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    const/16 v19, 0x1

    :goto_1
    aput-boolean v19, v20, v21

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkills:Lcom/findit/battle/Objects$Skills;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSetSkillActiveIndexTable:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x2

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "j":I
    .restart local v11    # "j":I
    aget-char v19, v6, v10

    const/16 v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    const/16 v19, 0x1

    :goto_2
    aput-boolean v19, v20, v21

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkills:Lcom/findit/battle/Objects$Skills;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSetSkillActiveIndexTable:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x3

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "j":I
    .restart local v10    # "j":I
    aget-char v19, v6, v11

    const/16 v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    const/16 v19, 0x1

    :goto_3
    aput-boolean v19, v20, v21

    .line 795
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "j":I
    .restart local v11    # "j":I
    aget-char v16, v6, v10

    .line 797
    .local v16, "totalnum":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    move/from16 v0, v16

    if-lt v9, v0, :cond_a

    .line 807
    move/from16 v9, v16

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkills:Lcom/findit/battle/Objects$Skills;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v9, v0, :cond_e

    .line 812
    .end local v6    # "datas":[C
    .end local v9    # "i":I
    .end local v11    # "j":I
    .end local v16    # "totalnum":I
    :cond_1
    const-string v19, "mItems"

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 813
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_2

    .line 814
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    new-array v6, v0, [C

    .line 815
    .restart local v6    # "datas":[C
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 817
    const/4 v10, 0x0

    .line 818
    .restart local v10    # "j":I
    add-int/lit8 v10, v10, 0x1

    .line 820
    const/4 v9, 0x0

    .restart local v9    # "i":I
    move v11, v10

    .end local v10    # "j":I
    .restart local v11    # "j":I
    :goto_6
    const/16 v19, 0x6

    move/from16 v0, v19

    if-lt v9, v0, :cond_f

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/findit/battle/Items;->mItemTotalnum:I

    .line 850
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "j":I
    .restart local v10    # "j":I
    aget-char v16, v6, v11

    .line 852
    .restart local v16    # "totalnum":I
    const/4 v9, 0x0

    move v11, v10

    .end local v10    # "j":I
    .restart local v11    # "j":I
    :goto_7
    move/from16 v0, v16

    if-lt v9, v0, :cond_11

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/findit/battle/Items;->setSetTable()V

    .line 888
    .end local v6    # "datas":[C
    .end local v9    # "i":I
    .end local v11    # "j":I
    .end local v16    # "totalnum":I
    :cond_2
    const-string v19, "mAttack"

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mAttack:I

    .line 889
    invoke-direct/range {p0 .. p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setAttackText()V

    .line 892
    const-string v19, "mDefense"

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mDefense:I

    .line 893
    invoke-direct/range {p0 .. p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setDefenseText()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    .end local v5    # "data":Ljava/lang/String;
    .end local v12    # "maxscore":Ljava/lang/String;
    :cond_3
    :goto_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 903
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mDbhelper:Lcom/findit/battle/DBAdapter;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/findit/battle/DBAdapter;->fetchSetup(J)Landroid/database/Cursor;

    move-result-object v4

    .line 905
    .local v4, "c1":Landroid/database/Cursor;
    if-eqz v4, :cond_5

    .line 906
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v19

    if-eqz v19, :cond_5

    .line 907
    const-string v19, "mEmail"

    move-object/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mUserId:Ljava/lang/String;

    .line 910
    :cond_5
    return-void

    .line 790
    .end local v4    # "c1":Landroid/database/Cursor;
    .restart local v5    # "data":Ljava/lang/String;
    .restart local v6    # "datas":[C
    .restart local v11    # "j":I
    .restart local v12    # "maxscore":Ljava/lang/String;
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 791
    .end local v11    # "j":I
    .restart local v10    # "j":I
    :cond_7
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 792
    .end local v10    # "j":I
    .restart local v11    # "j":I
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 793
    .end local v11    # "j":I
    .restart local v10    # "j":I
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 798
    .end local v10    # "j":I
    .restart local v9    # "i":I
    .restart local v11    # "j":I
    .restart local v16    # "totalnum":I
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkills:Lcom/findit/battle/Objects$Skills;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    move-object/from16 v19, v0

    aget-object v20, v19, v9

    aget-char v19, v6, v11

    const/16 v21, 0x7fff

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_b

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "j":I
    .restart local v10    # "j":I
    aget-char v19, v6, v11

    const/high16 v21, 0x10000

    sub-int v19, v19, v21

    move v11, v10

    .end local v10    # "j":I
    .restart local v11    # "j":I
    :goto_9
    move/from16 v0, v19

    move-object/from16 v1, v20

    iput v0, v1, Lcom/findit/battle/Objects$Skills$Skill;->mNum:I

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkills:Lcom/findit/battle/Objects$Skills;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    move-object/from16 v19, v0

    aget-object v20, v19, v9

    aget-char v19, v6, v11

    const/16 v21, 0x7fff

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_c

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "j":I
    .restart local v10    # "j":I
    aget-char v19, v6, v11

    const/high16 v21, 0x10000

    sub-int v19, v19, v21

    move v11, v10

    .end local v10    # "j":I
    .restart local v11    # "j":I
    :goto_a
    move/from16 v0, v19

    move-object/from16 v1, v20

    iput v0, v1, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkills:Lcom/findit/battle/Objects$Skills;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    move-object/from16 v19, v0

    aget-object v20, v19, v9

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "j":I
    .restart local v10    # "j":I
    aget-char v19, v6, v11

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    const/16 v19, 0x1

    :goto_b
    move/from16 v0, v19

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/findit/battle/Objects$Skills$Skill;->mBuy:Z

    .line 803
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setSkillSlot(I)V

    .line 797
    add-int/lit8 v9, v9, 0x1

    move v11, v10

    .end local v10    # "j":I
    .restart local v11    # "j":I
    goto/16 :goto_4

    .line 798
    :cond_b
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "j":I
    .restart local v10    # "j":I
    aget-char v19, v6, v11

    move v11, v10

    .end local v10    # "j":I
    .restart local v11    # "j":I
    goto :goto_9

    .line 799
    :cond_c
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "j":I
    .restart local v10    # "j":I
    aget-char v19, v6, v11

    move v11, v10

    .end local v10    # "j":I
    .restart local v11    # "j":I
    goto :goto_a

    .line 800
    .end local v11    # "j":I
    .restart local v10    # "j":I
    :cond_d
    const/16 v19, 0x0

    goto :goto_b

    .line 808
    .end local v10    # "j":I
    .restart local v11    # "j":I
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setSkillSlot(I)V

    .line 807
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    .line 837
    .end local v16    # "totalnum":I
    :cond_f
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "j":I
    .restart local v10    # "j":I
    aget-char v16, v6, v11

    .line 838
    .restart local v16    # "totalnum":I
    const/16 v18, 0x0

    .local v18, "z":I
    :goto_c
    move/from16 v0, v18

    move/from16 v1, v16

    if-lt v0, v1, :cond_10

    .line 820
    add-int/lit8 v9, v9, 0x1

    move v11, v10

    .end local v10    # "j":I
    .restart local v11    # "j":I
    goto/16 :goto_6

    .line 839
    .end local v11    # "j":I
    .restart local v10    # "j":I
    :cond_10
    add-int/lit8 v10, v10, 0x1

    .line 840
    add-int/lit8 v10, v10, 0x1

    .line 841
    add-int/lit8 v10, v10, 0x1

    .line 842
    add-int/lit8 v10, v10, 0x1

    .line 843
    add-int/lit8 v10, v10, 0x1

    .line 844
    add-int/lit8 v10, v10, 0x1

    .line 845
    add-int/lit8 v10, v10, 0x1

    .line 838
    add-int/lit8 v18, v18, 0x1

    goto :goto_c

    .line 853
    .end local v10    # "j":I
    .end local v18    # "z":I
    .restart local v11    # "j":I
    :cond_11
    aget-char v19, v6, v11

    const/16 v20, 0x7fff

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_12

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "j":I
    .restart local v10    # "j":I
    aget-char v19, v6, v11

    const/high16 v20, 0x10000

    sub-int v17, v19, v20

    move v11, v10

    .line 854
    .end local v10    # "j":I
    .restart local v11    # "j":I
    .local v17, "type":I
    :goto_d
    aget-char v19, v6, v11

    const/16 v20, 0x7fff

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_13

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "j":I
    .restart local v10    # "j":I
    aget-char v19, v6, v11

    const/high16 v20, 0x10000

    sub-int v14, v19, v20

    move v11, v10

    .line 855
    .end local v10    # "j":I
    .restart local v11    # "j":I
    .local v14, "subtype":I
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1, v14}, Lcom/findit/battle/Items;->createItem(II)Lcom/findit/battle/Items$Item;

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    move-object/from16 v19, v0

    aget-object v20, v19, v9

    aget-char v19, v6, v11

    const/16 v21, 0x7fff

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_14

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "j":I
    .restart local v10    # "j":I
    aget-char v19, v6, v11

    const/high16 v21, 0x10000

    sub-int v19, v19, v21

    move v11, v10

    .end local v10    # "j":I
    .restart local v11    # "j":I
    :goto_f
    move/from16 v0, v19

    move-object/from16 v1, v20

    iput v0, v1, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    move-object/from16 v19, v0

    aget-object v20, v19, v9

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "j":I
    .restart local v10    # "j":I
    aget-char v19, v6, v11

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    const/16 v19, 0x1

    :goto_10
    move/from16 v0, v19

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/findit/battle/Items$Item;->mSet:Z

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    move-object/from16 v19, v0

    aget-object v20, v19, v9

    aget-char v19, v6, v10

    const/16 v21, 0x7fff

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_16

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "j":I
    .restart local v11    # "j":I
    aget-char v19, v6, v10

    const/high16 v21, 0x10000

    sub-int v19, v19, v21

    :goto_11
    move/from16 v0, v19

    move-object/from16 v1, v20

    iput v0, v1, Lcom/findit/battle/Items$Item;->mNum:I

    .line 863
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "j":I
    .restart local v10    # "j":I
    aget-char v15, v6, v11

    .line 864
    .local v15, "total":I
    if-nez v15, :cond_17

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    move-object/from16 v19, v0

    aget-object v19, v19, v9

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    .line 873
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    move-object/from16 v19, v0

    aget-object v19, v19, v9

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/findit/battle/Items$Item;->mSet:Z

    move/from16 v19, v0

    if-eqz v19, :cond_19

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    move-object/from16 v19, v0

    aget-object v19, v19, v9

    move-object/from16 v0, v19

    iget v0, v0, Lcom/findit/battle/Items$Item;->mType:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v9}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setItemSetSlot(II)I

    .line 852
    :goto_13
    add-int/lit8 v9, v9, 0x1

    move v11, v10

    .end local v10    # "j":I
    .restart local v11    # "j":I
    goto/16 :goto_7

    .line 853
    .end local v14    # "subtype":I
    .end local v15    # "total":I
    .end local v17    # "type":I
    :cond_12
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "j":I
    .restart local v10    # "j":I
    aget-char v17, v6, v11

    move v11, v10

    .end local v10    # "j":I
    .restart local v11    # "j":I
    goto/16 :goto_d

    .line 854
    .restart local v17    # "type":I
    :cond_13
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "j":I
    .restart local v10    # "j":I
    aget-char v14, v6, v11

    move v11, v10

    .end local v10    # "j":I
    .restart local v11    # "j":I
    goto/16 :goto_e

    .line 859
    .restart local v14    # "subtype":I
    :cond_14
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "j":I
    .restart local v10    # "j":I
    aget-char v19, v6, v11

    move v11, v10

    .end local v10    # "j":I
    .restart local v11    # "j":I
    goto/16 :goto_f

    .line 860
    .end local v11    # "j":I
    .restart local v10    # "j":I
    :cond_15
    const/16 v19, 0x0

    goto/16 :goto_10

    .line 861
    :cond_16
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "j":I
    .restart local v11    # "j":I
    aget-char v19, v6, v10

    goto :goto_11

    .line 867
    .end local v11    # "j":I
    .restart local v10    # "j":I
    .restart local v15    # "total":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    move-object/from16 v19, v0

    aget-object v19, v19, v9

    const-string v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    .line 868
    const/4 v8, 0x0

    .local v8, "h":I
    move v11, v10

    .end local v10    # "j":I
    .restart local v11    # "j":I
    :goto_14
    if-lt v8, v15, :cond_18

    move v10, v11

    .end local v11    # "j":I
    .restart local v10    # "j":I
    goto :goto_12

    .line 869
    .end local v10    # "j":I
    .restart local v11    # "j":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    move-object/from16 v19, v0

    aget-object v19, v19, v9

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "j":I
    .restart local v10    # "j":I
    aget-char v20, v6, v11

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    .line 868
    add-int/lit8 v8, v8, 0x1

    move v11, v10

    .end local v10    # "j":I
    .restart local v11    # "j":I
    goto :goto_14

    .line 876
    .end local v8    # "h":I
    .end local v11    # "j":I
    .restart local v10    # "j":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    move-object/from16 v19, v0

    aget-object v19, v19, v9

    move-object/from16 v0, v19

    iget v13, v0, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 877
    .local v13, "slotnum":I
    if-gez v13, :cond_1a

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    move-object/from16 v19, v0

    aget-object v19, v19, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setItemSlot(Lcom/findit/battle/Items$Item;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_13

    .line 895
    .end local v5    # "data":Ljava/lang/String;
    .end local v6    # "datas":[C
    .end local v9    # "i":I
    .end local v10    # "j":I
    .end local v12    # "maxscore":Ljava/lang/String;
    .end local v13    # "slotnum":I
    .end local v14    # "subtype":I
    .end local v15    # "total":I
    .end local v16    # "totalnum":I
    .end local v17    # "type":I
    :catch_0
    move-exception v7

    .line 896
    .local v7, "e":Ljava/lang/Exception;
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "loadState Exception: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 880
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v5    # "data":Ljava/lang/String;
    .restart local v6    # "datas":[C
    .restart local v9    # "i":I
    .restart local v10    # "j":I
    .restart local v12    # "maxscore":Ljava/lang/String;
    .restart local v13    # "slotnum":I
    .restart local v14    # "subtype":I
    .restart local v15    # "total":I
    .restart local v16    # "totalnum":I
    .restart local v17    # "type":I
    :cond_1a
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v9}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setItemSlot(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_13
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 2893
    invoke-super {p0, p1, p2, p3}, Lcom/feelingk/iap/IAPActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2895
    sparse-switch p1, :sswitch_data_0

    .line 2939
    :cond_0
    :goto_0
    return-void

    .line 2897
    :sswitch_0
    if-eqz p3, :cond_0

    .line 2898
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 2901
    .local v7, "imageuri":Landroid/net/Uri;
    invoke-direct {p0, v7}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getImagePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 2904
    .local v8, "path":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 2905
    invoke-direct {p0, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->cutImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mCutImagePath:Ljava/lang/String;

    goto :goto_0

    .line 2911
    .end local v7    # "imageuri":Landroid/net/Uri;
    .end local v8    # "path":Ljava/lang/String;
    :sswitch_1
    if-eqz p3, :cond_0

    .line 2913
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getLastImagePath()Ljava/lang/String;

    move-result-object v8

    .line 2916
    .restart local v8    # "path":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 2917
    invoke-direct {p0, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->cutImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mCutImagePath:Ljava/lang/String;

    goto :goto_0

    .line 2922
    .end local v8    # "path":Ljava/lang/String;
    :sswitch_2
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mCutImagePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2930
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mCutImagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2932
    .local v3, "image":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mBodyImg:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mActionImg:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mWidthRate:F

    iget v5, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mHeightRate:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->drawImg(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2933
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mCharacterImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v6}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->compressBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2934
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 2895
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/feelingk/iap/IAPActivity;->onCreate(Landroid/os/Bundle;)V

    .line 186
    const-string v8, ">> onCreate()"

    invoke-static {v8}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 187
    const-string v8, "InventoryActivity_SAMSUNG"

    invoke-static {v8}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 188
    const v8, 0x7f030005

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setContentView(I)V

    .line 190
    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setVolumeControlStream(I)V

    .line 192
    new-instance v8, Lcom/findit/battle/CommonDialog;

    invoke-direct {v8, p0}, Lcom/findit/battle/CommonDialog;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mCommonDialog:Lcom/findit/battle/CommonDialog;

    .line 194
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09004f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mBuyListTitleText:Ljava/lang/String;

    .line 195
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f060000

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mLevelScoreTable:[I

    .line 198
    const v8, 0x7f0b000e

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mCharacterImageView:Landroid/widget/ImageView;

    .line 199
    const v8, 0x7f0b0020

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mAttackTextView:Landroid/widget/TextView;

    .line 200
    const v8, 0x7f0b0022

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mDefenseTextView:Landroid/widget/TextView;

    .line 201
    const v8, 0x7f0b0029

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mLevelTextView:Landroid/widget/TextView;

    .line 202
    const v8, 0x7f0b0037

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopLevelTextView:Landroid/widget/TextView;

    .line 203
    const v8, 0x7f0b002b

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mScoreTextView:Landroid/widget/TextView;

    .line 204
    const v8, 0x7f0b0039

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopScoreTextView:Landroid/widget/TextView;

    .line 205
    const v8, 0x7f0b002d

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mCoinNumTextView:Landroid/widget/TextView;

    .line 206
    const v8, 0x7f0b003b

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopCoinNumTextView:Landroid/widget/TextView;

    .line 207
    const v8, 0x7f0b0034

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mExplainTextView:Landroid/widget/TextView;

    .line 208
    const v8, 0x7f0b0043

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mShopExplainTextView:Landroid/widget/TextView;

    .line 209
    const v8, 0x7f0b0050

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkillExplainTextView:Landroid/widget/TextView;

    .line 212
    const/4 v8, 0x3

    new-array v8, v8, [Landroid/view/animation/Animation;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mAnimation:[Landroid/view/animation/Animation;

    .line 213
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mAnimation:[Landroid/view/animation/Animation;

    const/4 v9, 0x0

    const v10, 0x7f040001

    invoke-static {p0, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    aput-object v10, v8, v9

    .line 214
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mAnimation:[Landroid/view/animation/Animation;

    const/4 v9, 0x1

    const v10, 0x7f040004

    invoke-static {p0, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    aput-object v10, v8, v9

    .line 215
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mAnimation:[Landroid/view/animation/Animation;

    const/4 v9, 0x2

    const v10, 0x7f040007

    invoke-static {p0, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    aput-object v10, v8, v9

    .line 217
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0201be

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mCoverImg:Landroid/graphics/drawable/Drawable;

    .line 218
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mCoverImg:Landroid/graphics/drawable/Drawable;

    const/16 v9, 0xdc

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 245
    new-instance v8, Lcom/findit/battle/Items;

    invoke-direct {v8, p0}, Lcom/findit/battle/Items;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    .line 246
    new-instance v5, Lcom/findit/battle/Objects;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v5, p0, v8, v9, v10}, Lcom/findit/battle/Objects;-><init>(Landroid/content/Context;IIF)V

    .line 247
    .local v5, "objects":Lcom/findit/battle/Objects;
    iget-object v8, v5, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkills:Lcom/findit/battle/Objects$Skills;

    .line 250
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v6, v8, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    .line 252
    .local v6, "titem":[Lcom/findit/battle/Items$TypeItem;
    const/4 v8, 0x4

    new-array v4, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "0900744574"

    aput-object v9, v4, v8

    const/4 v8, 0x1

    const-string v9, "0900744605"

    aput-object v9, v4, v8

    const/4 v8, 0x2

    .line 253
    const-string v9, "0900744606"

    aput-object v9, v4, v8

    const/4 v8, 0x3

    const-string v9, "0900744607"

    aput-object v9, v4, v8

    .line 254
    .local v4, "keys":[Ljava/lang/String;
    iput-object v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mPurchaseItemKey:[Ljava/lang/String;

    .line 256
    const/4 v8, 0x4

    new-array v3, v8, [Lcom/findit/battle/Items$Item;

    const/4 v8, 0x0

    const/4 v9, 0x4

    aget-object v9, v6, v9

    iget-object v9, v9, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aput-object v9, v3, v8

    const/4 v8, 0x1

    const/4 v9, 0x4

    aget-object v9, v6, v9

    iget-object v9, v9, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aput-object v9, v3, v8

    const/4 v8, 0x2

    .line 257
    const/4 v9, 0x4

    aget-object v9, v6, v9

    iget-object v9, v9, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    aput-object v9, v3, v8

    const/4 v8, 0x3

    const/4 v9, 0x4

    aget-object v9, v6, v9

    iget-object v9, v9, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    const/4 v10, 0x3

    aget-object v9, v9, v10

    aput-object v9, v3, v8

    .line 259
    .local v3, "items":[Lcom/findit/battle/Items$Item;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mPurchaseItemMap:Ljava/util/HashMap;

    .line 260
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, v4

    if-lt v2, v8, :cond_1

    .line 264
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->intiatieInAppPurchases()V

    .line 266
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 267
    .local v0, "extra":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 282
    const-string v8, "displaywidth"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x44a00000    # 1280.0f

    div-float v7, v8, v9

    .line 283
    .local v7, "widthrate":F
    const-string v8, "displayheight"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x44480000    # 800.0f

    div-float v1, v8, v9

    .line 290
    .local v1, "heightrate":F
    const-string v8, "bodyimgid"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mBodyImgId:I

    .line 291
    const-string v8, "actionimgid"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mActionImgId:I

    .line 292
    const-string v8, "faceimgid"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mFaceImgId:I

    .line 293
    const-string v8, "bodyimgpath"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mBodyImgPath:Ljava/lang/String;

    .line 294
    const-string v8, "actionimgpath"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mActionImgPath:Ljava/lang/String;

    .line 295
    const-string v8, "faceimgpath"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mFaceImgPath:Ljava/lang/String;

    .line 297
    mul-float v8, v7, v1

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v8, v9

    iput v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mMoveStandard:F

    .line 299
    iput v7, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mWidthRate:F

    .line 300
    iput v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mHeightRate:F

    .line 302
    const v8, 0x7f0b000c

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060001

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->coordinateLayout(Landroid/view/View;[Ljava/lang/String;)V

    .line 303
    const v8, 0x7f0b0027

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060002

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->coordinateLayout(Landroid/view/View;[Ljava/lang/String;)V

    .line 304
    const v8, 0x7f0b0035

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060003

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->coordinateLayout(Landroid/view/View;[Ljava/lang/String;)V

    .line 305
    const v8, 0x7f0b0046

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060004

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->coordinateLayout(Landroid/view/View;[Ljava/lang/String;)V

    .line 306
    const v8, 0x7f0b003d

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060005

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->coordinateLayout(Landroid/view/View;[Ljava/lang/String;)V

    .line 307
    const v8, 0x7f0b0049

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060006

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->coordinateLayout(Landroid/view/View;[Ljava/lang/String;)V

    .line 309
    invoke-direct {p0, v7, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->createItemSlots(FF)V

    .line 310
    invoke-direct {p0, v7, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->createShopSlots(FF)V

    .line 311
    invoke-direct {p0, v7, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->createSkillSlots(FF)V

    .line 313
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setItemText()V

    .line 316
    .end local v1    # "heightrate":F
    .end local v7    # "widthrate":F
    :cond_0
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->createDeleteItemDlg()V

    .line 317
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->createLearnSkillDlg()V

    .line 318
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->createBuyItemDlg()V

    .line 319
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->createBuyListDlg()V

    .line 320
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setTab()V

    .line 322
    const/4 v8, 0x0

    iput v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mTabNum:I

    .line 323
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mLoadingView:Z

    .line 326
    new-instance v8, Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-direct {v8, p0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 327
    return-void

    .line 261
    .end local v0    # "extra":Landroid/os/Bundle;
    :cond_1
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mPurchaseItemMap:Ljava/util/HashMap;

    aget-object v9, v4, v2

    aget-object v10, v3, v2

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 449
    invoke-super {p0}, Lcom/feelingk/iap/IAPActivity;->onDestroy()V

    .line 453
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 2830
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 2831
    iput-boolean v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mLoadingView:Z

    .line 2833
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->finish()V

    .line 2834
    const v1, 0x7f040002

    const v2, 0x7f040003

    invoke-virtual {p0, v1, v2}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->overridePendingTransition(II)V

    .line 2839
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/feelingk/iap/IAPActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 411
    const-string v0, "InventoryActivity onPause"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 412
    invoke-super {p0}, Lcom/feelingk/iap/IAPActivity;->onPause()V

    .line 417
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mDbhelper:Lcom/findit/battle/DBAdapter;

    if-eqz v0, :cond_0

    .line 418
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->saveState(J)V

    .line 420
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mDbhelper:Lcom/findit/battle/DBAdapter;

    invoke-virtual {v0}, Lcom/findit/battle/DBAdapter;->close()V

    .line 421
    iput-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mDbhelper:Lcom/findit/battle/DBAdapter;

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSoundPoolMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    .line 432
    iput-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSoundPoolMap:Ljava/util/HashMap;

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSoundpool:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    .line 435
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSoundpool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 436
    iput-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSoundpool:Landroid/media/SoundPool;

    .line 441
    :cond_2
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->recycleImages()V

    .line 443
    iget-boolean v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mLoadingView:Z

    if-eqz v0, :cond_3

    .line 444
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->createLoadingView()V

    .line 445
    :cond_3
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 331
    const-string v1, "InventoryActivity onResume"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 332
    invoke-super {p0}, Lcom/feelingk/iap/IAPActivity;->onResume()V

    .line 334
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->loadImages()V

    .line 338
    new-instance v0, Lcom/findit/battle/DBAdapter;

    invoke-direct {v0, p0}, Lcom/findit/battle/DBAdapter;-><init>(Landroid/content/Context;)V

    .line 339
    .local v0, "dbhelper":Lcom/findit/battle/DBAdapter;
    invoke-virtual {v0}, Lcom/findit/battle/DBAdapter;->open()Lcom/findit/battle/DBAdapter;

    .line 340
    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mDbhelper:Lcom/findit/battle/DBAdapter;

    .line 343
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->loadState(J)V

    .line 344
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setItemText()V

    .line 345
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setSkillText()V

    .line 389
    new-instance v1, Landroid/media/SoundPool;

    const/16 v2, 0xa

    const/4 v3, 0x3

    const/16 v4, 0x3e8

    invoke-direct {v1, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSoundpool:Landroid/media/SoundPool;

    .line 390
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSoundPoolMap:Ljava/util/HashMap;

    .line 391
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSoundpool:Landroid/media/SoundPool;

    const v4, 0x7f050005

    const/4 v5, 0x1

    invoke-virtual {v3, p0, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mTabNum:I

    packed-switch v1, :pswitch_data_0

    .line 407
    :goto_0
    return-void

    .line 396
    :pswitch_0
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setItemTab()V

    goto :goto_0

    .line 400
    :pswitch_1
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setShopTab()V

    goto :goto_0

    .line 404
    :pswitch_2
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setSkillTab()V

    goto :goto_0

    .line 394
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 2844
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    .line 2845
    .local v1, "touchx":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v2, v0

    .line 2848
    .local v2, "touchy":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2888
    :cond_0
    :goto_0
    return v10

    .line 2850
    :pswitch_0
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mMoveItemView:Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;

    iget v5, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mIndex:I

    .line 2851
    .local v5, "index":I
    if-le v5, v9, :cond_1

    .line 2852
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mMoveItemView:Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;

    invoke-virtual {v0, v1, v2, v8, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->move(IIII)V

    .line 2853
    invoke-direct {p0, v5, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setSetSlotImageAlpha(IZ)V

    .line 2857
    iget v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSlotWindowX:I

    neg-int v3, v0

    iget v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSlotWindowY:I

    neg-int v4, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->changeItemSlots(IIIII)V

    .line 2859
    :cond_1
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mMoveItemView:Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;

    invoke-virtual {v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->fadeView()V

    .line 2861
    invoke-direct {p0, v9, v9, v8, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setFirstTouch(IIII)V

    goto :goto_0

    .line 2865
    .end local v5    # "index":I
    :pswitch_1
    invoke-direct {p0, v1, v2, v8, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->isActionMove(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2868
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mMoveItemView:Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;

    iget v5, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mIndex:I

    .line 2869
    .restart local v5    # "index":I
    if-le v5, v9, :cond_2

    .line 2870
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mMoveItemView:Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;

    invoke-virtual {v0, v1, v2, v8, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->move(IIII)V

    .line 2871
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mMoveItemView:Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;

    invoke-virtual {v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->appearView()V

    .line 2872
    invoke-direct {p0, v5, v10}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setSetSlotImageAlpha(IZ)V

    .line 2875
    :cond_2
    invoke-direct {p0, v9, v9, v8, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setFirstTouch(IIII)V

    goto :goto_0

    .line 2879
    .end local v5    # "index":I
    :pswitch_2
    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSetItemTypeTable:[I

    .line 2880
    .local v6, "setitemtypetable":[I
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mMoveItemView:Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;

    invoke-virtual {v0, v1, v2, v8, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->touchRect(IIII)I

    move-result v7

    .line 2881
    .local v7, "slotnum":I
    if-le v7, v9, :cond_3

    array-length v0, v6

    if-ge v7, v0, :cond_3

    .line 2882
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    aget v3, v6, v7

    invoke-virtual {v0, v3}, Lcom/findit/battle/Items;->getSetIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setMoveItemImage(I)V

    .line 2884
    :cond_3
    invoke-direct {p0, v1, v2, v8, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->setFirstTouch(IIII)V

    goto :goto_0

    .line 2848
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public playSound(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 914
    iget-boolean v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSoundon:Z

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSoundpool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSoundPoolMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSoundpool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 918
    :cond_0
    return-void
.end method

.method public saveState(J)V
    .locals 12
    .param p1, "rowid"    # J

    .prologue
    const/4 v11, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 687
    new-array v3, v1, [I

    .line 688
    .local v3, "intvalues":[I
    new-array v4, v11, [J

    .line 689
    .local v4, "longvalues":[J
    new-array v5, v11, [Ljava/lang/String;

    const-string v0, ""

    aput-object v0, v5, v2

    const-string v0, ""

    aput-object v0, v5, v1

    .line 692
    .local v5, "strvalues":[Ljava/lang/String;
    iget-wide v9, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mScore:J

    aput-wide v9, v4, v2

    .line 693
    iget-wide v9, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mCoin:J

    aput-wide v9, v4, v1

    .line 696
    iget v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mPoint:I

    aput v0, v3, v2

    .line 699
    aget-object v0, v5, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 700
    aget-object v0, v5, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSetSkillActiveIndexTable:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 701
    aget-object v0, v5, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSetSkillActiveIndexTable:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 702
    aget-object v0, v5, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSetSkillActiveIndexTable:[Z

    aget-boolean v0, v0, v11

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 703
    aget-object v0, v5, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSetSkillActiveIndexTable:[Z

    const/4 v10, 0x3

    aget-boolean v0, v0, v10

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 704
    aget-object v0, v5, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget v0, v0, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 705
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget v0, v0, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    if-lt v6, v0, :cond_4

    .line 712
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 714
    const/4 v6, 0x0

    :goto_5
    const/4 v0, 0x6

    if-lt v6, v0, :cond_6

    .line 728
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget v8, v0, Lcom/findit/battle/Items;->mItemTotalnum:I

    .line 729
    .local v8, "totalnum":I
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v0, v8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 730
    const/4 v6, 0x0

    :goto_6
    if-lt v6, v8, :cond_8

    .line 745
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mDbhelper:Lcom/findit/battle/DBAdapter;

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/findit/battle/DBAdapter;->updateStateForInven(J[I[J[Ljava/lang/String;)Z

    .line 748
    return-void

    .end local v6    # "i":I
    .end local v8    # "totalnum":I
    :cond_0
    move v0, v2

    .line 700
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 701
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 702
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 703
    goto :goto_3

    .line 706
    .restart local v6    # "i":I
    :cond_4
    aget-object v0, v5, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/findit/battle/Objects$Skills$Skill;->mNum:I

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 707
    aget-object v0, v5, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 708
    aget-object v0, v5, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v0, v0, v6

    iget-boolean v0, v0, Lcom/findit/battle/Objects$Skills$Skill;->mBuy:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_7
    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 705
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 708
    goto :goto_7

    .line 715
    :cond_6
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v0, v0, v6

    iget v8, v0, Lcom/findit/battle/Items$TypeItem;->mSubItemTotalnum:I

    .line 716
    .restart local v8    # "totalnum":I
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v0, v8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 717
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_8
    if-lt v7, v8, :cond_7

    .line 714
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 718
    :cond_7
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v0, v0, v6

    iget-object v0, v0, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v7

    iget v0, v0, Lcom/findit/battle/Items$Item;->mType:I

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 719
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v0, v0, v6

    iget-object v0, v0, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v7

    iget v0, v0, Lcom/findit/battle/Items$Item;->mSubType:I

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 720
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v0, v0, v6

    iget-object v0, v0, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v7

    iget v0, v0, Lcom/findit/battle/Items$Item;->mSlotnum:I

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 721
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v0, v0, v6

    iget-object v0, v0, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v7

    iget v0, v0, Lcom/findit/battle/Items$Item;->mNum:I

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 722
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v0, v0, v6

    iget-object v0, v0, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v7

    iget v0, v0, Lcom/findit/battle/Items$Item;->mPower:I

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 723
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v0, v0, v6

    iget-object v0, v0, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v7

    iget v0, v0, Lcom/findit/battle/Items$Item;->mPrice:I

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 724
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v0, v0, v6

    iget-object v0, v0, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v7

    iget v0, v0, Lcom/findit/battle/Items$Item;->mMoney:I

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 717
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8

    .line 731
    .end local v7    # "j":I
    :cond_8
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/findit/battle/Items$Item;->mType:I

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 732
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/findit/battle/Items$Item;->mSubType:I

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 733
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/findit/battle/Items$Item;->mSlotnum:I

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 734
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v6

    iget-boolean v0, v0, Lcom/findit/battle/Items$Item;->mSet:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 735
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/findit/battle/Items$Item;->mNum:I

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 737
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v6

    iget-object v0, v0, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 738
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 730
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    :cond_9
    move v0, v2

    .line 734
    goto :goto_9

    .line 740
    :cond_a
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v6

    iget-object v0, v0, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 741
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v6

    iget-object v0, v0, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    goto :goto_a
.end method

.method public sendAddCoin(J)V
    .locals 7
    .param p1, "coin"    # J

    .prologue
    .line 2626
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 2628
    .local v0, "connectnetwork":Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    :cond_0
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2631
    const-string v1, "http://14.63.220.39/"

    const-string v2, "app/member/addCoin.json"

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setServerUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 2632
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->clearParameter()V

    .line 2633
    const-string v1, "userId"

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2634
    const-string v1, "coin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendAddCoin: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 2637
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mCommonDialog:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v1}, Lcom/findit/battle/CommonDialog;->showProgressDlg()V

    .line 2638
    const-string v1, "utf-8"

    const-string v2, "GET"

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    neg-long v5, p1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mCoinResultHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->startParsingData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V

    .line 2639
    return-void
.end method

.method public sendSpendCoin(J)V
    .locals 6
    .param p1, "coin"    # J

    .prologue
    .line 2642
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 2644
    .local v0, "connectnetwork":Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    :cond_0
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2647
    const-string v1, "http://14.63.220.39/"

    const-string v2, "app/member/spendCoin.json"

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setServerUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 2648
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->clearParameter()V

    .line 2649
    const-string v1, "userId"

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    const-string v1, "coin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2652
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendSpendCoin: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 2653
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mCommonDialog:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v1}, Lcom/findit/battle/CommonDialog;->showProgressDlg()V

    .line 2654
    const-string v1, "utf-8"

    const-string v2, "GET"

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG;->mCoinResultHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->startParsingData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V

    .line 2655
    return-void
.end method
