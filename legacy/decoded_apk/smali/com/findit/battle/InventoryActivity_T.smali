.class public Lcom/findit/battle/InventoryActivity_T;
.super Lcom/feelingk/iap/IAPActivity;
.source "InventoryActivity_T.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/findit/battle/InventoryActivity_T$ActionRunnable;,
        Lcom/findit/battle/InventoryActivity_T$BuyList;,
        Lcom/findit/battle/InventoryActivity_T$BuyListAdapter;,
        Lcom/findit/battle/InventoryActivity_T$MoveView;
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

.field private mMoveItemView:Lcom/findit/battle/InventoryActivity_T$MoveView;

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
    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSoundPoolMap:Ljava/util/HashMap;

    .line 156
    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSoundpool:Landroid/media/SoundPool;

    .line 2978
    new-instance v0, Lcom/findit/battle/InventoryActivity_T$1;

    invoke-direct {v0, p0}, Lcom/findit/battle/InventoryActivity_T$1;-><init>(Lcom/findit/battle/InventoryActivity_T;)V

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    .line 3062
    new-instance v0, Lcom/findit/battle/InventoryActivity_T$2;

    invoke-direct {v0, p0}, Lcom/findit/battle/InventoryActivity_T$2;-><init>(Lcom/findit/battle/InventoryActivity_T;)V

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mBuyResultHandler:Landroid/os/Handler;

    .line 3124
    new-instance v0, Lcom/findit/battle/InventoryActivity_T$3;

    invoke-direct {v0, p0}, Lcom/findit/battle/InventoryActivity_T$3;-><init>(Lcom/findit/battle/InventoryActivity_T;)V

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mLearnResultHandler:Landroid/os/Handler;

    .line 3166
    new-instance v0, Lcom/findit/battle/InventoryActivity_T$4;

    invoke-direct {v0, p0}, Lcom/findit/battle/InventoryActivity_T$4;-><init>(Lcom/findit/battle/InventoryActivity_T;)V

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mCoinResultHandler:Landroid/os/Handler;

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/findit/battle/InventoryActivity_T;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mPurchaseItemMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1(Lcom/findit/battle/InventoryActivity_T;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mPurchaseId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/findit/battle/InventoryActivity_T;ILcom/findit/battle/Items$Item;)I
    .locals 1

    .prologue
    .line 1837
    invoke-direct {p0, p1, p2}, Lcom/findit/battle/InventoryActivity_T;->setItemSetSlot(ILcom/findit/battle/Items$Item;)I

    move-result v0

    return v0
.end method

.method static synthetic access$11(Lcom/findit/battle/InventoryActivity_T;ILcom/findit/battle/Items$Item;)V
    .locals 0

    .prologue
    .line 1772
    invoke-direct {p0, p1, p2}, Lcom/findit/battle/InventoryActivity_T;->setItemSlot(ILcom/findit/battle/Items$Item;)V

    return-void
.end method

.method static synthetic access$12(Lcom/findit/battle/InventoryActivity_T;)[Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSkillSlotsLayout:[Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$13(Lcom/findit/battle/InventoryActivity_T;)Lcom/findit/battle/Objects$Skills;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSkills:Lcom/findit/battle/Objects$Skills;

    return-object v0
.end method

.method static synthetic access$14(Lcom/findit/battle/InventoryActivity_T;)I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/findit/battle/InventoryActivity_T;->mPoint:I

    return v0
.end method

.method static synthetic access$15(Lcom/findit/battle/InventoryActivity_T;I)V
    .locals 0

    .prologue
    .line 168
    iput p1, p0, Lcom/findit/battle/InventoryActivity_T;->mPoint:I

    return-void
.end method

.method static synthetic access$16(Lcom/findit/battle/InventoryActivity_T;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSkillPointNumTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/findit/battle/InventoryActivity_T;I)V
    .locals 0

    .prologue
    .line 1898
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_T;->setSkillSlot(I)V

    return-void
.end method

.method static synthetic access$18(Lcom/findit/battle/InventoryActivity_T;)Landroid/widget/HorizontalScrollView;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSlotsScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$19(Lcom/findit/battle/InventoryActivity_T;)V
    .locals 0

    .prologue
    .line 958
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_T;->setItemTab()V

    return-void
.end method

.method static synthetic access$2(Lcom/findit/battle/InventoryActivity_T;Lcom/findit/battle/Items$Item;)V
    .locals 0

    .prologue
    .line 2745
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_T;->applyPurchaseItem(Lcom/findit/battle/Items$Item;)V

    return-void
.end method

.method static synthetic access$20(Lcom/findit/battle/InventoryActivity_T;)V
    .locals 0

    .prologue
    .line 973
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_T;->setShopTab()V

    return-void
.end method

.method static synthetic access$21(Lcom/findit/battle/InventoryActivity_T;)V
    .locals 0

    .prologue
    .line 988
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_T;->setSkillTab()V

    return-void
.end method

.method static synthetic access$22(Lcom/findit/battle/InventoryActivity_T;)Lcom/findit/battle/InventoryActivity_T$MoveView;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mMoveItemView:Lcom/findit/battle/InventoryActivity_T$MoveView;

    return-object v0
.end method

.method static synthetic access$23(Lcom/findit/battle/InventoryActivity_T;)I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSlotWindowX:I

    return v0
.end method

.method static synthetic access$24(Lcom/findit/battle/InventoryActivity_T;)I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSlotWindowY:I

    return v0
.end method

.method static synthetic access$25(Lcom/findit/battle/InventoryActivity_T;IZ)V
    .locals 0

    .prologue
    .line 2031
    invoke-direct {p0, p1, p2}, Lcom/findit/battle/InventoryActivity_T;->setSlotImageAlpha(IZ)V

    return-void
.end method

.method static synthetic access$26(Lcom/findit/battle/InventoryActivity_T;IIIII)Z
    .locals 1

    .prologue
    .line 1715
    invoke-direct/range {p0 .. p5}, Lcom/findit/battle/InventoryActivity_T;->changeSetItemSlots(IIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$27(Lcom/findit/battle/InventoryActivity_T;I)V
    .locals 0

    .prologue
    .line 2662
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_T;->setDeleteItem(I)V

    return-void
.end method

.method static synthetic access$28(Lcom/findit/battle/InventoryActivity_T;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mDeleteItemDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$29(Lcom/findit/battle/InventoryActivity_T;IIIII)V
    .locals 0

    .prologue
    .line 1663
    invoke-direct/range {p0 .. p5}, Lcom/findit/battle/InventoryActivity_T;->changeItemSlots(IIIII)V

    return-void
.end method

.method static synthetic access$3(Lcom/findit/battle/InventoryActivity_T;)Lcom/findit/battle/CommonDialog;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mCommonDialog:Lcom/findit/battle/CommonDialog;

    return-object v0
.end method

.method static synthetic access$30(Lcom/findit/battle/InventoryActivity_T;IIII)V
    .locals 0

    .prologue
    .line 2185
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/findit/battle/InventoryActivity_T;->setFirstTouch(IIII)V

    return-void
.end method

.method static synthetic access$31(Lcom/findit/battle/InventoryActivity_T;IIII)Z
    .locals 1

    .prologue
    .line 2168
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/findit/battle/InventoryActivity_T;->isActionMove(IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$32(Lcom/findit/battle/InventoryActivity_T;)I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSlotNum:I

    return v0
.end method

.method static synthetic access$33(Lcom/findit/battle/InventoryActivity_T;)[Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSlotsLayout:[Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$34(Lcom/findit/battle/InventoryActivity_T;I)V
    .locals 0

    .prologue
    .line 170
    iput p1, p0, Lcom/findit/battle/InventoryActivity_T;->mSlotNum:I

    return-void
.end method

.method static synthetic access$35(Lcom/findit/battle/InventoryActivity_T;)V
    .locals 0

    .prologue
    .line 1974
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_T;->setItemText()V

    return-void
.end method

.method static synthetic access$36(Lcom/findit/battle/InventoryActivity_T;I)V
    .locals 0

    .prologue
    .line 2056
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_T;->setMoveItemImage(I)V

    return-void
.end method

.method static synthetic access$37(Lcom/findit/battle/InventoryActivity_T;)I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSlotWindowNum:I

    return v0
.end method

.method static synthetic access$38(Lcom/findit/battle/InventoryActivity_T;I)V
    .locals 0

    .prologue
    .line 1025
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_T;->setItemSlotWindowLocation(I)V

    return-void
.end method

.method static synthetic access$39(Lcom/findit/battle/InventoryActivity_T;)[Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mShopSlotsLayout:[Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/findit/battle/InventoryActivity_T;)Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    return-object v0
.end method

.method static synthetic access$40(Lcom/findit/battle/InventoryActivity_T;)I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/findit/battle/InventoryActivity_T;->mShopItemTypeSlotNum:I

    return v0
.end method

.method static synthetic access$41(Lcom/findit/battle/InventoryActivity_T;I)V
    .locals 0

    .prologue
    .line 1945
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_T;->clearShopSlot(I)V

    return-void
.end method

.method static synthetic access$42(Lcom/findit/battle/InventoryActivity_T;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mShopExplainTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$43(Lcom/findit/battle/InventoryActivity_T;II)V
    .locals 0

    .prologue
    .line 1921
    invoke-direct {p0, p1, p2}, Lcom/findit/battle/InventoryActivity_T;->setShopSlot(II)V

    return-void
.end method

.method static synthetic access$44(Lcom/findit/battle/InventoryActivity_T;I)V
    .locals 0

    .prologue
    .line 171
    iput p1, p0, Lcom/findit/battle/InventoryActivity_T;->mShopItemTypeSlotNum:I

    return-void
.end method

.method static synthetic access$45(Lcom/findit/battle/InventoryActivity_T;Landroid/widget/RelativeLayout;I)V
    .locals 0

    .prologue
    .line 2017
    invoke-direct {p0, p1, p2}, Lcom/findit/battle/InventoryActivity_T;->selectShopItemSlot(Landroid/widget/RelativeLayout;I)V

    return-void
.end method

.method static synthetic access$46(Lcom/findit/battle/InventoryActivity_T;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mBuyListTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$47(Lcom/findit/battle/InventoryActivity_T;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$48(Lcom/findit/battle/InventoryActivity_T;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mBuyListTitleText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$49(Lcom/findit/battle/InventoryActivity_T;)V
    .locals 0

    .prologue
    .line 2713
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_T;->fillBuyListData()V

    return-void
.end method

.method static synthetic access$5(Lcom/findit/battle/InventoryActivity_T;)Lcom/findit/battle/Items;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    return-object v0
.end method

.method static synthetic access$50(Lcom/findit/battle/InventoryActivity_T;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mBuyListDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$51(Lcom/findit/battle/InventoryActivity_T;)I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/findit/battle/InventoryActivity_T;->mShopItemSlotNum:I

    return v0
.end method

.method static synthetic access$52(Lcom/findit/battle/InventoryActivity_T;IIZ)V
    .locals 0

    .prologue
    .line 2675
    invoke-direct {p0, p1, p2, p3}, Lcom/findit/battle/InventoryActivity_T;->setBuyItem(IIZ)V

    return-void
.end method

.method static synthetic access$53(Lcom/findit/battle/InventoryActivity_T;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mBuyItemDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$54(Lcom/findit/battle/InventoryActivity_T;)I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/findit/battle/InventoryActivity_T;->mShopItemSlotWindowNum:I

    return v0
.end method

.method static synthetic access$55(Lcom/findit/battle/InventoryActivity_T;I)V
    .locals 0

    .prologue
    .line 1039
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_T;->setShopItemSlotWindowLocation(I)V

    return-void
.end method

.method static synthetic access$56(Lcom/findit/battle/InventoryActivity_T;)I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSkillSlotNum:I

    return v0
.end method

.method static synthetic access$57(Lcom/findit/battle/InventoryActivity_T;I)V
    .locals 0

    .prologue
    .line 172
    iput p1, p0, Lcom/findit/battle/InventoryActivity_T;->mSkillSlotNum:I

    return-void
.end method

.method static synthetic access$58(Lcom/findit/battle/InventoryActivity_T;)V
    .locals 0

    .prologue
    .line 2003
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_T;->setSkillText()V

    return-void
.end method

.method static synthetic access$59(Lcom/findit/battle/InventoryActivity_T;)I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSkillSlotWindowNum:I

    return v0
.end method

.method static synthetic access$6(Lcom/findit/battle/InventoryActivity_T;)[Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mShopItemSlotsLayout:[Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$60(Lcom/findit/battle/InventoryActivity_T;I)V
    .locals 0

    .prologue
    .line 1032
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_T;->setSkillSlotWindowLocation(I)V

    return-void
.end method

.method static synthetic access$61(Lcom/findit/battle/InventoryActivity_T;I)V
    .locals 0

    .prologue
    .line 2690
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_T;->setLearnSkill(I)V

    return-void
.end method

.method static synthetic access$62(Lcom/findit/battle/InventoryActivity_T;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mLearnSkillDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$63(Lcom/findit/battle/InventoryActivity_T;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mDeleteItemImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$64(Lcom/findit/battle/InventoryActivity_T;II)V
    .locals 0

    .prologue
    .line 1741
    invoke-direct {p0, p1, p2}, Lcom/findit/battle/InventoryActivity_T;->setItemSlot(II)V

    return-void
.end method

.method static synthetic access$65(Lcom/findit/battle/InventoryActivity_T;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mBuyItemImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$66(Lcom/findit/battle/InventoryActivity_T;Lcom/findit/battle/Items$Item;)V
    .locals 0

    .prologue
    .line 2962
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_T;->purchaseItem(Lcom/findit/battle/Items$Item;)V

    return-void
.end method

.method static synthetic access$67(Lcom/findit/battle/InventoryActivity_T;)J
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/findit/battle/InventoryActivity_T;->mCoin:J

    return-wide v0
.end method

.method static synthetic access$68(Lcom/findit/battle/InventoryActivity_T;Lcom/findit/battle/Items$Item;)V
    .locals 0

    .prologue
    .line 2591
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_T;->sendBuyItem(Lcom/findit/battle/Items$Item;)V

    return-void
.end method

.method static synthetic access$69(Lcom/findit/battle/InventoryActivity_T;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mLearnSkillImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/findit/battle/InventoryActivity_T;)[Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mAnimation:[Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$70(Lcom/findit/battle/InventoryActivity_T;I)V
    .locals 0

    .prologue
    .line 2613
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_T;->sendLearnSkill(I)V

    return-void
.end method

.method static synthetic access$8(Lcom/findit/battle/InventoryActivity_T;Lcom/findit/battle/Items$Item;)Z
    .locals 1

    .prologue
    .line 1869
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_T;->setItemSlot(Lcom/findit/battle/Items$Item;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9(Lcom/findit/battle/InventoryActivity_T;I)V
    .locals 0

    .prologue
    .line 2704
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_T;->calculateCoin(I)V

    return-void
.end method

.method private applyPurchaseItem(Lcom/findit/battle/Items$Item;)V
    .locals 2
    .param p1, "item"    # Lcom/findit/battle/Items$Item;

    .prologue
    .line 2746
    iget v0, p1, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 2748
    :cond_0
    iget v0, p1, Lcom/findit/battle/Items$Item;->mPower:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/findit/battle/InventoryActivity_T;->sendAddCoin(J)V

    .line 2754
    :cond_1
    return-void
.end method

.method private calculateCoin(I)V
    .locals 6
    .param p1, "price"    # I

    .prologue
    .line 2705
    iget-wide v2, p0, Lcom/findit/battle/InventoryActivity_T;->mCoin:J

    int-to-long v4, p1

    sub-long v0, v2, v4

    .line 2707
    .local v0, "coin":J
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mCoinNumTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2708
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mShopCoinNumTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2709
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

    .line 2710
    iput-wide v0, p0, Lcom/findit/battle/InventoryActivity_T;->mCoin:J

    .line 2711
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
    .line 1664
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    iget-object v1, v1, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v8, v1, p5

    .line 1666
    .local v8, "item":Lcom/findit/battle/Items$Item;
    iget v1, p0, Lcom/findit/battle/InventoryActivity_T;->mSlotWindowNum:I

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mMoveItemView:Lcom/findit/battle/InventoryActivity_T$MoveView;

    iget v2, v2, Lcom/findit/battle/InventoryActivity_T$MoveView;->mWindowNum:I

    mul-int v9, v1, v2

    .line 1667
    .local v9, "min":I
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mMoveItemView:Lcom/findit/battle/InventoryActivity_T$MoveView;

    iget v6, p0, Lcom/findit/battle/InventoryActivity_T;->mSlotWindowNum:I

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/findit/battle/InventoryActivity_T$MoveView;->touchTile(IIIII)I

    move-result v10

    .line 1668
    .local v10, "slotnum":I
    if-lt v10, v9, :cond_0

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mMoveItemView:Lcom/findit/battle/InventoryActivity_T$MoveView;

    iget v1, v1, Lcom/findit/battle/InventoryActivity_T$MoveView;->mWindowNum:I

    add-int/2addr v1, v9

    if-ge v10, v1, :cond_0

    .line 1669
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    invoke-virtual {v1, v10}, Lcom/findit/battle/Items;->getIndex(I)I

    move-result v7

    .line 1670
    .local v7, "index1":I
    if-gez v7, :cond_2

    .line 1672
    iget v11, v8, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 1673
    .local v11, "slotnum1":I
    if-gez v11, :cond_1

    .line 1675
    iget v1, v8, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/findit/battle/InventoryActivity_T;->setItemSetSlot(II)I

    .line 1681
    :goto_0
    move/from16 v0, p5

    invoke-direct {p0, v10, v0}, Lcom/findit/battle/InventoryActivity_T;->setItemSlot(II)V

    .line 1683
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

    .line 1711
    .end local v7    # "index1":I
    .end local v11    # "slotnum1":I
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_T;->setItemText()V

    .line 1712
    return-void

    .line 1679
    .restart local v7    # "index1":I
    .restart local v11    # "slotnum1":I
    :cond_1
    const/4 v1, -0x1

    invoke-direct {p0, v11, v1}, Lcom/findit/battle/InventoryActivity_T;->setItemSlot(II)V

    goto :goto_0

    .line 1687
    .end local v11    # "slotnum1":I
    :cond_2
    iget v11, v8, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 1688
    .restart local v11    # "slotnum1":I
    if-gez v11, :cond_4

    .line 1690
    iget v1, v8, Lcom/findit/battle/Items$Item;->mType:I

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    iget-object v2, v2, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/findit/battle/Items$Item;->mType:I

    if-ne v1, v2, :cond_3

    .line 1692
    iget v1, v8, Lcom/findit/battle/Items$Item;->mType:I

    invoke-direct {p0, v1, v7}, Lcom/findit/battle/InventoryActivity_T;->setItemSetSlot(II)I

    .line 1693
    move/from16 v0, p5

    invoke-direct {p0, v10, v0}, Lcom/findit/battle/InventoryActivity_T;->setItemSlot(II)V

    .line 1706
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

    .line 1697
    :cond_3
    iget v1, v8, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/findit/battle/InventoryActivity_T;->setItemSetSlot(II)I

    .line 1698
    invoke-direct {p0, v8}, Lcom/findit/battle/InventoryActivity_T;->setItemSlot(Lcom/findit/battle/Items$Item;)Z

    goto :goto_2

    .line 1703
    :cond_4
    invoke-direct {p0, v11, v7}, Lcom/findit/battle/InventoryActivity_T;->setItemSlot(II)V

    .line 1704
    move/from16 v0, p5

    invoke-direct {p0, v10, v0}, Lcom/findit/battle/InventoryActivity_T;->setItemSlot(II)V

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

    .line 1716
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_T;->mSetItemTypeTable:[I

    .line 1717
    .local v3, "typetable":[I
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    iget-object v4, v4, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v4, p5

    .line 1719
    .local v1, "item":Lcom/findit/battle/Items$Item;
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_T;->mMoveItemView:Lcom/findit/battle/InventoryActivity_T$MoveView;

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/findit/battle/InventoryActivity_T$MoveView;->touchRect(IIII)I

    move-result v2

    .line 1720
    .local v2, "slotnum":I
    if-le v2, v6, :cond_2

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 1721
    iget v4, v1, Lcom/findit/battle/Items$Item;->mType:I

    if-ne v2, v4, :cond_0

    .line 1722
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    iget v5, v1, Lcom/findit/battle/Items$Item;->mType:I

    invoke-virtual {v4, v5}, Lcom/findit/battle/Items;->getSetIndex(I)I

    move-result v0

    .line 1723
    .local v0, "index1":I
    if-gez v0, :cond_1

    .line 1725
    iget v4, v1, Lcom/findit/battle/Items$Item;->mType:I

    invoke-direct {p0, v4, p5}, Lcom/findit/battle/InventoryActivity_T;->setItemSetSlot(II)I

    move-result v4

    invoke-direct {p0, v4, v6}, Lcom/findit/battle/InventoryActivity_T;->setItemSlot(II)V

    .line 1735
    .end local v0    # "index1":I
    :cond_0
    :goto_0
    const/4 v4, 0x1

    .line 1738
    :goto_1
    return v4

    .line 1730
    .restart local v0    # "index1":I
    :cond_1
    iget v4, v1, Lcom/findit/battle/Items$Item;->mType:I

    invoke-direct {p0, v4, p5}, Lcom/findit/battle/InventoryActivity_T;->setItemSetSlot(II)I

    move-result v4

    invoke-direct {p0, v4, v0}, Lcom/findit/battle/InventoryActivity_T;->setItemSlot(II)V

    goto :goto_0

    .line 1738
    .end local v0    # "index1":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private clearShopSlot(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 1946
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_T;->mShopItemSlotsLayout:[Landroid/widget/RelativeLayout;

    aget-object v1, v3, p1

    .line 1947
    .local v1, "slotslayout":Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1948
    .local v0, "imageview":Landroid/widget/ImageView;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1951
    .local v2, "textview":Landroid/widget/TextView;
    invoke-direct {p0, v0}, Lcom/findit/battle/InventoryActivity_T;->recycleView(Landroid/view/View;)V

    .line 1952
    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1953
    return-void
.end method

.method private compressBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2244
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2245
    .local v0, "bytearray":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2246
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2248
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

    .line 2425
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2426
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 2427
    .local v2, "window":Landroid/view/Window;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 2428
    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 2429
    const v3, 0x7f020193

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 2431
    const v3, 0x7f030003

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 2433
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090044

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_T;->mBuyItemText:Ljava/lang/String;

    .line 2434
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090045

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_T;->mBuyItemText1:Ljava/lang/String;

    .line 2435
    const v3, 0x7f0b0008

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_T;->mBuyItemTextView:Landroid/widget/TextView;

    .line 2436
    const v3, 0x7f0b0007

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_T;->mBuyItemImageView:Landroid/widget/ImageView;

    .line 2439
    const v3, 0x7f0b0009

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2440
    .local v0, "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/InventoryActivity_T$27;

    invoke-direct {v3, p0}, Lcom/findit/battle/InventoryActivity_T$27;-><init>(Lcom/findit/battle/InventoryActivity_T;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2500
    const v3, 0x7f0b000a

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 2501
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/InventoryActivity_T$28;

    invoke-direct {v3, p0}, Lcom/findit/battle/InventoryActivity_T$28;-><init>(Lcom/findit/battle/InventoryActivity_T;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2508
    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mBuyItemDlg:Landroid/app/Dialog;

    .line 2509
    return-void
.end method

.method private createBuyListDlg()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 2569
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2570
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 2571
    .local v2, "window":Landroid/view/Window;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 2572
    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 2573
    const v3, 0x7f020193

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 2575
    const/high16 v3, 0x7f030000

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 2577
    const/high16 v3, 0x7f0b0000

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_T;->mBuyListTitleTextView:Landroid/widget/TextView;

    .line 2578
    const v3, 0x7f0b0005

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_T;->mBuyListView:Landroid/widget/ListView;

    .line 2580
    const v3, 0x7f0b0001

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 2581
    .local v1, "imagebutton":Landroid/widget/ImageButton;
    new-instance v3, Lcom/findit/battle/InventoryActivity_T$31;

    invoke-direct {v3, p0}, Lcom/findit/battle/InventoryActivity_T$31;-><init>(Lcom/findit/battle/InventoryActivity_T;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2588
    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mBuyListDlg:Landroid/app/Dialog;

    .line 2589
    return-void
.end method

.method private createDeleteItemDlg()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 2379
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2380
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 2381
    .local v2, "window":Landroid/view/Window;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 2382
    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 2383
    const v3, 0x7f020193

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 2385
    const v3, 0x7f030003

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 2387
    const v3, 0x7f0b0007

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_T;->mDeleteItemImageView:Landroid/widget/ImageView;

    .line 2390
    const v3, 0x7f0b0009

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2391
    .local v0, "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/InventoryActivity_T$25;

    invoke-direct {v3, p0}, Lcom/findit/battle/InventoryActivity_T$25;-><init>(Lcom/findit/battle/InventoryActivity_T;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2413
    const v3, 0x7f0b000a

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 2414
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/InventoryActivity_T$26;

    invoke-direct {v3, p0}, Lcom/findit/battle/InventoryActivity_T$26;-><init>(Lcom/findit/battle/InventoryActivity_T;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2421
    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mDeleteItemDlg:Landroid/app/Dialog;

    .line 2422
    return-void
.end method

.method private createItemSlots(FF)V
    .locals 39
    .param p1, "widthrate"    # F
    .param p2, "heightrate"    # F

    .prologue
    .line 1047
    const/16 v36, 0x1

    .local v36, "windownum":I
    const/4 v7, 0x5

    .local v7, "colum":I
    const/4 v8, 0x3

    .line 1048
    .local v8, "row":I
    mul-int v37, v7, v8

    .line 1049
    .local v37, "windowslotsnum":I
    const/high16 v3, 0x42e00000    # 112.0f

    mul-float v3, v3, p2

    float-to-int v6, v3

    .line 1050
    .local v6, "size":I
    div-int/lit8 v31, v6, 0x8

    .line 1053
    .local v31, "textsize":I
    const/16 v3, 0xf

    new-array v3, v3, [Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/findit/battle/InventoryActivity_T;->mSlotsLayout:[Landroid/widget/RelativeLayout;

    .line 1054
    mul-int/lit8 v29, v6, 0x5

    .line 1055
    .local v29, "slotwindowwidth":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/findit/battle/InventoryActivity_T;->mSlotWindowNum:I

    .line 1056
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_T;->mSlotWindowTotalNum:I

    .line 1057
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/findit/battle/InventoryActivity_T;->mSlotNum:I

    .line 1059
    new-instance v3, Lcom/findit/battle/InventoryActivity_T$MoveView;

    const v4, 0x7f0b0054

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/findit/battle/InventoryActivity_T$MoveView;-><init>(Lcom/findit/battle/InventoryActivity_T;Landroid/widget/ImageView;III)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/findit/battle/InventoryActivity_T;->mMoveItemView:Lcom/findit/battle/InventoryActivity_T$MoveView;

    .line 1060
    const v3, 0x441c4000    # 625.0f

    mul-float v3, v3, p1

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/findit/battle/InventoryActivity_T;->mSlotWindowX:I

    .line 1061
    const/high16 v3, 0x43610000    # 225.0f

    mul-float v3, v3, p2

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/findit/battle/InventoryActivity_T;->mSlotWindowY:I

    .line 1063
    const/high16 v3, 0x42e00000    # 112.0f

    mul-float v3, v3, p1

    float-to-int v0, v3

    move/from16 v35, v0

    .line 1064
    .local v35, "width":I
    const/high16 v3, 0x42e00000    # 112.0f

    mul-float v3, v3, p2

    float-to-int v12, v3

    .line 1065
    .local v12, "height":I
    const/high16 v3, 0x422c0000    # 43.0f

    mul-float v3, v3, p1

    float-to-int v0, v3

    move/from16 v17, v0

    .line 1066
    .local v17, "left1":I
    const v3, 0x43d78000    # 431.0f

    mul-float v3, v3, p1

    float-to-int v0, v3

    move/from16 v18, v0

    .line 1067
    .local v18, "left2":I
    add-int v21, v17, v35

    .line 1068
    .local v21, "right1":I
    add-int v22, v18, v35

    .line 1069
    .local v22, "right2":I
    const v3, 0x43df8000    # 447.0f

    mul-float v3, v3, p2

    float-to-int v0, v3

    move/from16 v33, v0

    .line 1070
    .local v33, "top1":I
    const v3, 0x44158000    # 598.0f

    mul-float v3, v3, p2

    float-to-int v0, v3

    move/from16 v34, v0

    .line 1071
    .local v34, "top2":I
    add-int v9, v33, v12

    .line 1072
    .local v9, "bottom1":I
    add-int v10, v34, v12

    .line 1074
    .local v10, "bottom2":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/InventoryActivity_T;->mMoveItemView:Lcom/findit/battle/InventoryActivity_T$MoveView;

    iget-object v3, v3, Lcom/findit/battle/InventoryActivity_T$MoveView;->mRect:[Landroid/graphics/Rect;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Rect;

    move/from16 v0, v17

    move/from16 v1, v33

    move/from16 v2, v21

    invoke-direct {v5, v0, v1, v2, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v3, v4

    .line 1075
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/InventoryActivity_T;->mMoveItemView:Lcom/findit/battle/InventoryActivity_T$MoveView;

    iget-object v3, v3, Lcom/findit/battle/InventoryActivity_T$MoveView;->mRect:[Landroid/graphics/Rect;

    const/4 v4, 0x2

    new-instance v5, Landroid/graphics/Rect;

    move/from16 v0, v18

    move/from16 v1, v33

    move/from16 v2, v22

    invoke-direct {v5, v0, v1, v2, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v3, v4

    .line 1076
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/InventoryActivity_T;->mMoveItemView:Lcom/findit/battle/InventoryActivity_T$MoveView;

    iget-object v3, v3, Lcom/findit/battle/InventoryActivity_T$MoveView;->mRect:[Landroid/graphics/Rect;

    const/4 v4, 0x1

    new-instance v5, Landroid/graphics/Rect;

    move/from16 v0, v17

    move/from16 v1, v34

    move/from16 v2, v21

    invoke-direct {v5, v0, v1, v2, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v3, v4

    .line 1077
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/InventoryActivity_T;->mMoveItemView:Lcom/findit/battle/InventoryActivity_T$MoveView;

    iget-object v3, v3, Lcom/findit/battle/InventoryActivity_T$MoveView;->mRect:[Landroid/graphics/Rect;

    const/4 v4, 0x3

    new-instance v5, Landroid/graphics/Rect;

    move/from16 v0, v18

    move/from16 v1, v34

    move/from16 v2, v22

    invoke-direct {v5, v0, v1, v2, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v3, v4

    .line 1079
    new-instance v27, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v27

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1080
    .local v27, "slotparams1":Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v0, v31

    int-to-float v3, v0

    const v4, 0x3f99999a    # 1.2f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, v27

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1081
    move/from16 v0, v31

    int-to-float v3, v0

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, v27

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1083
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

    .line 1084
    .local v23, "setitemtypetable":[I
    const/4 v3, 0x4

    new-array v0, v3, [I

    move-object/from16 v24, v0

    fill-array-data v24, :array_0

    .line 1085
    .local v24, "setslotlayoutidtable":[I
    move-object/from16 v0, v24

    array-length v3, v0

    new-array v3, v3, [Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/findit/battle/InventoryActivity_T;->mSetSlotsLayout:[Landroid/widget/RelativeLayout;

    .line 1086
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, v23

    array-length v3, v0

    if-lt v13, v3, :cond_0

    .line 1097
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_T;->mSetItemTypeTable:[I

    .line 1099
    const v3, 0x7f0b0030

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/HorizontalScrollView;

    .line 1100
    .local v28, "slotscrollview":Landroid/widget/HorizontalScrollView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    move/from16 v0, v29

    invoke-direct {v3, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1102
    new-instance v3, Lcom/findit/battle/InventoryActivity_T$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/findit/battle/InventoryActivity_T$8;-><init>(Lcom/findit/battle/InventoryActivity_T;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1153
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_T;->mSlotsScrollView:Landroid/widget/HorizontalScrollView;

    .line 1155
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1156
    .local v20, "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v26, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v26

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1158
    .local v26, "slotparams":Landroid/widget/RelativeLayout$LayoutParams;
    const v3, 0x7f0b0031

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 1160
    .local v16, "layout":Landroid/widget/LinearLayout;
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_T;->mSlotWindowWidth:I

    .line 1163
    const/4 v13, 0x0

    :goto_1
    move/from16 v0, v36

    if-lt v13, v0, :cond_1

    .line 1286
    const v3, 0x7f0b002f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 1287
    .local v11, "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/InventoryActivity_T$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/findit/battle/InventoryActivity_T$11;-><init>(Lcom/findit/battle/InventoryActivity_T;)V

    invoke-virtual {v11, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1294
    const v3, 0x7f0b0032

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11    # "button":Landroid/widget/Button;
    check-cast v11, Landroid/widget/Button;

    .line 1295
    .restart local v11    # "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/InventoryActivity_T$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/findit/battle/InventoryActivity_T$12;-><init>(Lcom/findit/battle/InventoryActivity_T;)V

    invoke-virtual {v11, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1301
    return-void

    .line 1087
    .end local v11    # "button":Landroid/widget/Button;
    .end local v16    # "layout":Landroid/widget/LinearLayout;
    .end local v20    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v26    # "slotparams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v28    # "slotscrollview":Landroid/widget/HorizontalScrollView;
    :cond_0
    aget v3, v24, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout;

    .line 1089
    .local v16, "layout":Landroid/widget/RelativeLayout;
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 1090
    .local v32, "textview":Landroid/widget/TextView;
    move/from16 v0, v31

    int-to-float v3, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1091
    const/16 v3, 0x55

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1092
    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1094
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/InventoryActivity_T;->mSetSlotsLayout:[Landroid/widget/RelativeLayout;

    aget v4, v23, v13

    aput-object v16, v3, v4

    .line 1086
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 1164
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

    .line 1163
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1165
    :cond_2
    new-instance v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1166
    .local v30, "sublayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1169
    const/16 v38, 0x0

    .local v38, "z":I
    :goto_3
    move/from16 v0, v38

    if-lt v0, v8, :cond_3

    .line 1278
    move-object/from16 v0, v16

    move-object/from16 v1, v30

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1164
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1170
    :cond_3
    mul-int v3, v15, v8

    add-int v3, v3, v38

    mul-int/lit8 v4, v13, 0xf

    add-int v19, v3, v4

    .line 1172
    .local v19, "num":I
    new-instance v25, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1173
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

    .line 1175
    if-nez v19, :cond_4

    .line 1176
    const v3, 0x7f0201bb

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1180
    :goto_4
    new-instance v3, Lcom/findit/battle/InventoryActivity_T$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/findit/battle/InventoryActivity_T$9;-><init>(Lcom/findit/battle/InventoryActivity_T;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1199
    new-instance v3, Lcom/findit/battle/InventoryActivity_T$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/findit/battle/InventoryActivity_T$10;-><init>(Lcom/findit/battle/InventoryActivity_T;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1256
    new-instance v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1257
    .local v14, "imageview":Landroid/widget/ImageView;
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v14, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1268
    new-instance v32, Landroid/widget/TextView;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1270
    .restart local v32    # "textview":Landroid/widget/TextView;
    move/from16 v0, v31

    int-to-float v3, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1271
    const/16 v3, 0x55

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1272
    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1274
    move-object/from16 v0, v30

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1275
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/InventoryActivity_T;->mSlotsLayout:[Landroid/widget/RelativeLayout;

    aput-object v25, v3, v19

    .line 1169
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_3

    .line 1178
    .end local v14    # "imageview":Landroid/widget/ImageView;
    .end local v32    # "textview":Landroid/widget/TextView;
    :cond_4
    const v3, 0x7f0201b8

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 1084
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

    .line 2512
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2513
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 2514
    .local v2, "window":Landroid/view/Window;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 2515
    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 2516
    const v3, 0x7f020193

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 2518
    const v3, 0x7f030003

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 2520
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09004b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_T;->mLearnSkillText:Ljava/lang/String;

    .line 2521
    const v3, 0x7f0b0008

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_T;->mLearnSkillTextView:Landroid/widget/TextView;

    .line 2522
    const v3, 0x7f0b0007

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_T;->mLearnSkillImageView:Landroid/widget/ImageView;

    .line 2525
    const v3, 0x7f0b0009

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2526
    .local v0, "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/InventoryActivity_T$29;

    invoke-direct {v3, p0}, Lcom/findit/battle/InventoryActivity_T$29;-><init>(Lcom/findit/battle/InventoryActivity_T;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2557
    const v3, 0x7f0b000a

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 2558
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/InventoryActivity_T$30;

    invoke-direct {v3, p0}, Lcom/findit/battle/InventoryActivity_T$30;-><init>(Lcom/findit/battle/InventoryActivity_T;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2565
    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mLearnSkillDlg:Landroid/app/Dialog;

    .line 2566
    return-void
.end method

.method private createLoadingView()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 2812
    const v4, 0x7f0b000c

    invoke-virtual {p0, v4}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2813
    .local v0, "layout":Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 2814
    const/16 v4, 0xae

    const/16 v5, 0xde

    const/16 v6, 0xe4

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 2816
    const/high16 v4, 0x41a00000    # 20.0f

    iget v5, p0, Lcom/findit/battle/InventoryActivity_T;->mHeightRate:F

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 2817
    .local v1, "margin":I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2818
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xb

    invoke-virtual {v2, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2819
    const/16 v4, 0xc

    invoke-virtual {v2, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2820
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2822
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2823
    .local v3, "textview":Landroid/widget/TextView;
    const v4, 0x7f090020

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2824
    const-string v4, "#146E9D"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2825
    const/high16 v4, 0x42200000    # 40.0f

    iget v5, p0, Lcom/findit/battle/InventoryActivity_T;->mHeightRate:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2827
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2830
    return-void
.end method

.method private createShopSlots(FF)V
    .locals 28
    .param p1, "widthrate"    # F
    .param p2, "heightrate"    # F

    .prologue
    .line 1304
    const/16 v22, 0x1

    .local v22, "windownum":I
    const/4 v4, 0x3

    .local v4, "colum":I
    const/4 v12, 0x2

    .line 1305
    .local v12, "row":I
    mul-int v23, v4, v12

    .line 1306
    .local v23, "windowslotsnum":I
    const/high16 v25, 0x43340000    # 180.0f

    mul-float v25, v25, p2

    move/from16 v0, v25

    float-to-int v13, v0

    .line 1308
    .local v13, "size":I
    const/high16 v25, 0x40000000    # 2.0f

    div-float v25, p1, v25

    div-float v25, p2, v25

    const v26, 0x3f99999a    # 1.2f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_0

    .line 1309
    const/high16 v25, 0x432a0000    # 170.0f

    mul-float v25, v25, p2

    move/from16 v0, v25

    float-to-int v13, v0

    .line 1312
    :cond_0
    const/16 v25, 0x6

    move/from16 v0, v25

    new-array v9, v0, [I

    fill-array-data v9, :array_0

    .line 1314
    .local v9, "menuslotimgid":[I
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v25, -0x2

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v11, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1315
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

    .line 1317
    .local v15, "slotparams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_T;->mShopSlotsLayout:[Landroid/widget/RelativeLayout;

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mShopSlotsLayout:[Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const v25, 0x7f0b0046

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/RelativeLayout;

    aput-object v25, v26, v27

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mShopSlotsLayout:[Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    const v25, 0x7f0b003d

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/RelativeLayout;

    aput-object v25, v26, v27

    .line 1320
    const v25, 0x7f0b0047

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 1322
    .local v8, "layout":Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move/from16 v0, v22

    if-lt v5, v0, :cond_1

    .line 1398
    const v25, 0x7f0b0048

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1399
    .local v3, "button":Landroid/widget/Button;
    new-instance v25, Lcom/findit/battle/InventoryActivity_T$15;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_T$15;-><init>(Lcom/findit/battle/InventoryActivity_T;)V

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1411
    const/16 v22, 0x1

    .line 1412
    const/4 v4, 0x5

    .line 1413
    const/4 v12, 0x3

    .line 1414
    mul-int v23, v4, v12

    .line 1415
    const/high16 v25, 0x42e00000    # 112.0f

    mul-float v25, v25, p2

    move/from16 v0, v25

    float-to-int v13, v0

    .line 1416
    div-int/lit8 v20, v13, 0x8

    .line 1417
    .local v20, "textsize":I
    mul-int/lit8 v18, v13, 0x5

    .line 1419
    .local v18, "slotwindowwidth":I
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_T;->mSkillSlotNum:I

    .line 1420
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_T;->mSkillSlotWindowNum:I

    .line 1421
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_T;->mSkillSlotWindowTotalNum:I

    .line 1423
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v15    # "slotparams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v15, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1424
    .restart local v15    # "slotparams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v16

    invoke-direct {v0, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1425
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

    .line 1426
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

    .line 1428
    const v25, 0x7f0b003f

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/HorizontalScrollView;

    .line 1429
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

    .line 1430
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_T;->mShopItemSlotsScrollView:Landroid/widget/HorizontalScrollView;

    .line 1432
    const/16 v25, 0xf

    move/from16 v0, v25

    new-array v0, v0, [Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_T;->mShopItemSlotsLayout:[Landroid/widget/RelativeLayout;

    .line 1433
    const v25, 0x7f0b0040

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8    # "layout":Landroid/widget/LinearLayout;
    check-cast v8, Landroid/widget/LinearLayout;

    .line 1435
    .restart local v8    # "layout":Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    :goto_1
    move/from16 v0, v22

    if-lt v5, v0, :cond_4

    .line 1482
    const v25, 0x7f0b0044

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "button":Landroid/widget/Button;
    check-cast v3, Landroid/widget/Button;

    .line 1483
    .restart local v3    # "button":Landroid/widget/Button;
    new-instance v25, Lcom/findit/battle/InventoryActivity_T$17;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_T$17;-><init>(Lcom/findit/battle/InventoryActivity_T;)V

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1510
    const v25, 0x7f0b0045

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "button":Landroid/widget/Button;
    check-cast v3, Landroid/widget/Button;

    .line 1511
    .restart local v3    # "button":Landroid/widget/Button;
    new-instance v25, Lcom/findit/battle/InventoryActivity_T$18;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_T$18;-><init>(Lcom/findit/battle/InventoryActivity_T;)V

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1525
    const v25, 0x7f0b003e

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "button":Landroid/widget/Button;
    check-cast v3, Landroid/widget/Button;

    .line 1526
    .restart local v3    # "button":Landroid/widget/Button;
    new-instance v25, Lcom/findit/battle/InventoryActivity_T$19;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_T$19;-><init>(Lcom/findit/battle/InventoryActivity_T;)V

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1533
    const v25, 0x7f0b0041

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "button":Landroid/widget/Button;
    check-cast v3, Landroid/widget/Button;

    .line 1534
    .restart local v3    # "button":Landroid/widget/Button;
    new-instance v25, Lcom/findit/battle/InventoryActivity_T$20;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_T$20;-><init>(Lcom/findit/battle/InventoryActivity_T;)V

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1540
    return-void

    .line 1323
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

    .line 1322
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1324
    :cond_2
    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1325
    .local v19, "sublayout":Landroid/widget/LinearLayout;
    const/16 v25, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1328
    const/16 v24, 0x0

    .local v24, "z":I
    :goto_3
    move/from16 v0, v24

    if-lt v0, v12, :cond_3

    .line 1394
    move-object/from16 v0, v19

    invoke-virtual {v8, v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1323
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1329
    :cond_3
    mul-int v25, v7, v12

    add-int v25, v25, v24

    mul-int/lit8 v26, v5, 0x6

    add-int v10, v25, v26

    .line 1331
    .local v10, "num":I
    new-instance v14, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1332
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

    .line 1334
    const v25, 0x7f0201b8

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1336
    new-instance v25, Lcom/findit/battle/InventoryActivity_T$13;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_T$13;-><init>(Lcom/findit/battle/InventoryActivity_T;)V

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1368
    new-instance v25, Lcom/findit/battle/InventoryActivity_T$14;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_T$14;-><init>(Lcom/findit/battle/InventoryActivity_T;)V

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1387
    new-instance v6, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1388
    .local v6, "imageview":Landroid/widget/ImageView;
    aget v25, v9, v10

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1389
    invoke-virtual {v14, v6, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1391
    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1328
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 1436
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

    .line 1435
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 1437
    :cond_5
    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1438
    .restart local v19    # "sublayout":Landroid/widget/LinearLayout;
    const/16 v25, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1441
    const/16 v24, 0x0

    .restart local v24    # "z":I
    :goto_5
    move/from16 v0, v24

    if-lt v0, v12, :cond_6

    .line 1478
    move-object/from16 v0, v19

    invoke-virtual {v8, v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1436
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1442
    :cond_6
    mul-int v25, v7, v12

    add-int v25, v25, v24

    mul-int/lit8 v26, v5, 0xf

    add-int v10, v25, v26

    .line 1444
    .restart local v10    # "num":I
    new-instance v14, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1445
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

    .line 1447
    if-nez v10, :cond_7

    .line 1448
    const v25, 0x7f0201bb

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1452
    :goto_6
    new-instance v25, Lcom/findit/battle/InventoryActivity_T$16;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_T$16;-><init>(Lcom/findit/battle/InventoryActivity_T;)V

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1464
    new-instance v6, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1465
    .restart local v6    # "imageview":Landroid/widget/ImageView;
    invoke-virtual {v14, v6, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1468
    new-instance v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1470
    .local v21, "textview":Landroid/widget/TextView;
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1471
    const/16 v25, 0x55

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1472
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1474
    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mShopItemSlotsLayout:[Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    aput-object v14, v25, v10

    .line 1441
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_5

    .line 1450
    .end local v6    # "imageview":Landroid/widget/ImageView;
    .end local v21    # "textview":Landroid/widget/TextView;
    :cond_7
    const v25, 0x7f0201b8

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_6

    .line 1312
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
    .line 1543
    const/16 v21, 0x1

    .local v21, "windownum":I
    const/4 v4, 0x5

    .local v4, "colum":I
    const/4 v11, 0x3

    .line 1544
    .local v11, "row":I
    mul-int v22, v4, v11

    .line 1545
    .local v22, "windowslotsnum":I
    const/high16 v24, 0x42e00000    # 112.0f

    mul-float v24, v24, p2

    move/from16 v0, v24

    float-to-int v12, v0

    .line 1546
    .local v12, "size":I
    mul-int/lit8 v17, v12, 0x5

    .line 1547
    .local v17, "slotwindowwidth":I
    div-int/lit8 v19, v12, 0x8

    .line 1549
    .local v19, "textsize":I
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_T;->mSkillSlotNum:I

    .line 1550
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_T;->mSkillSlotWindowNum:I

    .line 1551
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_T;->mSkillSlotWindowTotalNum:I

    .line 1553
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v10, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1554
    .local v10, "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v14, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1555
    .local v14, "slotparams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v15, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1556
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

    .line 1557
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

    .line 1559
    const v24, 0x7f0b004c

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/HorizontalScrollView;

    .line 1560
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

    .line 1561
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_T;->mSkillSlotsScrollView:Landroid/widget/HorizontalScrollView;

    .line 1563
    const/16 v24, 0xf

    move/from16 v0, v24

    new-array v0, v0, [Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_T;->mSkillSlotsLayout:[Landroid/widget/RelativeLayout;

    .line 1564
    const v24, 0x7f0b004d

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 1566
    .local v8, "layout":Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move/from16 v0, v21

    if-lt v5, v0, :cond_0

    .line 1622
    const v24, 0x7f0b004b

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1623
    .local v3, "button":Landroid/widget/Button;
    new-instance v24, Lcom/findit/battle/InventoryActivity_T$22;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_T$22;-><init>(Lcom/findit/battle/InventoryActivity_T;)V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1630
    const v24, 0x7f0b004e

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "button":Landroid/widget/Button;
    check-cast v3, Landroid/widget/Button;

    .line 1631
    .restart local v3    # "button":Landroid/widget/Button;
    new-instance v24, Lcom/findit/battle/InventoryActivity_T$23;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_T$23;-><init>(Lcom/findit/battle/InventoryActivity_T;)V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1638
    const v24, 0x7f0b0053

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "button":Landroid/widget/Button;
    check-cast v3, Landroid/widget/Button;

    .line 1639
    .restart local v3    # "button":Landroid/widget/Button;
    new-instance v24, Lcom/findit/battle/InventoryActivity_T$24;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_T$24;-><init>(Lcom/findit/battle/InventoryActivity_T;)V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1657
    const v24, 0x7f0b0052

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 1658
    .local v20, "textview":Landroid/widget/TextView;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/InventoryActivity_T;->mPoint:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1659
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_T;->mSkillPointNumTextView:Landroid/widget/TextView;

    .line 1660
    return-void

    .line 1567
    .end local v3    # "button":Landroid/widget/Button;
    .end local v20    # "textview":Landroid/widget/TextView;
    :cond_0
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-lt v7, v4, :cond_1

    .line 1566
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1568
    :cond_1
    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1569
    .local v18, "sublayout":Landroid/widget/LinearLayout;
    const/16 v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1572
    const/16 v23, 0x0

    .local v23, "z":I
    :goto_2
    move/from16 v0, v23

    if-lt v0, v11, :cond_2

    .line 1618
    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1567
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1573
    :cond_2
    mul-int v24, v7, v11

    add-int v24, v24, v23

    mul-int/lit8 v25, v5, 0xf

    add-int v9, v24, v25

    .line 1575
    .local v9, "num":I
    new-instance v13, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1576
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

    .line 1578
    if-nez v9, :cond_3

    .line 1579
    const v24, 0x7f0201bb

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1583
    :goto_3
    new-instance v24, Lcom/findit/battle/InventoryActivity_T$21;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_T$21;-><init>(Lcom/findit/battle/InventoryActivity_T;)V

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1604
    new-instance v6, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1605
    .local v6, "imageview":Landroid/widget/ImageView;
    invoke-virtual {v13, v6, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1608
    new-instance v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1610
    .restart local v20    # "textview":Landroid/widget/TextView;
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1611
    const/16 v24, 0x55

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1612
    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1614
    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mSkillSlotsLayout:[Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    aput-object v13, v24, v9

    .line 1572
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 1581
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

    .line 2284
    const/4 v3, 0x0

    .line 2285
    .local v3, "path":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 2287
    .local v4, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.camera.action.CROP"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2288
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "image/*"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2290
    const-string v6, "aspectX"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2291
    const-string v6, "aspectY"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2292
    const-string v6, "scale"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2296
    :try_start_0
    sget-object v6, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/findit/battle/InventoryActivity_T;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 2298
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

    .line 2299
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2300
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 2302
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 2304
    .local v5, "uri1":Landroid/net/Uri;
    const-string v6, "output"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2310
    .end local v1    # "file":Ljava/io/File;
    .end local v5    # "uri1":Landroid/net/Uri;
    :goto_0
    const/16 v6, 0x12c

    invoke-virtual {p0, v2, v6}, Lcom/findit/battle/InventoryActivity_T;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2312
    return-object v3

    .line 2306
    :catch_0
    move-exception v0

    .line 2307
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

    .line 2220
    const/high16 v4, 0x43b40000    # 360.0f

    mul-float/2addr v4, p4

    float-to-int v3, v4

    .line 2221
    .local v3, "imgwidth":I
    const/high16 v4, 0x43fa0000    # 500.0f

    mul-float/2addr v4, p5

    float-to-int v2, v4

    .line 2223
    .local v2, "imgheight":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2225
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 2226
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2229
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

    .line 2230
    invoke-virtual {p3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2233
    invoke-virtual {p1, v8, v8, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2234
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2237
    const/high16 v4, 0x43c60000    # 396.0f

    mul-float/2addr v4, p5

    float-to-int v4, v4

    invoke-virtual {p2, v8, v8, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2238
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2240
    return-object v0
.end method

.method private fillBuyListData()V
    .locals 6

    .prologue
    .line 2714
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2715
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/findit/battle/InventoryActivity_T$BuyList;>;"
    new-instance v2, Lcom/findit/battle/InventoryActivity_T$BuyList;

    const-string v3, "2012/05/12"

    const-string v4, "\ub0a0\uac1c\uc5f0\ud544"

    const-string v5, "1"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_T$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_T;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2716
    new-instance v2, Lcom/findit/battle/InventoryActivity_T$BuyList;

    const-string v3, "2012/05/12"

    const-string v4, "\ubd88\uaf43\uc5f0\ud544"

    const-string v5, "2"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_T$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_T;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2717
    new-instance v2, Lcom/findit/battle/InventoryActivity_T$BuyList;

    const-string v3, "2012/05/11"

    const-string v4, "\ub208\uaf43\uc5f0\ud544"

    const-string v5, "3"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_T$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_T;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2718
    new-instance v2, Lcom/findit/battle/InventoryActivity_T$BuyList;

    const-string v3, "2012/05/11"

    const-string v4, "\ub208\uaf43\uc5f0\ud544"

    const-string v5, "2"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_T$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_T;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2719
    new-instance v2, Lcom/findit/battle/InventoryActivity_T$BuyList;

    const-string v3, "2012/05/10"

    const-string v4, "\uae08\ubc18\uc9c0"

    const-string v5, "1"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_T$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_T;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2720
    new-instance v2, Lcom/findit/battle/InventoryActivity_T$BuyList;

    const-string v3, "2012/05/10"

    const-string v4, "\ubc29\uc5b4\ud3ec\uc158"

    const-string v5, "2"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_T$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_T;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2721
    new-instance v2, Lcom/findit/battle/InventoryActivity_T$BuyList;

    const-string v3, "2012/05/10"

    const-string v4, "\ub0a0\uac1c\uc5f0\ud544"

    const-string v5, "1"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_T$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_T;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2722
    new-instance v2, Lcom/findit/battle/InventoryActivity_T$BuyList;

    const-string v3, "2012/05/10"

    const-string v4, "\ubd88\uaf43\uc5f0\ud544"

    const-string v5, "7"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_T$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_T;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2723
    new-instance v2, Lcom/findit/battle/InventoryActivity_T$BuyList;

    const-string v3, "2012/05/10"

    const-string v4, "\ub208\uaf43\uc5f0\ud544"

    const-string v5, "3"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_T$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_T;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2724
    new-instance v2, Lcom/findit/battle/InventoryActivity_T$BuyList;

    const-string v3, "2012/05/05"

    const-string v4, "\ub208\uaf43\uc5f0\ud544"

    const-string v5, "2"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_T$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_T;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2725
    new-instance v2, Lcom/findit/battle/InventoryActivity_T$BuyList;

    const-string v3, "2012/04/25"

    const-string v4, "\uae08\ubc18\uc9c0"

    const-string v5, "1"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_T$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_T;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2726
    new-instance v2, Lcom/findit/battle/InventoryActivity_T$BuyList;

    const-string v3, "2012/04/25"

    const-string v4, "\ubc29\uc5b4\ud3ec\uc158"

    const-string v5, "3"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_T$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_T;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2727
    new-instance v2, Lcom/findit/battle/InventoryActivity_T$BuyList;

    const-string v3, "2012/04/12"

    const-string v4, "\ub0a0\uac1c\uc5f0\ud544"

    const-string v5, "1"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_T$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_T;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2728
    new-instance v2, Lcom/findit/battle/InventoryActivity_T$BuyList;

    const-string v3, "2012/04/11"

    const-string v4, "\ubd88\uaf43\uc5f0\ud544"

    const-string v5, "8"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_T$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_T;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2729
    new-instance v2, Lcom/findit/battle/InventoryActivity_T$BuyList;

    const-string v3, "2012/04/10"

    const-string v4, "\ub208\uaf43\uc5f0\ud544"

    const-string v5, "3"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_T$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_T;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2730
    new-instance v2, Lcom/findit/battle/InventoryActivity_T$BuyList;

    const-string v3, "2012/04/04"

    const-string v4, "\ub208\uaf43\uc5f0\ud544"

    const-string v5, "2"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_T$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_T;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2731
    new-instance v2, Lcom/findit/battle/InventoryActivity_T$BuyList;

    const-string v3, "2012/04/04"

    const-string v4, "\uae08\ubc18\uc9c0"

    const-string v5, "1"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_T$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_T;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2732
    new-instance v2, Lcom/findit/battle/InventoryActivity_T$BuyList;

    const-string v3, "2012/04/03"

    const-string v4, "\ubc29\uc5b4\ud3ec\uc158"

    const-string v5, "5"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_T$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_T;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2733
    new-instance v2, Lcom/findit/battle/InventoryActivity_T$BuyList;

    const-string v3, "2012/04/01"

    const-string v4, "\ub0a0\uac1c\uc5f0\ud544"

    const-string v5, "1"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_T$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_T;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2734
    new-instance v2, Lcom/findit/battle/InventoryActivity_T$BuyList;

    const-string v3, "2012/04/01"

    const-string v4, "\ubd88\uaf43\uc5f0\ud544"

    const-string v5, "2"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_T$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_T;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2735
    new-instance v2, Lcom/findit/battle/InventoryActivity_T$BuyList;

    const-string v3, ""

    const-string v4, "     \ub354 \ubcf4\uae30"

    const-string v5, ""

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/findit/battle/InventoryActivity_T$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_T;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2741
    new-instance v0, Lcom/findit/battle/InventoryActivity_T$BuyListAdapter;

    const v2, 0x7f030001

    invoke-direct {v0, p0, p0, v2, v1}, Lcom/findit/battle/InventoryActivity_T$BuyListAdapter;-><init>(Lcom/findit/battle/InventoryActivity_T;Landroid/content/Context;ILjava/util/List;)V

    .line 2742
    .local v0, "adapter":Lcom/findit/battle/InventoryActivity_T$BuyListAdapter;
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mBuyListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2743
    return-void
.end method

.method private getImagePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p1, "imageuri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 2252
    const/4 v8, 0x0

    .line 2253
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

    .line 2254
    invoke-virtual/range {v0 .. v5}, Lcom/findit/battle/InventoryActivity_T;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2256
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2257
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 2259
    .local v7, "index":I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2260
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2262
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2265
    .end local v7    # "index":I
    :cond_1
    return-object v8
.end method

.method private getLastImagePath()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 2269
    const/4 v7, 0x0

    .line 2270
    .local v7, "path":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v8

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 2271
    .local v2, "projection":[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/findit/battle/InventoryActivity_T;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2273
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2274
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2275
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2277
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2280
    :cond_1
    return-object v7
.end method

.method private intiatieInAppPurchases()V
    .locals 3

    .prologue
    .line 2949
    :try_start_0
    new-instance v1, Lcom/feelingk/iap/IAPLibSetting;

    invoke-direct {v1}, Lcom/feelingk/iap/IAPLibSetting;-><init>()V

    .line 2950
    .local v1, "setting":Lcom/feelingk/iap/IAPLibSetting;
    const-string v2, "OA00316527"

    iput-object v2, v1, Lcom/feelingk/iap/IAPLibSetting;->AppID:Ljava/lang/String;

    .line 2951
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/feelingk/iap/IAPLibSetting;->BP_IP:Ljava/lang/String;

    .line 2952
    const/4 v2, 0x0

    iput v2, v1, Lcom/feelingk/iap/IAPLibSetting;->BP_Port:I

    .line 2953
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    iput-object v2, v1, Lcom/feelingk/iap/IAPLibSetting;->ClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    .line 2955
    invoke-virtual {p0, v1}, Lcom/findit/battle/InventoryActivity_T;->IAPLibInit(Lcom/feelingk/iap/IAPLibSetting;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2960
    .end local v1    # "setting":Lcom/feelingk/iap/IAPLibSetting;
    :goto_0
    return-void

    .line 2957
    :catch_0
    move-exception v0

    .line 2958
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

    .line 2169
    add-int/2addr p1, p3

    .line 2170
    add-int/2addr p2, p4

    .line 2172
    iget v3, p0, Lcom/findit/battle/InventoryActivity_T;->mFirstTouchX:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget v3, p0, Lcom/findit/battle/InventoryActivity_T;->mFirstTouchY:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 2173
    iget v2, p0, Lcom/findit/battle/InventoryActivity_T;->mMoveStandard:F

    .line 2174
    .local v2, "standard":F
    iget v3, p0, Lcom/findit/battle/InventoryActivity_T;->mFirstTouchX:F

    int-to-float v4, p1

    sub-float v0, v3, v4

    .line 2175
    .local v0, "distancex":F
    iget v3, p0, Lcom/findit/battle/InventoryActivity_T;->mFirstTouchY:F

    int-to-float v4, p2

    sub-float v1, v3, v4

    .line 2176
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

    .line 2178
    const/4 v3, 0x0

    .line 2182
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

    .line 520
    const v0, 0x7f0b000c

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f02012b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 521
    const v0, 0x7f0b000d

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201d9

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 523
    const v0, 0x7f0b000f

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201c4

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 524
    const v0, 0x7f0b0010

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f02019d

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 526
    const v0, 0x7f0b0013

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201c6

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 527
    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f02019f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 529
    const v0, 0x7f0b0017

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201c5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 530
    const v0, 0x7f0b0018

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f02019e

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 532
    const v0, 0x7f0b001b

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201c7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 533
    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201a0

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 535
    new-array v0, v11, [Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    .line 536
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201ce

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    aput-object v4, v0, v10

    .line 537
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201cf

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    aput-object v4, v0, v9

    .line 539
    new-array v0, v11, [Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    .line 540
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201d4

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    aput-object v4, v0, v10

    .line 541
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201d5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    aput-object v4, v0, v9

    .line 543
    new-array v0, v11, [Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    .line 544
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201d6

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    aput-object v4, v0, v10

    .line 545
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201d7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    aput-object v4, v0, v9

    .line 547
    const v0, 0x7f0b0023

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_T;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v4, v4, v10

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 548
    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_T;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v4, v4, v9

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 549
    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_T;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v4, v4, v9

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 553
    const v0, 0x7f0b002e

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 554
    const v0, 0x7f0b002f

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201ba

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 555
    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 556
    const v0, 0x7f0b0033

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 558
    const v0, 0x7f0b003c

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 559
    const v0, 0x7f0b003e

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201ba

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 560
    const v0, 0x7f0b0041

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 561
    const v0, 0x7f0b0042

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 566
    const v0, 0x7f0b004a

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 567
    const v0, 0x7f0b004b

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201ba

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 568
    const v0, 0x7f0b004e

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 569
    const v0, 0x7f0b004f

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 573
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mBodyImgPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 574
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v4, p0, Lcom/findit/battle/InventoryActivity_T;->mBodyImgId:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 579
    .local v1, "bodyimg":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mBodyImgPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 580
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v4, p0, Lcom/findit/battle/InventoryActivity_T;->mActionImgId:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 585
    .local v2, "poseimg":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mBodyImgPath:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 586
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v4, p0, Lcom/findit/battle/InventoryActivity_T;->mFaceImgId:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 590
    .local v3, "faceimg":Landroid/graphics/drawable/Drawable;
    :goto_2
    iget v4, p0, Lcom/findit/battle/InventoryActivity_T;->mWidthRate:F

    iget v5, p0, Lcom/findit/battle/InventoryActivity_T;->mHeightRate:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/findit/battle/InventoryActivity_T;->drawImg(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 591
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mCharacterImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v6}, Lcom/findit/battle/InventoryActivity_T;->compressBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 592
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 593
    return-void

    .line 576
    .end local v1    # "bodyimg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "poseimg":Landroid/graphics/drawable/Drawable;
    .end local v3    # "faceimg":Landroid/graphics/drawable/Drawable;
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mBodyImgPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1    # "bodyimg":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mActionImgPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2    # "poseimg":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 588
    :cond_2
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mFaceImgPath:Ljava/lang/String;

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

    .line 2963
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mPurchaseItemMap:Ljava/util/HashMap;

    .line 2964
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/findit/battle/Items$Item;>;"
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mPurchaseItemKey:[Ljava/lang/String;

    .line 2966
    .local v1, "keys":[Ljava/lang/String;
    array-length v3, v1

    .line 2967
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 2976
    :goto_1
    return-void

    .line 2968
    :cond_0
    aget-object v4, v1, v0

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/findit/battle/Items$Item;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2970
    aget-object v4, v1, v0

    invoke-virtual {p0, v4, v5, v5, v5}, Lcom/findit/battle/InventoryActivity_T;->popPurchaseDlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2971
    aget-object v4, v1, v0

    iput-object v4, p0, Lcom/findit/battle/InventoryActivity_T;->mPurchaseId:Ljava/lang/String;

    .line 2972
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

    .line 2967
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private recycleImages()V
    .locals 9

    .prologue
    .line 596
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v5, v8

    .line 597
    .local v5, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v5, :cond_0

    .line 605
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v5, v8

    .line 606
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v5, :cond_2

    .line 614
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v5, v8

    .line 615
    const/4 v2, 0x0

    :goto_2
    if-lt v2, v5, :cond_4

    .line 623
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mCharacterImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v8}, Lcom/findit/battle/InventoryActivity_T;->recycleView(Landroid/view/View;)V

    .line 625
    const v8, 0x7f0b000c

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 626
    .local v4, "layout":Landroid/widget/RelativeLayout;
    invoke-direct {p0, v4}, Lcom/findit/battle/InventoryActivity_T;->recycleView(Landroid/view/View;)V

    .line 628
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v5

    .line 629
    const/4 v2, 0x0

    :goto_3
    if-lt v2, v5, :cond_6

    .line 671
    return-void

    .line 598
    .end local v4    # "layout":Landroid/widget/RelativeLayout;
    :cond_0
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 599
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 600
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 597
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 607
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 608
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 609
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 606
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 616
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 617
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 618
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 615
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 631
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "layout":Landroid/widget/RelativeLayout;
    :cond_6
    :try_start_0
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 632
    .local v6, "sublayout":Landroid/widget/RelativeLayout;
    invoke-direct {p0, v6}, Lcom/findit/battle/InventoryActivity_T;->recycleView(Landroid/view/View;)V

    .line 634
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v7

    .line 635
    .local v7, "sublength":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_4
    if-lt v3, v7, :cond_7

    .line 629
    .end local v3    # "j":I
    .end local v6    # "sublayout":Landroid/widget/RelativeLayout;
    .end local v7    # "sublength":I
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 636
    .restart local v3    # "j":I
    .restart local v6    # "sublayout":Landroid/widget/RelativeLayout;
    .restart local v7    # "sublength":I
    :cond_7
    invoke-virtual {v6, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/findit/battle/InventoryActivity_T;->recycleView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 639
    .end local v3    # "j":I
    .end local v6    # "sublayout":Landroid/widget/RelativeLayout;
    .end local v7    # "sublength":I
    :catch_0
    move-exception v1

    .line 640
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/findit/battle/InventoryActivity_T;->recycleView(Landroid/view/View;)V

    goto :goto_5
.end method

.method private recycleView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 674
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 675
    .local v2, "tag":Ljava/lang/Object;
    if-eqz v2, :cond_0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "not"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 676
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 677
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 679
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 680
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 681
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :cond_1
    :goto_0
    return-void

    .line 683
    :catch_0
    move-exception v1

    .line 684
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
    .line 2018
    iget v0, p0, Lcom/findit/battle/InventoryActivity_T;->mShopItemSlotNum:I

    if-eq v0, p2, :cond_0

    .line 2020
    const v0, 0x7f0201bb

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 2023
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mShopItemSlotsLayout:[Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/findit/battle/InventoryActivity_T;->mShopItemSlotNum:I

    aget-object v0, v0, v1

    const v1, 0x7f0201b8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 2024
    iput p2, p0, Lcom/findit/battle/InventoryActivity_T;->mShopItemSlotNum:I

    .line 2028
    :cond_0
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_T;->setShopItemText()V

    .line 2029
    return-void
.end method

.method private sendBuyItem(Lcom/findit/battle/Items$Item;)V
    .locals 7
    .param p1, "item"    # Lcom/findit/battle/Items$Item;

    .prologue
    .line 2592
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 2594
    .local v0, "connectnetwork":Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2595
    const-string v1, "http://14.63.220.39/"

    const-string v2, "app/member/buyItemAndSpendCoin.json"

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setServerUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 2596
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->clearParameter()V

    .line 2597
    const-string v1, "userId"

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2598
    const-string v1, "itemNo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/findit/battle/Items$Item;->mTypeNo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    const-string v1, "coin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/findit/battle/Items$Item;->mPrice:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    iget v6, p1, Lcom/findit/battle/Items$Item;->mNum:I

    .line 2602
    .local v6, "num":I
    const/16 v1, 0x63

    if-le v6, v1, :cond_0

    .line 2603
    const/16 v6, 0x63

    .line 2605
    :cond_0
    const-string v1, "quantity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2606
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mUserId:Ljava/lang/String;

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

    .line 2607
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mCommonDialog:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v1}, Lcom/findit/battle/CommonDialog;->showProgressDlg()V

    .line 2608
    const-string v1, "utf-8"

    const-string v2, "GET"

    const/4 v3, 0x2

    .line 2609
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

    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_T;->mBuyResultHandler:Landroid/os/Handler;

    .line 2608
    invoke-virtual/range {v0 .. v5}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->startParsingData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V

    .line 2611
    .end local v6    # "num":I
    :cond_1
    return-void
.end method

.method private sendLearnSkill(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 2614
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v1, v1, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v6, v1, p1

    .line 2615
    .local v6, "skill":Lcom/findit/battle/Objects$Skills$Skill;
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 2617
    .local v0, "connectnetwork":Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2618
    const-string v1, "http://14.63.220.39/"

    const-string v2, "app/member/buySkillAndSpendPoint.json"

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setServerUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 2619
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->clearParameter()V

    .line 2620
    const-string v1, "userId"

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    const-string v1, "skillId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v6, Lcom/findit/battle/Objects$Skills$Skill;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    const-string v1, "point"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v6, Lcom/findit/battle/Objects$Skills$Skill;->mPoint:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    const-string v1, "quantity"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mUserId:Ljava/lang/String;

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

    .line 2625
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mCommonDialog:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v1}, Lcom/findit/battle/CommonDialog;->showProgressDlg()V

    .line 2626
    const-string v1, "utf-8"

    const-string v2, "GET"

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_T;->mLearnResultHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->startParsingData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V

    .line 2628
    :cond_0
    return-void
.end method

.method private setAttackText()V
    .locals 5

    .prologue
    .line 1006
    const/4 v1, 0x0

    .line 1008
    .local v1, "power":I
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/findit/battle/Items;->getSetIndex(I)I

    move-result v0

    .line 1009
    .local v0, "index":I
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 1010
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    iget-object v2, v2, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, v0

    iget v1, v2, Lcom/findit/battle/Items$Item;->mPower:I

    .line 1012
    :cond_0
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mAttackTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/findit/battle/InventoryActivity_T;->mAttack:I

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

    .line 1013
    return-void
.end method

.method private setBuyItem(IIZ)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "subtype"    # I
    .param p3, "price"    # Z

    .prologue
    .line 2676
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    iget-object v3, v3, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v3, p2

    .line 2677
    .local v2, "item":Lcom/findit/battle/Items$Item;
    iget-object v1, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    .line 2678
    .local v1, "imgpath":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2679
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 2680
    .local v0, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 2681
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_T;->mBuyItemImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2686
    .end local v0    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_T;->mBuyItemTextView:Landroid/widget/TextView;

    if-eqz p3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/findit/battle/Items$Item;->mPrice:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_T;->mBuyItemText:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2687
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_T;->mBuyItemImageView:Landroid/widget/ImageView;

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

    .line 2688
    return-void

    .line 2684
    :cond_0
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_T;->mBuyItemImageView:Landroid/widget/ImageView;

    iget-object v4, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2686
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/findit/battle/Items$Item;->mMoney:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_T;->mBuyItemText1:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private setDefenseText()V
    .locals 5

    .prologue
    .line 1016
    const/4 v1, 0x0

    .line 1018
    .local v1, "power":I
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/findit/battle/Items;->getSetIndex(I)I

    move-result v0

    .line 1019
    .local v0, "index":I
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 1020
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    iget-object v2, v2, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, v0

    iget v1, v2, Lcom/findit/battle/Items$Item;->mPower:I

    .line 1022
    :cond_0
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mDefenseTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/findit/battle/InventoryActivity_T;->mDefense:I

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

    .line 1023
    return-void
.end method

.method private setDeleteItem(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 2663
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    iget-object v2, v2, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, p1

    iget-object v1, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    .line 2664
    .local v1, "imgpath":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2665
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    iget-object v3, v3, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 2666
    .local v0, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 2667
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mDeleteItemImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2672
    .end local v0    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mDeleteItemImageView:Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2673
    return-void

    .line 2670
    :cond_0
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mDeleteItemImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

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
    .line 2186
    add-int v0, p1, p3

    int-to-float v0, v0

    iput v0, p0, Lcom/findit/battle/InventoryActivity_T;->mFirstTouchX:F

    .line 2187
    add-int v0, p2, p4

    int-to-float v0, v0

    iput v0, p0, Lcom/findit/battle/InventoryActivity_T;->mFirstTouchY:F

    .line 2188
    return-void
.end method

.method private setItemSetSlot(II)I
    .locals 10
    .param p1, "type"    # I
    .param p2, "itemindex"    # I

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 1795
    const/4 v3, -0x1

    .line 1797
    .local v3, "slotnum":I
    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_T;->mSetSlotsLayout:[Landroid/widget/RelativeLayout;

    aget-object v4, v6, p1

    .line 1798
    .local v4, "slotslayout":Landroid/widget/RelativeLayout;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1799
    .local v0, "imageview":Landroid/widget/ImageView;
    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1800
    .local v5, "textview":Landroid/widget/TextView;
    if-gez p2, :cond_1

    .line 1803
    invoke-direct {p0, v0}, Lcom/findit/battle/InventoryActivity_T;->recycleView(Landroid/view/View;)V

    .line 1804
    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1826
    :goto_0
    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    invoke-virtual {v6, p1, p2}, Lcom/findit/battle/Items;->setSetTable(II)V

    .line 1829
    if-nez p1, :cond_5

    .line 1830
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_T;->setAttackText()V

    .line 1834
    :cond_0
    :goto_1
    return v3

    .line 1807
    :cond_1
    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    iget-object v6, v6, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v6, p2

    .line 1810
    .local v2, "item":Lcom/findit/battle/Items$Item;
    iget-object v6, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 1811
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v2, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 1812
    .local v1, "img":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, v9}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1813
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1818
    .end local v1    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_2
    iget v6, v2, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    iget v6, v2, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    .line 1819
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v2, Lcom/findit/battle/Items$Item;->mNum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1821
    :cond_3
    iput-boolean v8, v2, Lcom/findit/battle/Items$Item;->mSet:Z

    .line 1822
    iget v3, v2, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 1823
    iput v9, v2, Lcom/findit/battle/Items$Item;->mSlotnum:I

    goto :goto_0

    .line 1816
    :cond_4
    iget-object v6, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    invoke-static {v6}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1831
    .end local v2    # "item":Lcom/findit/battle/Items$Item;
    :cond_5
    if-ne p1, v8, :cond_0

    .line 1832
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_T;->setDefenseText()V

    goto :goto_1
.end method

.method private setItemSetSlot(ILcom/findit/battle/Items$Item;)I
    .locals 8
    .param p1, "type"    # I
    .param p2, "item"    # Lcom/findit/battle/Items$Item;

    .prologue
    const/4 v7, 0x1

    .line 1838
    const/4 v2, -0x1

    .line 1840
    .local v2, "slotnum":I
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_T;->mSetSlotsLayout:[Landroid/widget/RelativeLayout;

    aget-object v3, v5, p1

    .line 1841
    .local v3, "slotslayout":Landroid/widget/RelativeLayout;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1842
    .local v0, "imageview":Landroid/widget/ImageView;
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1845
    .local v4, "textview":Landroid/widget/TextView;
    iget-object v5, p2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 1846
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p2, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 1847
    .local v1, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1848
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1853
    .end local v1    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    const/4 v5, 0x2

    if-eq p1, v5, :cond_0

    const/4 v5, 0x3

    if-ne p1, v5, :cond_1

    .line 1854
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p2, Lcom/findit/battle/Items$Item;->mNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1857
    :cond_1
    iget v2, p2, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 1861
    if-nez p1, :cond_4

    .line 1862
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_T;->setAttackText()V

    .line 1866
    :cond_2
    :goto_1
    return v2

    .line 1851
    :cond_3
    iget-object v5, p2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1863
    :cond_4
    if-ne p1, v7, :cond_2

    .line 1864
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_T;->setDefenseText()V

    goto :goto_1
.end method

.method private setItemSlot(II)V
    .locals 8
    .param p1, "slotnum"    # I
    .param p2, "itemindex"    # I

    .prologue
    const/4 v7, 0x0

    .line 1742
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_T;->mSlotsLayout:[Landroid/widget/RelativeLayout;

    aget-object v3, v5, p1

    .line 1744
    .local v3, "slotslayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1745
    .local v0, "imageview":Landroid/widget/ImageView;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1746
    .local v4, "textview":Landroid/widget/TextView;
    if-gez p2, :cond_0

    .line 1749
    invoke-direct {p0, v0}, Lcom/findit/battle/InventoryActivity_T;->recycleView(Landroid/view/View;)V

    .line 1750
    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1770
    :goto_0
    return-void

    .line 1753
    :cond_0
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    iget-object v5, v5, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v5, p2

    .line 1756
    .local v2, "item":Lcom/findit/battle/Items$Item;
    iget-object v5, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 1757
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v2, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 1758
    .local v1, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1759
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1764
    .end local v1    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    iget v5, v2, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    iget v5, v2, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 1765
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v2, Lcom/findit/battle/Items$Item;->mNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1767
    :cond_2
    iput p1, v2, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 1768
    iput-boolean v7, v2, Lcom/findit/battle/Items$Item;->mSet:Z

    goto :goto_0

    .line 1762
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
    .line 1773
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_T;->mSlotsLayout:[Landroid/widget/RelativeLayout;

    aget-object v2, v4, p1

    .line 1775
    .local v2, "slotslayout":Landroid/widget/RelativeLayout;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1776
    .local v0, "imageview":Landroid/widget/ImageView;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1779
    .local v3, "textview":Landroid/widget/TextView;
    iget-object v4, p2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 1780
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p2, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 1781
    .local v1, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1782
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1787
    .end local v1    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    iget v4, p2, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget v4, p2, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 1788
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p2, Lcom/findit/battle/Items$Item;->mNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1792
    :cond_1
    return-void

    .line 1785
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

    .line 1870
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_T;->mSlotsLayout:[Landroid/widget/RelativeLayout;

    .line 1872
    .local v4, "slotslayout":[Landroid/widget/RelativeLayout;
    array-length v3, v4

    .line 1873
    .local v3, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    move v6, v7

    .line 1895
    :goto_1
    return v6

    .line 1874
    :cond_0
    aget-object v8, v4, v0

    invoke-virtual {v8, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1875
    .local v1, "imageview":Landroid/widget/ImageView;
    aget-object v8, v4, v0

    invoke-virtual {v8, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1876
    .local v5, "textview":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v8, :cond_4

    .line 1878
    iget-object v8, p1, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    if-nez v8, :cond_3

    .line 1879
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p1, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 1880
    .local v2, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v8, -0x1

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1881
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1886
    .end local v2    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_2
    iget v8, p1, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    iget v8, p1, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    .line 1887
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p1, Lcom/findit/battle/Items$Item;->mNum:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1889
    :cond_2
    iput v0, p1, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 1890
    iput-boolean v7, p1, Lcom/findit/battle/Items$Item;->mSet:Z

    goto :goto_1

    .line 1884
    :cond_3
    iget-object v8, p1, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    invoke-static {v8}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1873
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setItemSlotWindowLocation(I)V
    .locals 4
    .param p1, "num"    # I

    .prologue
    .line 1026
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSlotWindowTotalNum:I

    if-ge p1, v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSlotsScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/findit/battle/InventoryActivity_T$ActionRunnable;

    iget v2, p0, Lcom/findit/battle/InventoryActivity_T;->mSlotWindowWidth:I

    mul-int/2addr v2, p1

    invoke-direct {v1, p0, v2}, Lcom/findit/battle/InventoryActivity_T$ActionRunnable;-><init>(Lcom/findit/battle/InventoryActivity_T;I)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1028
    iput p1, p0, Lcom/findit/battle/InventoryActivity_T;->mSlotWindowNum:I

    .line 1030
    :cond_0
    return-void
.end method

.method private setItemTab()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 962
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mItemTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 963
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mShopTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 964
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSkillTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 966
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 967
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mShopLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 968
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSkillLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 970
    iput v2, p0, Lcom/findit/battle/InventoryActivity_T;->mTabNum:I

    .line 971
    return-void
.end method

.method private setItemText()V
    .locals 5

    .prologue
    .line 1975
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_T;->mExplainTextView:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1977
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    .line 1978
    .local v1, "items":Lcom/findit/battle/Items;
    iget v3, p0, Lcom/findit/battle/InventoryActivity_T;->mSlotNum:I

    invoke-virtual {v1, v3}, Lcom/findit/battle/Items;->getIndex(I)I

    move-result v0

    .line 1979
    .local v0, "index":I
    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    iget-object v3, v1, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1980
    iget-object v3, v1, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 1981
    iget-object v3, v1, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v3, v3, v0

    iget-object v2, v3, Lcom/findit/battle/Items$Item;->mText:Ljava/lang/String;

    .line 1982
    .local v2, "text":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1983
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_T;->mExplainTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1986
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setLearnSkill(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 2691
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v2, v2, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v2, v2, p1

    iget-object v1, v2, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgPath:Ljava/lang/String;

    .line 2692
    .local v1, "imgpath":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2693
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_T;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v3, v3, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 2694
    .local v0, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 2695
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mLearnSkillImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2700
    .end local v0    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mLearnSkillTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_T;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v4, v4, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/findit/battle/Objects$Skills$Skill;->mPoint:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_T;->mLearnSkillText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2701
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mLearnSkillImageView:Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2702
    return-void

    .line 2698
    :cond_0
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mLearnSkillImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_T;->mSkills:Lcom/findit/battle/Objects$Skills;

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
    .line 2057
    if-gez p1, :cond_0

    .line 2059
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mMoveItemView:Lcom/findit/battle/InventoryActivity_T$MoveView;

    invoke-virtual {v1}, Lcom/findit/battle/InventoryActivity_T$MoveView;->clearImage()V

    .line 2060
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mMoveItemView:Lcom/findit/battle/InventoryActivity_T$MoveView;

    const/4 v2, -0x1

    iput v2, v1, Lcom/findit/battle/InventoryActivity_T$MoveView;->mIndex:I

    .line 2061
    const-string v1, "MotionEvent.ACTION_DOWN clear"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 2074
    :goto_0
    return-void

    .line 2065
    :cond_0
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    iget-object v1, v1, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v1, p1

    iget-object v0, v1, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    .line 2066
    .local v0, "imgpath":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2067
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mMoveItemView:Lcom/findit/battle/InventoryActivity_T$MoveView;

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    iget-object v2, v2, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v1, v2}, Lcom/findit/battle/InventoryActivity_T$MoveView;->setImage(I)V

    .line 2071
    :goto_1
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mMoveItemView:Lcom/findit/battle/InventoryActivity_T$MoveView;

    iput p1, v1, Lcom/findit/battle/InventoryActivity_T$MoveView;->mIndex:I

    .line 2072
    const-string v1, "MotionEvent.ACTION_DOWN set"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 2069
    :cond_1
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mMoveItemView:Lcom/findit/battle/InventoryActivity_T$MoveView;

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    iget-object v2, v2, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/findit/battle/InventoryActivity_T$MoveView;->setImage(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setSetSlotImageAlpha(IZ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "alpha"    # Z

    .prologue
    .line 2043
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    iget-object v2, v2, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, p1

    iget v1, v2, Lcom/findit/battle/Items$Item;->mType:I

    .line 2044
    .local v1, "type":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mSetSlotsLayout:[Landroid/widget/RelativeLayout;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 2045
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mSetSlotsLayout:[Landroid/widget/RelativeLayout;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2047
    .local v0, "imageview":Landroid/widget/ImageView;
    if-eqz p2, :cond_1

    .line 2048
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mCoverImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2052
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setSlotImageAlpha alpha: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 2054
    .end local v0    # "imageview":Landroid/widget/ImageView;
    :cond_0
    return-void

    .line 2050
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
    .line 1040
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/findit/battle/InventoryActivity_T;->mShopItemSlotWindowTotalNum:I

    if-ge p1, v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mShopItemSlotsScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/findit/battle/InventoryActivity_T$ActionRunnable;

    iget v2, p0, Lcom/findit/battle/InventoryActivity_T;->mShopItemSlotWindowWidth:I

    mul-int/2addr v2, p1

    invoke-direct {v1, p0, v2}, Lcom/findit/battle/InventoryActivity_T$ActionRunnable;-><init>(Lcom/findit/battle/InventoryActivity_T;I)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1042
    iput p1, p0, Lcom/findit/battle/InventoryActivity_T;->mShopItemSlotWindowNum:I

    .line 1044
    :cond_0
    return-void
.end method

.method private setShopItemText()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 1989
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_T;->mShopExplainTextView:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1991
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    .line 1992
    .local v0, "items":Lcom/findit/battle/Items;
    iget v3, p0, Lcom/findit/battle/InventoryActivity_T;->mShopItemTypeSlotNum:I

    .line 1993
    .local v3, "type":I
    iget v1, p0, Lcom/findit/battle/InventoryActivity_T;->mShopItemSlotNum:I

    .line 1994
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

    .line 1995
    iget-object v4, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v4, v4, v1

    if-eqz v4, :cond_0

    .line 1996
    iget-object v4, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v4, v4, v1

    iget-object v2, v4, Lcom/findit/battle/Items$Item;->mText:Ljava/lang/String;

    .line 1997
    .local v2, "text":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1998
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_T;->mShopExplainTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2001
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setShopSlot(II)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "subtype"    # I

    .prologue
    .line 1922
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_T;->mShopItemSlotsLayout:[Landroid/widget/RelativeLayout;

    aget-object v3, v5, p2

    .line 1923
    .local v3, "slotslayout":Landroid/widget/RelativeLayout;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1924
    .local v0, "imageview":Landroid/widget/ImageView;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1926
    .local v4, "textview":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    iget-object v5, v5, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v5, p2

    .line 1929
    .local v2, "item":Lcom/findit/battle/Items$Item;
    iget-object v5, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 1930
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v2, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 1931
    .local v1, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1932
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1937
    .end local v1    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    iget v5, v2, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    iget v5, v2, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 1938
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v2, Lcom/findit/battle/Items$Item;->mNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1943
    :cond_1
    return-void

    .line 1935
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

    .line 977
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mItemTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 978
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mShopTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 979
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSkillTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 981
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 982
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mShopLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 983
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSkillLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 985
    iput v2, p0, Lcom/findit/battle/InventoryActivity_T;->mTabNum:I

    .line 986
    return-void
.end method

.method private setSkillSlot(I)V
    .locals 8
    .param p1, "index"    # I

    .prologue
    const/4 v7, -0x1

    .line 1899
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_T;->mSkillSlotsLayout:[Landroid/widget/RelativeLayout;

    aget-object v3, v5, p1

    .line 1900
    .local v3, "slotslayout":Landroid/widget/RelativeLayout;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1901
    .local v0, "imageview":Landroid/widget/ImageView;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1903
    .local v4, "textview":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_T;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v5, v5, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v2, v5, p1

    .line 1904
    .local v2, "skill":Lcom/findit/battle/Objects$Skills$Skill;
    iget v5, v2, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgId:I

    if-eq v5, v7, :cond_0

    .line 1906
    iget-object v5, v2, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgPath:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 1907
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v2, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 1908
    .local v1, "img":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1909
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1914
    .end local v1    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    iget-boolean v5, v2, Lcom/findit/battle/Objects$Skills$Skill;->mBuy:Z

    if-eqz v5, :cond_2

    .line 1915
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v2, Lcom/findit/battle/Objects$Skills$Skill;->mUpgrade:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1919
    :cond_0
    :goto_1
    return-void

    .line 1912
    :cond_1
    iget-object v5, v2, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1917
    :cond_2
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_T;->mCoverImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private setSkillSlotWindowLocation(I)V
    .locals 4
    .param p1, "num"    # I

    .prologue
    .line 1033
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSkillSlotWindowTotalNum:I

    if-ge p1, v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSkillSlotsScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/findit/battle/InventoryActivity_T$ActionRunnable;

    iget v2, p0, Lcom/findit/battle/InventoryActivity_T;->mSkillSlotWindowWidth:I

    mul-int/2addr v2, p1

    invoke-direct {v1, p0, v2}, Lcom/findit/battle/InventoryActivity_T$ActionRunnable;-><init>(Lcom/findit/battle/InventoryActivity_T;I)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1035
    iput p1, p0, Lcom/findit/battle/InventoryActivity_T;->mSkillSlotWindowNum:I

    .line 1037
    :cond_0
    return-void
.end method

.method private setSkillTab()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 992
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mItemTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 993
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mShopTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 994
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSkillTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 996
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 997
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mShopLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 998
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSkillLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1000
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSkillPointNumTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/findit/battle/InventoryActivity_T;->mPoint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1002
    const/4 v0, 0x2

    iput v0, p0, Lcom/findit/battle/InventoryActivity_T;->mTabNum:I

    .line 1003
    return-void
.end method

.method private setSkillText()V
    .locals 5

    .prologue
    .line 2004
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_T;->mSkillExplainTextView:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2006
    iget v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSkillSlotNum:I

    .line 2007
    .local v0, "index":I
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mSkills:Lcom/findit/battle/Objects$Skills;

    .line 2008
    .local v1, "skills":Lcom/findit/battle/Objects$Skills;
    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    iget v3, v1, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    if-ge v0, v3, :cond_0

    .line 2009
    iget-object v3, v1, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 2010
    iget-object v3, v1, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v3, v3, v0

    iget-object v2, v3, Lcom/findit/battle/Objects$Skills$Skill;->mText:Ljava/lang/String;

    .line 2011
    .local v2, "text":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2012
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_T;->mSkillExplainTextView:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/findit/battle/Objects$Skills$Skill;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2015
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setSlotImageAlpha(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "alpha"    # Z

    .prologue
    .line 2032
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mSlotsLayout:[Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    iget-object v2, v2, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/findit/battle/Items$Item;->mSlotnum:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2034
    .local v0, "imageview":Landroid/widget/ImageView;
    if-eqz p2, :cond_0

    .line 2035
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mCoverImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2039
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSlotImageAlpha alpha: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 2040
    return-void

    .line 2037
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setTab()V
    .locals 2

    .prologue
    .line 926
    const v1, 0x7f0b0027

    invoke-virtual {p0, v1}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mItemLayout:Landroid/widget/RelativeLayout;

    .line 927
    const v1, 0x7f0b0035

    invoke-virtual {p0, v1}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mShopLayout:Landroid/widget/RelativeLayout;

    .line 928
    const v1, 0x7f0b0049

    invoke-virtual {p0, v1}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mSkillLayout:Landroid/widget/RelativeLayout;

    .line 930
    const v1, 0x7f0b0023

    invoke-virtual {p0, v1}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 931
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Lcom/findit/battle/InventoryActivity_T$5;

    invoke-direct {v1, p0}, Lcom/findit/battle/InventoryActivity_T$5;-><init>(Lcom/findit/battle/InventoryActivity_T;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 937
    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mItemTabButton:Landroid/widget/Button;

    .line 939
    const v1, 0x7f0b0024

    invoke-virtual {p0, v1}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 940
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v1, Lcom/findit/battle/InventoryActivity_T$6;

    invoke-direct {v1, p0}, Lcom/findit/battle/InventoryActivity_T$6;-><init>(Lcom/findit/battle/InventoryActivity_T;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 946
    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mShopTabButton:Landroid/widget/Button;

    .line 948
    const v1, 0x7f0b0025

    invoke-virtual {p0, v1}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 949
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v1, Lcom/findit/battle/InventoryActivity_T$7;

    invoke-direct {v1, p0}, Lcom/findit/battle/InventoryActivity_T$7;-><init>(Lcom/findit/battle/InventoryActivity_T;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 955
    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSkillTabButton:Landroid/widget/Button;

    .line 956
    return-void
.end method


# virtual methods
.method public coordinateLayout(Landroid/view/View;[Ljava/lang/String;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rects"    # [Ljava/lang/String;

    .prologue
    .line 461
    iget v9, p0, Lcom/findit/battle/InventoryActivity_T;->mWidthRate:F

    .line 462
    .local v9, "widthrate":F
    iget v4, p0, Lcom/findit/battle/InventoryActivity_T;->mHeightRate:F

    .local v4, "heightrate":F
    move-object v6, p1

    .line 464
    check-cast v6, Landroid/widget/RelativeLayout;

    .line 466
    .local v6, "layout":Landroid/widget/RelativeLayout;
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    .line 467
    .local v1, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-lt v5, v1, :cond_0

    .line 517
    return-void

    .line 468
    :cond_0
    aget-object v10, p2, v5

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 470
    .local v2, "data":[Ljava/lang/String;
    const/4 v0, 0x1

    .line 471
    .local v0, "apply":Z
    const/4 v10, 0x2

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 472
    .local v8, "width":I
    const/4 v10, 0x3

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 474
    .local v3, "height":I
    packed-switch v8, :pswitch_data_0

    .line 490
    int-to-float v10, v8

    mul-float/2addr v10, v9

    float-to-int v8, v10

    .line 493
    :goto_1
    if-eqz v0, :cond_1

    .line 494
    packed-switch v3, :pswitch_data_1

    .line 508
    int-to-float v10, v3

    mul-float/2addr v10, v4

    float-to-int v3, v10

    .line 512
    :cond_1
    :goto_2
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 513
    .local v7, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v10, 0x0

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v9

    float-to-int v10, v10

    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 514
    const/4 v10, 0x1

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v4

    float-to-int v10, v10

    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 515
    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 476
    .end local v7    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_0
    const/4 v8, -0x1

    .line 477
    goto :goto_1

    .line 480
    :pswitch_1
    const/4 v8, -0x2

    .line 481
    goto :goto_1

    .line 484
    :pswitch_2
    int-to-float v10, v3

    mul-float/2addr v10, v4

    float-to-int v8, v10

    .line 485
    move v3, v8

    .line 486
    const/4 v0, 0x0

    .line 487
    goto :goto_1

    .line 496
    :pswitch_3
    const/4 v3, -0x1

    .line 497
    goto :goto_2

    .line 500
    :pswitch_4
    const/4 v3, -0x2

    .line 501
    goto :goto_2

    .line 504
    :pswitch_5
    move v3, v8

    .line 505
    goto :goto_2

    .line 474
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 494
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
    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mDbhelper:Lcom/findit/battle/DBAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/findit/battle/DBAdapter;->fetchState(J)Landroid/database/Cursor;

    move-result-object v3

    .line 759
    .local v3, "c":Landroid/database/Cursor;
    if-eqz v3, :cond_4

    .line 760
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v19

    if-eqz v19, :cond_3

    .line 763
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

    iput v0, v1, Lcom/findit/battle/InventoryActivity_T;->mLevel:I

    .line 764
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/InventoryActivity_T;->mLevel:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 765
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_T;->mLevel:I

    .line 767
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mLevelTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/InventoryActivity_T;->mLevel:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mShopLevelTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/InventoryActivity_T;->mLevel:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 771
    const-string v19, "mScore"

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/findit/battle/InventoryActivity_T;->mScore:J

    .line 773
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "/"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mLevelScoreTable:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/InventoryActivity_T;->mLevel:I

    move/from16 v21, v0

    aget v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 774
    .local v12, "maxscore":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mScoreTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/findit/battle/InventoryActivity_T;->mScore:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mShopScoreTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/findit/battle/InventoryActivity_T;->mScore:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    const-string v19, "mCoin"

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/findit/battle/InventoryActivity_T;->mCoin:J

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mCoinNumTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/findit/battle/InventoryActivity_T;->mCoin:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mShopCoinNumTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/findit/battle/InventoryActivity_T;->mCoin:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 784
    const-string v19, "mPoint"

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_T;->mPoint:I

    .line 787
    const-string v19, "mSkills"

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 788
    .local v5, "data":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_1

    .line 789
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    new-array v6, v0, [C

    .line 790
    .local v6, "datas":[C
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 792
    const/4 v10, 0x0

    .line 793
    .local v10, "j":I
    add-int/lit8 v10, v10, 0x1

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mSkills:Lcom/findit/battle/Objects$Skills;

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

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mSkills:Lcom/findit/battle/Objects$Skills;

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

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mSkills:Lcom/findit/battle/Objects$Skills;

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

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mSkills:Lcom/findit/battle/Objects$Skills;

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

    .line 800
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "j":I
    .restart local v11    # "j":I
    aget-char v16, v6, v10

    .line 802
    .local v16, "totalnum":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    move/from16 v0, v16

    if-lt v9, v0, :cond_a

    .line 812
    move/from16 v9, v16

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mSkills:Lcom/findit/battle/Objects$Skills;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v9, v0, :cond_e

    .line 817
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

    .line 818
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_2

    .line 819
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    new-array v6, v0, [C

    .line 820
    .restart local v6    # "datas":[C
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 822
    const/4 v10, 0x0

    .line 823
    .restart local v10    # "j":I
    add-int/lit8 v10, v10, 0x1

    .line 825
    const/4 v9, 0x0

    .restart local v9    # "i":I
    move v11, v10

    .end local v10    # "j":I
    .restart local v11    # "j":I
    :goto_6
    const/16 v19, 0x6

    move/from16 v0, v19

    if-lt v9, v0, :cond_f

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/findit/battle/Items;->mItemTotalnum:I

    .line 855
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "j":I
    .restart local v10    # "j":I
    aget-char v16, v6, v11

    .line 857
    .restart local v16    # "totalnum":I
    const/4 v9, 0x0

    move v11, v10

    .end local v10    # "j":I
    .restart local v11    # "j":I
    :goto_7
    move/from16 v0, v16

    if-lt v9, v0, :cond_11

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/findit/battle/Items;->setSetTable()V

    .line 893
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

    iput v0, v1, Lcom/findit/battle/InventoryActivity_T;->mAttack:I

    .line 894
    invoke-direct/range {p0 .. p0}, Lcom/findit/battle/InventoryActivity_T;->setAttackText()V

    .line 897
    const-string v19, "mDefense"

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_T;->mDefense:I

    .line 898
    invoke-direct/range {p0 .. p0}, Lcom/findit/battle/InventoryActivity_T;->setDefenseText()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    .end local v5    # "data":Ljava/lang/String;
    .end local v12    # "maxscore":Ljava/lang/String;
    :cond_3
    :goto_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 908
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mDbhelper:Lcom/findit/battle/DBAdapter;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/findit/battle/DBAdapter;->fetchSetup(J)Landroid/database/Cursor;

    move-result-object v4

    .line 910
    .local v4, "c1":Landroid/database/Cursor;
    if-eqz v4, :cond_5

    .line 911
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v19

    if-eqz v19, :cond_5

    .line 912
    const-string v19, "mEmail"

    move-object/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_T;->mUserId:Ljava/lang/String;

    .line 915
    :cond_5
    return-void

    .line 795
    .end local v4    # "c1":Landroid/database/Cursor;
    .restart local v5    # "data":Ljava/lang/String;
    .restart local v6    # "datas":[C
    .restart local v11    # "j":I
    .restart local v12    # "maxscore":Ljava/lang/String;
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 796
    .end local v11    # "j":I
    .restart local v10    # "j":I
    :cond_7
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 797
    .end local v10    # "j":I
    .restart local v11    # "j":I
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 798
    .end local v11    # "j":I
    .restart local v10    # "j":I
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 803
    .end local v10    # "j":I
    .restart local v9    # "i":I
    .restart local v11    # "j":I
    .restart local v16    # "totalnum":I
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mSkills:Lcom/findit/battle/Objects$Skills;

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

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mSkills:Lcom/findit/battle/Objects$Skills;

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

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mSkills:Lcom/findit/battle/Objects$Skills;

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

    .line 808
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/findit/battle/InventoryActivity_T;->setSkillSlot(I)V

    .line 802
    add-int/lit8 v9, v9, 0x1

    move v11, v10

    .end local v10    # "j":I
    .restart local v11    # "j":I
    goto/16 :goto_4

    .line 803
    :cond_b
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "j":I
    .restart local v10    # "j":I
    aget-char v19, v6, v11

    move v11, v10

    .end local v10    # "j":I
    .restart local v11    # "j":I
    goto :goto_9

    .line 804
    :cond_c
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "j":I
    .restart local v10    # "j":I
    aget-char v19, v6, v11

    move v11, v10

    .end local v10    # "j":I
    .restart local v11    # "j":I
    goto :goto_a

    .line 805
    .end local v11    # "j":I
    .restart local v10    # "j":I
    :cond_d
    const/16 v19, 0x0

    goto :goto_b

    .line 813
    .end local v10    # "j":I
    .restart local v11    # "j":I
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/findit/battle/InventoryActivity_T;->setSkillSlot(I)V

    .line 812
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    .line 842
    .end local v16    # "totalnum":I
    :cond_f
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "j":I
    .restart local v10    # "j":I
    aget-char v16, v6, v11

    .line 843
    .restart local v16    # "totalnum":I
    const/16 v18, 0x0

    .local v18, "z":I
    :goto_c
    move/from16 v0, v18

    move/from16 v1, v16

    if-lt v0, v1, :cond_10

    .line 825
    add-int/lit8 v9, v9, 0x1

    move v11, v10

    .end local v10    # "j":I
    .restart local v11    # "j":I
    goto/16 :goto_6

    .line 844
    .end local v11    # "j":I
    .restart local v10    # "j":I
    :cond_10
    add-int/lit8 v10, v10, 0x1

    .line 845
    add-int/lit8 v10, v10, 0x1

    .line 846
    add-int/lit8 v10, v10, 0x1

    .line 847
    add-int/lit8 v10, v10, 0x1

    .line 848
    add-int/lit8 v10, v10, 0x1

    .line 849
    add-int/lit8 v10, v10, 0x1

    .line 850
    add-int/lit8 v10, v10, 0x1

    .line 843
    add-int/lit8 v18, v18, 0x1

    goto :goto_c

    .line 858
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

    .line 859
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

    .line 860
    .end local v10    # "j":I
    .restart local v11    # "j":I
    .local v14, "subtype":I
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1, v14}, Lcom/findit/battle/Items;->createItem(II)Lcom/findit/battle/Items$Item;

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

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

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

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

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

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

    .line 868
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "j":I
    .restart local v10    # "j":I
    aget-char v15, v6, v11

    .line 869
    .local v15, "total":I
    if-nez v15, :cond_17

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    move-object/from16 v19, v0

    aget-object v19, v19, v9

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    .line 878
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    move-object/from16 v19, v0

    aget-object v19, v19, v9

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/findit/battle/Items$Item;->mSet:Z

    move/from16 v19, v0

    if-eqz v19, :cond_19

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

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

    invoke-direct {v0, v1, v9}, Lcom/findit/battle/InventoryActivity_T;->setItemSetSlot(II)I

    .line 857
    :goto_13
    add-int/lit8 v9, v9, 0x1

    move v11, v10

    .end local v10    # "j":I
    .restart local v11    # "j":I
    goto/16 :goto_7

    .line 858
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

    .line 859
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

    .line 864
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

    .line 865
    .end local v11    # "j":I
    .restart local v10    # "j":I
    :cond_15
    const/16 v19, 0x0

    goto/16 :goto_10

    .line 866
    :cond_16
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "j":I
    .restart local v11    # "j":I
    aget-char v19, v6, v10

    goto :goto_11

    .line 872
    .end local v11    # "j":I
    .restart local v10    # "j":I
    .restart local v15    # "total":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    move-object/from16 v19, v0

    aget-object v19, v19, v9

    const-string v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    .line 873
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

    .line 874
    .end local v10    # "j":I
    .restart local v11    # "j":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

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

    .line 873
    add-int/lit8 v8, v8, 0x1

    move v11, v10

    .end local v10    # "j":I
    .restart local v11    # "j":I
    goto :goto_14

    .line 881
    .end local v8    # "h":I
    .end local v11    # "j":I
    .restart local v10    # "j":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    move-object/from16 v19, v0

    aget-object v19, v19, v9

    move-object/from16 v0, v19

    iget v13, v0, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 882
    .local v13, "slotnum":I
    if-gez v13, :cond_1a

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    move-object/from16 v19, v0

    aget-object v19, v19, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_T;->setItemSlot(Lcom/findit/battle/Items$Item;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_13

    .line 900
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

    .line 901
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

    .line 885
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

    invoke-direct {v0, v13, v9}, Lcom/findit/battle/InventoryActivity_T;->setItemSlot(II)V
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
    .line 2898
    invoke-super {p0, p1, p2, p3}, Lcom/feelingk/iap/IAPActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2900
    sparse-switch p1, :sswitch_data_0

    .line 2944
    :cond_0
    :goto_0
    return-void

    .line 2902
    :sswitch_0
    if-eqz p3, :cond_0

    .line 2903
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 2906
    .local v7, "imageuri":Landroid/net/Uri;
    invoke-direct {p0, v7}, Lcom/findit/battle/InventoryActivity_T;->getImagePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 2909
    .local v8, "path":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 2910
    invoke-direct {p0, v8}, Lcom/findit/battle/InventoryActivity_T;->cutImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mCutImagePath:Ljava/lang/String;

    goto :goto_0

    .line 2916
    .end local v7    # "imageuri":Landroid/net/Uri;
    .end local v8    # "path":Ljava/lang/String;
    :sswitch_1
    if-eqz p3, :cond_0

    .line 2918
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_T;->getLastImagePath()Ljava/lang/String;

    move-result-object v8

    .line 2921
    .restart local v8    # "path":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 2922
    invoke-direct {p0, v8}, Lcom/findit/battle/InventoryActivity_T;->cutImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mCutImagePath:Ljava/lang/String;

    goto :goto_0

    .line 2927
    .end local v8    # "path":Ljava/lang/String;
    :sswitch_2
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mCutImagePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2935
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mCutImagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2937
    .local v3, "image":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mBodyImg:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mActionImg:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/findit/battle/InventoryActivity_T;->mWidthRate:F

    iget v5, p0, Lcom/findit/battle/InventoryActivity_T;->mHeightRate:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/findit/battle/InventoryActivity_T;->drawImg(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2938
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mCharacterImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v6}, Lcom/findit/battle/InventoryActivity_T;->compressBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2939
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 2900
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
    const-string v8, "InventoryActivity_T"

    invoke-static {v8}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 189
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_T;->requestWindowFeature(I)Z

    .line 190
    const v8, 0x7f030005

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_T;->setContentView(I)V

    .line 193
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-static {}, Lcom/findit/battle/FindItApplication;->getDisplayScreenWidth()I

    move-result v9

    invoke-static {}, Lcom/findit/battle/FindItApplication;->getDisplayScreenHeight()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/view/Window;->setLayout(II)V

    .line 195
    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_T;->setVolumeControlStream(I)V

    .line 197
    new-instance v8, Lcom/findit/battle/CommonDialog;

    invoke-direct {v8, p0}, Lcom/findit/battle/CommonDialog;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mCommonDialog:Lcom/findit/battle/CommonDialog;

    .line 199
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09004f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mBuyListTitleText:Ljava/lang/String;

    .line 200
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f060000

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mLevelScoreTable:[I

    .line 203
    const v8, 0x7f0b000e

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mCharacterImageView:Landroid/widget/ImageView;

    .line 204
    const v8, 0x7f0b0020

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mAttackTextView:Landroid/widget/TextView;

    .line 205
    const v8, 0x7f0b0022

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mDefenseTextView:Landroid/widget/TextView;

    .line 206
    const v8, 0x7f0b0029

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mLevelTextView:Landroid/widget/TextView;

    .line 207
    const v8, 0x7f0b0037

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mShopLevelTextView:Landroid/widget/TextView;

    .line 208
    const v8, 0x7f0b002b

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mScoreTextView:Landroid/widget/TextView;

    .line 209
    const v8, 0x7f0b0039

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mShopScoreTextView:Landroid/widget/TextView;

    .line 210
    const v8, 0x7f0b002d

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mCoinNumTextView:Landroid/widget/TextView;

    .line 211
    const v8, 0x7f0b003b

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mShopCoinNumTextView:Landroid/widget/TextView;

    .line 212
    const v8, 0x7f0b0034

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mExplainTextView:Landroid/widget/TextView;

    .line 213
    const v8, 0x7f0b0043

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mShopExplainTextView:Landroid/widget/TextView;

    .line 214
    const v8, 0x7f0b0050

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mSkillExplainTextView:Landroid/widget/TextView;

    .line 217
    const/4 v8, 0x3

    new-array v8, v8, [Landroid/view/animation/Animation;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mAnimation:[Landroid/view/animation/Animation;

    .line 218
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mAnimation:[Landroid/view/animation/Animation;

    const/4 v9, 0x0

    const v10, 0x7f040001

    invoke-static {p0, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    aput-object v10, v8, v9

    .line 219
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mAnimation:[Landroid/view/animation/Animation;

    const/4 v9, 0x1

    const v10, 0x7f040004

    invoke-static {p0, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    aput-object v10, v8, v9

    .line 220
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mAnimation:[Landroid/view/animation/Animation;

    const/4 v9, 0x2

    const v10, 0x7f040007

    invoke-static {p0, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    aput-object v10, v8, v9

    .line 222
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0201be

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mCoverImg:Landroid/graphics/drawable/Drawable;

    .line 223
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mCoverImg:Landroid/graphics/drawable/Drawable;

    const/16 v9, 0xdc

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 250
    new-instance v8, Lcom/findit/battle/Items;

    invoke-direct {v8, p0}, Lcom/findit/battle/Items;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    .line 251
    new-instance v5, Lcom/findit/battle/Objects;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v5, p0, v8, v9, v10}, Lcom/findit/battle/Objects;-><init>(Landroid/content/Context;IIF)V

    .line 252
    .local v5, "objects":Lcom/findit/battle/Objects;
    iget-object v8, v5, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mSkills:Lcom/findit/battle/Objects$Skills;

    .line 255
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    iget-object v6, v8, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    .line 257
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

    .line 258
    const-string v9, "0900744606"

    aput-object v9, v4, v8

    const/4 v8, 0x3

    const-string v9, "0900744607"

    aput-object v9, v4, v8

    .line 259
    .local v4, "keys":[Ljava/lang/String;
    iput-object v4, p0, Lcom/findit/battle/InventoryActivity_T;->mPurchaseItemKey:[Ljava/lang/String;

    .line 261
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

    .line 262
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

    .line 264
    .local v3, "items":[Lcom/findit/battle/Items$Item;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mPurchaseItemMap:Ljava/util/HashMap;

    .line 265
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, v4

    if-lt v2, v8, :cond_1

    .line 269
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_T;->intiatieInAppPurchases()V

    .line 271
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 272
    .local v0, "extra":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 287
    const-string v8, "displaywidth"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x44a00000    # 1280.0f

    div-float v7, v8, v9

    .line 288
    .local v7, "widthrate":F
    const-string v8, "displayheight"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x44480000    # 800.0f

    div-float v1, v8, v9

    .line 295
    .local v1, "heightrate":F
    const-string v8, "bodyimgid"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/findit/battle/InventoryActivity_T;->mBodyImgId:I

    .line 296
    const-string v8, "actionimgid"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/findit/battle/InventoryActivity_T;->mActionImgId:I

    .line 297
    const-string v8, "faceimgid"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/findit/battle/InventoryActivity_T;->mFaceImgId:I

    .line 298
    const-string v8, "bodyimgpath"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mBodyImgPath:Ljava/lang/String;

    .line 299
    const-string v8, "actionimgpath"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mActionImgPath:Ljava/lang/String;

    .line 300
    const-string v8, "faceimgpath"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mFaceImgPath:Ljava/lang/String;

    .line 302
    mul-float v8, v7, v1

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v8, v9

    iput v8, p0, Lcom/findit/battle/InventoryActivity_T;->mMoveStandard:F

    .line 304
    iput v7, p0, Lcom/findit/battle/InventoryActivity_T;->mWidthRate:F

    .line 305
    iput v1, p0, Lcom/findit/battle/InventoryActivity_T;->mHeightRate:F

    .line 307
    const v8, 0x7f0b000c

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060001

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/findit/battle/InventoryActivity_T;->coordinateLayout(Landroid/view/View;[Ljava/lang/String;)V

    .line 308
    const v8, 0x7f0b0027

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060002

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/findit/battle/InventoryActivity_T;->coordinateLayout(Landroid/view/View;[Ljava/lang/String;)V

    .line 309
    const v8, 0x7f0b0035

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060003

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/findit/battle/InventoryActivity_T;->coordinateLayout(Landroid/view/View;[Ljava/lang/String;)V

    .line 310
    const v8, 0x7f0b0046

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060004

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/findit/battle/InventoryActivity_T;->coordinateLayout(Landroid/view/View;[Ljava/lang/String;)V

    .line 311
    const v8, 0x7f0b003d

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060005

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/findit/battle/InventoryActivity_T;->coordinateLayout(Landroid/view/View;[Ljava/lang/String;)V

    .line 312
    const v8, 0x7f0b0049

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_T;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060006

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/findit/battle/InventoryActivity_T;->coordinateLayout(Landroid/view/View;[Ljava/lang/String;)V

    .line 314
    invoke-direct {p0, v7, v1}, Lcom/findit/battle/InventoryActivity_T;->createItemSlots(FF)V

    .line 315
    invoke-direct {p0, v7, v1}, Lcom/findit/battle/InventoryActivity_T;->createShopSlots(FF)V

    .line 316
    invoke-direct {p0, v7, v1}, Lcom/findit/battle/InventoryActivity_T;->createSkillSlots(FF)V

    .line 318
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_T;->setItemText()V

    .line 321
    .end local v1    # "heightrate":F
    .end local v7    # "widthrate":F
    :cond_0
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_T;->createDeleteItemDlg()V

    .line 322
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_T;->createLearnSkillDlg()V

    .line 323
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_T;->createBuyItemDlg()V

    .line 324
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_T;->createBuyListDlg()V

    .line 325
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_T;->setTab()V

    .line 327
    const/4 v8, 0x0

    iput v8, p0, Lcom/findit/battle/InventoryActivity_T;->mTabNum:I

    .line 328
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/findit/battle/InventoryActivity_T;->mLoadingView:Z

    .line 331
    new-instance v8, Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-direct {v8, p0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 332
    return-void

    .line 266
    .end local v0    # "extra":Landroid/os/Bundle;
    :cond_1
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_T;->mPurchaseItemMap:Ljava/util/HashMap;

    aget-object v9, v4, v2

    aget-object v10, v3, v2

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 454
    invoke-super {p0}, Lcom/feelingk/iap/IAPActivity;->onDestroy()V

    .line 458
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 2835
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 2836
    iput-boolean v0, p0, Lcom/findit/battle/InventoryActivity_T;->mLoadingView:Z

    .line 2838
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_T;->finish()V

    .line 2839
    const v1, 0x7f040002

    const v2, 0x7f040003

    invoke-virtual {p0, v1, v2}, Lcom/findit/battle/InventoryActivity_T;->overridePendingTransition(II)V

    .line 2844
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

    .line 416
    const-string v0, "InventoryActivity onPause"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 417
    invoke-super {p0}, Lcom/feelingk/iap/IAPActivity;->onPause()V

    .line 422
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mDbhelper:Lcom/findit/battle/DBAdapter;

    if-eqz v0, :cond_0

    .line 423
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/findit/battle/InventoryActivity_T;->saveState(J)V

    .line 425
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mDbhelper:Lcom/findit/battle/DBAdapter;

    invoke-virtual {v0}, Lcom/findit/battle/DBAdapter;->close()V

    .line 426
    iput-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mDbhelper:Lcom/findit/battle/DBAdapter;

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSoundPoolMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    .line 437
    iput-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mSoundPoolMap:Ljava/util/HashMap;

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSoundpool:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    .line 440
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSoundpool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 441
    iput-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mSoundpool:Landroid/media/SoundPool;

    .line 446
    :cond_2
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_T;->recycleImages()V

    .line 448
    iget-boolean v0, p0, Lcom/findit/battle/InventoryActivity_T;->mLoadingView:Z

    if-eqz v0, :cond_3

    .line 449
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_T;->createLoadingView()V

    .line 450
    :cond_3
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 336
    const-string v1, "InventoryActivity onResume"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 337
    invoke-super {p0}, Lcom/feelingk/iap/IAPActivity;->onResume()V

    .line 339
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_T;->loadImages()V

    .line 343
    new-instance v0, Lcom/findit/battle/DBAdapter;

    invoke-direct {v0, p0}, Lcom/findit/battle/DBAdapter;-><init>(Landroid/content/Context;)V

    .line 344
    .local v0, "dbhelper":Lcom/findit/battle/DBAdapter;
    invoke-virtual {v0}, Lcom/findit/battle/DBAdapter;->open()Lcom/findit/battle/DBAdapter;

    .line 345
    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mDbhelper:Lcom/findit/battle/DBAdapter;

    .line 348
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/findit/battle/InventoryActivity_T;->loadState(J)V

    .line 349
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_T;->setItemText()V

    .line 350
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_T;->setSkillText()V

    .line 394
    new-instance v1, Landroid/media/SoundPool;

    const/16 v2, 0xa

    const/4 v3, 0x3

    const/16 v4, 0x3e8

    invoke-direct {v1, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mSoundpool:Landroid/media/SoundPool;

    .line 395
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mSoundPoolMap:Ljava/util/HashMap;

    .line 396
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_T;->mSoundpool:Landroid/media/SoundPool;

    const v4, 0x7f050005

    const/4 v5, 0x1

    invoke-virtual {v3, p0, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget v1, p0, Lcom/findit/battle/InventoryActivity_T;->mTabNum:I

    packed-switch v1, :pswitch_data_0

    .line 412
    :goto_0
    return-void

    .line 401
    :pswitch_0
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_T;->setItemTab()V

    goto :goto_0

    .line 405
    :pswitch_1
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_T;->setShopTab()V

    goto :goto_0

    .line 409
    :pswitch_2
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_T;->setSkillTab()V

    goto :goto_0

    .line 399
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

    .line 2849
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    .line 2850
    .local v1, "touchx":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v2, v0

    .line 2853
    .local v2, "touchy":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2893
    :cond_0
    :goto_0
    return v10

    .line 2855
    :pswitch_0
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mMoveItemView:Lcom/findit/battle/InventoryActivity_T$MoveView;

    iget v5, v0, Lcom/findit/battle/InventoryActivity_T$MoveView;->mIndex:I

    .line 2856
    .local v5, "index":I
    if-le v5, v9, :cond_1

    .line 2857
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mMoveItemView:Lcom/findit/battle/InventoryActivity_T$MoveView;

    invoke-virtual {v0, v1, v2, v8, v8}, Lcom/findit/battle/InventoryActivity_T$MoveView;->move(IIII)V

    .line 2858
    invoke-direct {p0, v5, v8}, Lcom/findit/battle/InventoryActivity_T;->setSetSlotImageAlpha(IZ)V

    .line 2862
    iget v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSlotWindowX:I

    neg-int v3, v0

    iget v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSlotWindowY:I

    neg-int v4, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/findit/battle/InventoryActivity_T;->changeItemSlots(IIIII)V

    .line 2864
    :cond_1
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mMoveItemView:Lcom/findit/battle/InventoryActivity_T$MoveView;

    invoke-virtual {v0}, Lcom/findit/battle/InventoryActivity_T$MoveView;->fadeView()V

    .line 2866
    invoke-direct {p0, v9, v9, v8, v8}, Lcom/findit/battle/InventoryActivity_T;->setFirstTouch(IIII)V

    goto :goto_0

    .line 2870
    .end local v5    # "index":I
    :pswitch_1
    invoke-direct {p0, v1, v2, v8, v8}, Lcom/findit/battle/InventoryActivity_T;->isActionMove(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2873
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mMoveItemView:Lcom/findit/battle/InventoryActivity_T$MoveView;

    iget v5, v0, Lcom/findit/battle/InventoryActivity_T$MoveView;->mIndex:I

    .line 2874
    .restart local v5    # "index":I
    if-le v5, v9, :cond_2

    .line 2875
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mMoveItemView:Lcom/findit/battle/InventoryActivity_T$MoveView;

    invoke-virtual {v0, v1, v2, v8, v8}, Lcom/findit/battle/InventoryActivity_T$MoveView;->move(IIII)V

    .line 2876
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mMoveItemView:Lcom/findit/battle/InventoryActivity_T$MoveView;

    invoke-virtual {v0}, Lcom/findit/battle/InventoryActivity_T$MoveView;->appearView()V

    .line 2877
    invoke-direct {p0, v5, v10}, Lcom/findit/battle/InventoryActivity_T;->setSetSlotImageAlpha(IZ)V

    .line 2880
    :cond_2
    invoke-direct {p0, v9, v9, v8, v8}, Lcom/findit/battle/InventoryActivity_T;->setFirstTouch(IIII)V

    goto :goto_0

    .line 2884
    .end local v5    # "index":I
    :pswitch_2
    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_T;->mSetItemTypeTable:[I

    .line 2885
    .local v6, "setitemtypetable":[I
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mMoveItemView:Lcom/findit/battle/InventoryActivity_T$MoveView;

    invoke-virtual {v0, v1, v2, v8, v8}, Lcom/findit/battle/InventoryActivity_T$MoveView;->touchRect(IIII)I

    move-result v7

    .line 2886
    .local v7, "slotnum":I
    if-le v7, v9, :cond_3

    array-length v0, v6

    if-ge v7, v0, :cond_3

    .line 2887
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    aget v3, v6, v7

    invoke-virtual {v0, v3}, Lcom/findit/battle/Items;->getSetIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/findit/battle/InventoryActivity_T;->setMoveItemImage(I)V

    .line 2889
    :cond_3
    invoke-direct {p0, v1, v2, v8, v8}, Lcom/findit/battle/InventoryActivity_T;->setFirstTouch(IIII)V

    goto :goto_0

    .line 2853
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

    .line 919
    iget-boolean v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSoundon:Z

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSoundpool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSoundPoolMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSoundpool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mSoundPoolMap:Ljava/util/HashMap;

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

    .line 923
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

    .line 692
    new-array v3, v1, [I

    .line 693
    .local v3, "intvalues":[I
    new-array v4, v11, [J

    .line 694
    .local v4, "longvalues":[J
    new-array v5, v11, [Ljava/lang/String;

    const-string v0, ""

    aput-object v0, v5, v2

    const-string v0, ""

    aput-object v0, v5, v1

    .line 697
    .local v5, "strvalues":[Ljava/lang/String;
    iget-wide v9, p0, Lcom/findit/battle/InventoryActivity_T;->mScore:J

    aput-wide v9, v4, v2

    .line 698
    iget-wide v9, p0, Lcom/findit/battle/InventoryActivity_T;->mCoin:J

    aput-wide v9, v4, v1

    .line 701
    iget v0, p0, Lcom/findit/battle/InventoryActivity_T;->mPoint:I

    aput v0, v3, v2

    .line 704
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

    .line 705
    aget-object v0, v5, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSkills:Lcom/findit/battle/Objects$Skills;

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

    .line 706
    aget-object v0, v5, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSkills:Lcom/findit/battle/Objects$Skills;

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

    .line 707
    aget-object v0, v5, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSkills:Lcom/findit/battle/Objects$Skills;

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

    .line 708
    aget-object v0, v5, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSkills:Lcom/findit/battle/Objects$Skills;

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

    .line 709
    aget-object v0, v5, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget v0, v0, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 710
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget v0, v0, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    if-lt v6, v0, :cond_4

    .line 717
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

    .line 719
    const/4 v6, 0x0

    :goto_5
    const/4 v0, 0x6

    if-lt v6, v0, :cond_6

    .line 733
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    iget v8, v0, Lcom/findit/battle/Items;->mItemTotalnum:I

    .line 734
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

    .line 735
    const/4 v6, 0x0

    :goto_6
    if-lt v6, v8, :cond_8

    .line 750
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mDbhelper:Lcom/findit/battle/DBAdapter;

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/findit/battle/DBAdapter;->updateStateForInven(J[I[J[Ljava/lang/String;)Z

    .line 753
    return-void

    .end local v6    # "i":I
    .end local v8    # "totalnum":I
    :cond_0
    move v0, v2

    .line 705
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 706
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 707
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 708
    goto :goto_3

    .line 711
    .restart local v6    # "i":I
    :cond_4
    aget-object v0, v5, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/findit/battle/Objects$Skills$Skill;->mNum:I

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 712
    aget-object v0, v5, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 713
    aget-object v0, v5, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mSkills:Lcom/findit/battle/Objects$Skills;

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

    .line 710
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 713
    goto :goto_7

    .line 720
    :cond_6
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v0, v0, v6

    iget v8, v0, Lcom/findit/battle/Items$TypeItem;->mSubItemTotalnum:I

    .line 721
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

    .line 722
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_8
    if-lt v7, v8, :cond_7

    .line 719
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 723
    :cond_7
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

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

    .line 724
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

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

    .line 725
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

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

    .line 726
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

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

    .line 727
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

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

    .line 728
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

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

    .line 729
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

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

    .line 722
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8

    .line 736
    .end local v7    # "j":I
    :cond_8
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/findit/battle/Items$Item;->mType:I

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 737
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/findit/battle/Items$Item;->mSubType:I

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 738
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/findit/battle/Items$Item;->mSlotnum:I

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 739
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

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

    .line 740
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/findit/battle/Items$Item;->mNum:I

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 742
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v6

    iget-object v0, v0, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 743
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

    .line 735
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    :cond_9
    move v0, v2

    .line 739
    goto :goto_9

    .line 745
    :cond_a
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

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

    .line 746
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mItems:Lcom/findit/battle/Items;

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
    .line 2631
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 2633
    .local v0, "connectnetwork":Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    :cond_0
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2636
    const-string v1, "http://14.63.220.39/"

    const-string v2, "app/member/addCoin.json"

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setServerUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 2637
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->clearParameter()V

    .line 2638
    const-string v1, "userId"

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    const-string v1, "coin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2641
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendAddCoin: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 2642
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mCommonDialog:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v1}, Lcom/findit/battle/CommonDialog;->showProgressDlg()V

    .line 2643
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

    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_T;->mCoinResultHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->startParsingData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V

    .line 2644
    return-void
.end method

.method public sendSpendCoin(J)V
    .locals 6
    .param p1, "coin"    # J

    .prologue
    .line 2647
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 2649
    .local v0, "connectnetwork":Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    :cond_0
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2652
    const-string v1, "http://14.63.220.39/"

    const-string v2, "app/member/spendCoin.json"

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setServerUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 2653
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->clearParameter()V

    .line 2654
    const-string v1, "userId"

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    const-string v1, "coin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendSpendCoin: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 2658
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T;->mCommonDialog:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v1}, Lcom/findit/battle/CommonDialog;->showProgressDlg()V

    .line 2659
    const-string v1, "utf-8"

    const-string v2, "GET"

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_T;->mCoinResultHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->startParsingData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V

    .line 2660
    return-void
.end method
