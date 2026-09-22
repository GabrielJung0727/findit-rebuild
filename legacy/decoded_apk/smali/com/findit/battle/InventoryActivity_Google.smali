.class public Lcom/findit/battle/InventoryActivity_Google;
.super Lcom/findit/battle/iap/activity/InAppBillingActivity;
.source "InventoryActivity_Google.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/findit/battle/InventoryActivity_Google$ActionRunnable;,
        Lcom/findit/battle/InventoryActivity_Google$BuyList;,
        Lcom/findit/battle/InventoryActivity_Google$BuyListAdapter;,
        Lcom/findit/battle/InventoryActivity_Google$MoveView;
    }
.end annotation


# static fields
.field private static final ANIMAION_DOWN:I = 0x0

.field private static final ANIMAION_SCALE:I = 0x2

.field private static final ANIMAION_UP:I = 0x1

.field private static final BERRYSLOT_RECT:I = 0x2

.field private static final CHARACTER_FILENAME:Ljava/lang/String; = "/CharacterImage"

.field private static final ITEM_ID_COIN1000:Ljava/lang/String; = "000001005358"

.field private static final ITEM_ID_COIN2500:Ljava/lang/String; = "000001005359"

.field private static final ITEM_ID_COIN5500:Ljava/lang/String; = "000001005360"

.field private static final ITEM_ID_COIN8500:Ljava/lang/String; = "000001005361"

.field private static final ITEM_ID_COIN_COLLECTION:[Ljava/lang/String;

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

.field mInAPInformationListener:Lcom/kt/olleh/inapp/OnInAppListener;

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

.field private mMoveItemView:Lcom/findit/battle/InventoryActivity_Google$MoveView;

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
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "000001005358"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "000001005359"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 86
    const-string v2, "000001005360"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "000001005361"

    aput-object v2, v0, v1

    .line 85
    sput-object v0, Lcom/findit/battle/InventoryActivity_Google;->ITEM_ID_COIN_COLLECTION:[Ljava/lang/String;

    .line 147
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Lcom/findit/battle/iap/activity/InAppBillingActivity;-><init>()V

    .line 171
    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSoundPoolMap:Ljava/util/HashMap;

    .line 172
    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSoundpool:Landroid/media/SoundPool;

    .line 2989
    new-instance v0, Lcom/findit/battle/InventoryActivity_Google$1;

    invoke-direct {v0, p0}, Lcom/findit/battle/InventoryActivity_Google$1;-><init>(Lcom/findit/battle/InventoryActivity_Google;)V

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mInAPInformationListener:Lcom/kt/olleh/inapp/OnInAppListener;

    .line 3026
    new-instance v0, Lcom/findit/battle/InventoryActivity_Google$2;

    invoke-direct {v0, p0}, Lcom/findit/battle/InventoryActivity_Google$2;-><init>(Lcom/findit/battle/InventoryActivity_Google;)V

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mBuyResultHandler:Landroid/os/Handler;

    .line 3089
    new-instance v0, Lcom/findit/battle/InventoryActivity_Google$3;

    invoke-direct {v0, p0}, Lcom/findit/battle/InventoryActivity_Google$3;-><init>(Lcom/findit/battle/InventoryActivity_Google;)V

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mLearnResultHandler:Landroid/os/Handler;

    .line 3132
    new-instance v0, Lcom/findit/battle/InventoryActivity_Google$4;

    invoke-direct {v0, p0}, Lcom/findit/battle/InventoryActivity_Google$4;-><init>(Lcom/findit/battle/InventoryActivity_Google;)V

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mCoinResultHandler:Landroid/os/Handler;

    .line 70
    return-void
.end method

.method static synthetic access$0(Lcom/findit/battle/InventoryActivity_Google;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mPurchaseItemMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1(Lcom/findit/battle/InventoryActivity_Google;Lcom/findit/battle/Items$Item;)V
    .locals 0

    .prologue
    .line 2735
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_Google;->applyPurchaseItem(Lcom/findit/battle/Items$Item;)V

    return-void
.end method

.method static synthetic access$10(Lcom/findit/battle/InventoryActivity_Google;ILcom/findit/battle/Items$Item;)V
    .locals 0

    .prologue
    .line 1790
    invoke-direct {p0, p1, p2}, Lcom/findit/battle/InventoryActivity_Google;->setItemSlot(ILcom/findit/battle/Items$Item;)V

    return-void
.end method

.method static synthetic access$11(Lcom/findit/battle/InventoryActivity_Google;)[Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkillSlotsLayout:[Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$12(Lcom/findit/battle/InventoryActivity_Google;)Lcom/findit/battle/Objects$Skills;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkills:Lcom/findit/battle/Objects$Skills;

    return-object v0
.end method

.method static synthetic access$13(Lcom/findit/battle/InventoryActivity_Google;)I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mPoint:I

    return v0
.end method

.method static synthetic access$14(Lcom/findit/battle/InventoryActivity_Google;I)V
    .locals 0

    .prologue
    .line 184
    iput p1, p0, Lcom/findit/battle/InventoryActivity_Google;->mPoint:I

    return-void
.end method

.method static synthetic access$15(Lcom/findit/battle/InventoryActivity_Google;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkillPointNumTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/findit/battle/InventoryActivity_Google;I)V
    .locals 0

    .prologue
    .line 1920
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_Google;->setSkillSlot(I)V

    return-void
.end method

.method static synthetic access$17(Lcom/findit/battle/InventoryActivity_Google;)Landroid/widget/HorizontalScrollView;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSlotsScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/findit/battle/InventoryActivity_Google;)V
    .locals 0

    .prologue
    .line 949
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Google;->setItemTab()V

    return-void
.end method

.method static synthetic access$19(Lcom/findit/battle/InventoryActivity_Google;)V
    .locals 0

    .prologue
    .line 965
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Google;->setShopTab()V

    return-void
.end method

.method static synthetic access$2(Lcom/findit/battle/InventoryActivity_Google;)Lcom/findit/battle/CommonDialog;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mCommonDialog:Lcom/findit/battle/CommonDialog;

    return-object v0
.end method

.method static synthetic access$20(Lcom/findit/battle/InventoryActivity_Google;)V
    .locals 0

    .prologue
    .line 981
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Google;->setSkillTab()V

    return-void
.end method

.method static synthetic access$21(Lcom/findit/battle/InventoryActivity_Google;)Lcom/findit/battle/InventoryActivity_Google$MoveView;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Google$MoveView;

    return-object v0
.end method

.method static synthetic access$22(Lcom/findit/battle/InventoryActivity_Google;)I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSlotWindowX:I

    return v0
.end method

.method static synthetic access$23(Lcom/findit/battle/InventoryActivity_Google;)I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSlotWindowY:I

    return v0
.end method

.method static synthetic access$24(Lcom/findit/battle/InventoryActivity_Google;IZ)V
    .locals 0

    .prologue
    .line 2041
    invoke-direct {p0, p1, p2}, Lcom/findit/battle/InventoryActivity_Google;->setSlotImageAlpha(IZ)V

    return-void
.end method

.method static synthetic access$25(Lcom/findit/battle/InventoryActivity_Google;IIIII)Z
    .locals 1

    .prologue
    .line 1731
    invoke-direct/range {p0 .. p5}, Lcom/findit/battle/InventoryActivity_Google;->changeSetItemSlots(IIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$26(Lcom/findit/battle/InventoryActivity_Google;I)V
    .locals 0

    .prologue
    .line 2610
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_Google;->setDeleteItem(I)V

    return-void
.end method

.method static synthetic access$27(Lcom/findit/battle/InventoryActivity_Google;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mDeleteItemDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$28(Lcom/findit/battle/InventoryActivity_Google;IIIII)V
    .locals 0

    .prologue
    .line 1680
    invoke-direct/range {p0 .. p5}, Lcom/findit/battle/InventoryActivity_Google;->changeItemSlots(IIIII)V

    return-void
.end method

.method static synthetic access$29(Lcom/findit/battle/InventoryActivity_Google;IIII)V
    .locals 0

    .prologue
    .line 2207
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/findit/battle/InventoryActivity_Google;->setFirstTouch(IIII)V

    return-void
.end method

.method static synthetic access$3(Lcom/findit/battle/InventoryActivity_Google;)Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    return-object v0
.end method

.method static synthetic access$30(Lcom/findit/battle/InventoryActivity_Google;IIII)Z
    .locals 1

    .prologue
    .line 2189
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/findit/battle/InventoryActivity_Google;->isActionMove(IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$31(Lcom/findit/battle/InventoryActivity_Google;)I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSlotNum:I

    return v0
.end method

.method static synthetic access$32(Lcom/findit/battle/InventoryActivity_Google;)[Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSlotsLayout:[Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$33(Lcom/findit/battle/InventoryActivity_Google;I)V
    .locals 0

    .prologue
    .line 186
    iput p1, p0, Lcom/findit/battle/InventoryActivity_Google;->mSlotNum:I

    return-void
.end method

.method static synthetic access$34(Lcom/findit/battle/InventoryActivity_Google;)V
    .locals 0

    .prologue
    .line 1980
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Google;->setItemText()V

    return-void
.end method

.method static synthetic access$35(Lcom/findit/battle/InventoryActivity_Google;I)V
    .locals 0

    .prologue
    .line 2066
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_Google;->setMoveItemImage(I)V

    return-void
.end method

.method static synthetic access$36(Lcom/findit/battle/InventoryActivity_Google;)I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSlotWindowNum:I

    return v0
.end method

.method static synthetic access$37(Lcom/findit/battle/InventoryActivity_Google;I)V
    .locals 0

    .prologue
    .line 1021
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_Google;->setItemSlotWindowLocation(I)V

    return-void
.end method

.method static synthetic access$38(Lcom/findit/battle/InventoryActivity_Google;)[Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopSlotsLayout:[Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$39(Lcom/findit/battle/InventoryActivity_Google;)I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopItemTypeSlotNum:I

    return v0
.end method

.method static synthetic access$4(Lcom/findit/battle/InventoryActivity_Google;)Lcom/findit/battle/Items;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    return-object v0
.end method

.method static synthetic access$40(Lcom/findit/battle/InventoryActivity_Google;I)V
    .locals 0

    .prologue
    .line 1969
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_Google;->clearShopSlot(I)V

    return-void
.end method

.method static synthetic access$41(Lcom/findit/battle/InventoryActivity_Google;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopExplainTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$42(Lcom/findit/battle/InventoryActivity_Google;II)V
    .locals 0

    .prologue
    .line 1944
    invoke-direct {p0, p1, p2}, Lcom/findit/battle/InventoryActivity_Google;->setShopSlot(II)V

    return-void
.end method

.method static synthetic access$43(Lcom/findit/battle/InventoryActivity_Google;I)V
    .locals 0

    .prologue
    .line 187
    iput p1, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopItemTypeSlotNum:I

    return-void
.end method

.method static synthetic access$44(Lcom/findit/battle/InventoryActivity_Google;Landroid/widget/RelativeLayout;I)V
    .locals 0

    .prologue
    .line 2026
    invoke-direct {p0, p1, p2}, Lcom/findit/battle/InventoryActivity_Google;->selectShopItemSlot(Landroid/widget/RelativeLayout;I)V

    return-void
.end method

.method static synthetic access$45(Lcom/findit/battle/InventoryActivity_Google;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mBuyListTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$46(Lcom/findit/battle/InventoryActivity_Google;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$47(Lcom/findit/battle/InventoryActivity_Google;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mBuyListTitleText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$48(Lcom/findit/battle/InventoryActivity_Google;)V
    .locals 0

    .prologue
    .line 2665
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Google;->fillBuyListData()V

    return-void
.end method

.method static synthetic access$49(Lcom/findit/battle/InventoryActivity_Google;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mBuyListDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$5(Lcom/findit/battle/InventoryActivity_Google;)[Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopItemSlotsLayout:[Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$50(Lcom/findit/battle/InventoryActivity_Google;)I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopItemSlotNum:I

    return v0
.end method

.method static synthetic access$51(Lcom/findit/battle/InventoryActivity_Google;IIZ)V
    .locals 0

    .prologue
    .line 2624
    invoke-direct {p0, p1, p2, p3}, Lcom/findit/battle/InventoryActivity_Google;->setBuyItem(IIZ)V

    return-void
.end method

.method static synthetic access$52(Lcom/findit/battle/InventoryActivity_Google;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mBuyItemDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$53(Lcom/findit/battle/InventoryActivity_Google;)I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopItemSlotWindowNum:I

    return v0
.end method

.method static synthetic access$54(Lcom/findit/battle/InventoryActivity_Google;I)V
    .locals 0

    .prologue
    .line 1037
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_Google;->setShopItemSlotWindowLocation(I)V

    return-void
.end method

.method static synthetic access$55(Lcom/findit/battle/InventoryActivity_Google;)I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkillSlotNum:I

    return v0
.end method

.method static synthetic access$56(Lcom/findit/battle/InventoryActivity_Google;I)V
    .locals 0

    .prologue
    .line 188
    iput p1, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkillSlotNum:I

    return-void
.end method

.method static synthetic access$57(Lcom/findit/battle/InventoryActivity_Google;)V
    .locals 0

    .prologue
    .line 2011
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Google;->setSkillText()V

    return-void
.end method

.method static synthetic access$58(Lcom/findit/battle/InventoryActivity_Google;)I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkillSlotWindowNum:I

    return v0
.end method

.method static synthetic access$59(Lcom/findit/battle/InventoryActivity_Google;I)V
    .locals 0

    .prologue
    .line 1029
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_Google;->setSkillSlotWindowLocation(I)V

    return-void
.end method

.method static synthetic access$6(Lcom/findit/battle/InventoryActivity_Google;)[Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mAnimation:[Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$60(Lcom/findit/battle/InventoryActivity_Google;I)V
    .locals 0

    .prologue
    .line 2640
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_Google;->setLearnSkill(I)V

    return-void
.end method

.method static synthetic access$61(Lcom/findit/battle/InventoryActivity_Google;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mLearnSkillDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$62(Lcom/findit/battle/InventoryActivity_Google;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mDeleteItemImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$63(Lcom/findit/battle/InventoryActivity_Google;II)V
    .locals 0

    .prologue
    .line 1758
    invoke-direct {p0, p1, p2}, Lcom/findit/battle/InventoryActivity_Google;->setItemSlot(II)V

    return-void
.end method

.method static synthetic access$64(Lcom/findit/battle/InventoryActivity_Google;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mBuyItemImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$65(Lcom/findit/battle/InventoryActivity_Google;Lcom/findit/battle/Items$Item;)V
    .locals 0

    .prologue
    .line 2973
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_Google;->purchaseItem(Lcom/findit/battle/Items$Item;)V

    return-void
.end method

.method static synthetic access$66(Lcom/findit/battle/InventoryActivity_Google;)J
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mCoin:J

    return-wide v0
.end method

.method static synthetic access$67(Lcom/findit/battle/InventoryActivity_Google;Lcom/findit/battle/Items$Item;)V
    .locals 0

    .prologue
    .line 2535
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_Google;->sendBuyItem(Lcom/findit/battle/Items$Item;)V

    return-void
.end method

.method static synthetic access$68(Lcom/findit/battle/InventoryActivity_Google;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mLearnSkillImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$69(Lcom/findit/battle/InventoryActivity_Google;I)V
    .locals 0

    .prologue
    .line 2558
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_Google;->sendLearnSkill(I)V

    return-void
.end method

.method static synthetic access$7(Lcom/findit/battle/InventoryActivity_Google;Lcom/findit/battle/Items$Item;)Z
    .locals 1

    .prologue
    .line 1890
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_Google;->setItemSlot(Lcom/findit/battle/Items$Item;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8(Lcom/findit/battle/InventoryActivity_Google;I)V
    .locals 0

    .prologue
    .line 2655
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_Google;->calculateCoin(I)V

    return-void
.end method

.method static synthetic access$9(Lcom/findit/battle/InventoryActivity_Google;ILcom/findit/battle/Items$Item;)I
    .locals 1

    .prologue
    .line 1857
    invoke-direct {p0, p1, p2}, Lcom/findit/battle/InventoryActivity_Google;->setItemSetSlot(ILcom/findit/battle/Items$Item;)I

    move-result v0

    return v0
.end method

.method private applyPurchaseItem(Lcom/findit/battle/Items$Item;)V
    .locals 2
    .param p1, "item"    # Lcom/findit/battle/Items$Item;

    .prologue
    .line 2736
    const-string v0, ">> applyPurchaseItem()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2737
    iget v0, p1, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 2739
    :cond_0
    iget v0, p1, Lcom/findit/battle/Items$Item;->mPower:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/findit/battle/InventoryActivity_Google;->sendAddCoin(J)V

    .line 2745
    :cond_1
    return-void
.end method

.method private calculateCoin(I)V
    .locals 6
    .param p1, "price"    # I

    .prologue
    .line 2656
    const-string v2, ">> calculateCoin()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2657
    iget-wide v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mCoin:J

    int-to-long v4, p1

    sub-long v0, v2, v4

    .line 2659
    .local v0, "coin":J
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mCoinNumTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2660
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopCoinNumTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2662
    iput-wide v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mCoin:J

    .line 2663
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
    .line 1681
    const-string v1, ">> changeItemSlots()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1682
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    iget-object v1, v1, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v8, v1, p5

    .line 1684
    .local v8, "item":Lcom/findit/battle/Items$Item;
    iget v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mSlotWindowNum:I

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Google$MoveView;

    iget v2, v2, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mWindowNum:I

    mul-int v9, v1, v2

    .line 1685
    .local v9, "min":I
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Google$MoveView;

    iget v6, p0, Lcom/findit/battle/InventoryActivity_Google;->mSlotWindowNum:I

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/findit/battle/InventoryActivity_Google$MoveView;->touchTile(IIIII)I

    move-result v10

    .line 1686
    .local v10, "slotnum":I
    if-lt v10, v9, :cond_0

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Google$MoveView;

    iget v1, v1, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mWindowNum:I

    add-int/2addr v1, v9

    if-ge v10, v1, :cond_0

    .line 1687
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    invoke-virtual {v1, v10}, Lcom/findit/battle/Items;->getIndex(I)I

    move-result v7

    .line 1688
    .local v7, "index1":I
    if-gez v7, :cond_2

    .line 1690
    iget v11, v8, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 1691
    .local v11, "slotnum1":I
    if-gez v11, :cond_1

    .line 1693
    iget v1, v8, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/findit/battle/InventoryActivity_Google;->setItemSetSlot(II)I

    .line 1699
    :goto_0
    move/from16 v0, p5

    invoke-direct {p0, v10, v0}, Lcom/findit/battle/InventoryActivity_Google;->setItemSlot(II)V

    .line 1727
    .end local v7    # "index1":I
    .end local v11    # "slotnum1":I
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Google;->setItemText()V

    .line 1728
    return-void

    .line 1697
    .restart local v7    # "index1":I
    .restart local v11    # "slotnum1":I
    :cond_1
    const/4 v1, -0x1

    invoke-direct {p0, v11, v1}, Lcom/findit/battle/InventoryActivity_Google;->setItemSlot(II)V

    goto :goto_0

    .line 1703
    .end local v11    # "slotnum1":I
    :cond_2
    iget v11, v8, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 1704
    .restart local v11    # "slotnum1":I
    if-gez v11, :cond_4

    .line 1706
    iget v1, v8, Lcom/findit/battle/Items$Item;->mType:I

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    iget-object v2, v2, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/findit/battle/Items$Item;->mType:I

    if-ne v1, v2, :cond_3

    .line 1708
    iget v1, v8, Lcom/findit/battle/Items$Item;->mType:I

    invoke-direct {p0, v1, v7}, Lcom/findit/battle/InventoryActivity_Google;->setItemSetSlot(II)I

    .line 1709
    move/from16 v0, p5

    invoke-direct {p0, v10, v0}, Lcom/findit/battle/InventoryActivity_Google;->setItemSlot(II)V

    goto :goto_1

    .line 1713
    :cond_3
    iget v1, v8, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/findit/battle/InventoryActivity_Google;->setItemSetSlot(II)I

    .line 1714
    invoke-direct {p0, v8}, Lcom/findit/battle/InventoryActivity_Google;->setItemSlot(Lcom/findit/battle/Items$Item;)Z

    goto :goto_1

    .line 1719
    :cond_4
    invoke-direct {p0, v11, v7}, Lcom/findit/battle/InventoryActivity_Google;->setItemSlot(II)V

    .line 1720
    move/from16 v0, p5

    invoke-direct {p0, v10, v0}, Lcom/findit/battle/InventoryActivity_Google;->setItemSlot(II)V

    goto :goto_1
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

    .line 1732
    const-string v4, ">> changeSetItemSlots()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1733
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google;->mSetItemTypeTable:[I

    .line 1734
    .local v3, "typetable":[I
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    iget-object v4, v4, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v4, p5

    .line 1736
    .local v1, "item":Lcom/findit/battle/Items$Item;
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Google;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Google$MoveView;

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/findit/battle/InventoryActivity_Google$MoveView;->touchRect(IIII)I

    move-result v2

    .line 1737
    .local v2, "slotnum":I
    if-le v2, v6, :cond_2

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 1738
    iget v4, v1, Lcom/findit/battle/Items$Item;->mType:I

    if-ne v2, v4, :cond_0

    .line 1739
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    iget v5, v1, Lcom/findit/battle/Items$Item;->mType:I

    invoke-virtual {v4, v5}, Lcom/findit/battle/Items;->getSetIndex(I)I

    move-result v0

    .line 1740
    .local v0, "index1":I
    if-gez v0, :cond_1

    .line 1742
    iget v4, v1, Lcom/findit/battle/Items$Item;->mType:I

    invoke-direct {p0, v4, p5}, Lcom/findit/battle/InventoryActivity_Google;->setItemSetSlot(II)I

    move-result v4

    invoke-direct {p0, v4, v6}, Lcom/findit/battle/InventoryActivity_Google;->setItemSlot(II)V

    .line 1752
    .end local v0    # "index1":I
    :cond_0
    :goto_0
    const/4 v4, 0x1

    .line 1755
    :goto_1
    return v4

    .line 1747
    .restart local v0    # "index1":I
    :cond_1
    iget v4, v1, Lcom/findit/battle/Items$Item;->mType:I

    invoke-direct {p0, v4, p5}, Lcom/findit/battle/InventoryActivity_Google;->setItemSetSlot(II)I

    move-result v4

    invoke-direct {p0, v4, v0}, Lcom/findit/battle/InventoryActivity_Google;->setItemSlot(II)V

    goto :goto_0

    .line 1755
    .end local v0    # "index1":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private clearData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 419
    const-string v0, ">> clearData()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSoundPoolMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    .line 432
    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mSoundPoolMap:Ljava/util/HashMap;

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSoundpool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSoundpool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 436
    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mSoundpool:Landroid/media/SoundPool;

    .line 441
    :cond_1
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Google;->recycleImages()V

    .line 443
    iget-boolean v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mLoadingView:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 444
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Google;->createLoadingView()V

    .line 446
    :cond_2
    return-void
.end method

.method private clearShopSlot(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 1970
    const-string v3, ">> clearShopSlot()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1971
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopItemSlotsLayout:[Landroid/widget/RelativeLayout;

    aget-object v1, v3, p1

    .line 1972
    .local v1, "slotslayout":Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1973
    .local v0, "imageview":Landroid/widget/ImageView;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1976
    .local v2, "textview":Landroid/widget/TextView;
    invoke-direct {p0, v0}, Lcom/findit/battle/InventoryActivity_Google;->recycleView(Landroid/view/View;)V

    .line 1977
    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1978
    return-void
.end method

.method private compressBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2239
    const-string v2, ">> compressBitmap()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2240
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2241
    .local v0, "bytearray":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2242
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2244
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

    .line 2362
    const-string v3, ">> createBuyItemDlg()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2363
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2364
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 2365
    .local v2, "window":Landroid/view/Window;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 2366
    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 2367
    const v3, 0x7f020193

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 2369
    const v3, 0x7f030003

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 2371
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090044

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_Google;->mBuyItemText:Ljava/lang/String;

    .line 2372
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090045

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_Google;->mBuyItemText1:Ljava/lang/String;

    .line 2373
    const v3, 0x7f0b0008

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_Google;->mBuyItemTextView:Landroid/widget/TextView;

    .line 2374
    const v3, 0x7f0b0007

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_Google;->mBuyItemImageView:Landroid/widget/ImageView;

    .line 2377
    const v3, 0x7f0b0009

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2378
    .local v0, "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/InventoryActivity_Google$27;

    invoke-direct {v3, p0}, Lcom/findit/battle/InventoryActivity_Google$27;-><init>(Lcom/findit/battle/InventoryActivity_Google;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2439
    const v3, 0x7f0b000a

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 2440
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/InventoryActivity_Google$28;

    invoke-direct {v3, p0}, Lcom/findit/battle/InventoryActivity_Google$28;-><init>(Lcom/findit/battle/InventoryActivity_Google;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2448
    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mBuyItemDlg:Landroid/app/Dialog;

    .line 2449
    return-void
.end method

.method private createBuyListDlg()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 2512
    const-string v3, ">> createBuyListDlg()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2513
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2514
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 2515
    .local v2, "window":Landroid/view/Window;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 2516
    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 2517
    const v3, 0x7f020193

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 2519
    const/high16 v3, 0x7f030000

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 2521
    const/high16 v3, 0x7f0b0000

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_Google;->mBuyListTitleTextView:Landroid/widget/TextView;

    .line 2522
    const v3, 0x7f0b0005

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_Google;->mBuyListView:Landroid/widget/ListView;

    .line 2524
    const v3, 0x7f0b0001

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 2525
    .local v1, "imagebutton":Landroid/widget/ImageButton;
    new-instance v3, Lcom/findit/battle/InventoryActivity_Google$31;

    invoke-direct {v3, p0}, Lcom/findit/battle/InventoryActivity_Google$31;-><init>(Lcom/findit/battle/InventoryActivity_Google;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2532
    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mBuyListDlg:Landroid/app/Dialog;

    .line 2533
    return-void
.end method

.method private createDeleteItemDlg()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 2315
    const-string v3, ">> createDeleteItemDlg()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2316
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2317
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 2318
    .local v2, "window":Landroid/view/Window;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 2319
    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 2320
    const v3, 0x7f020193

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 2322
    const v3, 0x7f030003

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 2324
    const v3, 0x7f0b0007

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_Google;->mDeleteItemImageView:Landroid/widget/ImageView;

    .line 2327
    const v3, 0x7f0b0009

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2328
    .local v0, "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/InventoryActivity_Google$25;

    invoke-direct {v3, p0}, Lcom/findit/battle/InventoryActivity_Google$25;-><init>(Lcom/findit/battle/InventoryActivity_Google;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2350
    const v3, 0x7f0b000a

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 2351
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/InventoryActivity_Google$26;

    invoke-direct {v3, p0}, Lcom/findit/battle/InventoryActivity_Google$26;-><init>(Lcom/findit/battle/InventoryActivity_Google;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2358
    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mDeleteItemDlg:Landroid/app/Dialog;

    .line 2359
    return-void
.end method

.method private createItemSlots(FF)V
    .locals 39
    .param p1, "widthrate"    # F
    .param p2, "heightrate"    # F

    .prologue
    .line 1046
    const-string v3, ">> createItemSlots()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

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

    iput-object v3, v0, Lcom/findit/battle/InventoryActivity_Google;->mSlotsLayout:[Landroid/widget/RelativeLayout;

    .line 1054
    mul-int/lit8 v29, v6, 0x5

    .line 1055
    .local v29, "slotwindowwidth":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/findit/battle/InventoryActivity_Google;->mSlotWindowNum:I

    .line 1056
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_Google;->mSlotWindowTotalNum:I

    .line 1057
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/findit/battle/InventoryActivity_Google;->mSlotNum:I

    .line 1059
    new-instance v3, Lcom/findit/battle/InventoryActivity_Google$MoveView;

    const v4, 0x7f0b0054

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/findit/battle/InventoryActivity_Google$MoveView;-><init>(Lcom/findit/battle/InventoryActivity_Google;Landroid/widget/ImageView;III)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/findit/battle/InventoryActivity_Google;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Google$MoveView;

    .line 1060
    const v3, 0x441c4000    # 625.0f

    mul-float v3, v3, p1

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/findit/battle/InventoryActivity_Google;->mSlotWindowX:I

    .line 1061
    const/high16 v3, 0x43610000    # 225.0f

    mul-float v3, v3, p2

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/findit/battle/InventoryActivity_Google;->mSlotWindowY:I

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

    iget-object v3, v0, Lcom/findit/battle/InventoryActivity_Google;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Google$MoveView;

    iget-object v3, v3, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mRect:[Landroid/graphics/Rect;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Rect;

    move/from16 v0, v17

    move/from16 v1, v33

    move/from16 v2, v21

    invoke-direct {v5, v0, v1, v2, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v3, v4

    .line 1075
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/InventoryActivity_Google;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Google$MoveView;

    iget-object v3, v3, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mRect:[Landroid/graphics/Rect;

    const/4 v4, 0x2

    new-instance v5, Landroid/graphics/Rect;

    move/from16 v0, v18

    move/from16 v1, v33

    move/from16 v2, v22

    invoke-direct {v5, v0, v1, v2, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v3, v4

    .line 1076
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/InventoryActivity_Google;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Google$MoveView;

    iget-object v3, v3, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mRect:[Landroid/graphics/Rect;

    const/4 v4, 0x1

    new-instance v5, Landroid/graphics/Rect;

    move/from16 v0, v17

    move/from16 v1, v34

    move/from16 v2, v21

    invoke-direct {v5, v0, v1, v2, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v3, v4

    .line 1077
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/InventoryActivity_Google;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Google$MoveView;

    iget-object v3, v3, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mRect:[Landroid/graphics/Rect;

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

    iput-object v3, v0, Lcom/findit/battle/InventoryActivity_Google;->mSetSlotsLayout:[Landroid/widget/RelativeLayout;

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

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_Google;->mSetItemTypeTable:[I

    .line 1099
    const v3, 0x7f0b0030

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

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
    new-instance v3, Lcom/findit/battle/InventoryActivity_Google$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/findit/battle/InventoryActivity_Google$8;-><init>(Lcom/findit/battle/InventoryActivity_Google;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1154
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_Google;->mSlotsScrollView:Landroid/widget/HorizontalScrollView;

    .line 1156
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1157
    .local v20, "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v26, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v26

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1159
    .local v26, "slotparams":Landroid/widget/RelativeLayout$LayoutParams;
    const v3, 0x7f0b0031

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 1161
    .local v16, "layout":Landroid/widget/LinearLayout;
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_Google;->mSlotWindowWidth:I

    .line 1164
    const/4 v13, 0x0

    :goto_1
    move/from16 v0, v36

    if-lt v13, v0, :cond_1

    .line 1287
    const v3, 0x7f0b002f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 1288
    .local v11, "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/InventoryActivity_Google$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/findit/battle/InventoryActivity_Google$11;-><init>(Lcom/findit/battle/InventoryActivity_Google;)V

    invoke-virtual {v11, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1296
    const v3, 0x7f0b0032

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11    # "button":Landroid/widget/Button;
    check-cast v11, Landroid/widget/Button;

    .line 1297
    .restart local v11    # "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/InventoryActivity_Google$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/findit/battle/InventoryActivity_Google$12;-><init>(Lcom/findit/battle/InventoryActivity_Google;)V

    invoke-virtual {v11, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1304
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

    invoke-virtual {v0, v3}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

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

    iget-object v3, v0, Lcom/findit/battle/InventoryActivity_Google;->mSetSlotsLayout:[Landroid/widget/RelativeLayout;

    aget v4, v23, v13

    aput-object v16, v3, v4

    .line 1086
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 1165
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

    .line 1164
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1166
    :cond_2
    new-instance v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1167
    .local v30, "sublayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1170
    const/16 v38, 0x0

    .local v38, "z":I
    :goto_3
    move/from16 v0, v38

    if-lt v0, v8, :cond_3

    .line 1279
    move-object/from16 v0, v16

    move-object/from16 v1, v30

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1165
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1171
    :cond_3
    mul-int v3, v15, v8

    add-int v3, v3, v38

    mul-int/lit8 v4, v13, 0xf

    add-int v19, v3, v4

    .line 1173
    .local v19, "num":I
    new-instance v25, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1174
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

    .line 1176
    if-nez v19, :cond_4

    .line 1177
    const v3, 0x7f0201bb

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1181
    :goto_4
    new-instance v3, Lcom/findit/battle/InventoryActivity_Google$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/findit/battle/InventoryActivity_Google$9;-><init>(Lcom/findit/battle/InventoryActivity_Google;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1201
    new-instance v3, Lcom/findit/battle/InventoryActivity_Google$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/findit/battle/InventoryActivity_Google$10;-><init>(Lcom/findit/battle/InventoryActivity_Google;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1257
    new-instance v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1258
    .local v14, "imageview":Landroid/widget/ImageView;
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v14, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1269
    new-instance v32, Landroid/widget/TextView;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1271
    .restart local v32    # "textview":Landroid/widget/TextView;
    move/from16 v0, v31

    int-to-float v3, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1272
    const/16 v3, 0x55

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1273
    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1275
    move-object/from16 v0, v30

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/InventoryActivity_Google;->mSlotsLayout:[Landroid/widget/RelativeLayout;

    aput-object v25, v3, v19

    .line 1170
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_3

    .line 1179
    .end local v14    # "imageview":Landroid/widget/ImageView;
    .end local v32    # "textview":Landroid/widget/TextView;
    :cond_4
    const v3, 0x7f0201b8

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 1084
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

    .line 2452
    const-string v3, ">> createLearnSkillDlg()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2453
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2454
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 2455
    .local v2, "window":Landroid/view/Window;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 2456
    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 2457
    const v3, 0x7f020193

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 2459
    const v3, 0x7f030003

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 2461
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09004b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_Google;->mLearnSkillText:Ljava/lang/String;

    .line 2462
    const v3, 0x7f0b0008

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_Google;->mLearnSkillTextView:Landroid/widget/TextView;

    .line 2463
    const v3, 0x7f0b0007

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_Google;->mLearnSkillImageView:Landroid/widget/ImageView;

    .line 2466
    const v3, 0x7f0b0009

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2467
    .local v0, "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/InventoryActivity_Google$29;

    invoke-direct {v3, p0}, Lcom/findit/battle/InventoryActivity_Google$29;-><init>(Lcom/findit/battle/InventoryActivity_Google;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2499
    const v3, 0x7f0b000a

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 2500
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/InventoryActivity_Google$30;

    invoke-direct {v3, p0}, Lcom/findit/battle/InventoryActivity_Google$30;-><init>(Lcom/findit/battle/InventoryActivity_Google;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2508
    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mLearnSkillDlg:Landroid/app/Dialog;

    .line 2509
    return-void
.end method

.method private createLoadingView()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 2808
    const-string v4, ">> createLoadingView()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2809
    const v4, 0x7f0b000c

    invoke-virtual {p0, v4}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2810
    .local v0, "layout":Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 2811
    const/16 v4, 0xae

    const/16 v5, 0xde

    const/16 v6, 0xe4

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 2813
    const/high16 v4, 0x41a00000    # 20.0f

    iget v5, p0, Lcom/findit/battle/InventoryActivity_Google;->mHeightRate:F

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 2814
    .local v1, "margin":I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2815
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xb

    invoke-virtual {v2, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2816
    const/16 v4, 0xc

    invoke-virtual {v2, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2817
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2819
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2820
    .local v3, "textview":Landroid/widget/TextView;
    const v4, 0x7f090020

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2821
    const-string v4, "#146E9D"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2822
    const/high16 v4, 0x42200000    # 40.0f

    iget v5, p0, Lcom/findit/battle/InventoryActivity_Google;->mHeightRate:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2824
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2827
    return-void
.end method

.method private createShopSlots(FF)V
    .locals 28
    .param p1, "widthrate"    # F
    .param p2, "heightrate"    # F

    .prologue
    .line 1307
    const-string v25, ">> createShopSlots()"

    invoke-static/range {v25 .. v25}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1308
    const/16 v22, 0x1

    .local v22, "windownum":I
    const/4 v4, 0x3

    .local v4, "colum":I
    const/4 v12, 0x2

    .line 1309
    .local v12, "row":I
    mul-int v23, v4, v12

    .line 1310
    .local v23, "windowslotsnum":I
    const/high16 v25, 0x43340000    # 180.0f

    mul-float v25, v25, p2

    move/from16 v0, v25

    float-to-int v13, v0

    .line 1312
    .local v13, "size":I
    const/high16 v25, 0x40000000    # 2.0f

    div-float v25, p1, v25

    div-float v25, p2, v25

    const v26, 0x3f99999a    # 1.2f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_0

    .line 1313
    const/high16 v25, 0x432a0000    # 170.0f

    mul-float v25, v25, p2

    move/from16 v0, v25

    float-to-int v13, v0

    .line 1316
    :cond_0
    const/16 v25, 0x6

    move/from16 v0, v25

    new-array v9, v0, [I

    fill-array-data v9, :array_0

    .line 1318
    .local v9, "menuslotimgid":[I
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v25, -0x2

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v11, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1319
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

    .line 1321
    .local v15, "slotparams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_Google;->mShopSlotsLayout:[Landroid/widget/RelativeLayout;

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mShopSlotsLayout:[Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const v25, 0x7f0b0046

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/RelativeLayout;

    aput-object v25, v26, v27

    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mShopSlotsLayout:[Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    const v25, 0x7f0b003d

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/RelativeLayout;

    aput-object v25, v26, v27

    .line 1324
    const v25, 0x7f0b0047

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 1326
    .local v8, "layout":Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move/from16 v0, v22

    if-lt v5, v0, :cond_1

    .line 1404
    const v25, 0x7f0b0048

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1405
    .local v3, "button":Landroid/widget/Button;
    new-instance v25, Lcom/findit/battle/InventoryActivity_Google$15;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_Google$15;-><init>(Lcom/findit/battle/InventoryActivity_Google;)V

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1418
    const/16 v22, 0x1

    .line 1419
    const/4 v4, 0x5

    .line 1420
    const/4 v12, 0x3

    .line 1421
    mul-int v23, v4, v12

    .line 1422
    const/high16 v25, 0x42e00000    # 112.0f

    mul-float v25, v25, p2

    move/from16 v0, v25

    float-to-int v13, v0

    .line 1423
    div-int/lit8 v20, v13, 0x8

    .line 1424
    .local v20, "textsize":I
    mul-int/lit8 v18, v13, 0x5

    .line 1426
    .local v18, "slotwindowwidth":I
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_Google;->mSkillSlotNum:I

    .line 1427
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_Google;->mSkillSlotWindowNum:I

    .line 1428
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_Google;->mSkillSlotWindowTotalNum:I

    .line 1430
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v15    # "slotparams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v15, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1431
    .restart local v15    # "slotparams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v16

    invoke-direct {v0, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1432
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

    .line 1433
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

    .line 1435
    const v25, 0x7f0b003f

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/HorizontalScrollView;

    .line 1436
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

    .line 1437
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_Google;->mShopItemSlotsScrollView:Landroid/widget/HorizontalScrollView;

    .line 1439
    const/16 v25, 0xf

    move/from16 v0, v25

    new-array v0, v0, [Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_Google;->mShopItemSlotsLayout:[Landroid/widget/RelativeLayout;

    .line 1440
    const v25, 0x7f0b0040

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8    # "layout":Landroid/widget/LinearLayout;
    check-cast v8, Landroid/widget/LinearLayout;

    .line 1442
    .restart local v8    # "layout":Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    :goto_1
    move/from16 v0, v22

    if-lt v5, v0, :cond_4

    .line 1490
    const v25, 0x7f0b0044

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "button":Landroid/widget/Button;
    check-cast v3, Landroid/widget/Button;

    .line 1491
    .restart local v3    # "button":Landroid/widget/Button;
    new-instance v25, Lcom/findit/battle/InventoryActivity_Google$17;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_Google$17;-><init>(Lcom/findit/battle/InventoryActivity_Google;)V

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1519
    const v25, 0x7f0b0045

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "button":Landroid/widget/Button;
    check-cast v3, Landroid/widget/Button;

    .line 1520
    .restart local v3    # "button":Landroid/widget/Button;
    new-instance v25, Lcom/findit/battle/InventoryActivity_Google$18;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_Google$18;-><init>(Lcom/findit/battle/InventoryActivity_Google;)V

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1535
    const v25, 0x7f0b003e

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "button":Landroid/widget/Button;
    check-cast v3, Landroid/widget/Button;

    .line 1536
    .restart local v3    # "button":Landroid/widget/Button;
    new-instance v25, Lcom/findit/battle/InventoryActivity_Google$19;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_Google$19;-><init>(Lcom/findit/battle/InventoryActivity_Google;)V

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1544
    const v25, 0x7f0b0041

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "button":Landroid/widget/Button;
    check-cast v3, Landroid/widget/Button;

    .line 1545
    .restart local v3    # "button":Landroid/widget/Button;
    new-instance v25, Lcom/findit/battle/InventoryActivity_Google$20;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_Google$20;-><init>(Lcom/findit/battle/InventoryActivity_Google;)V

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1552
    return-void

    .line 1327
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

    .line 1326
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1328
    :cond_2
    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1329
    .local v19, "sublayout":Landroid/widget/LinearLayout;
    const/16 v25, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1332
    const/16 v24, 0x0

    .local v24, "z":I
    :goto_3
    move/from16 v0, v24

    if-lt v0, v12, :cond_3

    .line 1400
    move-object/from16 v0, v19

    invoke-virtual {v8, v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1327
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1333
    :cond_3
    mul-int v25, v7, v12

    add-int v25, v25, v24

    mul-int/lit8 v26, v5, 0x6

    add-int v10, v25, v26

    .line 1335
    .local v10, "num":I
    new-instance v14, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1336
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

    .line 1338
    const v25, 0x7f0201b8

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1340
    new-instance v25, Lcom/findit/battle/InventoryActivity_Google$13;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_Google$13;-><init>(Lcom/findit/battle/InventoryActivity_Google;)V

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1373
    new-instance v25, Lcom/findit/battle/InventoryActivity_Google$14;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_Google$14;-><init>(Lcom/findit/battle/InventoryActivity_Google;)V

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1393
    new-instance v6, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1394
    .local v6, "imageview":Landroid/widget/ImageView;
    aget v25, v9, v10

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1395
    invoke-virtual {v14, v6, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1397
    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1332
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 1443
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

    .line 1442
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 1444
    :cond_5
    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1445
    .restart local v19    # "sublayout":Landroid/widget/LinearLayout;
    const/16 v25, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1448
    const/16 v24, 0x0

    .restart local v24    # "z":I
    :goto_5
    move/from16 v0, v24

    if-lt v0, v12, :cond_6

    .line 1486
    move-object/from16 v0, v19

    invoke-virtual {v8, v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1443
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1449
    :cond_6
    mul-int v25, v7, v12

    add-int v25, v25, v24

    mul-int/lit8 v26, v5, 0xf

    add-int v10, v25, v26

    .line 1451
    .restart local v10    # "num":I
    new-instance v14, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1452
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

    .line 1454
    if-nez v10, :cond_7

    .line 1455
    const v25, 0x7f0201bb

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1459
    :goto_6
    new-instance v25, Lcom/findit/battle/InventoryActivity_Google$16;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_Google$16;-><init>(Lcom/findit/battle/InventoryActivity_Google;)V

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1472
    new-instance v6, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1473
    .restart local v6    # "imageview":Landroid/widget/ImageView;
    invoke-virtual {v14, v6, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1476
    new-instance v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1478
    .local v21, "textview":Landroid/widget/TextView;
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1479
    const/16 v25, 0x55

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1480
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1482
    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mShopItemSlotsLayout:[Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    aput-object v14, v25, v10

    .line 1448
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_5

    .line 1457
    .end local v6    # "imageview":Landroid/widget/ImageView;
    .end local v21    # "textview":Landroid/widget/TextView;
    :cond_7
    const v25, 0x7f0201b8

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_6

    .line 1316
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
    .line 1555
    const-string v24, ">> createSkillSlots()"

    invoke-static/range {v24 .. v24}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1556
    const/16 v21, 0x1

    .local v21, "windownum":I
    const/4 v4, 0x5

    .local v4, "colum":I
    const/4 v11, 0x3

    .line 1557
    .local v11, "row":I
    mul-int v22, v4, v11

    .line 1558
    .local v22, "windowslotsnum":I
    const/high16 v24, 0x42e00000    # 112.0f

    mul-float v24, v24, p2

    move/from16 v0, v24

    float-to-int v12, v0

    .line 1559
    .local v12, "size":I
    mul-int/lit8 v17, v12, 0x5

    .line 1560
    .local v17, "slotwindowwidth":I
    div-int/lit8 v19, v12, 0x8

    .line 1562
    .local v19, "textsize":I
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_Google;->mSkillSlotNum:I

    .line 1563
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_Google;->mSkillSlotWindowNum:I

    .line 1564
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_Google;->mSkillSlotWindowTotalNum:I

    .line 1566
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v10, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1567
    .local v10, "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v14, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1568
    .local v14, "slotparams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v15, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1569
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

    .line 1570
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

    .line 1572
    const v24, 0x7f0b004c

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/HorizontalScrollView;

    .line 1573
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

    .line 1574
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_Google;->mSkillSlotsScrollView:Landroid/widget/HorizontalScrollView;

    .line 1576
    const/16 v24, 0xf

    move/from16 v0, v24

    new-array v0, v0, [Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_Google;->mSkillSlotsLayout:[Landroid/widget/RelativeLayout;

    .line 1577
    const v24, 0x7f0b004d

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 1579
    .local v8, "layout":Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move/from16 v0, v21

    if-lt v5, v0, :cond_0

    .line 1636
    const v24, 0x7f0b004b

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1637
    .local v3, "button":Landroid/widget/Button;
    new-instance v24, Lcom/findit/battle/InventoryActivity_Google$22;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_Google$22;-><init>(Lcom/findit/battle/InventoryActivity_Google;)V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1645
    const v24, 0x7f0b004e

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "button":Landroid/widget/Button;
    check-cast v3, Landroid/widget/Button;

    .line 1646
    .restart local v3    # "button":Landroid/widget/Button;
    new-instance v24, Lcom/findit/battle/InventoryActivity_Google$23;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_Google$23;-><init>(Lcom/findit/battle/InventoryActivity_Google;)V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1654
    const v24, 0x7f0b0053

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "button":Landroid/widget/Button;
    check-cast v3, Landroid/widget/Button;

    .line 1655
    .restart local v3    # "button":Landroid/widget/Button;
    new-instance v24, Lcom/findit/battle/InventoryActivity_Google$24;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_Google$24;-><init>(Lcom/findit/battle/InventoryActivity_Google;)V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1674
    const v24, 0x7f0b0052

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 1675
    .local v20, "textview":Landroid/widget/TextView;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mPoint:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1676
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_Google;->mSkillPointNumTextView:Landroid/widget/TextView;

    .line 1677
    return-void

    .line 1580
    .end local v3    # "button":Landroid/widget/Button;
    .end local v20    # "textview":Landroid/widget/TextView;
    :cond_0
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-lt v7, v4, :cond_1

    .line 1579
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1581
    :cond_1
    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1582
    .local v18, "sublayout":Landroid/widget/LinearLayout;
    const/16 v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1585
    const/16 v23, 0x0

    .local v23, "z":I
    :goto_2
    move/from16 v0, v23

    if-lt v0, v11, :cond_2

    .line 1632
    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1580
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1586
    :cond_2
    mul-int v24, v7, v11

    add-int v24, v24, v23

    mul-int/lit8 v25, v5, 0xf

    add-int v9, v24, v25

    .line 1588
    .local v9, "num":I
    new-instance v13, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1589
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

    .line 1591
    if-nez v9, :cond_3

    .line 1592
    const v24, 0x7f0201bb

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1596
    :goto_3
    new-instance v24, Lcom/findit/battle/InventoryActivity_Google$21;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_Google$21;-><init>(Lcom/findit/battle/InventoryActivity_Google;)V

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1618
    new-instance v6, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1619
    .local v6, "imageview":Landroid/widget/ImageView;
    invoke-virtual {v13, v6, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1622
    new-instance v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1624
    .restart local v20    # "textview":Landroid/widget/TextView;
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1625
    const/16 v24, 0x55

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1626
    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1628
    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mSkillSlotsLayout:[Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    aput-object v13, v24, v9

    .line 1585
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 1594
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

    .line 2282
    const-string v6, ">> cutImage()"

    invoke-static {v6}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2283
    const/4 v3, 0x0

    .line 2284
    .local v3, "path":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 2286
    .local v4, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.camera.action.CROP"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2287
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "image/*"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2289
    const-string v6, "aspectX"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2290
    const-string v6, "aspectY"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2291
    const-string v6, "scale"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2295
    :try_start_0
    sget-object v6, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/findit/battle/InventoryActivity_Google;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 2297
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

    .line 2298
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2299
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 2301
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 2303
    .local v5, "uri1":Landroid/net/Uri;
    const-string v6, "output"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2309
    .end local v1    # "file":Ljava/io/File;
    .end local v5    # "uri1":Landroid/net/Uri;
    :goto_0
    const/16 v6, 0x12c

    invoke-virtual {p0, v2, v6}, Lcom/findit/battle/InventoryActivity_Google;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2311
    return-object v3

    .line 2305
    :catch_0
    move-exception v0

    .line 2306
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

    .line 2214
    const-string v4, ">> drawImg()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

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
    .locals 12

    .prologue
    .line 2666
    const-string v8, ">> fillBuyListData()"

    invoke-static {v8}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2667
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2668
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/findit/battle/InventoryActivity_Google$BuyList;>;"
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 2671
    .local v6, "sbf":Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "http://14.63.220.39/app/member/itemPurchaseHistList?userId="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/findit/battle/InventoryActivity_Google;->mUserId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_Google;->getStringFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2672
    .local v4, "line":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2673
    .local v3, "jsonObject":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONArray;

    const-string v8, "list"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2674
    .local v2, "jsonArray":Lorg/json/JSONArray;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 2675
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-lt v1, v8, :cond_0

    .line 2688
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "line":Ljava/lang/String;
    :goto_1
    new-instance v0, Lcom/findit/battle/InventoryActivity_Google$BuyListAdapter;

    const v8, 0x7f030001

    invoke-direct {v0, p0, p0, v8, v5}, Lcom/findit/battle/InventoryActivity_Google$BuyListAdapter;-><init>(Lcom/findit/battle/InventoryActivity_Google;Landroid/content/Context;ILjava/util/List;)V

    .line 2689
    .local v0, "adapter":Lcom/findit/battle/InventoryActivity_Google$BuyListAdapter;
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Google;->mBuyListView:Landroid/widget/ListView;

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2690
    return-void

    .line 2676
    .end local v0    # "adapter":Lcom/findit/battle/InventoryActivity_Google$BuyListAdapter;
    .restart local v1    # "i":I
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 2677
    .local v7, "subjsonobject":Lorg/json/JSONObject;
    new-instance v8, Lcom/findit/battle/InventoryActivity_Google$BuyList;

    const-string v9, "regDate"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "itemName"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "quantity"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/findit/battle/InventoryActivity_Google$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_Google;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2675
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2680
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "line":Ljava/lang/String;
    .end local v7    # "subjsonobject":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method private getImagePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p1, "imageuri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 2248
    const-string v0, ">> getImagePath()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2249
    const/4 v8, 0x0

    .line 2250
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

    .line 2251
    invoke-virtual/range {v0 .. v5}, Lcom/findit/battle/InventoryActivity_Google;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2253
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2254
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 2256
    .local v7, "index":I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2257
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2259
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2262
    .end local v7    # "index":I
    :cond_1
    return-object v8
.end method

.method public static getInputStreamFromUrl(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 2717
    const-string v4, ">> getInputStreamFromUrl()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2720
    const/4 v0, 0x0

    .line 2723
    .local v0, "contentStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 2724
    .local v2, "httpClient":Lorg/apache/http/client/HttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 2725
    .local v3, "response":Lorg/apache/http/HttpResponse;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 2726
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 2727
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2732
    .end local v2    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v0

    .line 2728
    :catch_0
    move-exception v1

    .line 2730
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getLastImagePath()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 2266
    const-string v0, ">> getLastImagePath()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2267
    const/4 v7, 0x0

    .line 2268
    .local v7, "path":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v8

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 2269
    .local v2, "projection":[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/findit/battle/InventoryActivity_Google;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2271
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2272
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2273
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2275
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2278
    :cond_1
    return-object v7
.end method

.method private isActionMove(IIII)Z
    .locals 5
    .param p1, "touchx"    # I
    .param p2, "touchy"    # I
    .param p3, "standardx"    # I
    .param p4, "standardy"    # I

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    .line 2190
    const-string v3, ">> isActionMove()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2191
    add-int/2addr p1, p3

    .line 2192
    add-int/2addr p2, p4

    .line 2194
    iget v3, p0, Lcom/findit/battle/InventoryActivity_Google;->mFirstTouchX:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget v3, p0, Lcom/findit/battle/InventoryActivity_Google;->mFirstTouchY:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 2195
    iget v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mMoveStandard:F

    .line 2196
    .local v2, "standard":F
    iget v3, p0, Lcom/findit/battle/InventoryActivity_Google;->mFirstTouchX:F

    int-to-float v4, p1

    sub-float v0, v3, v4

    .line 2197
    .local v0, "distancex":F
    iget v3, p0, Lcom/findit/battle/InventoryActivity_Google;->mFirstTouchY:F

    int-to-float v4, p2

    sub-float v1, v3, v4

    .line 2198
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

    .line 2200
    const/4 v3, 0x0

    .line 2204
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

    .line 531
    const-string v0, ">> loadImages()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 532
    const v0, 0x7f0b000c

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f02012b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 533
    const v0, 0x7f0b000d

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201d9

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 535
    const v0, 0x7f0b000f

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201c4

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 536
    const v0, 0x7f0b0010

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f02019d

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 538
    const v0, 0x7f0b0013

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201c6

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 539
    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f02019f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 541
    const v0, 0x7f0b0017

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201c5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 542
    const v0, 0x7f0b0018

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f02019e

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 544
    const v0, 0x7f0b001b

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201c7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 545
    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201a0

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 547
    new-array v0, v11, [Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    .line 548
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201ce

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    aput-object v4, v0, v10

    .line 549
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201cf

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    aput-object v4, v0, v9

    .line 551
    new-array v0, v11, [Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    .line 552
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201d4

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    aput-object v4, v0, v10

    .line 553
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201d5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    aput-object v4, v0, v9

    .line 555
    new-array v0, v11, [Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    .line 556
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201d6

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    aput-object v4, v0, v10

    .line 557
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201d7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    aput-object v4, v0, v9

    .line 559
    const v0, 0x7f0b0023

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Google;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v4, v4, v10

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 560
    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v4, v4, v9

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 561
    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v4, v4, v9

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 565
    const v0, 0x7f0b002e

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 566
    const v0, 0x7f0b002f

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201ba

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 567
    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 568
    const v0, 0x7f0b0033

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 570
    const v0, 0x7f0b003c

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 571
    const v0, 0x7f0b003e

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201ba

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 572
    const v0, 0x7f0b0041

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 573
    const v0, 0x7f0b0042

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 578
    const v0, 0x7f0b004a

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 579
    const v0, 0x7f0b004b

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201ba

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 580
    const v0, 0x7f0b004e

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 581
    const v0, 0x7f0b004f

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 585
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mBodyImgPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 586
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v4, p0, Lcom/findit/battle/InventoryActivity_Google;->mBodyImgId:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 591
    .local v1, "bodyimg":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mBodyImgPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 592
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v4, p0, Lcom/findit/battle/InventoryActivity_Google;->mActionImgId:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 597
    .local v2, "poseimg":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mBodyImgPath:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 598
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v4, p0, Lcom/findit/battle/InventoryActivity_Google;->mFaceImgId:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 602
    .local v3, "faceimg":Landroid/graphics/drawable/Drawable;
    :goto_2
    iget v4, p0, Lcom/findit/battle/InventoryActivity_Google;->mWidthRate:F

    iget v5, p0, Lcom/findit/battle/InventoryActivity_Google;->mHeightRate:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/findit/battle/InventoryActivity_Google;->drawImg(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 603
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mCharacterImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v6}, Lcom/findit/battle/InventoryActivity_Google;->compressBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 604
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 605
    return-void

    .line 588
    .end local v1    # "bodyimg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "poseimg":Landroid/graphics/drawable/Drawable;
    .end local v3    # "faceimg":Landroid/graphics/drawable/Drawable;
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mBodyImgPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1    # "bodyimg":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mActionImgPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2    # "poseimg":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 600
    :cond_2
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mFaceImgPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .restart local v3    # "faceimg":Landroid/graphics/drawable/Drawable;
    goto :goto_2
.end method

.method private purchaseItem(Lcom/findit/battle/Items$Item;)V
    .locals 5
    .param p1, "item"    # Lcom/findit/battle/Items$Item;

    .prologue
    .line 2974
    const-string v4, ">> purchaseItem()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2975
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mPurchaseItemMap:Ljava/util/HashMap;

    .line 2976
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/findit/battle/Items$Item;>;"
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mPurchaseItemKey:[Ljava/lang/String;

    .line 2978
    .local v1, "keys":[Ljava/lang/String;
    array-length v3, v1

    .line 2979
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 2987
    :goto_1
    return-void

    .line 2980
    :cond_0
    aget-object v4, v1, v0

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/findit/battle/Items$Item;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2981
    aget-object v4, v1, v0

    iput-object v4, p0, Lcom/findit/battle/InventoryActivity_Google;->mPurchaseId:Ljava/lang/String;

    .line 2983
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Google;->mPurchaseId:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/findit/battle/InventoryActivity_Google;->buyItem(Ljava/lang/String;)V

    goto :goto_1

    .line 2979
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private recycleImages()V
    .locals 9

    .prologue
    .line 608
    const-string v8, ">> recycleImages()"

    invoke-static {v8}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 609
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Google;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v5, v8

    .line 610
    .local v5, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v5, :cond_0

    .line 618
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v5, v8

    .line 619
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v5, :cond_2

    .line 627
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v5, v8

    .line 628
    const/4 v2, 0x0

    :goto_2
    if-lt v2, v5, :cond_4

    .line 636
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Google;->mCharacterImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v8}, Lcom/findit/battle/InventoryActivity_Google;->recycleView(Landroid/view/View;)V

    .line 638
    const v8, 0x7f0b000c

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 639
    .local v4, "layout":Landroid/widget/RelativeLayout;
    invoke-direct {p0, v4}, Lcom/findit/battle/InventoryActivity_Google;->recycleView(Landroid/view/View;)V

    .line 641
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v5

    .line 642
    const/4 v2, 0x0

    :goto_3
    if-lt v2, v5, :cond_6

    .line 656
    return-void

    .line 611
    .end local v4    # "layout":Landroid/widget/RelativeLayout;
    :cond_0
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Google;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 612
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 613
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 610
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 620
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 621
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 622
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 619
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 629
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 630
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 631
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 628
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 644
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "layout":Landroid/widget/RelativeLayout;
    :cond_6
    :try_start_0
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 645
    .local v6, "sublayout":Landroid/widget/RelativeLayout;
    invoke-direct {p0, v6}, Lcom/findit/battle/InventoryActivity_Google;->recycleView(Landroid/view/View;)V

    .line 647
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v7

    .line 648
    .local v7, "sublength":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_4
    if-lt v3, v7, :cond_7

    .line 642
    .end local v3    # "j":I
    .end local v6    # "sublayout":Landroid/widget/RelativeLayout;
    .end local v7    # "sublength":I
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 649
    .restart local v3    # "j":I
    .restart local v6    # "sublayout":Landroid/widget/RelativeLayout;
    .restart local v7    # "sublength":I
    :cond_7
    invoke-virtual {v6, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/findit/battle/InventoryActivity_Google;->recycleView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 652
    .end local v3    # "j":I
    .end local v6    # "sublayout":Landroid/widget/RelativeLayout;
    .end local v7    # "sublength":I
    :catch_0
    move-exception v1

    .line 653
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/findit/battle/InventoryActivity_Google;->recycleView(Landroid/view/View;)V

    goto :goto_5
.end method

.method private recycleView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 659
    const-string v2, ">> recycleView()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 661
    .local v1, "tag":Ljava/lang/Object;
    if-eqz v1, :cond_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "not"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 662
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 663
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 665
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 666
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 667
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    :cond_1
    :goto_0
    return-void

    .line 669
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private saveStatusToDB()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mDbhelper:Lcom/findit/battle/DBAdapter;

    if-eqz v0, :cond_0

    .line 411
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/findit/battle/InventoryActivity_Google;->saveState(J)V

    .line 413
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mDbhelper:Lcom/findit/battle/DBAdapter;

    invoke-virtual {v0}, Lcom/findit/battle/DBAdapter;->close()V

    .line 414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mDbhelper:Lcom/findit/battle/DBAdapter;

    .line 417
    :cond_0
    return-void
.end method

.method private selectShopItemSlot(Landroid/widget/RelativeLayout;I)V
    .locals 2
    .param p1, "layout"    # Landroid/widget/RelativeLayout;
    .param p2, "slotnum"    # I

    .prologue
    .line 2027
    const-string v0, ">> selectShopItemSlot()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2028
    iget v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopItemSlotNum:I

    if-eq v0, p2, :cond_0

    .line 2030
    const v0, 0x7f0201bb

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 2033
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopItemSlotsLayout:[Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopItemSlotNum:I

    aget-object v0, v0, v1

    const v1, 0x7f0201b8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 2034
    iput p2, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopItemSlotNum:I

    .line 2038
    :cond_0
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Google;->setShopItemText()V

    .line 2039
    return-void
.end method

.method private sendBuyItem(Lcom/findit/battle/Items$Item;)V
    .locals 7
    .param p1, "item"    # Lcom/findit/battle/Items$Item;

    .prologue
    .line 2536
    const-string v1, ">> sendBuyItem()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2537
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 2539
    .local v0, "connectnetwork":Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2540
    const-string v1, "http://14.63.220.39/"

    const-string v2, "app/member/buyItemAndSpendCoin.json"

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setServerUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 2541
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->clearParameter()V

    .line 2542
    const-string v1, "userId"

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    const-string v1, "itemNo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/findit/battle/Items$Item;->mTypeNo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    const-string v1, "coin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/findit/battle/Items$Item;->mPrice:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    iget v6, p1, Lcom/findit/battle/Items$Item;->mNum:I

    .line 2547
    .local v6, "num":I
    const/16 v1, 0x63

    if-le v6, v1, :cond_0

    .line 2548
    const/16 v6, 0x63

    .line 2550
    :cond_0
    const-string v1, "quantity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mCommonDialog:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v1}, Lcom/findit/battle/CommonDialog;->showProgressDlg()V

    .line 2553
    const-string v1, "utf-8"

    const-string v2, "GET"

    const/4 v3, 0x2

    .line 2554
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

    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Google;->mBuyResultHandler:Landroid/os/Handler;

    .line 2553
    invoke-virtual/range {v0 .. v5}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->startParsingData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V

    .line 2556
    .end local v6    # "num":I
    :cond_1
    return-void
.end method

.method private sendLearnSkill(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 2559
    const-string v1, ">> sendLearnSkill()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2560
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v1, v1, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v6, v1, p1

    .line 2561
    .local v6, "skill":Lcom/findit/battle/Objects$Skills$Skill;
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 2563
    .local v0, "connectnetwork":Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2564
    const-string v1, "http://14.63.220.39/"

    const-string v2, "app/member/buySkillAndSpendPoint.json"

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setServerUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 2565
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->clearParameter()V

    .line 2566
    const-string v1, "userId"

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    const-string v1, "skillId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v6, Lcom/findit/battle/Objects$Skills$Skill;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    const-string v1, "point"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v6, Lcom/findit/battle/Objects$Skills$Skill;->mPoint:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    const-string v1, "quantity"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mCommonDialog:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v1}, Lcom/findit/battle/CommonDialog;->showProgressDlg()V

    .line 2572
    const-string v1, "utf-8"

    const-string v2, "GET"

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Google;->mLearnResultHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->startParsingData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V

    .line 2574
    :cond_0
    return-void
.end method

.method private setAttackText()V
    .locals 5

    .prologue
    .line 1000
    const-string v2, ">> setAttackText()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1001
    const/4 v1, 0x0

    .line 1003
    .local v1, "power":I
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/findit/battle/Items;->getSetIndex(I)I

    move-result v0

    .line 1004
    .local v0, "index":I
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 1005
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    iget-object v2, v2, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, v0

    iget v1, v2, Lcom/findit/battle/Items$Item;->mPower:I

    .line 1007
    :cond_0
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mAttackTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/findit/battle/InventoryActivity_Google;->mAttack:I

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
    .line 2625
    const-string v3, ">> setBuyItem()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2626
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    iget-object v3, v3, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v3, p2

    .line 2627
    .local v2, "item":Lcom/findit/battle/Items$Item;
    iget-object v1, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    .line 2628
    .local v1, "imgpath":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2629
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 2630
    .local v0, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 2631
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google;->mBuyItemImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2636
    .end local v0    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Google;->mBuyItemTextView:Landroid/widget/TextView;

    if-eqz p3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/findit/battle/Items$Item;->mPrice:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Google;->mBuyItemText:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2637
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google;->mBuyItemImageView:Landroid/widget/ImageView;

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

    .line 2638
    return-void

    .line 2634
    :cond_0
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google;->mBuyItemImageView:Landroid/widget/ImageView;

    iget-object v4, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2636
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/findit/battle/Items$Item;->mMoney:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Google;->mBuyItemText1:Ljava/lang/String;

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
    const-string v2, ">> setDefenseText()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1012
    const/4 v1, 0x0

    .line 1014
    .local v1, "power":I
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/findit/battle/Items;->getSetIndex(I)I

    move-result v0

    .line 1015
    .local v0, "index":I
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 1016
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    iget-object v2, v2, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, v0

    iget v1, v2, Lcom/findit/battle/Items$Item;->mPower:I

    .line 1018
    :cond_0
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mDefenseTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/findit/battle/InventoryActivity_Google;->mDefense:I

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

    .line 1019
    return-void
.end method

.method private setDeleteItem(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 2611
    const-string v2, ">> setDeleteItem()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2612
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    iget-object v2, v2, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, p1

    iget-object v1, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    .line 2613
    .local v1, "imgpath":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2614
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    iget-object v3, v3, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 2615
    .local v0, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 2616
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mDeleteItemImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2621
    .end local v0    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mDeleteItemImageView:Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2622
    return-void

    .line 2619
    :cond_0
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mDeleteItemImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

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
    .line 2208
    const-string v0, ">> setFirstTouch()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2209
    add-int v0, p1, p3

    int-to-float v0, v0

    iput v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mFirstTouchX:F

    .line 2210
    add-int v0, p2, p4

    int-to-float v0, v0

    iput v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mFirstTouchY:F

    .line 2211
    return-void
.end method

.method private setItemSetSlot(II)I
    .locals 10
    .param p1, "type"    # I
    .param p2, "itemindex"    # I

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 1814
    const-string v6, ">> setSkillSlotWindowLocation()"

    invoke-static {v6}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1815
    const/4 v3, -0x1

    .line 1817
    .local v3, "slotnum":I
    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_Google;->mSetSlotsLayout:[Landroid/widget/RelativeLayout;

    aget-object v4, v6, p1

    .line 1818
    .local v4, "slotslayout":Landroid/widget/RelativeLayout;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1819
    .local v0, "imageview":Landroid/widget/ImageView;
    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1820
    .local v5, "textview":Landroid/widget/TextView;
    if-gez p2, :cond_1

    .line 1823
    invoke-direct {p0, v0}, Lcom/findit/battle/InventoryActivity_Google;->recycleView(Landroid/view/View;)V

    .line 1824
    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1846
    :goto_0
    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    invoke-virtual {v6, p1, p2}, Lcom/findit/battle/Items;->setSetTable(II)V

    .line 1849
    if-nez p1, :cond_5

    .line 1850
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Google;->setAttackText()V

    .line 1854
    :cond_0
    :goto_1
    return v3

    .line 1827
    :cond_1
    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    iget-object v6, v6, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v6, p2

    .line 1830
    .local v2, "item":Lcom/findit/battle/Items$Item;
    iget-object v6, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 1831
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v2, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 1832
    .local v1, "img":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, v9}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1833
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1838
    .end local v1    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_2
    iget v6, v2, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    iget v6, v2, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    .line 1839
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v2, Lcom/findit/battle/Items$Item;->mNum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1841
    :cond_3
    iput-boolean v8, v2, Lcom/findit/battle/Items$Item;->mSet:Z

    .line 1842
    iget v3, v2, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 1843
    iput v9, v2, Lcom/findit/battle/Items$Item;->mSlotnum:I

    goto :goto_0

    .line 1836
    :cond_4
    iget-object v6, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    invoke-static {v6}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1851
    .end local v2    # "item":Lcom/findit/battle/Items$Item;
    :cond_5
    if-ne p1, v8, :cond_0

    .line 1852
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Google;->setDefenseText()V

    goto :goto_1
.end method

.method private setItemSetSlot(ILcom/findit/battle/Items$Item;)I
    .locals 8
    .param p1, "type"    # I
    .param p2, "item"    # Lcom/findit/battle/Items$Item;

    .prologue
    const/4 v7, 0x1

    .line 1858
    const-string v5, ">> setItemSetSlot()"

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1859
    const/4 v2, -0x1

    .line 1861
    .local v2, "slotnum":I
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Google;->mSetSlotsLayout:[Landroid/widget/RelativeLayout;

    aget-object v3, v5, p1

    .line 1862
    .local v3, "slotslayout":Landroid/widget/RelativeLayout;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1863
    .local v0, "imageview":Landroid/widget/ImageView;
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1866
    .local v4, "textview":Landroid/widget/TextView;
    iget-object v5, p2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 1867
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p2, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 1868
    .local v1, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1869
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1874
    .end local v1    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    const/4 v5, 0x2

    if-eq p1, v5, :cond_0

    const/4 v5, 0x3

    if-ne p1, v5, :cond_1

    .line 1875
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p2, Lcom/findit/battle/Items$Item;->mNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1878
    :cond_1
    iget v2, p2, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 1882
    if-nez p1, :cond_4

    .line 1883
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Google;->setAttackText()V

    .line 1887
    :cond_2
    :goto_1
    return v2

    .line 1872
    :cond_3
    iget-object v5, p2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1884
    :cond_4
    if-ne p1, v7, :cond_2

    .line 1885
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Google;->setDefenseText()V

    goto :goto_1
.end method

.method private setItemSlot(II)V
    .locals 8
    .param p1, "slotnum"    # I
    .param p2, "itemindex"    # I

    .prologue
    const/4 v7, 0x0

    .line 1759
    const-string v5, ">> setItemSlot()"

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1760
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Google;->mSlotsLayout:[Landroid/widget/RelativeLayout;

    aget-object v3, v5, p1

    .line 1762
    .local v3, "slotslayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1763
    .local v0, "imageview":Landroid/widget/ImageView;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1764
    .local v4, "textview":Landroid/widget/TextView;
    if-gez p2, :cond_0

    .line 1767
    invoke-direct {p0, v0}, Lcom/findit/battle/InventoryActivity_Google;->recycleView(Landroid/view/View;)V

    .line 1768
    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1788
    :goto_0
    return-void

    .line 1771
    :cond_0
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    iget-object v5, v5, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v5, p2

    .line 1774
    .local v2, "item":Lcom/findit/battle/Items$Item;
    iget-object v5, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 1775
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v2, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 1776
    .local v1, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1777
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1782
    .end local v1    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    iget v5, v2, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    iget v5, v2, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 1783
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v2, Lcom/findit/battle/Items$Item;->mNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1785
    :cond_2
    iput p1, v2, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 1786
    iput-boolean v7, v2, Lcom/findit/battle/Items$Item;->mSet:Z

    goto :goto_0

    .line 1780
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
    .line 1791
    const-string v4, ">> setItemSlot()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1792
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Google;->mSlotsLayout:[Landroid/widget/RelativeLayout;

    aget-object v2, v4, p1

    .line 1794
    .local v2, "slotslayout":Landroid/widget/RelativeLayout;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1795
    .local v0, "imageview":Landroid/widget/ImageView;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1798
    .local v3, "textview":Landroid/widget/TextView;
    iget-object v4, p2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 1799
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p2, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 1800
    .local v1, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1801
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1806
    .end local v1    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    iget v4, p2, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget v4, p2, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 1807
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p2, Lcom/findit/battle/Items$Item;->mNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1811
    :cond_1
    return-void

    .line 1804
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

    .line 1891
    const-string v8, ">> setItemSlot()"

    invoke-static {v8}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1892
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Google;->mSlotsLayout:[Landroid/widget/RelativeLayout;

    .line 1894
    .local v4, "slotslayout":[Landroid/widget/RelativeLayout;
    array-length v3, v4

    .line 1895
    .local v3, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    move v6, v7

    .line 1917
    :goto_1
    return v6

    .line 1896
    :cond_0
    aget-object v8, v4, v0

    invoke-virtual {v8, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1897
    .local v1, "imageview":Landroid/widget/ImageView;
    aget-object v8, v4, v0

    invoke-virtual {v8, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1898
    .local v5, "textview":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v8, :cond_4

    .line 1900
    iget-object v8, p1, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    if-nez v8, :cond_3

    .line 1901
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p1, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 1902
    .local v2, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v8, -0x1

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1903
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1908
    .end local v2    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_2
    iget v8, p1, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    iget v8, p1, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    .line 1909
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p1, Lcom/findit/battle/Items$Item;->mNum:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1911
    :cond_2
    iput v0, p1, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 1912
    iput-boolean v7, p1, Lcom/findit/battle/Items$Item;->mSet:Z

    goto :goto_1

    .line 1906
    :cond_3
    iget-object v8, p1, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    invoke-static {v8}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1895
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setItemSlotWindowLocation(I)V
    .locals 4
    .param p1, "num"    # I

    .prologue
    .line 1022
    const-string v0, ">> setItemSlotWindowLocation()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1023
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSlotWindowTotalNum:I

    if-ge p1, v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSlotsScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/findit/battle/InventoryActivity_Google$ActionRunnable;

    iget v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mSlotWindowWidth:I

    mul-int/2addr v2, p1

    invoke-direct {v1, p0, v2}, Lcom/findit/battle/InventoryActivity_Google$ActionRunnable;-><init>(Lcom/findit/battle/InventoryActivity_Google;I)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1025
    iput p1, p0, Lcom/findit/battle/InventoryActivity_Google;->mSlotWindowNum:I

    .line 1027
    :cond_0
    return-void
.end method

.method private setItemTab()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 950
    const-string v0, ">> setItemTab()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 954
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mItemTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 955
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 956
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkillTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 958
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 959
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 960
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkillLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 962
    iput v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mTabNum:I

    .line 963
    return-void
.end method

.method private setItemText()V
    .locals 5

    .prologue
    .line 1981
    const-string v3, ">> setItemText()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1982
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google;->mExplainTextView:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1984
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    .line 1985
    .local v1, "items":Lcom/findit/battle/Items;
    iget v3, p0, Lcom/findit/battle/InventoryActivity_Google;->mSlotNum:I

    invoke-virtual {v1, v3}, Lcom/findit/battle/Items;->getIndex(I)I

    move-result v0

    .line 1986
    .local v0, "index":I
    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    iget-object v3, v1, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1987
    iget-object v3, v1, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 1988
    iget-object v3, v1, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v3, v3, v0

    iget-object v2, v3, Lcom/findit/battle/Items$Item;->mText:Ljava/lang/String;

    .line 1989
    .local v2, "text":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1990
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google;->mExplainTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1993
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setLearnSkill(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 2641
    const-string v2, ">> setLearnSkill()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2642
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v2, v2, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v2, v2, p1

    iget-object v1, v2, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgPath:Ljava/lang/String;

    .line 2643
    .local v1, "imgpath":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2644
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v3, v3, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 2645
    .local v0, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 2646
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mLearnSkillImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2651
    .end local v0    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mLearnSkillTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v4, v4, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/findit/battle/Objects$Skills$Skill;->mPoint:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Google;->mLearnSkillText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2652
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mLearnSkillImageView:Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2653
    return-void

    .line 2649
    :cond_0
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mLearnSkillImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkills:Lcom/findit/battle/Objects$Skills;

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
    .line 2067
    const-string v1, ">> setMoveItemImage()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2068
    if-gez p1, :cond_0

    .line 2070
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Google$MoveView;

    invoke-virtual {v1}, Lcom/findit/battle/InventoryActivity_Google$MoveView;->clearImage()V

    .line 2071
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Google$MoveView;

    const/4 v2, -0x1

    iput v2, v1, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mIndex:I

    .line 2085
    :goto_0
    return-void

    .line 2076
    :cond_0
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    iget-object v1, v1, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v1, p1

    iget-object v0, v1, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    .line 2077
    .local v0, "imgpath":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2078
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Google$MoveView;

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    iget-object v2, v2, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v1, v2}, Lcom/findit/battle/InventoryActivity_Google$MoveView;->setImage(I)V

    .line 2082
    :goto_1
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Google$MoveView;

    iput p1, v1, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mIndex:I

    goto :goto_0

    .line 2080
    :cond_1
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Google$MoveView;

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    iget-object v2, v2, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/findit/battle/InventoryActivity_Google$MoveView;->setImage(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setSetSlotImageAlpha(IZ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "alpha"    # Z

    .prologue
    .line 2053
    const-string v2, ">> setSetSlotImageAlpha()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2054
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    iget-object v2, v2, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, p1

    iget v1, v2, Lcom/findit/battle/Items$Item;->mType:I

    .line 2055
    .local v1, "type":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mSetSlotsLayout:[Landroid/widget/RelativeLayout;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 2056
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mSetSlotsLayout:[Landroid/widget/RelativeLayout;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2058
    .local v0, "imageview":Landroid/widget/ImageView;
    if-eqz p2, :cond_1

    .line 2059
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mCoverImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2064
    .end local v0    # "imageview":Landroid/widget/ImageView;
    :cond_0
    :goto_0
    return-void

    .line 2061
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
    .line 1038
    const-string v0, ">> setShopItemSlotWindowLocation()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1039
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopItemSlotWindowTotalNum:I

    if-ge p1, v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopItemSlotsScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/findit/battle/InventoryActivity_Google$ActionRunnable;

    iget v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopItemSlotWindowWidth:I

    mul-int/2addr v2, p1

    invoke-direct {v1, p0, v2}, Lcom/findit/battle/InventoryActivity_Google$ActionRunnable;-><init>(Lcom/findit/battle/InventoryActivity_Google;I)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1041
    iput p1, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopItemSlotWindowNum:I

    .line 1043
    :cond_0
    return-void
.end method

.method private setShopItemText()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 1996
    const-string v4, ">> setShopItemText()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1997
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopExplainTextView:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1999
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    .line 2000
    .local v0, "items":Lcom/findit/battle/Items;
    iget v3, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopItemTypeSlotNum:I

    .line 2001
    .local v3, "type":I
    iget v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopItemSlotNum:I

    .line 2002
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

    .line 2003
    iget-object v4, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v4, v4, v1

    if-eqz v4, :cond_0

    .line 2004
    iget-object v4, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v4, v4, v1

    iget-object v2, v4, Lcom/findit/battle/Items$Item;->mText:Ljava/lang/String;

    .line 2005
    .local v2, "text":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2006
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopExplainTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2009
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setShopSlot(II)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "subtype"    # I

    .prologue
    .line 1945
    const-string v5, ">> setShopSlot()"

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1946
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopItemSlotsLayout:[Landroid/widget/RelativeLayout;

    aget-object v3, v5, p2

    .line 1947
    .local v3, "slotslayout":Landroid/widget/RelativeLayout;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1948
    .local v0, "imageview":Landroid/widget/ImageView;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1950
    .local v4, "textview":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    iget-object v5, v5, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v5, p2

    .line 1953
    .local v2, "item":Lcom/findit/battle/Items$Item;
    iget-object v5, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 1954
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v2, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 1955
    .local v1, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1956
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1961
    .end local v1    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    iget v5, v2, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    iget v5, v2, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 1962
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v2, Lcom/findit/battle/Items$Item;->mNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1967
    :cond_1
    return-void

    .line 1959
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

    .line 966
    const-string v0, ">> setShopTab()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 970
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mItemTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 971
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 972
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkillTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 974
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 975
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 976
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkillLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 978
    iput v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mTabNum:I

    .line 979
    return-void
.end method

.method private setSkillSlot(I)V
    .locals 8
    .param p1, "index"    # I

    .prologue
    const/4 v7, -0x1

    .line 1921
    const-string v5, ">> setSkillSlot()"

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1922
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkillSlotsLayout:[Landroid/widget/RelativeLayout;

    aget-object v3, v5, p1

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
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v5, v5, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v2, v5, p1

    .line 1927
    .local v2, "skill":Lcom/findit/battle/Objects$Skills$Skill;
    iget v5, v2, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgId:I

    if-eq v5, v7, :cond_0

    .line 1929
    iget-object v5, v2, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgPath:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 1930
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v2, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 1931
    .local v1, "img":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1932
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1937
    .end local v1    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    iget-boolean v5, v2, Lcom/findit/battle/Objects$Skills$Skill;->mBuy:Z

    if-eqz v5, :cond_2

    .line 1938
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v2, Lcom/findit/battle/Objects$Skills$Skill;->mUpgrade:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1942
    :cond_0
    :goto_1
    return-void

    .line 1935
    :cond_1
    iget-object v5, v2, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1940
    :cond_2
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Google;->mCoverImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private setSkillSlotWindowLocation(I)V
    .locals 4
    .param p1, "num"    # I

    .prologue
    .line 1030
    const-string v0, ">> setSkillSlotWindowLocation()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1031
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkillSlotWindowTotalNum:I

    if-ge p1, v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkillSlotsScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/findit/battle/InventoryActivity_Google$ActionRunnable;

    iget v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkillSlotWindowWidth:I

    mul-int/2addr v2, p1

    invoke-direct {v1, p0, v2}, Lcom/findit/battle/InventoryActivity_Google$ActionRunnable;-><init>(Lcom/findit/battle/InventoryActivity_Google;I)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1033
    iput p1, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkillSlotWindowNum:I

    .line 1035
    :cond_0
    return-void
.end method

.method private setSkillTab()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 982
    const-string v0, ">> setSkillTab()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 986
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mItemTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 987
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 988
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkillTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 990
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 991
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 992
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkillLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 994
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkillPointNumTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mPoint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 996
    const/4 v0, 0x2

    iput v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mTabNum:I

    .line 997
    return-void
.end method

.method private setSkillText()V
    .locals 5

    .prologue
    .line 2012
    const-string v3, ">> setSkillText()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2013
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkillExplainTextView:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2015
    iget v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkillSlotNum:I

    .line 2016
    .local v0, "index":I
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkills:Lcom/findit/battle/Objects$Skills;

    .line 2017
    .local v1, "skills":Lcom/findit/battle/Objects$Skills;
    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    iget v3, v1, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    if-ge v0, v3, :cond_0

    .line 2018
    iget-object v3, v1, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 2019
    iget-object v3, v1, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v3, v3, v0

    iget-object v2, v3, Lcom/findit/battle/Objects$Skills$Skill;->mText:Ljava/lang/String;

    .line 2020
    .local v2, "text":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2021
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkillExplainTextView:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/findit/battle/Objects$Skills$Skill;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2024
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setSlotImageAlpha(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "alpha"    # Z

    .prologue
    .line 2042
    const-string v1, ">> setSlotImageAlpha()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2043
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mSlotsLayout:[Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    iget-object v2, v2, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/findit/battle/Items$Item;->mSlotnum:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2045
    .local v0, "imageview":Landroid/widget/ImageView;
    if-eqz p2, :cond_0

    .line 2046
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mCoverImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2050
    :goto_0
    return-void

    .line 2048
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setTab()V
    .locals 2

    .prologue
    .line 916
    const-string v1, ">> setTab()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 917
    const v1, 0x7f0b0027

    invoke-virtual {p0, v1}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mItemLayout:Landroid/widget/RelativeLayout;

    .line 918
    const v1, 0x7f0b0035

    invoke-virtual {p0, v1}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopLayout:Landroid/widget/RelativeLayout;

    .line 919
    const v1, 0x7f0b0049

    invoke-virtual {p0, v1}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkillLayout:Landroid/widget/RelativeLayout;

    .line 921
    const v1, 0x7f0b0023

    invoke-virtual {p0, v1}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 922
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Lcom/findit/battle/InventoryActivity_Google$5;

    invoke-direct {v1, p0}, Lcom/findit/battle/InventoryActivity_Google$5;-><init>(Lcom/findit/battle/InventoryActivity_Google;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 928
    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mItemTabButton:Landroid/widget/Button;

    .line 930
    const v1, 0x7f0b0024

    invoke-virtual {p0, v1}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 931
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v1, Lcom/findit/battle/InventoryActivity_Google$6;

    invoke-direct {v1, p0}, Lcom/findit/battle/InventoryActivity_Google$6;-><init>(Lcom/findit/battle/InventoryActivity_Google;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 937
    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopTabButton:Landroid/widget/Button;

    .line 939
    const v1, 0x7f0b0025

    invoke-virtual {p0, v1}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 940
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v1, Lcom/findit/battle/InventoryActivity_Google$7;

    invoke-direct {v1, p0}, Lcom/findit/battle/InventoryActivity_Google$7;-><init>(Lcom/findit/battle/InventoryActivity_Google;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 946
    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkillTabButton:Landroid/widget/Button;

    .line 947
    return-void
.end method


# virtual methods
.method public coordinateLayout(Landroid/view/View;[Ljava/lang/String;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rects"    # [Ljava/lang/String;

    .prologue
    .line 471
    const-string v10, ">> coordinateLayout()"

    invoke-static {v10}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 472
    iget v9, p0, Lcom/findit/battle/InventoryActivity_Google;->mWidthRate:F

    .line 473
    .local v9, "widthrate":F
    iget v4, p0, Lcom/findit/battle/InventoryActivity_Google;->mHeightRate:F

    .local v4, "heightrate":F
    move-object v6, p1

    .line 475
    check-cast v6, Landroid/widget/RelativeLayout;

    .line 477
    .local v6, "layout":Landroid/widget/RelativeLayout;
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    .line 478
    .local v1, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-lt v5, v1, :cond_0

    .line 528
    return-void

    .line 479
    :cond_0
    aget-object v10, p2, v5

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 481
    .local v2, "data":[Ljava/lang/String;
    const/4 v0, 0x1

    .line 482
    .local v0, "apply":Z
    const/4 v10, 0x2

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 483
    .local v8, "width":I
    const/4 v10, 0x3

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 485
    .local v3, "height":I
    packed-switch v8, :pswitch_data_0

    .line 501
    int-to-float v10, v8

    mul-float/2addr v10, v9

    float-to-int v8, v10

    .line 504
    :goto_1
    if-eqz v0, :cond_1

    .line 505
    packed-switch v3, :pswitch_data_1

    .line 519
    int-to-float v10, v3

    mul-float/2addr v10, v4

    float-to-int v3, v10

    .line 523
    :cond_1
    :goto_2
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 524
    .local v7, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v10, 0x0

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v9

    float-to-int v10, v10

    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 525
    const/4 v10, 0x1

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v4

    float-to-int v10, v10

    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 526
    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 487
    .end local v7    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_0
    const/4 v8, -0x1

    .line 488
    goto :goto_1

    .line 491
    :pswitch_1
    const/4 v8, -0x2

    .line 492
    goto :goto_1

    .line 495
    :pswitch_2
    int-to-float v10, v3

    mul-float/2addr v10, v4

    float-to-int v8, v10

    .line 496
    move v3, v8

    .line 497
    const/4 v0, 0x0

    .line 498
    goto :goto_1

    .line 507
    :pswitch_3
    const/4 v3, -0x1

    .line 508
    goto :goto_2

    .line 511
    :pswitch_4
    const/4 v3, -0x2

    .line 512
    goto :goto_2

    .line 515
    :pswitch_5
    move v3, v8

    .line 516
    goto :goto_2

    .line 485
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 505
    :pswitch_data_1
    .packed-switch -0x3
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public getStringFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 2693
    const-string v4, ">> getStringFromUrl()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2696
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-static {p1}, Lcom/findit/battle/InventoryActivity_Google;->getInputStreamFromUrl(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2697
    .local v0, "brd":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 2699
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 2701
    .local v3, "sbf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 2703
    .local v2, "line":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_0

    .line 2713
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 2705
    :cond_0
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2707
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2709
    :catch_0
    move-exception v1

    .line 2711
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public loadState(J)V
    .locals 22
    .param p1, "rowid"    # J

    .prologue
    .line 744
    const-string v18, ">> loadState()"

    invoke-static/range {v18 .. v18}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mDbhelper:Lcom/findit/battle/DBAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/findit/battle/DBAdapter;->fetchState(J)Landroid/database/Cursor;

    move-result-object v3

    .line 747
    .local v3, "c":Landroid/database/Cursor;
    if-eqz v3, :cond_4

    .line 748
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v18

    if-eqz v18, :cond_3

    .line 752
    :try_start_0
    const-string v18, "mLevel"

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_Google;->mLevel:I

    .line 753
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mLevel:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 754
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_Google;->mLevel:I

    .line 756
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mLevelTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mLevel:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mShopLevelTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mLevel:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 760
    const-string v18, "mScore"

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/findit/battle/InventoryActivity_Google;->mScore:J

    .line 762
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "/"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mLevelScoreTable:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mLevel:I

    move/from16 v20, v0

    aget v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 763
    .local v11, "maxscore":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mScoreTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mScore:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mShopScoreTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mScore:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 767
    const-string v18, "mCoin"

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/findit/battle/InventoryActivity_Google;->mCoin:J

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mCoinNumTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mCoin:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mShopCoinNumTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mCoin:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    const-string v18, "mPoint"

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_Google;->mPoint:I

    .line 776
    const-string v18, "mSkills"

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 777
    .local v5, "data":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_1

    .line 778
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    new-array v6, v0, [C

    .line 779
    .local v6, "datas":[C
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 781
    const/4 v9, 0x0

    .line 782
    .local v9, "j":I
    add-int/lit8 v9, v9, 0x1

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mSkills:Lcom/findit/battle/Objects$Skills;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSetSkillActiveIndexTable:[Z

    move-object/from16 v19, v0

    const/16 v20, 0x0

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "j":I
    .local v10, "j":I
    aget-char v18, v6, v9

    const/16 v21, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    const/16 v18, 0x1

    :goto_0
    aput-boolean v18, v19, v20

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mSkills:Lcom/findit/battle/Objects$Skills;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSetSkillActiveIndexTable:[Z

    move-object/from16 v19, v0

    const/16 v20, 0x1

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    aget-char v18, v6, v10

    const/16 v21, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    const/16 v18, 0x1

    :goto_1
    aput-boolean v18, v19, v20

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mSkills:Lcom/findit/battle/Objects$Skills;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSetSkillActiveIndexTable:[Z

    move-object/from16 v19, v0

    const/16 v20, 0x2

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "j":I
    .restart local v10    # "j":I
    aget-char v18, v6, v9

    const/16 v21, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    const/16 v18, 0x1

    :goto_2
    aput-boolean v18, v19, v20

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mSkills:Lcom/findit/battle/Objects$Skills;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSetSkillActiveIndexTable:[Z

    move-object/from16 v19, v0

    const/16 v20, 0x3

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    aget-char v18, v6, v10

    const/16 v21, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    const/16 v18, 0x1

    :goto_3
    aput-boolean v18, v19, v20

    .line 789
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "j":I
    .restart local v10    # "j":I
    aget-char v15, v6, v9

    .line 791
    .local v15, "totalnum":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    if-lt v8, v15, :cond_a

    .line 801
    move v8, v15

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mSkills:Lcom/findit/battle/Objects$Skills;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v8, v0, :cond_e

    .line 806
    .end local v6    # "datas":[C
    .end local v8    # "i":I
    .end local v10    # "j":I
    .end local v15    # "totalnum":I
    :cond_1
    const-string v18, "mItems"

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 807
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_2

    .line 808
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    new-array v6, v0, [C

    .line 809
    .restart local v6    # "datas":[C
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 811
    const/4 v9, 0x0

    .line 812
    .restart local v9    # "j":I
    add-int/lit8 v9, v9, 0x1

    .line 814
    const/4 v8, 0x0

    .restart local v8    # "i":I
    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    :goto_6
    const/16 v18, 0x6

    move/from16 v0, v18

    if-lt v8, v0, :cond_f

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/findit/battle/Items;->mItemTotalnum:I

    .line 844
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    aget-char v15, v6, v10

    .line 846
    .restart local v15    # "totalnum":I
    const/4 v8, 0x0

    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    :goto_7
    if-lt v8, v15, :cond_11

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/findit/battle/Items;->setSetTable()V

    .line 882
    .end local v6    # "datas":[C
    .end local v8    # "i":I
    .end local v10    # "j":I
    .end local v15    # "totalnum":I
    :cond_2
    const-string v18, "mAttack"

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_Google;->mAttack:I

    .line 883
    invoke-direct/range {p0 .. p0}, Lcom/findit/battle/InventoryActivity_Google;->setAttackText()V

    .line 886
    const-string v18, "mDefense"

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_Google;->mDefense:I

    .line 887
    invoke-direct/range {p0 .. p0}, Lcom/findit/battle/InventoryActivity_Google;->setDefenseText()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    .end local v5    # "data":Ljava/lang/String;
    .end local v11    # "maxscore":Ljava/lang/String;
    :cond_3
    :goto_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 897
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mDbhelper:Lcom/findit/battle/DBAdapter;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/findit/battle/DBAdapter;->fetchSetup(J)Landroid/database/Cursor;

    move-result-object v4

    .line 899
    .local v4, "c1":Landroid/database/Cursor;
    if-eqz v4, :cond_5

    .line 900
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v18

    if-eqz v18, :cond_5

    .line 901
    const-string v18, "mEmail"

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_Google;->mUserId:Ljava/lang/String;

    .line 904
    :cond_5
    return-void

    .line 784
    .end local v4    # "c1":Landroid/database/Cursor;
    .restart local v5    # "data":Ljava/lang/String;
    .restart local v6    # "datas":[C
    .restart local v10    # "j":I
    .restart local v11    # "maxscore":Ljava/lang/String;
    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 785
    .end local v10    # "j":I
    .restart local v9    # "j":I
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 786
    .end local v9    # "j":I
    .restart local v10    # "j":I
    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 787
    .end local v10    # "j":I
    .restart local v9    # "j":I
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 792
    .end local v9    # "j":I
    .restart local v8    # "i":I
    .restart local v10    # "j":I
    .restart local v15    # "totalnum":I
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mSkills:Lcom/findit/battle/Objects$Skills;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    move-object/from16 v18, v0

    aget-object v19, v18, v8

    aget-char v18, v6, v10

    const/16 v20, 0x7fff

    move/from16 v0, v18

    move/from16 v1, v20

    if-le v0, v1, :cond_b

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    aget-char v18, v6, v10

    const/high16 v20, 0x10000

    sub-int v18, v18, v20

    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    :goto_9
    move/from16 v0, v18

    move-object/from16 v1, v19

    iput v0, v1, Lcom/findit/battle/Objects$Skills$Skill;->mNum:I

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mSkills:Lcom/findit/battle/Objects$Skills;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    move-object/from16 v18, v0

    aget-object v19, v18, v8

    aget-char v18, v6, v10

    const/16 v20, 0x7fff

    move/from16 v0, v18

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    aget-char v18, v6, v10

    const/high16 v20, 0x10000

    sub-int v18, v18, v20

    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    :goto_a
    move/from16 v0, v18

    move-object/from16 v1, v19

    iput v0, v1, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mSkills:Lcom/findit/battle/Objects$Skills;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    move-object/from16 v18, v0

    aget-object v19, v18, v8

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    aget-char v18, v6, v10

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    const/16 v18, 0x1

    :goto_b
    move/from16 v0, v18

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/findit/battle/Objects$Skills$Skill;->mBuy:Z

    .line 797
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/findit/battle/InventoryActivity_Google;->setSkillSlot(I)V

    .line 791
    add-int/lit8 v8, v8, 0x1

    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    goto/16 :goto_4

    .line 792
    :cond_b
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    aget-char v18, v6, v10

    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    goto :goto_9

    .line 793
    :cond_c
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    aget-char v18, v6, v10

    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    goto :goto_a

    .line 794
    .end local v10    # "j":I
    .restart local v9    # "j":I
    :cond_d
    const/16 v18, 0x0

    goto :goto_b

    .line 802
    .end local v9    # "j":I
    .restart local v10    # "j":I
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/findit/battle/InventoryActivity_Google;->setSkillSlot(I)V

    .line 801
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    .line 831
    .end local v15    # "totalnum":I
    :cond_f
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    aget-char v15, v6, v10

    .line 832
    .restart local v15    # "totalnum":I
    const/16 v17, 0x0

    .local v17, "z":I
    :goto_c
    move/from16 v0, v17

    if-lt v0, v15, :cond_10

    .line 814
    add-int/lit8 v8, v8, 0x1

    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    goto/16 :goto_6

    .line 833
    .end local v10    # "j":I
    .restart local v9    # "j":I
    :cond_10
    add-int/lit8 v9, v9, 0x1

    .line 834
    add-int/lit8 v9, v9, 0x1

    .line 835
    add-int/lit8 v9, v9, 0x1

    .line 836
    add-int/lit8 v9, v9, 0x1

    .line 837
    add-int/lit8 v9, v9, 0x1

    .line 838
    add-int/lit8 v9, v9, 0x1

    .line 839
    add-int/lit8 v9, v9, 0x1

    .line 832
    add-int/lit8 v17, v17, 0x1

    goto :goto_c

    .line 847
    .end local v9    # "j":I
    .end local v17    # "z":I
    .restart local v10    # "j":I
    :cond_11
    aget-char v18, v6, v10

    const/16 v19, 0x7fff

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_12

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    aget-char v18, v6, v10

    const/high16 v19, 0x10000

    sub-int v16, v18, v19

    move v10, v9

    .line 848
    .end local v9    # "j":I
    .restart local v10    # "j":I
    .local v16, "type":I
    :goto_d
    aget-char v18, v6, v10

    const/16 v19, 0x7fff

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_13

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    aget-char v18, v6, v10

    const/high16 v19, 0x10000

    sub-int v13, v18, v19

    move v10, v9

    .line 849
    .end local v9    # "j":I
    .restart local v10    # "j":I
    .local v13, "subtype":I
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1, v13}, Lcom/findit/battle/Items;->createItem(II)Lcom/findit/battle/Items$Item;

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    move-object/from16 v18, v0

    aget-object v19, v18, v8

    aget-char v18, v6, v10

    const/16 v20, 0x7fff

    move/from16 v0, v18

    move/from16 v1, v20

    if-le v0, v1, :cond_14

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    aget-char v18, v6, v10

    const/high16 v20, 0x10000

    sub-int v18, v18, v20

    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    :goto_f
    move/from16 v0, v18

    move-object/from16 v1, v19

    iput v0, v1, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    move-object/from16 v18, v0

    aget-object v19, v18, v8

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    aget-char v18, v6, v10

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_15

    const/16 v18, 0x1

    :goto_10
    move/from16 v0, v18

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/findit/battle/Items$Item;->mSet:Z

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    move-object/from16 v18, v0

    aget-object v19, v18, v8

    aget-char v18, v6, v9

    const/16 v20, 0x7fff

    move/from16 v0, v18

    move/from16 v1, v20

    if-le v0, v1, :cond_16

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "j":I
    .restart local v10    # "j":I
    aget-char v18, v6, v9

    const/high16 v20, 0x10000

    sub-int v18, v18, v20

    :goto_11
    move/from16 v0, v18

    move-object/from16 v1, v19

    iput v0, v1, Lcom/findit/battle/Items$Item;->mNum:I

    .line 857
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    aget-char v14, v6, v10

    .line 858
    .local v14, "total":I
    if-nez v14, :cond_17

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    move-object/from16 v18, v0

    aget-object v18, v18, v8

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    .line 867
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    move-object/from16 v18, v0

    aget-object v18, v18, v8

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/findit/battle/Items$Item;->mSet:Z

    move/from16 v18, v0

    if-eqz v18, :cond_19

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    move-object/from16 v18, v0

    aget-object v18, v18, v8

    move-object/from16 v0, v18

    iget v0, v0, Lcom/findit/battle/Items$Item;->mType:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v8}, Lcom/findit/battle/InventoryActivity_Google;->setItemSetSlot(II)I

    .line 846
    :goto_13
    add-int/lit8 v8, v8, 0x1

    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    goto/16 :goto_7

    .line 847
    .end local v13    # "subtype":I
    .end local v14    # "total":I
    .end local v16    # "type":I
    :cond_12
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    aget-char v16, v6, v10

    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    goto/16 :goto_d

    .line 848
    .restart local v16    # "type":I
    :cond_13
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    aget-char v13, v6, v10

    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    goto/16 :goto_e

    .line 853
    .restart local v13    # "subtype":I
    :cond_14
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    aget-char v18, v6, v10

    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    goto/16 :goto_f

    .line 854
    .end local v10    # "j":I
    .restart local v9    # "j":I
    :cond_15
    const/16 v18, 0x0

    goto/16 :goto_10

    .line 855
    :cond_16
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "j":I
    .restart local v10    # "j":I
    aget-char v18, v6, v9

    goto :goto_11

    .line 861
    .end local v10    # "j":I
    .restart local v9    # "j":I
    .restart local v14    # "total":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    move-object/from16 v18, v0

    aget-object v18, v18, v8

    const-string v19, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    .line 862
    const/4 v7, 0x0

    .local v7, "h":I
    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    :goto_14
    if-lt v7, v14, :cond_18

    move v9, v10

    .end local v10    # "j":I
    .restart local v9    # "j":I
    goto :goto_12

    .line 863
    .end local v9    # "j":I
    .restart local v10    # "j":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    move-object/from16 v18, v0

    aget-object v18, v18, v8

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    aget-char v19, v6, v10

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    .line 862
    add-int/lit8 v7, v7, 0x1

    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    goto :goto_14

    .line 870
    .end local v7    # "h":I
    .end local v10    # "j":I
    .restart local v9    # "j":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    move-object/from16 v18, v0

    aget-object v18, v18, v8

    move-object/from16 v0, v18

    iget v12, v0, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 871
    .local v12, "slotnum":I
    if-gez v12, :cond_1a

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    move-object/from16 v18, v0

    aget-object v18, v18, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_Google;->setItemSlot(Lcom/findit/battle/Items$Item;)Z

    goto/16 :goto_13

    .line 889
    .end local v5    # "data":Ljava/lang/String;
    .end local v6    # "datas":[C
    .end local v8    # "i":I
    .end local v9    # "j":I
    .end local v11    # "maxscore":Ljava/lang/String;
    .end local v12    # "slotnum":I
    .end local v13    # "subtype":I
    .end local v14    # "total":I
    .end local v15    # "totalnum":I
    .end local v16    # "type":I
    :catch_0
    move-exception v18

    goto/16 :goto_8

    .line 874
    .restart local v5    # "data":Ljava/lang/String;
    .restart local v6    # "datas":[C
    .restart local v8    # "i":I
    .restart local v9    # "j":I
    .restart local v11    # "maxscore":Ljava/lang/String;
    .restart local v12    # "slotnum":I
    .restart local v13    # "subtype":I
    .restart local v14    # "total":I
    .restart local v15    # "totalnum":I
    .restart local v16    # "type":I
    :cond_1a
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v8}, Lcom/findit/battle/InventoryActivity_Google;->setItemSlot(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_13
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 2897
    invoke-super/range {p0 .. p3}, Lcom/findit/battle/iap/activity/InAppBillingActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2898
    const-string v1, ">> onActivityResult()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2900
    sparse-switch p1, :sswitch_data_0

    .line 2971
    :cond_0
    :goto_0
    return-void

    .line 2902
    :sswitch_0
    if-eqz p3, :cond_0

    .line 2903
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 2906
    .local v10, "imageuri":Landroid/net/Uri;
    invoke-direct {p0, v10}, Lcom/findit/battle/InventoryActivity_Google;->getImagePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v13

    .line 2909
    .local v13, "path":Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 2910
    invoke-direct {p0, v13}, Lcom/findit/battle/InventoryActivity_Google;->cutImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mCutImagePath:Ljava/lang/String;

    goto :goto_0

    .line 2915
    .end local v10    # "imageuri":Landroid/net/Uri;
    .end local v13    # "path":Ljava/lang/String;
    :sswitch_1
    if-eqz p3, :cond_0

    .line 2917
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Google;->getLastImagePath()Ljava/lang/String;

    move-result-object v13

    .line 2920
    .restart local v13    # "path":Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 2921
    invoke-direct {p0, v13}, Lcom/findit/battle/InventoryActivity_Google;->cutImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mCutImagePath:Ljava/lang/String;

    goto :goto_0

    .line 2926
    .end local v13    # "path":Ljava/lang/String;
    :sswitch_2
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mCutImagePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2935
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mCutImagePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2937
    .local v4, "image":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mBodyImg:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google;->mActionImg:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/findit/battle/InventoryActivity_Google;->mWidthRate:F

    iget v6, p0, Lcom/findit/battle/InventoryActivity_Google;->mHeightRate:F

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/findit/battle/InventoryActivity_Google;->drawImg(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2938
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mCharacterImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v7}, Lcom/findit/battle/InventoryActivity_Google;->compressBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2939
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 2945
    .end local v4    # "image":Landroid/graphics/drawable/Drawable;
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :sswitch_3
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_0

    .line 2947
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    const-string v1, "INAPP_PURCHASE_DATA"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2948
    .local v12, "oPurchase":Lorg/json/JSONObject;
    const-string v1, "productId"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2951
    .local v14, "strProductId":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    sget-object v1, Lcom/findit/battle/InventoryActivity_Google;->ITEM_ID_COIN_COLLECTION:[Ljava/lang/String;

    array-length v1, v1

    if-ge v9, v1, :cond_0

    .line 2952
    sget-object v1, Lcom/findit/battle/InventoryActivity_Google;->ITEM_ID_COIN_COLLECTION:[Ljava/lang/String;

    aget-object v1, v1, v9

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2953
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mPurchaseItemMap:Ljava/util/HashMap;

    sget-object v2, Lcom/findit/battle/InventoryActivity_Google;->ITEM_ID_COIN_COLLECTION:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/findit/battle/Items$Item;

    iget v11, v1, Lcom/findit/battle/Items$Item;->mPower:I

    .line 2956
    .local v11, "nPurchasedCoin":I
    iget-wide v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mCoin:J

    int-to-long v5, v11

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mCoin:J

    .line 2959
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Google;->saveStatusToDB()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2951
    .end local v11    # "nPurchasedCoin":I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2963
    .end local v9    # "i":I
    .end local v12    # "oPurchase":Lorg/json/JSONObject;
    .end local v14    # "strProductId":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 2964
    .local v8, "e":Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 2900
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_2
        0x3e9 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/findit/battle/iap/activity/InAppBillingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 202
    const-string v7, ">> onCreate()"

    invoke-static {v7}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 203
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/findit/battle/InventoryActivity_Google;->requestWindowFeature(I)Z

    .line 205
    const v7, 0x7f030005

    invoke-virtual {p0, v7}, Lcom/findit/battle/InventoryActivity_Google;->setContentView(I)V

    .line 208
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-static {}, Lcom/findit/battle/FindItApplication;->getDisplayScreenWidth()I

    move-result v8

    invoke-static {}, Lcom/findit/battle/FindItApplication;->getDisplayScreenHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/Window;->setLayout(II)V

    .line 210
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/findit/battle/InventoryActivity_Google;->setVolumeControlStream(I)V

    .line 212
    new-instance v7, Lcom/findit/battle/CommonDialog;

    invoke-direct {v7, p0}, Lcom/findit/battle/CommonDialog;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mCommonDialog:Lcom/findit/battle/CommonDialog;

    .line 214
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09004f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mBuyListTitleText:Ljava/lang/String;

    .line 215
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f060000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mLevelScoreTable:[I

    .line 218
    const v7, 0x7f0b000e

    invoke-virtual {p0, v7}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mCharacterImageView:Landroid/widget/ImageView;

    .line 219
    const v7, 0x7f0b0020

    invoke-virtual {p0, v7}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mAttackTextView:Landroid/widget/TextView;

    .line 220
    const v7, 0x7f0b0022

    invoke-virtual {p0, v7}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mDefenseTextView:Landroid/widget/TextView;

    .line 221
    const v7, 0x7f0b0029

    invoke-virtual {p0, v7}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mLevelTextView:Landroid/widget/TextView;

    .line 222
    const v7, 0x7f0b0037

    invoke-virtual {p0, v7}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopLevelTextView:Landroid/widget/TextView;

    .line 223
    const v7, 0x7f0b002b

    invoke-virtual {p0, v7}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mScoreTextView:Landroid/widget/TextView;

    .line 224
    const v7, 0x7f0b0039

    invoke-virtual {p0, v7}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopScoreTextView:Landroid/widget/TextView;

    .line 225
    const v7, 0x7f0b002d

    invoke-virtual {p0, v7}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mCoinNumTextView:Landroid/widget/TextView;

    .line 226
    const v7, 0x7f0b003b

    invoke-virtual {p0, v7}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopCoinNumTextView:Landroid/widget/TextView;

    .line 227
    const v7, 0x7f0b0034

    invoke-virtual {p0, v7}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mExplainTextView:Landroid/widget/TextView;

    .line 228
    const v7, 0x7f0b0043

    invoke-virtual {p0, v7}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mShopExplainTextView:Landroid/widget/TextView;

    .line 229
    const v7, 0x7f0b0050

    invoke-virtual {p0, v7}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkillExplainTextView:Landroid/widget/TextView;

    .line 232
    const/4 v7, 0x3

    new-array v7, v7, [Landroid/view/animation/Animation;

    iput-object v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mAnimation:[Landroid/view/animation/Animation;

    .line 233
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mAnimation:[Landroid/view/animation/Animation;

    const/4 v8, 0x0

    const v9, 0x7f040001

    invoke-static {p0, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    aput-object v9, v7, v8

    .line 234
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mAnimation:[Landroid/view/animation/Animation;

    const/4 v8, 0x1

    const v9, 0x7f040004

    invoke-static {p0, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    aput-object v9, v7, v8

    .line 235
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mAnimation:[Landroid/view/animation/Animation;

    const/4 v8, 0x2

    const v9, 0x7f040007

    invoke-static {p0, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    aput-object v9, v7, v8

    .line 237
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0201be

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mCoverImg:Landroid/graphics/drawable/Drawable;

    .line 238
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mCoverImg:Landroid/graphics/drawable/Drawable;

    const/16 v8, 0xdc

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 265
    new-instance v7, Lcom/findit/battle/Items;

    invoke-direct {v7, p0}, Lcom/findit/battle/Items;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    .line 266
    new-instance v4, Lcom/findit/battle/Objects;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v4, p0, v7, v8, v9}, Lcom/findit/battle/Objects;-><init>(Landroid/content/Context;IIF)V

    .line 267
    .local v4, "objects":Lcom/findit/battle/Objects;
    iget-object v7, v4, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iput-object v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkills:Lcom/findit/battle/Objects$Skills;

    .line 270
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    iget-object v5, v7, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    .line 276
    .local v5, "titem":[Lcom/findit/battle/Items$TypeItem;
    sget-object v7, Lcom/findit/battle/InventoryActivity_Google;->ITEM_ID_COIN_COLLECTION:[Ljava/lang/String;

    iput-object v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mPurchaseItemKey:[Ljava/lang/String;

    .line 278
    const/4 v7, 0x4

    new-array v3, v7, [Lcom/findit/battle/Items$Item;

    const/4 v7, 0x0

    const/4 v8, 0x4

    aget-object v8, v5, v8

    iget-object v8, v8, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    aput-object v8, v3, v7

    const/4 v7, 0x1

    const/4 v8, 0x4

    aget-object v8, v5, v8

    iget-object v8, v8, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    aput-object v8, v3, v7

    const/4 v7, 0x2

    .line 279
    const/4 v8, 0x4

    aget-object v8, v5, v8

    iget-object v8, v8, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    aput-object v8, v3, v7

    const/4 v7, 0x3

    const/4 v8, 0x4

    aget-object v8, v5, v8

    iget-object v8, v8, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    aput-object v8, v3, v7

    .line 281
    .local v3, "items":[Lcom/findit/battle/Items$Item;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mPurchaseItemMap:Ljava/util/HashMap;

    .line 282
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v7, Lcom/findit/battle/InventoryActivity_Google;->ITEM_ID_COIN_COLLECTION:[Ljava/lang/String;

    array-length v7, v7

    if-lt v2, v7, :cond_1

    .line 288
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 289
    .local v0, "extra":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 304
    const-string v7, "displaywidth"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x44a00000    # 1280.0f

    div-float v6, v7, v8

    .line 305
    .local v6, "widthrate":F
    const-string v7, "displayheight"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x44480000    # 800.0f

    div-float v1, v7, v8

    .line 312
    .local v1, "heightrate":F
    const-string v7, "bodyimgid"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mBodyImgId:I

    .line 313
    const-string v7, "actionimgid"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mActionImgId:I

    .line 314
    const-string v7, "faceimgid"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mFaceImgId:I

    .line 315
    const-string v7, "bodyimgpath"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mBodyImgPath:Ljava/lang/String;

    .line 316
    const-string v7, "actionimgpath"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mActionImgPath:Ljava/lang/String;

    .line 317
    const-string v7, "faceimgpath"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mFaceImgPath:Ljava/lang/String;

    .line 319
    mul-float v7, v6, v1

    const/high16 v8, 0x40400000    # 3.0f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mMoveStandard:F

    .line 321
    iput v6, p0, Lcom/findit/battle/InventoryActivity_Google;->mWidthRate:F

    .line 322
    iput v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mHeightRate:F

    .line 324
    const v7, 0x7f0b000c

    invoke-virtual {p0, v7}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060001

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/findit/battle/InventoryActivity_Google;->coordinateLayout(Landroid/view/View;[Ljava/lang/String;)V

    .line 325
    const v7, 0x7f0b0027

    invoke-virtual {p0, v7}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/findit/battle/InventoryActivity_Google;->coordinateLayout(Landroid/view/View;[Ljava/lang/String;)V

    .line 326
    const v7, 0x7f0b0035

    invoke-virtual {p0, v7}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060003

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/findit/battle/InventoryActivity_Google;->coordinateLayout(Landroid/view/View;[Ljava/lang/String;)V

    .line 327
    const v7, 0x7f0b0046

    invoke-virtual {p0, v7}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060004

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/findit/battle/InventoryActivity_Google;->coordinateLayout(Landroid/view/View;[Ljava/lang/String;)V

    .line 328
    const v7, 0x7f0b003d

    invoke-virtual {p0, v7}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060005

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/findit/battle/InventoryActivity_Google;->coordinateLayout(Landroid/view/View;[Ljava/lang/String;)V

    .line 329
    const v7, 0x7f0b0049

    invoke-virtual {p0, v7}, Lcom/findit/battle/InventoryActivity_Google;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060006

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/findit/battle/InventoryActivity_Google;->coordinateLayout(Landroid/view/View;[Ljava/lang/String;)V

    .line 331
    invoke-direct {p0, v6, v1}, Lcom/findit/battle/InventoryActivity_Google;->createItemSlots(FF)V

    .line 332
    invoke-direct {p0, v6, v1}, Lcom/findit/battle/InventoryActivity_Google;->createShopSlots(FF)V

    .line 333
    invoke-direct {p0, v6, v1}, Lcom/findit/battle/InventoryActivity_Google;->createSkillSlots(FF)V

    .line 335
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Google;->setItemText()V

    .line 338
    .end local v1    # "heightrate":F
    .end local v6    # "widthrate":F
    :cond_0
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Google;->createDeleteItemDlg()V

    .line 339
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Google;->createLearnSkillDlg()V

    .line 340
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Google;->createBuyItemDlg()V

    .line 341
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Google;->createBuyListDlg()V

    .line 342
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Google;->setTab()V

    .line 344
    const/4 v7, 0x0

    iput v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mTabNum:I

    .line 345
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mLoadingView:Z

    .line 348
    new-instance v7, Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-direct {v7, p0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 350
    return-void

    .line 283
    .end local v0    # "extra":Landroid/os/Bundle;
    :cond_1
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Google;->mPurchaseItemMap:Ljava/util/HashMap;

    sget-object v8, Lcom/findit/battle/InventoryActivity_Google;->ITEM_ID_COIN_COLLECTION:[Ljava/lang/String;

    aget-object v8, v8, v2

    aget-object v9, v3, v2

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 450
    const-string v0, ">> onDestroy()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 451
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Google;->clearData()V

    .line 458
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mPurchaseItemMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mPurchaseItemMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 460
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mPurchaseItemMap:Ljava/util/HashMap;

    .line 463
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 464
    invoke-super {p0}, Lcom/findit/battle/iap/activity/InAppBillingActivity;->onDestroy()V

    .line 468
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 2831
    const-string v1, ">> onKeyUp()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2833
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 2834
    iput-boolean v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mLoadingView:Z

    .line 2836
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->finish()V

    .line 2837
    const v1, 0x7f040002

    const v2, 0x7f040003

    invoke-virtual {p0, v1, v2}, Lcom/findit/battle/InventoryActivity_Google;->overridePendingTransition(II)V

    .line 2842
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/findit/battle/iap/activity/InAppBillingActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 357
    invoke-super {p0, p1}, Lcom/findit/battle/iap/activity/InAppBillingActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 358
    invoke-virtual {p0, p1}, Lcom/findit/battle/InventoryActivity_Google;->setIntent(Landroid/content/Intent;)V

    .line 359
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Google;->saveStatusToDB()V

    .line 405
    :cond_0
    invoke-super {p0}, Lcom/findit/battle/iap/activity/InAppBillingActivity;->onPause()V

    .line 406
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 363
    invoke-super {p0}, Lcom/findit/battle/iap/activity/InAppBillingActivity;->onResume()V

    .line 365
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Google;->loadImages()V

    .line 369
    new-instance v0, Lcom/findit/battle/DBAdapter;

    invoke-direct {v0, p0}, Lcom/findit/battle/DBAdapter;-><init>(Landroid/content/Context;)V

    .line 370
    .local v0, "dbhelper":Lcom/findit/battle/DBAdapter;
    invoke-virtual {v0}, Lcom/findit/battle/DBAdapter;->open()Lcom/findit/battle/DBAdapter;

    .line 371
    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mDbhelper:Lcom/findit/battle/DBAdapter;

    .line 374
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/findit/battle/InventoryActivity_Google;->loadState(J)V

    .line 375
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Google;->setItemText()V

    .line 376
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Google;->setSkillText()V

    .line 379
    new-instance v1, Landroid/media/SoundPool;

    const/16 v2, 0xa

    const/4 v3, 0x3

    const/16 v4, 0x3e8

    invoke-direct {v1, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mSoundpool:Landroid/media/SoundPool;

    .line 380
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mSoundPoolMap:Ljava/util/HashMap;

    .line 381
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google;->mSoundpool:Landroid/media/SoundPool;

    const v4, 0x7f050005

    const/4 v5, 0x1

    invoke-virtual {v3, p0, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mTabNum:I

    packed-switch v1, :pswitch_data_0

    .line 397
    :goto_0
    return-void

    .line 386
    :pswitch_0
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Google;->setItemTab()V

    goto :goto_0

    .line 390
    :pswitch_1
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Google;->setShopTab()V

    goto :goto_0

    .line 394
    :pswitch_2
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Google;->setSkillTab()V

    goto :goto_0

    .line 384
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

    .line 2847
    const-string v0, ">> onTouchEvent()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2848
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    .line 2849
    .local v1, "touchx":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v2, v0

    .line 2852
    .local v2, "touchy":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2892
    :cond_0
    :goto_0
    return v10

    .line 2854
    :pswitch_0
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Google$MoveView;

    iget v5, v0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mIndex:I

    .line 2855
    .local v5, "index":I
    if-le v5, v9, :cond_1

    .line 2856
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Google$MoveView;

    invoke-virtual {v0, v1, v2, v8, v8}, Lcom/findit/battle/InventoryActivity_Google$MoveView;->move(IIII)V

    .line 2857
    invoke-direct {p0, v5, v8}, Lcom/findit/battle/InventoryActivity_Google;->setSetSlotImageAlpha(IZ)V

    .line 2861
    iget v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSlotWindowX:I

    neg-int v3, v0

    iget v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSlotWindowY:I

    neg-int v4, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/findit/battle/InventoryActivity_Google;->changeItemSlots(IIIII)V

    .line 2863
    :cond_1
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Google$MoveView;

    invoke-virtual {v0}, Lcom/findit/battle/InventoryActivity_Google$MoveView;->fadeView()V

    .line 2865
    invoke-direct {p0, v9, v9, v8, v8}, Lcom/findit/battle/InventoryActivity_Google;->setFirstTouch(IIII)V

    goto :goto_0

    .line 2869
    .end local v5    # "index":I
    :pswitch_1
    invoke-direct {p0, v1, v2, v8, v8}, Lcom/findit/battle/InventoryActivity_Google;->isActionMove(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2872
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Google$MoveView;

    iget v5, v0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mIndex:I

    .line 2873
    .restart local v5    # "index":I
    if-le v5, v9, :cond_2

    .line 2874
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Google$MoveView;

    invoke-virtual {v0, v1, v2, v8, v8}, Lcom/findit/battle/InventoryActivity_Google$MoveView;->move(IIII)V

    .line 2875
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Google$MoveView;

    invoke-virtual {v0}, Lcom/findit/battle/InventoryActivity_Google$MoveView;->appearView()V

    .line 2876
    invoke-direct {p0, v5, v10}, Lcom/findit/battle/InventoryActivity_Google;->setSetSlotImageAlpha(IZ)V

    .line 2879
    :cond_2
    invoke-direct {p0, v9, v9, v8, v8}, Lcom/findit/battle/InventoryActivity_Google;->setFirstTouch(IIII)V

    goto :goto_0

    .line 2883
    .end local v5    # "index":I
    :pswitch_2
    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_Google;->mSetItemTypeTable:[I

    .line 2884
    .local v6, "setitemtypetable":[I
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Google$MoveView;

    invoke-virtual {v0, v1, v2, v8, v8}, Lcom/findit/battle/InventoryActivity_Google$MoveView;->touchRect(IIII)I

    move-result v7

    .line 2885
    .local v7, "slotnum":I
    if-le v7, v9, :cond_3

    array-length v0, v6

    if-ge v7, v0, :cond_3

    .line 2886
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    aget v3, v6, v7

    invoke-virtual {v0, v3}, Lcom/findit/battle/Items;->getSetIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/findit/battle/InventoryActivity_Google;->setMoveItemImage(I)V

    .line 2888
    :cond_3
    invoke-direct {p0, v1, v2, v8, v8}, Lcom/findit/battle/InventoryActivity_Google;->setFirstTouch(IIII)V

    goto :goto_0

    .line 2852
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

    .line 908
    const-string v0, ">> playSound()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 909
    iget-boolean v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSoundon:Z

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSoundpool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSoundPoolMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSoundpool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mSoundPoolMap:Ljava/util/HashMap;

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

    .line 913
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

    .line 678
    const-string v0, ">> saveState()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 679
    new-array v3, v1, [I

    .line 680
    .local v3, "intvalues":[I
    new-array v4, v11, [J

    .line 681
    .local v4, "longvalues":[J
    new-array v5, v11, [Ljava/lang/String;

    const-string v0, ""

    aput-object v0, v5, v2

    const-string v0, ""

    aput-object v0, v5, v1

    .line 684
    .local v5, "strvalues":[Ljava/lang/String;
    iget-wide v9, p0, Lcom/findit/battle/InventoryActivity_Google;->mScore:J

    aput-wide v9, v4, v2

    .line 685
    iget-wide v9, p0, Lcom/findit/battle/InventoryActivity_Google;->mCoin:J

    aput-wide v9, v4, v1

    .line 688
    iget v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mPoint:I

    aput v0, v3, v2

    .line 691
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

    .line 692
    aget-object v0, v5, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkills:Lcom/findit/battle/Objects$Skills;

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

    .line 693
    aget-object v0, v5, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkills:Lcom/findit/battle/Objects$Skills;

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

    .line 694
    aget-object v0, v5, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkills:Lcom/findit/battle/Objects$Skills;

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

    .line 695
    aget-object v0, v5, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkills:Lcom/findit/battle/Objects$Skills;

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

    .line 696
    aget-object v0, v5, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget v0, v0, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 697
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget v0, v0, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    if-lt v6, v0, :cond_4

    .line 704
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

    .line 706
    const/4 v6, 0x0

    :goto_5
    const/4 v0, 0x6

    if-lt v6, v0, :cond_6

    .line 720
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    iget v8, v0, Lcom/findit/battle/Items;->mItemTotalnum:I

    .line 721
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

    .line 722
    const/4 v6, 0x0

    :goto_6
    if-lt v6, v8, :cond_8

    .line 737
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mDbhelper:Lcom/findit/battle/DBAdapter;

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/findit/battle/DBAdapter;->updateStateForInven(J[I[J[Ljava/lang/String;)Z

    .line 740
    return-void

    .end local v6    # "i":I
    .end local v8    # "totalnum":I
    :cond_0
    move v0, v2

    .line 692
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 693
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 694
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 695
    goto :goto_3

    .line 698
    .restart local v6    # "i":I
    :cond_4
    aget-object v0, v5, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/findit/battle/Objects$Skills$Skill;->mNum:I

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 699
    aget-object v0, v5, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mSkills:Lcom/findit/battle/Objects$Skills;

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

    .line 697
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 700
    goto :goto_7

    .line 707
    :cond_6
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v0, v0, v6

    iget v8, v0, Lcom/findit/battle/Items$TypeItem;->mSubItemTotalnum:I

    .line 708
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

    .line 709
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_8
    if-lt v7, v8, :cond_7

    .line 706
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 710
    :cond_7
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

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

    .line 711
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

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

    .line 712
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

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

    .line 713
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

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

    .line 714
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

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

    .line 715
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

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

    .line 716
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

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

    .line 709
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8

    .line 723
    .end local v7    # "j":I
    :cond_8
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v6

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

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v6

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

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v6

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

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

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

    .line 727
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/findit/battle/Items$Item;->mNum:I

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 729
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v6

    iget-object v0, v0, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 730
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

    .line 722
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    :cond_9
    move v0, v2

    .line 726
    goto :goto_9

    .line 732
    :cond_a
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

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

    .line 733
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mItems:Lcom/findit/battle/Items;

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
    .line 2577
    const-string v1, ">> sendAddCoin()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2578
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 2580
    .local v0, "connectnetwork":Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    :cond_0
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2583
    const-string v1, "http://14.63.220.39/"

    const-string v2, "app/member/addCoin.json"

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setServerUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 2584
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->clearParameter()V

    .line 2585
    const-string v1, "userId"

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    const-string v1, "coin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mCommonDialog:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v1}, Lcom/findit/battle/CommonDialog;->showProgressDlg()V

    .line 2590
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

    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Google;->mCoinResultHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->startParsingData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V

    .line 2591
    return-void
.end method

.method public sendSpendCoin(J)V
    .locals 6
    .param p1, "coin"    # J

    .prologue
    .line 2594
    const-string v1, ">> sendSpendCoin()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2595
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 2597
    .local v0, "connectnetwork":Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    :cond_0
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2600
    const-string v1, "http://14.63.220.39/"

    const-string v2, "app/member/spendCoin.json"

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setServerUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 2601
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->clearParameter()V

    .line 2602
    const-string v1, "userId"

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    const-string v1, "coin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2606
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google;->mCommonDialog:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v1}, Lcom/findit/battle/CommonDialog;->showProgressDlg()V

    .line 2607
    const-string v1, "utf-8"

    const-string v2, "GET"

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Google;->mCoinResultHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->startParsingData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V

    .line 2608
    return-void
.end method
