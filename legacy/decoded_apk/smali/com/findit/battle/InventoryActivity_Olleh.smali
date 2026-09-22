.class public Lcom/findit/battle/InventoryActivity_Olleh;
.super Lcom/kt/olleh/inapp/KTInAppActivity;
.source "InventoryActivity_Olleh.java"

# interfaces
.implements Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnInitIapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/findit/battle/InventoryActivity_Olleh$ActionRunnable;,
        Lcom/findit/battle/InventoryActivity_Olleh$BuyList;,
        Lcom/findit/battle/InventoryActivity_Olleh$BuyListAdapter;,
        Lcom/findit/battle/InventoryActivity_Olleh$MoveView;
    }
.end annotation


# static fields
.field private static final ANIMAION_DOWN:I = 0x0

.field private static final ANIMAION_SCALE:I = 0x2

.field private static final ANIMAION_UP:I = 0x1

.field private static final APP_ID:Ljava/lang/String; = "100000100952"

.field private static final BERRYSLOT_RECT:I = 0x2

.field private static final CHARACTER_FILENAME:Ljava/lang/String; = "/CharacterImage"

.field private static final IAP_MODE:I = 0x0

.field private static final ITEM_ID_COIN1000:Ljava/lang/String; = "000001005358"

.field private static final ITEM_ID_COIN2500:Ljava/lang/String; = "000001005359"

.field private static final ITEM_ID_COIN5500:Ljava/lang/String; = "000001005360"

.field private static final ITEM_ID_COIN8500:Ljava/lang/String; = "000001005361"

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

.field private mMoveItemView:Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

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

.field private mSamsungIapHelper:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

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

    .line 73
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;-><init>()V

    .line 171
    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSoundPoolMap:Ljava/util/HashMap;

    .line 172
    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSoundpool:Landroid/media/SoundPool;

    .line 199
    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSamsungIapHelper:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    .line 3341
    new-instance v0, Lcom/findit/battle/InventoryActivity_Olleh$1;

    invoke-direct {v0, p0}, Lcom/findit/battle/InventoryActivity_Olleh$1;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;)V

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mInAPInformationListener:Lcom/kt/olleh/inapp/OnInAppListener;

    .line 3378
    new-instance v0, Lcom/findit/battle/InventoryActivity_Olleh$2;

    invoke-direct {v0, p0}, Lcom/findit/battle/InventoryActivity_Olleh$2;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;)V

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mBuyResultHandler:Landroid/os/Handler;

    .line 3441
    new-instance v0, Lcom/findit/battle/InventoryActivity_Olleh$3;

    invoke-direct {v0, p0}, Lcom/findit/battle/InventoryActivity_Olleh$3;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;)V

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mLearnResultHandler:Landroid/os/Handler;

    .line 3484
    new-instance v0, Lcom/findit/battle/InventoryActivity_Olleh$4;

    invoke-direct {v0, p0}, Lcom/findit/battle/InventoryActivity_Olleh$4;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;)V

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mCoinResultHandler:Landroid/os/Handler;

    .line 73
    return-void
.end method

.method static synthetic access$0(Lcom/findit/battle/InventoryActivity_Olleh;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mPurchaseItemMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1(Lcom/findit/battle/InventoryActivity_Olleh;Lcom/findit/battle/Items$Item;)V
    .locals 0

    .prologue
    .line 2981
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_Olleh;->applyPurchaseItem(Lcom/findit/battle/Items$Item;)V

    return-void
.end method

.method static synthetic access$10(Lcom/findit/battle/InventoryActivity_Olleh;ILcom/findit/battle/Items$Item;)V
    .locals 0

    .prologue
    .line 1899
    invoke-direct {p0, p1, p2}, Lcom/findit/battle/InventoryActivity_Olleh;->setItemSlot(ILcom/findit/battle/Items$Item;)V

    return-void
.end method

.method static synthetic access$11(Lcom/findit/battle/InventoryActivity_Olleh;)[Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillSlotsLayout:[Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$12(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/Objects$Skills;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkills:Lcom/findit/battle/Objects$Skills;

    return-object v0
.end method

.method static synthetic access$13(Lcom/findit/battle/InventoryActivity_Olleh;)I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mPoint:I

    return v0
.end method

.method static synthetic access$14(Lcom/findit/battle/InventoryActivity_Olleh;I)V
    .locals 0

    .prologue
    .line 184
    iput p1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mPoint:I

    return-void
.end method

.method static synthetic access$15(Lcom/findit/battle/InventoryActivity_Olleh;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillPointNumTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/findit/battle/InventoryActivity_Olleh;I)V
    .locals 0

    .prologue
    .line 2029
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_Olleh;->setSkillSlot(I)V

    return-void
.end method

.method static synthetic access$17(Lcom/findit/battle/InventoryActivity_Olleh;)Landroid/widget/HorizontalScrollView;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSlotsScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/findit/battle/InventoryActivity_Olleh;)V
    .locals 0

    .prologue
    .line 1058
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->setItemTab()V

    return-void
.end method

.method static synthetic access$19(Lcom/findit/battle/InventoryActivity_Olleh;)V
    .locals 0

    .prologue
    .line 1074
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->setShopTab()V

    return-void
.end method

.method static synthetic access$2(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/CommonDialog;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mCommonDialog:Lcom/findit/battle/CommonDialog;

    return-object v0
.end method

.method static synthetic access$20(Lcom/findit/battle/InventoryActivity_Olleh;)V
    .locals 0

    .prologue
    .line 1090
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->setSkillTab()V

    return-void
.end method

.method static synthetic access$21(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/InventoryActivity_Olleh$MoveView;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    return-object v0
.end method

.method static synthetic access$22(Lcom/findit/battle/InventoryActivity_Olleh;)I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSlotWindowX:I

    return v0
.end method

.method static synthetic access$23(Lcom/findit/battle/InventoryActivity_Olleh;)I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSlotWindowY:I

    return v0
.end method

.method static synthetic access$24(Lcom/findit/battle/InventoryActivity_Olleh;IZ)V
    .locals 0

    .prologue
    .line 2169
    invoke-direct {p0, p1, p2}, Lcom/findit/battle/InventoryActivity_Olleh;->setSlotImageAlpha(IZ)V

    return-void
.end method

.method static synthetic access$25(Lcom/findit/battle/InventoryActivity_Olleh;IIIII)Z
    .locals 1

    .prologue
    .line 1840
    invoke-direct/range {p0 .. p5}, Lcom/findit/battle/InventoryActivity_Olleh;->changeSetItemSlots(IIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$26(Lcom/findit/battle/InventoryActivity_Olleh;I)V
    .locals 0

    .prologue
    .line 2834
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_Olleh;->setDeleteItem(I)V

    return-void
.end method

.method static synthetic access$27(Lcom/findit/battle/InventoryActivity_Olleh;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mDeleteItemDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$28(Lcom/findit/battle/InventoryActivity_Olleh;IIIII)V
    .locals 0

    .prologue
    .line 1789
    invoke-direct/range {p0 .. p5}, Lcom/findit/battle/InventoryActivity_Olleh;->changeItemSlots(IIIII)V

    return-void
.end method

.method static synthetic access$29(Lcom/findit/battle/InventoryActivity_Olleh;IIII)V
    .locals 0

    .prologue
    .line 2339
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/findit/battle/InventoryActivity_Olleh;->setFirstTouch(IIII)V

    return-void
.end method

.method static synthetic access$3(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    return-object v0
.end method

.method static synthetic access$30(Lcom/findit/battle/InventoryActivity_Olleh;IIII)Z
    .locals 1

    .prologue
    .line 2321
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/findit/battle/InventoryActivity_Olleh;->isActionMove(IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$31(Lcom/findit/battle/InventoryActivity_Olleh;)I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSlotNum:I

    return v0
.end method

.method static synthetic access$32(Lcom/findit/battle/InventoryActivity_Olleh;)[Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSlotsLayout:[Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$33(Lcom/findit/battle/InventoryActivity_Olleh;I)V
    .locals 0

    .prologue
    .line 186
    iput p1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSlotNum:I

    return-void
.end method

.method static synthetic access$34(Lcom/findit/battle/InventoryActivity_Olleh;)V
    .locals 0

    .prologue
    .line 2108
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->setItemText()V

    return-void
.end method

.method static synthetic access$35(Lcom/findit/battle/InventoryActivity_Olleh;I)V
    .locals 0

    .prologue
    .line 2194
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_Olleh;->setMoveItemImage(I)V

    return-void
.end method

.method static synthetic access$36(Lcom/findit/battle/InventoryActivity_Olleh;)I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSlotWindowNum:I

    return v0
.end method

.method static synthetic access$37(Lcom/findit/battle/InventoryActivity_Olleh;I)V
    .locals 0

    .prologue
    .line 1130
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_Olleh;->setItemSlotWindowLocation(I)V

    return-void
.end method

.method static synthetic access$38(Lcom/findit/battle/InventoryActivity_Olleh;)[Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopSlotsLayout:[Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$39(Lcom/findit/battle/InventoryActivity_Olleh;)I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopItemTypeSlotNum:I

    return v0
.end method

.method static synthetic access$4(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/Items;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    return-object v0
.end method

.method static synthetic access$40(Lcom/findit/battle/InventoryActivity_Olleh;I)V
    .locals 0

    .prologue
    .line 2078
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_Olleh;->clearShopSlot(I)V

    return-void
.end method

.method static synthetic access$41(Lcom/findit/battle/InventoryActivity_Olleh;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopExplainTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$42(Lcom/findit/battle/InventoryActivity_Olleh;II)V
    .locals 0

    .prologue
    .line 2053
    invoke-direct {p0, p1, p2}, Lcom/findit/battle/InventoryActivity_Olleh;->setShopSlot(II)V

    return-void
.end method

.method static synthetic access$43(Lcom/findit/battle/InventoryActivity_Olleh;I)V
    .locals 0

    .prologue
    .line 187
    iput p1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopItemTypeSlotNum:I

    return-void
.end method

.method static synthetic access$44(Lcom/findit/battle/InventoryActivity_Olleh;Landroid/widget/RelativeLayout;I)V
    .locals 0

    .prologue
    .line 2154
    invoke-direct {p0, p1, p2}, Lcom/findit/battle/InventoryActivity_Olleh;->selectShopItemSlot(Landroid/widget/RelativeLayout;I)V

    return-void
.end method

.method static synthetic access$45(Lcom/findit/battle/InventoryActivity_Olleh;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mBuyListTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$46(Lcom/findit/battle/InventoryActivity_Olleh;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$47(Lcom/findit/battle/InventoryActivity_Olleh;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mBuyListTitleText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$48(Lcom/findit/battle/InventoryActivity_Olleh;)V
    .locals 0

    .prologue
    .line 2889
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->fillBuyListData()V

    return-void
.end method

.method static synthetic access$49(Lcom/findit/battle/InventoryActivity_Olleh;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mBuyListDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$5(Lcom/findit/battle/InventoryActivity_Olleh;)[Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopItemSlotsLayout:[Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$50(Lcom/findit/battle/InventoryActivity_Olleh;)I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopItemSlotNum:I

    return v0
.end method

.method static synthetic access$51(Lcom/findit/battle/InventoryActivity_Olleh;IIZ)V
    .locals 0

    .prologue
    .line 2848
    invoke-direct {p0, p1, p2, p3}, Lcom/findit/battle/InventoryActivity_Olleh;->setBuyItem(IIZ)V

    return-void
.end method

.method static synthetic access$52(Lcom/findit/battle/InventoryActivity_Olleh;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mBuyItemDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$53(Lcom/findit/battle/InventoryActivity_Olleh;)I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopItemSlotWindowNum:I

    return v0
.end method

.method static synthetic access$54(Lcom/findit/battle/InventoryActivity_Olleh;I)V
    .locals 0

    .prologue
    .line 1146
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_Olleh;->setShopItemSlotWindowLocation(I)V

    return-void
.end method

.method static synthetic access$55(Lcom/findit/battle/InventoryActivity_Olleh;)I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillSlotNum:I

    return v0
.end method

.method static synthetic access$56(Lcom/findit/battle/InventoryActivity_Olleh;I)V
    .locals 0

    .prologue
    .line 188
    iput p1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillSlotNum:I

    return-void
.end method

.method static synthetic access$57(Lcom/findit/battle/InventoryActivity_Olleh;)V
    .locals 0

    .prologue
    .line 2139
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->setSkillText()V

    return-void
.end method

.method static synthetic access$58(Lcom/findit/battle/InventoryActivity_Olleh;)I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillSlotWindowNum:I

    return v0
.end method

.method static synthetic access$59(Lcom/findit/battle/InventoryActivity_Olleh;I)V
    .locals 0

    .prologue
    .line 1138
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_Olleh;->setSkillSlotWindowLocation(I)V

    return-void
.end method

.method static synthetic access$6(Lcom/findit/battle/InventoryActivity_Olleh;)[Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mAnimation:[Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$60(Lcom/findit/battle/InventoryActivity_Olleh;I)V
    .locals 0

    .prologue
    .line 2864
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_Olleh;->setLearnSkill(I)V

    return-void
.end method

.method static synthetic access$61(Lcom/findit/battle/InventoryActivity_Olleh;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mLearnSkillDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$62(Lcom/findit/battle/InventoryActivity_Olleh;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mDeleteItemImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$63(Lcom/findit/battle/InventoryActivity_Olleh;II)V
    .locals 0

    .prologue
    .line 1867
    invoke-direct {p0, p1, p2}, Lcom/findit/battle/InventoryActivity_Olleh;->setItemSlot(II)V

    return-void
.end method

.method static synthetic access$64(Lcom/findit/battle/InventoryActivity_Olleh;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mBuyItemImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$65(Lcom/findit/battle/InventoryActivity_Olleh;Lcom/findit/battle/Items$Item;)V
    .locals 0

    .prologue
    .line 3324
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_Olleh;->purchaseItem(Lcom/findit/battle/Items$Item;)V

    return-void
.end method

.method static synthetic access$66(Lcom/findit/battle/InventoryActivity_Olleh;)J
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mCoin:J

    return-wide v0
.end method

.method static synthetic access$67(Lcom/findit/battle/InventoryActivity_Olleh;Lcom/findit/battle/Items$Item;)V
    .locals 0

    .prologue
    .line 2759
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_Olleh;->sendBuyItem(Lcom/findit/battle/Items$Item;)V

    return-void
.end method

.method static synthetic access$68(Lcom/findit/battle/InventoryActivity_Olleh;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mLearnSkillImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$69(Lcom/findit/battle/InventoryActivity_Olleh;I)V
    .locals 0

    .prologue
    .line 2782
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_Olleh;->sendLearnSkill(I)V

    return-void
.end method

.method static synthetic access$7(Lcom/findit/battle/InventoryActivity_Olleh;Lcom/findit/battle/Items$Item;)Z
    .locals 1

    .prologue
    .line 1999
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_Olleh;->setItemSlot(Lcom/findit/battle/Items$Item;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$70(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/sec/android/iap/sample/helper/SamsungIapHelper;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSamsungIapHelper:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    return-object v0
.end method

.method static synthetic access$8(Lcom/findit/battle/InventoryActivity_Olleh;I)V
    .locals 0

    .prologue
    .line 2879
    invoke-direct {p0, p1}, Lcom/findit/battle/InventoryActivity_Olleh;->calculateCoin(I)V

    return-void
.end method

.method static synthetic access$9(Lcom/findit/battle/InventoryActivity_Olleh;ILcom/findit/battle/Items$Item;)I
    .locals 1

    .prologue
    .line 1966
    invoke-direct {p0, p1, p2}, Lcom/findit/battle/InventoryActivity_Olleh;->setItemSetSlot(ILcom/findit/battle/Items$Item;)I

    move-result v0

    return v0
.end method

.method private applyPurchaseItem(Lcom/findit/battle/Items$Item;)V
    .locals 2
    .param p1, "item"    # Lcom/findit/battle/Items$Item;

    .prologue
    .line 2982
    const-string v0, ">> applyPurchaseItem()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2983
    iget v0, p1, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 2985
    :cond_0
    iget v0, p1, Lcom/findit/battle/Items$Item;->mPower:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->sendAddCoin(J)V

    .line 2991
    :cond_1
    return-void
.end method

.method private calculateCoin(I)V
    .locals 6
    .param p1, "price"    # I

    .prologue
    .line 2880
    const-string v2, ">> calculateCoin()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2881
    iget-wide v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mCoin:J

    int-to-long v4, p1

    sub-long v0, v2, v4

    .line 2883
    .local v0, "coin":J
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mCoinNumTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2884
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopCoinNumTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2886
    iput-wide v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mCoin:J

    .line 2887
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
    .line 1790
    const-string v1, ">> changeItemSlots()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1791
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    iget-object v1, v1, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v8, v1, p5

    .line 1793
    .local v8, "item":Lcom/findit/battle/Items$Item;
    iget v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSlotWindowNum:I

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    iget v2, v2, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->mWindowNum:I

    mul-int v9, v1, v2

    .line 1794
    .local v9, "min":I
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    iget v6, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSlotWindowNum:I

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->touchTile(IIIII)I

    move-result v10

    .line 1795
    .local v10, "slotnum":I
    if-lt v10, v9, :cond_0

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    iget v1, v1, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->mWindowNum:I

    add-int/2addr v1, v9

    if-ge v10, v1, :cond_0

    .line 1796
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    invoke-virtual {v1, v10}, Lcom/findit/battle/Items;->getIndex(I)I

    move-result v7

    .line 1797
    .local v7, "index1":I
    if-gez v7, :cond_2

    .line 1799
    iget v11, v8, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 1800
    .local v11, "slotnum1":I
    if-gez v11, :cond_1

    .line 1802
    iget v1, v8, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/findit/battle/InventoryActivity_Olleh;->setItemSetSlot(II)I

    .line 1808
    :goto_0
    move/from16 v0, p5

    invoke-direct {p0, v10, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->setItemSlot(II)V

    .line 1836
    .end local v7    # "index1":I
    .end local v11    # "slotnum1":I
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->setItemText()V

    .line 1837
    return-void

    .line 1806
    .restart local v7    # "index1":I
    .restart local v11    # "slotnum1":I
    :cond_1
    const/4 v1, -0x1

    invoke-direct {p0, v11, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->setItemSlot(II)V

    goto :goto_0

    .line 1812
    .end local v11    # "slotnum1":I
    :cond_2
    iget v11, v8, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 1813
    .restart local v11    # "slotnum1":I
    if-gez v11, :cond_4

    .line 1815
    iget v1, v8, Lcom/findit/battle/Items$Item;->mType:I

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    iget-object v2, v2, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/findit/battle/Items$Item;->mType:I

    if-ne v1, v2, :cond_3

    .line 1817
    iget v1, v8, Lcom/findit/battle/Items$Item;->mType:I

    invoke-direct {p0, v1, v7}, Lcom/findit/battle/InventoryActivity_Olleh;->setItemSetSlot(II)I

    .line 1818
    move/from16 v0, p5

    invoke-direct {p0, v10, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->setItemSlot(II)V

    goto :goto_1

    .line 1822
    :cond_3
    iget v1, v8, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/findit/battle/InventoryActivity_Olleh;->setItemSetSlot(II)I

    .line 1823
    invoke-direct {p0, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->setItemSlot(Lcom/findit/battle/Items$Item;)Z

    goto :goto_1

    .line 1828
    :cond_4
    invoke-direct {p0, v11, v7}, Lcom/findit/battle/InventoryActivity_Olleh;->setItemSlot(II)V

    .line 1829
    move/from16 v0, p5

    invoke-direct {p0, v10, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->setItemSlot(II)V

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

    .line 1841
    const-string v4, ">> changeSetItemSlots()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1842
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSetItemTypeTable:[I

    .line 1843
    .local v3, "typetable":[I
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    iget-object v4, v4, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v4, p5

    .line 1845
    .local v1, "item":Lcom/findit/battle/Items$Item;
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->touchRect(IIII)I

    move-result v2

    .line 1846
    .local v2, "slotnum":I
    if-le v2, v6, :cond_2

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 1847
    iget v4, v1, Lcom/findit/battle/Items$Item;->mType:I

    if-ne v2, v4, :cond_0

    .line 1848
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    iget v5, v1, Lcom/findit/battle/Items$Item;->mType:I

    invoke-virtual {v4, v5}, Lcom/findit/battle/Items;->getSetIndex(I)I

    move-result v0

    .line 1849
    .local v0, "index1":I
    if-gez v0, :cond_1

    .line 1851
    iget v4, v1, Lcom/findit/battle/Items$Item;->mType:I

    invoke-direct {p0, v4, p5}, Lcom/findit/battle/InventoryActivity_Olleh;->setItemSetSlot(II)I

    move-result v4

    invoke-direct {p0, v4, v6}, Lcom/findit/battle/InventoryActivity_Olleh;->setItemSlot(II)V

    .line 1861
    .end local v0    # "index1":I
    :cond_0
    :goto_0
    const/4 v4, 0x1

    .line 1864
    :goto_1
    return v4

    .line 1856
    .restart local v0    # "index1":I
    :cond_1
    iget v4, v1, Lcom/findit/battle/Items$Item;->mType:I

    invoke-direct {p0, v4, p5}, Lcom/findit/battle/InventoryActivity_Olleh;->setItemSetSlot(II)I

    move-result v4

    invoke-direct {p0, v4, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->setItemSlot(II)V

    goto :goto_0

    .line 1864
    .end local v0    # "index1":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private clearData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 501
    const-string v0, ">> clearData()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSoundPoolMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    .line 514
    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSoundPoolMap:Ljava/util/HashMap;

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSoundpool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSoundpool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 518
    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSoundpool:Landroid/media/SoundPool;

    .line 523
    :cond_1
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->recycleImages()V

    .line 525
    iget-boolean v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mLoadingView:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 526
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->createLoadingView()V

    .line 528
    :cond_2
    return-void
.end method

.method private clearShopSlot(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 2079
    const-string v3, ">> clearShopSlot()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2080
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopItemSlotsLayout:[Landroid/widget/RelativeLayout;

    aget-object v1, v3, p1

    .line 2081
    .local v1, "slotslayout":Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2082
    .local v0, "imageview":Landroid/widget/ImageView;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2085
    .local v2, "textview":Landroid/widget/TextView;
    invoke-direct {p0, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->recycleView(Landroid/view/View;)V

    .line 2086
    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2087
    return-void
.end method

.method private compressBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2400
    const-string v2, ">> compressBitmap()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2401
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2402
    .local v0, "bytearray":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2403
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2405
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

    .line 2586
    const-string v3, ">> createBuyItemDlg()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2587
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2588
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 2589
    .local v2, "window":Landroid/view/Window;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 2590
    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 2591
    const v3, 0x7f020193

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 2593
    const v3, 0x7f030003

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 2595
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090044

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mBuyItemText:Ljava/lang/String;

    .line 2596
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090045

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mBuyItemText1:Ljava/lang/String;

    .line 2597
    const v3, 0x7f0b0008

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mBuyItemTextView:Landroid/widget/TextView;

    .line 2598
    const v3, 0x7f0b0007

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mBuyItemImageView:Landroid/widget/ImageView;

    .line 2601
    const v3, 0x7f0b0009

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2602
    .local v0, "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/InventoryActivity_Olleh$27;

    invoke-direct {v3, p0}, Lcom/findit/battle/InventoryActivity_Olleh$27;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2663
    const v3, 0x7f0b000a

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 2664
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/InventoryActivity_Olleh$28;

    invoke-direct {v3, p0}, Lcom/findit/battle/InventoryActivity_Olleh$28;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2672
    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mBuyItemDlg:Landroid/app/Dialog;

    .line 2673
    return-void
.end method

.method private createBuyListDlg()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 2736
    const-string v3, ">> createBuyListDlg()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2737
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2738
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 2739
    .local v2, "window":Landroid/view/Window;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 2740
    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 2741
    const v3, 0x7f020193

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 2743
    const/high16 v3, 0x7f030000

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 2745
    const/high16 v3, 0x7f0b0000

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mBuyListTitleTextView:Landroid/widget/TextView;

    .line 2746
    const v3, 0x7f0b0005

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mBuyListView:Landroid/widget/ListView;

    .line 2748
    const v3, 0x7f0b0001

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 2749
    .local v1, "imagebutton":Landroid/widget/ImageButton;
    new-instance v3, Lcom/findit/battle/InventoryActivity_Olleh$31;

    invoke-direct {v3, p0}, Lcom/findit/battle/InventoryActivity_Olleh$31;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2756
    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mBuyListDlg:Landroid/app/Dialog;

    .line 2757
    return-void
.end method

.method private createDeleteItemDlg()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 2539
    const-string v3, ">> createDeleteItemDlg()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2540
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2541
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 2542
    .local v2, "window":Landroid/view/Window;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 2543
    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 2544
    const v3, 0x7f020193

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 2546
    const v3, 0x7f030003

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 2548
    const v3, 0x7f0b0007

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mDeleteItemImageView:Landroid/widget/ImageView;

    .line 2551
    const v3, 0x7f0b0009

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2552
    .local v0, "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/InventoryActivity_Olleh$25;

    invoke-direct {v3, p0}, Lcom/findit/battle/InventoryActivity_Olleh$25;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2574
    const v3, 0x7f0b000a

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 2575
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/InventoryActivity_Olleh$26;

    invoke-direct {v3, p0}, Lcom/findit/battle/InventoryActivity_Olleh$26;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2582
    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mDeleteItemDlg:Landroid/app/Dialog;

    .line 2583
    return-void
.end method

.method private createItemSlots(FF)V
    .locals 39
    .param p1, "widthrate"    # F
    .param p2, "heightrate"    # F

    .prologue
    .line 1155
    const-string v3, ">> createItemSlots()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1156
    const/16 v36, 0x1

    .local v36, "windownum":I
    const/4 v7, 0x5

    .local v7, "colum":I
    const/4 v8, 0x3

    .line 1157
    .local v8, "row":I
    mul-int v37, v7, v8

    .line 1158
    .local v37, "windowslotsnum":I
    const/high16 v3, 0x42e00000    # 112.0f

    mul-float v3, v3, p2

    float-to-int v6, v3

    .line 1159
    .local v6, "size":I
    div-int/lit8 v31, v6, 0x8

    .line 1162
    .local v31, "textsize":I
    const/16 v3, 0xf

    new-array v3, v3, [Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mSlotsLayout:[Landroid/widget/RelativeLayout;

    .line 1163
    mul-int/lit8 v29, v6, 0x5

    .line 1164
    .local v29, "slotwindowwidth":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mSlotWindowNum:I

    .line 1165
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_Olleh;->mSlotWindowTotalNum:I

    .line 1166
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mSlotNum:I

    .line 1168
    new-instance v3, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    const v4, 0x7f0b0054

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;Landroid/widget/ImageView;III)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    .line 1169
    const v3, 0x441c4000    # 625.0f

    mul-float v3, v3, p1

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mSlotWindowX:I

    .line 1170
    const/high16 v3, 0x43610000    # 225.0f

    mul-float v3, v3, p2

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mSlotWindowY:I

    .line 1172
    const/high16 v3, 0x42e00000    # 112.0f

    mul-float v3, v3, p1

    float-to-int v0, v3

    move/from16 v35, v0

    .line 1173
    .local v35, "width":I
    const/high16 v3, 0x42e00000    # 112.0f

    mul-float v3, v3, p2

    float-to-int v12, v3

    .line 1174
    .local v12, "height":I
    const/high16 v3, 0x422c0000    # 43.0f

    mul-float v3, v3, p1

    float-to-int v0, v3

    move/from16 v17, v0

    .line 1175
    .local v17, "left1":I
    const v3, 0x43d78000    # 431.0f

    mul-float v3, v3, p1

    float-to-int v0, v3

    move/from16 v18, v0

    .line 1176
    .local v18, "left2":I
    add-int v21, v17, v35

    .line 1177
    .local v21, "right1":I
    add-int v22, v18, v35

    .line 1178
    .local v22, "right2":I
    const v3, 0x43df8000    # 447.0f

    mul-float v3, v3, p2

    float-to-int v0, v3

    move/from16 v33, v0

    .line 1179
    .local v33, "top1":I
    const v3, 0x44158000    # 598.0f

    mul-float v3, v3, p2

    float-to-int v0, v3

    move/from16 v34, v0

    .line 1180
    .local v34, "top2":I
    add-int v9, v33, v12

    .line 1181
    .local v9, "bottom1":I
    add-int v10, v34, v12

    .line 1183
    .local v10, "bottom2":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    iget-object v3, v3, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->mRect:[Landroid/graphics/Rect;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Rect;

    move/from16 v0, v17

    move/from16 v1, v33

    move/from16 v2, v21

    invoke-direct {v5, v0, v1, v2, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v3, v4

    .line 1184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    iget-object v3, v3, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->mRect:[Landroid/graphics/Rect;

    const/4 v4, 0x2

    new-instance v5, Landroid/graphics/Rect;

    move/from16 v0, v18

    move/from16 v1, v33

    move/from16 v2, v22

    invoke-direct {v5, v0, v1, v2, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v3, v4

    .line 1185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    iget-object v3, v3, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->mRect:[Landroid/graphics/Rect;

    const/4 v4, 0x1

    new-instance v5, Landroid/graphics/Rect;

    move/from16 v0, v17

    move/from16 v1, v34

    move/from16 v2, v21

    invoke-direct {v5, v0, v1, v2, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v3, v4

    .line 1186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    iget-object v3, v3, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->mRect:[Landroid/graphics/Rect;

    const/4 v4, 0x3

    new-instance v5, Landroid/graphics/Rect;

    move/from16 v0, v18

    move/from16 v1, v34

    move/from16 v2, v22

    invoke-direct {v5, v0, v1, v2, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v3, v4

    .line 1188
    new-instance v27, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v27

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1189
    .local v27, "slotparams1":Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v0, v31

    int-to-float v3, v0

    const v4, 0x3f99999a    # 1.2f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, v27

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1190
    move/from16 v0, v31

    int-to-float v3, v0

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, v27

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1192
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

    .line 1193
    .local v23, "setitemtypetable":[I
    const/4 v3, 0x4

    new-array v0, v3, [I

    move-object/from16 v24, v0

    fill-array-data v24, :array_0

    .line 1194
    .local v24, "setslotlayoutidtable":[I
    move-object/from16 v0, v24

    array-length v3, v0

    new-array v3, v3, [Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mSetSlotsLayout:[Landroid/widget/RelativeLayout;

    .line 1195
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, v23

    array-length v3, v0

    if-lt v13, v3, :cond_0

    .line 1206
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_Olleh;->mSetItemTypeTable:[I

    .line 1208
    const v3, 0x7f0b0030

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/HorizontalScrollView;

    .line 1209
    .local v28, "slotscrollview":Landroid/widget/HorizontalScrollView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    move/from16 v0, v29

    invoke-direct {v3, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1211
    new-instance v3, Lcom/findit/battle/InventoryActivity_Olleh$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/findit/battle/InventoryActivity_Olleh$8;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1263
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_Olleh;->mSlotsScrollView:Landroid/widget/HorizontalScrollView;

    .line 1265
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1266
    .local v20, "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v26, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v26

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1268
    .local v26, "slotparams":Landroid/widget/RelativeLayout$LayoutParams;
    const v3, 0x7f0b0031

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 1270
    .local v16, "layout":Landroid/widget/LinearLayout;
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_Olleh;->mSlotWindowWidth:I

    .line 1273
    const/4 v13, 0x0

    :goto_1
    move/from16 v0, v36

    if-lt v13, v0, :cond_1

    .line 1396
    const v3, 0x7f0b002f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 1397
    .local v11, "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/InventoryActivity_Olleh$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/findit/battle/InventoryActivity_Olleh$11;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;)V

    invoke-virtual {v11, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1405
    const v3, 0x7f0b0032

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11    # "button":Landroid/widget/Button;
    check-cast v11, Landroid/widget/Button;

    .line 1406
    .restart local v11    # "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/InventoryActivity_Olleh$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/findit/battle/InventoryActivity_Olleh$12;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;)V

    invoke-virtual {v11, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1413
    return-void

    .line 1196
    .end local v11    # "button":Landroid/widget/Button;
    .end local v16    # "layout":Landroid/widget/LinearLayout;
    .end local v20    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v26    # "slotparams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v28    # "slotscrollview":Landroid/widget/HorizontalScrollView;
    :cond_0
    aget v3, v24, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout;

    .line 1198
    .local v16, "layout":Landroid/widget/RelativeLayout;
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 1199
    .local v32, "textview":Landroid/widget/TextView;
    move/from16 v0, v31

    int-to-float v3, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1200
    const/16 v3, 0x55

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1201
    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1203
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mSetSlotsLayout:[Landroid/widget/RelativeLayout;

    aget v4, v23, v13

    aput-object v16, v3, v4

    .line 1195
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 1274
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

    .line 1273
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1275
    :cond_2
    new-instance v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1276
    .local v30, "sublayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1279
    const/16 v38, 0x0

    .local v38, "z":I
    :goto_3
    move/from16 v0, v38

    if-lt v0, v8, :cond_3

    .line 1388
    move-object/from16 v0, v16

    move-object/from16 v1, v30

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1274
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1280
    :cond_3
    mul-int v3, v15, v8

    add-int v3, v3, v38

    mul-int/lit8 v4, v13, 0xf

    add-int v19, v3, v4

    .line 1282
    .local v19, "num":I
    new-instance v25, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1283
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

    .line 1285
    if-nez v19, :cond_4

    .line 1286
    const v3, 0x7f0201bb

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1290
    :goto_4
    new-instance v3, Lcom/findit/battle/InventoryActivity_Olleh$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/findit/battle/InventoryActivity_Olleh$9;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1310
    new-instance v3, Lcom/findit/battle/InventoryActivity_Olleh$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/findit/battle/InventoryActivity_Olleh$10;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1366
    new-instance v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1367
    .local v14, "imageview":Landroid/widget/ImageView;
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v14, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1378
    new-instance v32, Landroid/widget/TextView;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1380
    .restart local v32    # "textview":Landroid/widget/TextView;
    move/from16 v0, v31

    int-to-float v3, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1381
    const/16 v3, 0x55

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1382
    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1384
    move-object/from16 v0, v30

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1385
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mSlotsLayout:[Landroid/widget/RelativeLayout;

    aput-object v25, v3, v19

    .line 1279
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_3

    .line 1288
    .end local v14    # "imageview":Landroid/widget/ImageView;
    .end local v32    # "textview":Landroid/widget/TextView;
    :cond_4
    const v3, 0x7f0201b8

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 1193
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

    .line 2676
    const-string v3, ">> createLearnSkillDlg()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2677
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2678
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 2679
    .local v2, "window":Landroid/view/Window;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 2680
    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 2681
    const v3, 0x7f020193

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 2683
    const v3, 0x7f030003

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 2685
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09004b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mLearnSkillText:Ljava/lang/String;

    .line 2686
    const v3, 0x7f0b0008

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mLearnSkillTextView:Landroid/widget/TextView;

    .line 2687
    const v3, 0x7f0b0007

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mLearnSkillImageView:Landroid/widget/ImageView;

    .line 2690
    const v3, 0x7f0b0009

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2691
    .local v0, "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/InventoryActivity_Olleh$29;

    invoke-direct {v3, p0}, Lcom/findit/battle/InventoryActivity_Olleh$29;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2723
    const v3, 0x7f0b000a

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 2724
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/InventoryActivity_Olleh$30;

    invoke-direct {v3, p0}, Lcom/findit/battle/InventoryActivity_Olleh$30;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2732
    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mLearnSkillDlg:Landroid/app/Dialog;

    .line 2733
    return-void
.end method

.method private createLoadingView()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 3054
    const-string v4, ">> createLoadingView()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3055
    const v4, 0x7f0b000c

    invoke-virtual {p0, v4}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 3056
    .local v0, "layout":Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 3057
    const/16 v4, 0xae

    const/16 v5, 0xde

    const/16 v6, 0xe4

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 3059
    const/high16 v4, 0x41a00000    # 20.0f

    iget v5, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mHeightRate:F

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 3060
    .local v1, "margin":I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3061
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xb

    invoke-virtual {v2, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3062
    const/16 v4, 0xc

    invoke-virtual {v2, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3063
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3065
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3066
    .local v3, "textview":Landroid/widget/TextView;
    const v4, 0x7f090020

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 3067
    const-string v4, "#146E9D"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3068
    const/high16 v4, 0x42200000    # 40.0f

    iget v5, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mHeightRate:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 3070
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3073
    return-void
.end method

.method private createShopSlots(FF)V
    .locals 28
    .param p1, "widthrate"    # F
    .param p2, "heightrate"    # F

    .prologue
    .line 1416
    const-string v25, ">> createShopSlots()"

    invoke-static/range {v25 .. v25}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1417
    const/16 v22, 0x1

    .local v22, "windownum":I
    const/4 v4, 0x3

    .local v4, "colum":I
    const/4 v12, 0x2

    .line 1418
    .local v12, "row":I
    mul-int v23, v4, v12

    .line 1419
    .local v23, "windowslotsnum":I
    const/high16 v25, 0x43340000    # 180.0f

    mul-float v25, v25, p2

    move/from16 v0, v25

    float-to-int v13, v0

    .line 1421
    .local v13, "size":I
    const/high16 v25, 0x40000000    # 2.0f

    div-float v25, p1, v25

    div-float v25, p2, v25

    const v26, 0x3f99999a    # 1.2f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_0

    .line 1422
    const/high16 v25, 0x432a0000    # 170.0f

    mul-float v25, v25, p2

    move/from16 v0, v25

    float-to-int v13, v0

    .line 1425
    :cond_0
    const/16 v25, 0x6

    move/from16 v0, v25

    new-array v9, v0, [I

    fill-array-data v9, :array_0

    .line 1427
    .local v9, "menuslotimgid":[I
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v25, -0x2

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v11, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1428
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

    .line 1430
    .local v15, "slotparams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_Olleh;->mShopSlotsLayout:[Landroid/widget/RelativeLayout;

    .line 1431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopSlotsLayout:[Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const v25, 0x7f0b0046

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/RelativeLayout;

    aput-object v25, v26, v27

    .line 1432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopSlotsLayout:[Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    const v25, 0x7f0b003d

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/RelativeLayout;

    aput-object v25, v26, v27

    .line 1433
    const v25, 0x7f0b0047

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 1435
    .local v8, "layout":Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move/from16 v0, v22

    if-lt v5, v0, :cond_1

    .line 1513
    const v25, 0x7f0b0048

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1514
    .local v3, "button":Landroid/widget/Button;
    new-instance v25, Lcom/findit/battle/InventoryActivity_Olleh$15;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh$15;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;)V

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1527
    const/16 v22, 0x1

    .line 1528
    const/4 v4, 0x5

    .line 1529
    const/4 v12, 0x3

    .line 1530
    mul-int v23, v4, v12

    .line 1531
    const/high16 v25, 0x42e00000    # 112.0f

    mul-float v25, v25, p2

    move/from16 v0, v25

    float-to-int v13, v0

    .line 1532
    div-int/lit8 v20, v13, 0x8

    .line 1533
    .local v20, "textsize":I
    mul-int/lit8 v18, v13, 0x5

    .line 1535
    .local v18, "slotwindowwidth":I
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillSlotNum:I

    .line 1536
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillSlotWindowNum:I

    .line 1537
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillSlotWindowTotalNum:I

    .line 1539
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v15    # "slotparams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v15, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1540
    .restart local v15    # "slotparams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v16

    invoke-direct {v0, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1541
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

    .line 1542
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

    .line 1544
    const v25, 0x7f0b003f

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/HorizontalScrollView;

    .line 1545
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

    .line 1546
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_Olleh;->mShopItemSlotsScrollView:Landroid/widget/HorizontalScrollView;

    .line 1548
    const/16 v25, 0xf

    move/from16 v0, v25

    new-array v0, v0, [Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_Olleh;->mShopItemSlotsLayout:[Landroid/widget/RelativeLayout;

    .line 1549
    const v25, 0x7f0b0040

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8    # "layout":Landroid/widget/LinearLayout;
    check-cast v8, Landroid/widget/LinearLayout;

    .line 1551
    .restart local v8    # "layout":Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    :goto_1
    move/from16 v0, v22

    if-lt v5, v0, :cond_4

    .line 1599
    const v25, 0x7f0b0044

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "button":Landroid/widget/Button;
    check-cast v3, Landroid/widget/Button;

    .line 1600
    .restart local v3    # "button":Landroid/widget/Button;
    new-instance v25, Lcom/findit/battle/InventoryActivity_Olleh$17;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh$17;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;)V

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1628
    const v25, 0x7f0b0045

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "button":Landroid/widget/Button;
    check-cast v3, Landroid/widget/Button;

    .line 1629
    .restart local v3    # "button":Landroid/widget/Button;
    new-instance v25, Lcom/findit/battle/InventoryActivity_Olleh$18;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh$18;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;)V

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1644
    const v25, 0x7f0b003e

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "button":Landroid/widget/Button;
    check-cast v3, Landroid/widget/Button;

    .line 1645
    .restart local v3    # "button":Landroid/widget/Button;
    new-instance v25, Lcom/findit/battle/InventoryActivity_Olleh$19;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh$19;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;)V

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1653
    const v25, 0x7f0b0041

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "button":Landroid/widget/Button;
    check-cast v3, Landroid/widget/Button;

    .line 1654
    .restart local v3    # "button":Landroid/widget/Button;
    new-instance v25, Lcom/findit/battle/InventoryActivity_Olleh$20;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh$20;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;)V

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1661
    return-void

    .line 1436
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

    .line 1435
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1437
    :cond_2
    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1438
    .local v19, "sublayout":Landroid/widget/LinearLayout;
    const/16 v25, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1441
    const/16 v24, 0x0

    .local v24, "z":I
    :goto_3
    move/from16 v0, v24

    if-lt v0, v12, :cond_3

    .line 1509
    move-object/from16 v0, v19

    invoke-virtual {v8, v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1436
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1442
    :cond_3
    mul-int v25, v7, v12

    add-int v25, v25, v24

    mul-int/lit8 v26, v5, 0x6

    add-int v10, v25, v26

    .line 1444
    .local v10, "num":I
    new-instance v14, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1445
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

    .line 1447
    const v25, 0x7f0201b8

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1449
    new-instance v25, Lcom/findit/battle/InventoryActivity_Olleh$13;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh$13;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;)V

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1482
    new-instance v25, Lcom/findit/battle/InventoryActivity_Olleh$14;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh$14;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;)V

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1502
    new-instance v6, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1503
    .local v6, "imageview":Landroid/widget/ImageView;
    aget v25, v9, v10

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1504
    invoke-virtual {v14, v6, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1506
    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1441
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 1552
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

    .line 1551
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 1553
    :cond_5
    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1554
    .restart local v19    # "sublayout":Landroid/widget/LinearLayout;
    const/16 v25, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1557
    const/16 v24, 0x0

    .restart local v24    # "z":I
    :goto_5
    move/from16 v0, v24

    if-lt v0, v12, :cond_6

    .line 1595
    move-object/from16 v0, v19

    invoke-virtual {v8, v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1552
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1558
    :cond_6
    mul-int v25, v7, v12

    add-int v25, v25, v24

    mul-int/lit8 v26, v5, 0xf

    add-int v10, v25, v26

    .line 1560
    .restart local v10    # "num":I
    new-instance v14, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1561
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

    .line 1563
    if-nez v10, :cond_7

    .line 1564
    const v25, 0x7f0201bb

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1568
    :goto_6
    new-instance v25, Lcom/findit/battle/InventoryActivity_Olleh$16;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh$16;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;)V

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1581
    new-instance v6, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1582
    .restart local v6    # "imageview":Landroid/widget/ImageView;
    invoke-virtual {v14, v6, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1585
    new-instance v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1587
    .local v21, "textview":Landroid/widget/TextView;
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1588
    const/16 v25, 0x55

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1589
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1591
    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopItemSlotsLayout:[Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    aput-object v14, v25, v10

    .line 1557
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_5

    .line 1566
    .end local v6    # "imageview":Landroid/widget/ImageView;
    .end local v21    # "textview":Landroid/widget/TextView;
    :cond_7
    const v25, 0x7f0201b8

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_6

    .line 1425
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
    .line 1664
    const-string v24, ">> createSkillSlots()"

    invoke-static/range {v24 .. v24}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1665
    const/16 v21, 0x1

    .local v21, "windownum":I
    const/4 v4, 0x5

    .local v4, "colum":I
    const/4 v11, 0x3

    .line 1666
    .local v11, "row":I
    mul-int v22, v4, v11

    .line 1667
    .local v22, "windowslotsnum":I
    const/high16 v24, 0x42e00000    # 112.0f

    mul-float v24, v24, p2

    move/from16 v0, v24

    float-to-int v12, v0

    .line 1668
    .local v12, "size":I
    mul-int/lit8 v17, v12, 0x5

    .line 1669
    .local v17, "slotwindowwidth":I
    div-int/lit8 v19, v12, 0x8

    .line 1671
    .local v19, "textsize":I
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillSlotNum:I

    .line 1672
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillSlotWindowNum:I

    .line 1673
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillSlotWindowTotalNum:I

    .line 1675
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v10, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1676
    .local v10, "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v14, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1677
    .local v14, "slotparams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v15, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1678
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

    .line 1679
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

    .line 1681
    const v24, 0x7f0b004c

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/HorizontalScrollView;

    .line 1682
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

    .line 1683
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillSlotsScrollView:Landroid/widget/HorizontalScrollView;

    .line 1685
    const/16 v24, 0xf

    move/from16 v0, v24

    new-array v0, v0, [Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillSlotsLayout:[Landroid/widget/RelativeLayout;

    .line 1686
    const v24, 0x7f0b004d

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 1688
    .local v8, "layout":Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move/from16 v0, v21

    if-lt v5, v0, :cond_0

    .line 1745
    const v24, 0x7f0b004b

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1746
    .local v3, "button":Landroid/widget/Button;
    new-instance v24, Lcom/findit/battle/InventoryActivity_Olleh$22;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh$22;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;)V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1754
    const v24, 0x7f0b004e

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "button":Landroid/widget/Button;
    check-cast v3, Landroid/widget/Button;

    .line 1755
    .restart local v3    # "button":Landroid/widget/Button;
    new-instance v24, Lcom/findit/battle/InventoryActivity_Olleh$23;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh$23;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;)V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1763
    const v24, 0x7f0b0053

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "button":Landroid/widget/Button;
    check-cast v3, Landroid/widget/Button;

    .line 1764
    .restart local v3    # "button":Landroid/widget/Button;
    new-instance v24, Lcom/findit/battle/InventoryActivity_Olleh$24;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh$24;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;)V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1783
    const v24, 0x7f0b0052

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 1784
    .local v20, "textview":Landroid/widget/TextView;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mPoint:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1785
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillPointNumTextView:Landroid/widget/TextView;

    .line 1786
    return-void

    .line 1689
    .end local v3    # "button":Landroid/widget/Button;
    .end local v20    # "textview":Landroid/widget/TextView;
    :cond_0
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-lt v7, v4, :cond_1

    .line 1688
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1690
    :cond_1
    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1691
    .local v18, "sublayout":Landroid/widget/LinearLayout;
    const/16 v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1694
    const/16 v23, 0x0

    .local v23, "z":I
    :goto_2
    move/from16 v0, v23

    if-lt v0, v11, :cond_2

    .line 1741
    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1689
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1695
    :cond_2
    mul-int v24, v7, v11

    add-int v24, v24, v23

    mul-int/lit8 v25, v5, 0xf

    add-int v9, v24, v25

    .line 1697
    .local v9, "num":I
    new-instance v13, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1698
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

    .line 1700
    if-nez v9, :cond_3

    .line 1701
    const v24, 0x7f0201bb

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1705
    :goto_3
    new-instance v24, Lcom/findit/battle/InventoryActivity_Olleh$21;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh$21;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;)V

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1727
    new-instance v6, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1728
    .local v6, "imageview":Landroid/widget/ImageView;
    invoke-virtual {v13, v6, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1731
    new-instance v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1733
    .restart local v20    # "textview":Landroid/widget/TextView;
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1734
    const/16 v24, 0x55

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1735
    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1737
    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillSlotsLayout:[Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    aput-object v13, v24, v9

    .line 1694
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 1703
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

    .line 2443
    const-string v6, ">> cutImage()"

    invoke-static {v6}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2444
    const/4 v3, 0x0

    .line 2445
    .local v3, "path":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 2447
    .local v4, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.camera.action.CROP"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2448
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "image/*"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2450
    const-string v6, "aspectX"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2451
    const-string v6, "aspectY"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2452
    const-string v6, "scale"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2456
    :try_start_0
    sget-object v6, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/findit/battle/InventoryActivity_Olleh;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 2458
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

    .line 2459
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2460
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 2462
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 2464
    .local v5, "uri1":Landroid/net/Uri;
    const-string v6, "output"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2470
    .end local v1    # "file":Ljava/io/File;
    .end local v5    # "uri1":Landroid/net/Uri;
    :goto_0
    const/16 v6, 0x12c

    invoke-virtual {p0, v2, v6}, Lcom/findit/battle/InventoryActivity_Olleh;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2472
    return-object v3

    .line 2466
    :catch_0
    move-exception v0

    .line 2467
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

    .line 2375
    const-string v4, ">> drawImg()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2376
    const/high16 v4, 0x43b40000    # 360.0f

    mul-float/2addr v4, p4

    float-to-int v3, v4

    .line 2377
    .local v3, "imgwidth":I
    const/high16 v4, 0x43fa0000    # 500.0f

    mul-float/2addr v4, p5

    float-to-int v2, v4

    .line 2379
    .local v2, "imgheight":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2381
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 2382
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2385
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

    .line 2386
    invoke-virtual {p3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2389
    invoke-virtual {p1, v8, v8, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2390
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2393
    const/high16 v4, 0x43c60000    # 396.0f

    mul-float/2addr v4, p5

    float-to-int v4, v4

    invoke-virtual {p2, v8, v8, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2394
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2396
    return-object v0
.end method

.method private fillBuyListData()V
    .locals 12

    .prologue
    .line 2890
    const-string v8, ">> fillBuyListData()"

    invoke-static {v8}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2891
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2892
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/findit/battle/InventoryActivity_Olleh$BuyList;>;"
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 2895
    .local v6, "sbf":Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "http://14.63.220.39/app/member/itemPurchaseHistList?userId="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mUserId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->getStringFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2896
    .local v4, "line":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2897
    .local v3, "jsonObject":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONArray;

    const-string v8, "list"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2898
    .local v2, "jsonArray":Lorg/json/JSONArray;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 2899
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-lt v1, v8, :cond_0

    .line 2907
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "line":Ljava/lang/String;
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 2928
    new-instance v8, Lcom/findit/battle/InventoryActivity_Olleh$BuyList;

    const-string v9, ""

    const-string v10, "     \ub354 \ubcf4\uae30"

    const-string v11, ""

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/findit/battle/InventoryActivity_Olleh$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2934
    new-instance v0, Lcom/findit/battle/InventoryActivity_Olleh$BuyListAdapter;

    const v8, 0x7f030001

    invoke-direct {v0, p0, p0, v8, v5}, Lcom/findit/battle/InventoryActivity_Olleh$BuyListAdapter;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;Landroid/content/Context;ILjava/util/List;)V

    .line 2935
    .local v0, "adapter":Lcom/findit/battle/InventoryActivity_Olleh$BuyListAdapter;
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mBuyListView:Landroid/widget/ListView;

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2936
    return-void

    .line 2900
    .end local v0    # "adapter":Lcom/findit/battle/InventoryActivity_Olleh$BuyListAdapter;
    .restart local v1    # "i":I
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 2901
    .local v7, "subjsonobject":Lorg/json/JSONObject;
    new-instance v8, Lcom/findit/battle/InventoryActivity_Olleh$BuyList;

    const-string v9, "regDate"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "itemName"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "quantity"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/findit/battle/InventoryActivity_Olleh$BuyList;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2899
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2904
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

    .line 2409
    const-string v0, ">> getImagePath()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2410
    const/4 v8, 0x0

    .line 2411
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

    .line 2412
    invoke-virtual/range {v0 .. v5}, Lcom/findit/battle/InventoryActivity_Olleh;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2414
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2415
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 2417
    .local v7, "index":I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2418
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2420
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2423
    .end local v7    # "index":I
    :cond_1
    return-object v8
.end method

.method public static getInputStreamFromUrl(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 2963
    const-string v4, ">> getInputStreamFromUrl()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2964
    const-string v4, "\ub7ad\ud0b9\ud398\uc774\uc9c0 \uc774\ub3d92"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 2966
    const/4 v0, 0x0

    .line 2969
    .local v0, "contentStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 2970
    .local v2, "httpClient":Lorg/apache/http/client/HttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 2971
    .local v3, "response":Lorg/apache/http/HttpResponse;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 2972
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 2973
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2978
    .end local v2    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v0

    .line 2974
    :catch_0
    move-exception v1

    .line 2976
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getLastImagePath()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 2427
    const-string v0, ">> getLastImagePath()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2428
    const/4 v7, 0x0

    .line 2429
    .local v7, "path":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v8

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 2430
    .local v2, "projection":[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/findit/battle/InventoryActivity_Olleh;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2432
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2433
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2434
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2436
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2439
    :cond_1
    return-object v7
.end method

.method private intiatieInAppPurchases()V
    .locals 1

    .prologue
    .line 3319
    const-string v0, ">> intiatieInAppPurchases()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3321
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mInAPInformationListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->init(Lcom/kt/olleh/inapp/OnInAppListener;)V

    .line 3322
    return-void
.end method

.method private isActionMove(IIII)Z
    .locals 5
    .param p1, "touchx"    # I
    .param p2, "touchy"    # I
    .param p3, "standardx"    # I
    .param p4, "standardy"    # I

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    .line 2322
    const-string v3, ">> isActionMove()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2323
    add-int/2addr p1, p3

    .line 2324
    add-int/2addr p2, p4

    .line 2326
    iget v3, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mFirstTouchX:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget v3, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mFirstTouchY:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 2327
    iget v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mMoveStandard:F

    .line 2328
    .local v2, "standard":F
    iget v3, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mFirstTouchX:F

    int-to-float v4, p1

    sub-float v0, v3, v4

    .line 2329
    .local v0, "distancex":F
    iget v3, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mFirstTouchY:F

    int-to-float v4, p2

    sub-float v1, v3, v4

    .line 2330
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

    .line 2332
    const/4 v3, 0x0

    .line 2336
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

    .line 613
    const-string v0, ">> loadImages()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 614
    const v0, 0x7f0b000c

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f02012b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 615
    const v0, 0x7f0b000d

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201d9

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 617
    const v0, 0x7f0b000f

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201c4

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 618
    const v0, 0x7f0b0010

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f02019d

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 620
    const v0, 0x7f0b0013

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201c6

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 621
    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f02019f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 623
    const v0, 0x7f0b0017

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201c5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 624
    const v0, 0x7f0b0018

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f02019e

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 626
    const v0, 0x7f0b001b

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201c7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 627
    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201a0

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 629
    new-array v0, v11, [Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    .line 630
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201ce

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    aput-object v4, v0, v10

    .line 631
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201cf

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    aput-object v4, v0, v9

    .line 633
    new-array v0, v11, [Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    .line 634
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201d4

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    aput-object v4, v0, v10

    .line 635
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201d5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    aput-object v4, v0, v9

    .line 637
    new-array v0, v11, [Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    .line 638
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201d6

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    aput-object v4, v0, v10

    .line 639
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201d7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    aput-object v4, v0, v9

    .line 641
    const v0, 0x7f0b0023

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v4, v4, v10

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 642
    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v4, v4, v9

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 643
    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v4, v4, v9

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 647
    const v0, 0x7f0b002e

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 648
    const v0, 0x7f0b002f

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201ba

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 649
    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 650
    const v0, 0x7f0b0033

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 652
    const v0, 0x7f0b003c

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 653
    const v0, 0x7f0b003e

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201ba

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 654
    const v0, 0x7f0b0041

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 655
    const v0, 0x7f0b0042

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 660
    const v0, 0x7f0b004a

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 661
    const v0, 0x7f0b004b

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201ba

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 662
    const v0, 0x7f0b004e

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 663
    const v0, 0x7f0b004f

    invoke-virtual {p0, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 667
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mBodyImgPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 668
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v4, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mBodyImgId:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 673
    .local v1, "bodyimg":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mBodyImgPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 674
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v4, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mActionImgId:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 679
    .local v2, "poseimg":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mBodyImgPath:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 680
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v4, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mFaceImgId:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 684
    .local v3, "faceimg":Landroid/graphics/drawable/Drawable;
    :goto_2
    iget v4, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mWidthRate:F

    iget v5, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mHeightRate:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/findit/battle/InventoryActivity_Olleh;->drawImg(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 685
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mCharacterImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v6}, Lcom/findit/battle/InventoryActivity_Olleh;->compressBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 686
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 687
    return-void

    .line 670
    .end local v1    # "bodyimg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "poseimg":Landroid/graphics/drawable/Drawable;
    .end local v3    # "faceimg":Landroid/graphics/drawable/Drawable;
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mBodyImgPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1    # "bodyimg":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 676
    :cond_1
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mActionImgPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2    # "poseimg":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 682
    :cond_2
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mFaceImgPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .restart local v3    # "faceimg":Landroid/graphics/drawable/Drawable;
    goto :goto_2
.end method

.method private purchase()V
    .locals 6

    .prologue
    .line 3596
    const-string v0, ">> purchase()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3600
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSamsungIapHelper:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-virtual {v0, p0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->isValidIapPackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3604
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSamsungIapHelper:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-virtual {v0, p0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->showProgressDialog(Landroid/content/Context;)V

    .line 3610
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSamsungIapHelper:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-virtual {v0, p0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->startAccountActivity(Landroid/app/Activity;)V

    .line 3630
    :goto_0
    return-void

    .line 3621
    :cond_0
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSamsungIapHelper:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    .line 3623
    const v1, 0x7f09007b

    invoke-virtual {p0, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3624
    const v1, 0x7f09008b

    invoke-virtual {p0, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3625
    const/4 v4, 0x1

    .line 3626
    const/4 v5, 0x0

    move-object v1, p0

    .line 3621
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->showIapDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method private purchaseItem(Lcom/findit/battle/Items$Item;)V
    .locals 5
    .param p1, "item"    # Lcom/findit/battle/Items$Item;

    .prologue
    .line 3325
    const-string v4, ">> purchaseItem()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3326
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mPurchaseItemMap:Ljava/util/HashMap;

    .line 3327
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/findit/battle/Items$Item;>;"
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mPurchaseItemKey:[Ljava/lang/String;

    .line 3329
    .local v1, "keys":[Ljava/lang/String;
    array-length v3, v1

    .line 3330
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 3339
    :goto_1
    return-void

    .line 3331
    :cond_0
    aget-object v4, v1, v0

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/findit/battle/Items$Item;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3333
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->purchase()V

    .line 3334
    aget-object v4, v1, v0

    iput-object v4, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mPurchaseId:Ljava/lang/String;

    goto :goto_1

    .line 3330
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private recycleImages()V
    .locals 9

    .prologue
    .line 690
    const-string v8, ">> recycleImages()"

    invoke-static {v8}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 691
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v5, v8

    .line 692
    .local v5, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v5, :cond_0

    .line 700
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v5, v8

    .line 701
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v5, :cond_2

    .line 709
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v5, v8

    .line 710
    const/4 v2, 0x0

    :goto_2
    if-lt v2, v5, :cond_4

    .line 718
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mCharacterImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->recycleView(Landroid/view/View;)V

    .line 720
    const v8, 0x7f0b000c

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 721
    .local v4, "layout":Landroid/widget/RelativeLayout;
    invoke-direct {p0, v4}, Lcom/findit/battle/InventoryActivity_Olleh;->recycleView(Landroid/view/View;)V

    .line 723
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v5

    .line 724
    const/4 v2, 0x0

    :goto_3
    if-lt v2, v5, :cond_6

    .line 766
    return-void

    .line 693
    .end local v4    # "layout":Landroid/widget/RelativeLayout;
    :cond_0
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 694
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 695
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 692
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 702
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 703
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 704
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 701
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 711
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 712
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 713
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 710
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 726
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "layout":Landroid/widget/RelativeLayout;
    :cond_6
    :try_start_0
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 727
    .local v6, "sublayout":Landroid/widget/RelativeLayout;
    invoke-direct {p0, v6}, Lcom/findit/battle/InventoryActivity_Olleh;->recycleView(Landroid/view/View;)V

    .line 729
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v7

    .line 730
    .local v7, "sublength":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_4
    if-lt v3, v7, :cond_7

    .line 724
    .end local v3    # "j":I
    .end local v6    # "sublayout":Landroid/widget/RelativeLayout;
    .end local v7    # "sublength":I
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 731
    .restart local v3    # "j":I
    .restart local v6    # "sublayout":Landroid/widget/RelativeLayout;
    .restart local v7    # "sublength":I
    :cond_7
    invoke-virtual {v6, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->recycleView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 734
    .end local v3    # "j":I
    .end local v6    # "sublayout":Landroid/widget/RelativeLayout;
    .end local v7    # "sublength":I
    :catch_0
    move-exception v1

    .line 735
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->recycleView(Landroid/view/View;)V

    goto :goto_5
.end method

.method private recycleView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 769
    const-string v2, ">> recycleView()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 770
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 771
    .local v1, "tag":Ljava/lang/Object;
    if-eqz v1, :cond_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "not"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 772
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 773
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 775
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 776
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 777
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    :cond_1
    :goto_0
    return-void

    .line 779
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private saveStatusToDB()V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mDbhelper:Lcom/findit/battle/DBAdapter;

    if-eqz v0, :cond_0

    .line 493
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->saveState(J)V

    .line 495
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mDbhelper:Lcom/findit/battle/DBAdapter;

    invoke-virtual {v0}, Lcom/findit/battle/DBAdapter;->close()V

    .line 496
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mDbhelper:Lcom/findit/battle/DBAdapter;

    .line 499
    :cond_0
    return-void
.end method

.method private selectShopItemSlot(Landroid/widget/RelativeLayout;I)V
    .locals 2
    .param p1, "layout"    # Landroid/widget/RelativeLayout;
    .param p2, "slotnum"    # I

    .prologue
    .line 2155
    const-string v0, ">> selectShopItemSlot()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2156
    iget v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopItemSlotNum:I

    if-eq v0, p2, :cond_0

    .line 2158
    const v0, 0x7f0201bb

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 2161
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopItemSlotsLayout:[Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopItemSlotNum:I

    aget-object v0, v0, v1

    const v1, 0x7f0201b8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 2162
    iput p2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopItemSlotNum:I

    .line 2166
    :cond_0
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->setShopItemText()V

    .line 2167
    return-void
.end method

.method private sendBuyItem(Lcom/findit/battle/Items$Item;)V
    .locals 7
    .param p1, "item"    # Lcom/findit/battle/Items$Item;

    .prologue
    .line 2760
    const-string v1, ">> sendBuyItem()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2761
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 2763
    .local v0, "connectnetwork":Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2764
    const-string v1, "http://14.63.220.39/"

    const-string v2, "app/member/buyItemAndSpendCoin.json"

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setServerUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 2765
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->clearParameter()V

    .line 2766
    const-string v1, "userId"

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    const-string v1, "itemNo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/findit/battle/Items$Item;->mTypeNo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    const-string v1, "coin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/findit/battle/Items$Item;->mPrice:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2770
    iget v6, p1, Lcom/findit/battle/Items$Item;->mNum:I

    .line 2771
    .local v6, "num":I
    const/16 v1, 0x63

    if-le v6, v1, :cond_0

    .line 2772
    const/16 v6, 0x63

    .line 2774
    :cond_0
    const-string v1, "quantity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mCommonDialog:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v1}, Lcom/findit/battle/CommonDialog;->showProgressDlg()V

    .line 2777
    const-string v1, "utf-8"

    const-string v2, "GET"

    const/4 v3, 0x2

    .line 2778
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

    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mBuyResultHandler:Landroid/os/Handler;

    .line 2777
    invoke-virtual/range {v0 .. v5}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->startParsingData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V

    .line 2780
    .end local v6    # "num":I
    :cond_1
    return-void
.end method

.method private sendLearnSkill(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 2783
    const-string v1, ">> sendLearnSkill()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2784
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v1, v1, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v6, v1, p1

    .line 2785
    .local v6, "skill":Lcom/findit/battle/Objects$Skills$Skill;
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 2787
    .local v0, "connectnetwork":Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2788
    const-string v1, "http://14.63.220.39/"

    const-string v2, "app/member/buySkillAndSpendPoint.json"

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setServerUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 2789
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->clearParameter()V

    .line 2790
    const-string v1, "userId"

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    const-string v1, "skillId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v6, Lcom/findit/battle/Objects$Skills$Skill;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    const-string v1, "point"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v6, Lcom/findit/battle/Objects$Skills$Skill;->mPoint:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    const-string v1, "quantity"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2795
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mCommonDialog:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v1}, Lcom/findit/battle/CommonDialog;->showProgressDlg()V

    .line 2796
    const-string v1, "utf-8"

    const-string v2, "GET"

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mLearnResultHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->startParsingData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V

    .line 2798
    :cond_0
    return-void
.end method

.method private setAttackText()V
    .locals 5

    .prologue
    .line 1109
    const-string v2, ">> setAttackText()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1110
    const/4 v1, 0x0

    .line 1112
    .local v1, "power":I
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/findit/battle/Items;->getSetIndex(I)I

    move-result v0

    .line 1113
    .local v0, "index":I
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 1114
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    iget-object v2, v2, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, v0

    iget v1, v2, Lcom/findit/battle/Items$Item;->mPower:I

    .line 1116
    :cond_0
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mAttackTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mAttack:I

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

    .line 1117
    return-void
.end method

.method private setBuyItem(IIZ)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "subtype"    # I
    .param p3, "price"    # Z

    .prologue
    .line 2849
    const-string v3, ">> setBuyItem()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2850
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    iget-object v3, v3, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v3, p2

    .line 2851
    .local v2, "item":Lcom/findit/battle/Items$Item;
    iget-object v1, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    .line 2852
    .local v1, "imgpath":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2853
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 2854
    .local v0, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 2855
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mBuyItemImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2860
    .end local v0    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mBuyItemTextView:Landroid/widget/TextView;

    if-eqz p3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/findit/battle/Items$Item;->mPrice:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mBuyItemText:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2861
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mBuyItemImageView:Landroid/widget/ImageView;

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

    .line 2862
    return-void

    .line 2858
    :cond_0
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mBuyItemImageView:Landroid/widget/ImageView;

    iget-object v4, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2860
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/findit/battle/Items$Item;->mMoney:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mBuyItemText1:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private setDefenseText()V
    .locals 5

    .prologue
    .line 1120
    const-string v2, ">> setDefenseText()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1121
    const/4 v1, 0x0

    .line 1123
    .local v1, "power":I
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/findit/battle/Items;->getSetIndex(I)I

    move-result v0

    .line 1124
    .local v0, "index":I
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 1125
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    iget-object v2, v2, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, v0

    iget v1, v2, Lcom/findit/battle/Items$Item;->mPower:I

    .line 1127
    :cond_0
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mDefenseTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mDefense:I

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

    .line 1128
    return-void
.end method

.method private setDeleteItem(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 2835
    const-string v2, ">> setDeleteItem()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2836
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    iget-object v2, v2, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, p1

    iget-object v1, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    .line 2837
    .local v1, "imgpath":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2838
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    iget-object v3, v3, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 2839
    .local v0, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 2840
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mDeleteItemImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2845
    .end local v0    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mDeleteItemImageView:Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2846
    return-void

    .line 2843
    :cond_0
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mDeleteItemImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

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
    .line 2340
    const-string v0, ">> setFirstTouch()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2341
    add-int v0, p1, p3

    int-to-float v0, v0

    iput v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mFirstTouchX:F

    .line 2342
    add-int v0, p2, p4

    int-to-float v0, v0

    iput v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mFirstTouchY:F

    .line 2343
    return-void
.end method

.method private setItemSetSlot(II)I
    .locals 10
    .param p1, "type"    # I
    .param p2, "itemindex"    # I

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 1923
    const-string v6, ">> setSkillSlotWindowLocation()"

    invoke-static {v6}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1924
    const/4 v3, -0x1

    .line 1926
    .local v3, "slotnum":I
    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSetSlotsLayout:[Landroid/widget/RelativeLayout;

    aget-object v4, v6, p1

    .line 1927
    .local v4, "slotslayout":Landroid/widget/RelativeLayout;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1928
    .local v0, "imageview":Landroid/widget/ImageView;
    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1929
    .local v5, "textview":Landroid/widget/TextView;
    if-gez p2, :cond_1

    .line 1932
    invoke-direct {p0, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->recycleView(Landroid/view/View;)V

    .line 1933
    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1955
    :goto_0
    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    invoke-virtual {v6, p1, p2}, Lcom/findit/battle/Items;->setSetTable(II)V

    .line 1958
    if-nez p1, :cond_5

    .line 1959
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->setAttackText()V

    .line 1963
    :cond_0
    :goto_1
    return v3

    .line 1936
    :cond_1
    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    iget-object v6, v6, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v6, p2

    .line 1939
    .local v2, "item":Lcom/findit/battle/Items$Item;
    iget-object v6, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 1940
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v2, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 1941
    .local v1, "img":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, v9}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1942
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1947
    .end local v1    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_2
    iget v6, v2, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    iget v6, v2, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    .line 1948
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v2, Lcom/findit/battle/Items$Item;->mNum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1950
    :cond_3
    iput-boolean v8, v2, Lcom/findit/battle/Items$Item;->mSet:Z

    .line 1951
    iget v3, v2, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 1952
    iput v9, v2, Lcom/findit/battle/Items$Item;->mSlotnum:I

    goto :goto_0

    .line 1945
    :cond_4
    iget-object v6, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    invoke-static {v6}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1960
    .end local v2    # "item":Lcom/findit/battle/Items$Item;
    :cond_5
    if-ne p1, v8, :cond_0

    .line 1961
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->setDefenseText()V

    goto :goto_1
.end method

.method private setItemSetSlot(ILcom/findit/battle/Items$Item;)I
    .locals 8
    .param p1, "type"    # I
    .param p2, "item"    # Lcom/findit/battle/Items$Item;

    .prologue
    const/4 v7, 0x1

    .line 1967
    const-string v5, ">> setItemSetSlot()"

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1968
    const/4 v2, -0x1

    .line 1970
    .local v2, "slotnum":I
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSetSlotsLayout:[Landroid/widget/RelativeLayout;

    aget-object v3, v5, p1

    .line 1971
    .local v3, "slotslayout":Landroid/widget/RelativeLayout;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1972
    .local v0, "imageview":Landroid/widget/ImageView;
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1975
    .local v4, "textview":Landroid/widget/TextView;
    iget-object v5, p2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 1976
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p2, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 1977
    .local v1, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1978
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1983
    .end local v1    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    const/4 v5, 0x2

    if-eq p1, v5, :cond_0

    const/4 v5, 0x3

    if-ne p1, v5, :cond_1

    .line 1984
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p2, Lcom/findit/battle/Items$Item;->mNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1987
    :cond_1
    iget v2, p2, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 1991
    if-nez p1, :cond_4

    .line 1992
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->setAttackText()V

    .line 1996
    :cond_2
    :goto_1
    return v2

    .line 1981
    :cond_3
    iget-object v5, p2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1993
    :cond_4
    if-ne p1, v7, :cond_2

    .line 1994
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->setDefenseText()V

    goto :goto_1
.end method

.method private setItemSlot(II)V
    .locals 8
    .param p1, "slotnum"    # I
    .param p2, "itemindex"    # I

    .prologue
    const/4 v7, 0x0

    .line 1868
    const-string v5, ">> setItemSlot()"

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1869
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSlotsLayout:[Landroid/widget/RelativeLayout;

    aget-object v3, v5, p1

    .line 1871
    .local v3, "slotslayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1872
    .local v0, "imageview":Landroid/widget/ImageView;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1873
    .local v4, "textview":Landroid/widget/TextView;
    if-gez p2, :cond_0

    .line 1876
    invoke-direct {p0, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->recycleView(Landroid/view/View;)V

    .line 1877
    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1897
    :goto_0
    return-void

    .line 1880
    :cond_0
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    iget-object v5, v5, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v5, p2

    .line 1883
    .local v2, "item":Lcom/findit/battle/Items$Item;
    iget-object v5, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 1884
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v2, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 1885
    .local v1, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1886
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1891
    .end local v1    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    iget v5, v2, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    iget v5, v2, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 1892
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v2, Lcom/findit/battle/Items$Item;->mNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1894
    :cond_2
    iput p1, v2, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 1895
    iput-boolean v7, v2, Lcom/findit/battle/Items$Item;->mSet:Z

    goto :goto_0

    .line 1889
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
    .line 1900
    const-string v4, ">> setItemSlot()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1901
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSlotsLayout:[Landroid/widget/RelativeLayout;

    aget-object v2, v4, p1

    .line 1903
    .local v2, "slotslayout":Landroid/widget/RelativeLayout;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1904
    .local v0, "imageview":Landroid/widget/ImageView;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1907
    .local v3, "textview":Landroid/widget/TextView;
    iget-object v4, p2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 1908
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p2, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 1909
    .local v1, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1910
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1915
    .end local v1    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    iget v4, p2, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget v4, p2, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 1916
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p2, Lcom/findit/battle/Items$Item;->mNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1920
    :cond_1
    return-void

    .line 1913
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

    .line 2000
    const-string v8, ">> setItemSlot()"

    invoke-static {v8}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2001
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSlotsLayout:[Landroid/widget/RelativeLayout;

    .line 2003
    .local v4, "slotslayout":[Landroid/widget/RelativeLayout;
    array-length v3, v4

    .line 2004
    .local v3, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    move v6, v7

    .line 2026
    :goto_1
    return v6

    .line 2005
    :cond_0
    aget-object v8, v4, v0

    invoke-virtual {v8, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2006
    .local v1, "imageview":Landroid/widget/ImageView;
    aget-object v8, v4, v0

    invoke-virtual {v8, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2007
    .local v5, "textview":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v8, :cond_4

    .line 2009
    iget-object v8, p1, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    if-nez v8, :cond_3

    .line 2010
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p1, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 2011
    .local v2, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v8, -0x1

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 2012
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2017
    .end local v2    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_2
    iget v8, p1, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    iget v8, p1, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    .line 2018
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p1, Lcom/findit/battle/Items$Item;->mNum:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2020
    :cond_2
    iput v0, p1, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 2021
    iput-boolean v7, p1, Lcom/findit/battle/Items$Item;->mSet:Z

    goto :goto_1

    .line 2015
    :cond_3
    iget-object v8, p1, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    invoke-static {v8}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 2004
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setItemSlotWindowLocation(I)V
    .locals 4
    .param p1, "num"    # I

    .prologue
    .line 1131
    const-string v0, ">> setItemSlotWindowLocation()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1132
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSlotWindowTotalNum:I

    if-ge p1, v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSlotsScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/findit/battle/InventoryActivity_Olleh$ActionRunnable;

    iget v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSlotWindowWidth:I

    mul-int/2addr v2, p1

    invoke-direct {v1, p0, v2}, Lcom/findit/battle/InventoryActivity_Olleh$ActionRunnable;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;I)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1134
    iput p1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSlotWindowNum:I

    .line 1136
    :cond_0
    return-void
.end method

.method private setItemTab()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1059
    const-string v0, ">> setItemTab()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1063
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItemTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1064
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1065
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1067
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1068
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1069
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1071
    iput v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mTabNum:I

    .line 1072
    return-void
.end method

.method private setItemText()V
    .locals 5

    .prologue
    .line 2109
    const-string v3, ">> setItemText()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2110
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mExplainTextView:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2112
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    .line 2113
    .local v1, "items":Lcom/findit/battle/Items;
    iget v3, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSlotNum:I

    invoke-virtual {v1, v3}, Lcom/findit/battle/Items;->getIndex(I)I

    move-result v0

    .line 2114
    .local v0, "index":I
    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    iget-object v3, v1, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 2115
    iget-object v3, v1, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 2116
    iget-object v3, v1, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v3, v3, v0

    iget-object v2, v3, Lcom/findit/battle/Items$Item;->mText:Ljava/lang/String;

    .line 2117
    .local v2, "text":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2118
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mExplainTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2121
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setLearnSkill(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 2865
    const-string v2, ">> setLearnSkill()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2866
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v2, v2, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v2, v2, p1

    iget-object v1, v2, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgPath:Ljava/lang/String;

    .line 2867
    .local v1, "imgpath":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2868
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v3, v3, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 2869
    .local v0, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 2870
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mLearnSkillImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2875
    .end local v0    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mLearnSkillTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v4, v4, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/findit/battle/Objects$Skills$Skill;->mPoint:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mLearnSkillText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2876
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mLearnSkillImageView:Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2877
    return-void

    .line 2873
    :cond_0
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mLearnSkillImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkills:Lcom/findit/battle/Objects$Skills;

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
    .line 2195
    const-string v1, ">> setMoveItemImage()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2196
    if-gez p1, :cond_0

    .line 2198
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    invoke-virtual {v1}, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->clearImage()V

    .line 2199
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    const/4 v2, -0x1

    iput v2, v1, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->mIndex:I

    .line 2213
    :goto_0
    return-void

    .line 2204
    :cond_0
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    iget-object v1, v1, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v1, p1

    iget-object v0, v1, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    .line 2205
    .local v0, "imgpath":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2206
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    iget-object v2, v2, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v1, v2}, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->setImage(I)V

    .line 2210
    :goto_1
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    iput p1, v1, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->mIndex:I

    goto :goto_0

    .line 2208
    :cond_1
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    iget-object v2, v2, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->setImage(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setSetSlotImageAlpha(IZ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "alpha"    # Z

    .prologue
    .line 2181
    const-string v2, ">> setSetSlotImageAlpha()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2182
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    iget-object v2, v2, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, p1

    iget v1, v2, Lcom/findit/battle/Items$Item;->mType:I

    .line 2183
    .local v1, "type":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSetSlotsLayout:[Landroid/widget/RelativeLayout;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 2184
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSetSlotsLayout:[Landroid/widget/RelativeLayout;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2186
    .local v0, "imageview":Landroid/widget/ImageView;
    if-eqz p2, :cond_1

    .line 2187
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mCoverImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2192
    .end local v0    # "imageview":Landroid/widget/ImageView;
    :cond_0
    :goto_0
    return-void

    .line 2189
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
    .line 1147
    const-string v0, ">> setShopItemSlotWindowLocation()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1148
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopItemSlotWindowTotalNum:I

    if-ge p1, v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopItemSlotsScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/findit/battle/InventoryActivity_Olleh$ActionRunnable;

    iget v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopItemSlotWindowWidth:I

    mul-int/2addr v2, p1

    invoke-direct {v1, p0, v2}, Lcom/findit/battle/InventoryActivity_Olleh$ActionRunnable;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;I)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1150
    iput p1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopItemSlotWindowNum:I

    .line 1152
    :cond_0
    return-void
.end method

.method private setShopItemText()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 2124
    const-string v4, ">> setShopItemText()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2125
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopExplainTextView:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2127
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    .line 2128
    .local v0, "items":Lcom/findit/battle/Items;
    iget v3, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopItemTypeSlotNum:I

    .line 2129
    .local v3, "type":I
    iget v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopItemSlotNum:I

    .line 2130
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

    .line 2131
    iget-object v4, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v4, v4, v1

    if-eqz v4, :cond_0

    .line 2132
    iget-object v4, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v4, v4, v1

    iget-object v2, v4, Lcom/findit/battle/Items$Item;->mText:Ljava/lang/String;

    .line 2133
    .local v2, "text":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2134
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopExplainTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2137
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setShopSlot(II)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "subtype"    # I

    .prologue
    .line 2054
    const-string v5, ">> setShopSlot()"

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2055
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopItemSlotsLayout:[Landroid/widget/RelativeLayout;

    aget-object v3, v5, p2

    .line 2056
    .local v3, "slotslayout":Landroid/widget/RelativeLayout;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2057
    .local v0, "imageview":Landroid/widget/ImageView;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2059
    .local v4, "textview":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    iget-object v5, v5, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v5, p2

    .line 2062
    .local v2, "item":Lcom/findit/battle/Items$Item;
    iget-object v5, v2, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 2063
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v2, Lcom/findit/battle/Items$Item;->mIconImgId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 2064
    .local v1, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 2065
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2070
    .end local v1    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    iget v5, v2, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    iget v5, v2, Lcom/findit/battle/Items$Item;->mType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 2071
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v2, Lcom/findit/battle/Items$Item;->mNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2076
    :cond_1
    return-void

    .line 2068
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

    .line 1075
    const-string v0, ">> setShopTab()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1079
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItemTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1080
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1081
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1083
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1084
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1085
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1087
    iput v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mTabNum:I

    .line 1088
    return-void
.end method

.method private setSkillSlot(I)V
    .locals 8
    .param p1, "index"    # I

    .prologue
    const/4 v7, -0x1

    .line 2030
    const-string v5, ">> setSkillSlot()"

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2031
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillSlotsLayout:[Landroid/widget/RelativeLayout;

    aget-object v3, v5, p1

    .line 2032
    .local v3, "slotslayout":Landroid/widget/RelativeLayout;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2033
    .local v0, "imageview":Landroid/widget/ImageView;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2035
    .local v4, "textview":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v5, v5, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v2, v5, p1

    .line 2036
    .local v2, "skill":Lcom/findit/battle/Objects$Skills$Skill;
    iget v5, v2, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgId:I

    if-eq v5, v7, :cond_0

    .line 2038
    iget-object v5, v2, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgPath:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 2039
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v2, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 2040
    .local v1, "img":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 2041
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2046
    .end local v1    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    iget-boolean v5, v2, Lcom/findit/battle/Objects$Skills$Skill;->mBuy:Z

    if-eqz v5, :cond_2

    .line 2047
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v2, Lcom/findit/battle/Objects$Skills$Skill;->mUpgrade:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2051
    :cond_0
    :goto_1
    return-void

    .line 2044
    :cond_1
    iget-object v5, v2, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2049
    :cond_2
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mCoverImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private setSkillSlotWindowLocation(I)V
    .locals 4
    .param p1, "num"    # I

    .prologue
    .line 1139
    const-string v0, ">> setSkillSlotWindowLocation()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1140
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillSlotWindowTotalNum:I

    if-ge p1, v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillSlotsScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/findit/battle/InventoryActivity_Olleh$ActionRunnable;

    iget v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillSlotWindowWidth:I

    mul-int/2addr v2, p1

    invoke-direct {v1, p0, v2}, Lcom/findit/battle/InventoryActivity_Olleh$ActionRunnable;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;I)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1142
    iput p1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillSlotWindowNum:I

    .line 1144
    :cond_0
    return-void
.end method

.method private setSkillTab()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1091
    const-string v0, ">> setSkillTab()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1095
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItemTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItemTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1096
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1097
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillTabButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillTabImg:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1099
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1100
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1101
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1103
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillPointNumTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mPoint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1105
    const/4 v0, 0x2

    iput v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mTabNum:I

    .line 1106
    return-void
.end method

.method private setSkillText()V
    .locals 5

    .prologue
    .line 2140
    const-string v3, ">> setSkillText()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2141
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillExplainTextView:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2143
    iget v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillSlotNum:I

    .line 2144
    .local v0, "index":I
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkills:Lcom/findit/battle/Objects$Skills;

    .line 2145
    .local v1, "skills":Lcom/findit/battle/Objects$Skills;
    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    iget v3, v1, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    if-ge v0, v3, :cond_0

    .line 2146
    iget-object v3, v1, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 2147
    iget-object v3, v1, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v3, v3, v0

    iget-object v2, v3, Lcom/findit/battle/Objects$Skills$Skill;->mText:Ljava/lang/String;

    .line 2148
    .local v2, "text":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2149
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillExplainTextView:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/findit/battle/Objects$Skills$Skill;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2152
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setSlotImageAlpha(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "alpha"    # Z

    .prologue
    .line 2170
    const-string v1, ">> setSlotImageAlpha()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2171
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSlotsLayout:[Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    iget-object v2, v2, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/findit/battle/Items$Item;->mSlotnum:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2173
    .local v0, "imageview":Landroid/widget/ImageView;
    if-eqz p2, :cond_0

    .line 2174
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mCoverImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2178
    :goto_0
    return-void

    .line 2176
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setTab()V
    .locals 2

    .prologue
    .line 1025
    const-string v1, ">> setTab()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1026
    const v1, 0x7f0b0027

    invoke-virtual {p0, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItemLayout:Landroid/widget/RelativeLayout;

    .line 1027
    const v1, 0x7f0b0035

    invoke-virtual {p0, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopLayout:Landroid/widget/RelativeLayout;

    .line 1028
    const v1, 0x7f0b0049

    invoke-virtual {p0, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillLayout:Landroid/widget/RelativeLayout;

    .line 1030
    const v1, 0x7f0b0023

    invoke-virtual {p0, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1031
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Lcom/findit/battle/InventoryActivity_Olleh$5;

    invoke-direct {v1, p0}, Lcom/findit/battle/InventoryActivity_Olleh$5;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1037
    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItemTabButton:Landroid/widget/Button;

    .line 1039
    const v1, 0x7f0b0024

    invoke-virtual {p0, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 1040
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v1, Lcom/findit/battle/InventoryActivity_Olleh$6;

    invoke-direct {v1, p0}, Lcom/findit/battle/InventoryActivity_Olleh$6;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1046
    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopTabButton:Landroid/widget/Button;

    .line 1048
    const v1, 0x7f0b0025

    invoke-virtual {p0, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 1049
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v1, Lcom/findit/battle/InventoryActivity_Olleh$7;

    invoke-direct {v1, p0}, Lcom/findit/battle/InventoryActivity_Olleh$7;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1055
    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillTabButton:Landroid/widget/Button;

    .line 1056
    return-void
.end method


# virtual methods
.method public bindIapService()V
    .locals 2

    .prologue
    .line 3521
    const-string v0, ">> bindIapService()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3525
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSamsungIapHelper:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    .line 3526
    new-instance v1, Lcom/findit/battle/InventoryActivity_Olleh$32;

    invoke-direct {v1, p0}, Lcom/findit/battle/InventoryActivity_Olleh$32;-><init>(Lcom/findit/battle/InventoryActivity_Olleh;)V

    .line 3525
    invoke-virtual {v0, v1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->bindIapService(Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnIapBindListener;)V

    .line 3571
    return-void
.end method

.method public coordinateLayout(Landroid/view/View;[Ljava/lang/String;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rects"    # [Ljava/lang/String;

    .prologue
    .line 553
    const-string v10, ">> coordinateLayout()"

    invoke-static {v10}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 554
    iget v9, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mWidthRate:F

    .line 555
    .local v9, "widthrate":F
    iget v4, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mHeightRate:F

    .local v4, "heightrate":F
    move-object v6, p1

    .line 557
    check-cast v6, Landroid/widget/RelativeLayout;

    .line 559
    .local v6, "layout":Landroid/widget/RelativeLayout;
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    .line 560
    .local v1, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-lt v5, v1, :cond_0

    .line 610
    return-void

    .line 561
    :cond_0
    aget-object v10, p2, v5

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, "data":[Ljava/lang/String;
    const/4 v0, 0x1

    .line 564
    .local v0, "apply":Z
    const/4 v10, 0x2

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 565
    .local v8, "width":I
    const/4 v10, 0x3

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 567
    .local v3, "height":I
    packed-switch v8, :pswitch_data_0

    .line 583
    int-to-float v10, v8

    mul-float/2addr v10, v9

    float-to-int v8, v10

    .line 586
    :goto_1
    if-eqz v0, :cond_1

    .line 587
    packed-switch v3, :pswitch_data_1

    .line 601
    int-to-float v10, v3

    mul-float/2addr v10, v4

    float-to-int v3, v10

    .line 605
    :cond_1
    :goto_2
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 606
    .local v7, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v10, 0x0

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v9

    float-to-int v10, v10

    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 607
    const/4 v10, 0x1

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v4

    float-to-int v10, v10

    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 608
    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 560
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 569
    .end local v7    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_0
    const/4 v8, -0x1

    .line 570
    goto :goto_1

    .line 573
    :pswitch_1
    const/4 v8, -0x2

    .line 574
    goto :goto_1

    .line 577
    :pswitch_2
    int-to-float v10, v3

    mul-float/2addr v10, v4

    float-to-int v8, v10

    .line 578
    move v3, v8

    .line 579
    const/4 v0, 0x0

    .line 580
    goto :goto_1

    .line 589
    :pswitch_3
    const/4 v3, -0x1

    .line 590
    goto :goto_2

    .line 593
    :pswitch_4
    const/4 v3, -0x2

    .line 594
    goto :goto_2

    .line 597
    :pswitch_5
    move v3, v8

    .line 598
    goto :goto_2

    .line 567
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 587
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
    .line 2939
    const-string v4, ">> getStringFromUrl()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2940
    const-string v4, "\ub7ad\ud0b9\ud398\uc774\uc9c0 \uc774\ub3d91"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 2942
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-static {p1}, Lcom/findit/battle/InventoryActivity_Olleh;->getInputStreamFromUrl(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2943
    .local v0, "brd":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 2945
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 2947
    .local v3, "sbf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 2949
    .local v2, "line":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_0

    .line 2959
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 2951
    :cond_0
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2953
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

    .line 2955
    :catch_0
    move-exception v1

    .line 2957
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public loadState(J)V
    .locals 22
    .param p1, "rowid"    # J

    .prologue
    .line 854
    const-string v18, ">> loadState()"

    invoke-static/range {v18 .. v18}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mDbhelper:Lcom/findit/battle/DBAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/findit/battle/DBAdapter;->fetchState(J)Landroid/database/Cursor;

    move-result-object v3

    .line 857
    .local v3, "c":Landroid/database/Cursor;
    if-eqz v3, :cond_4

    .line 858
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v18

    if-eqz v18, :cond_3

    .line 861
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

    iput v0, v1, Lcom/findit/battle/InventoryActivity_Olleh;->mLevel:I

    .line 862
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mLevel:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 863
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_Olleh;->mLevel:I

    .line 865
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mLevelTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mLevel:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopLevelTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mLevel:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 869
    const-string v18, "mScore"

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/findit/battle/InventoryActivity_Olleh;->mScore:J

    .line 871
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "/"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mLevelScoreTable:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mLevel:I

    move/from16 v20, v0

    aget v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 872
    .local v11, "maxscore":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mScoreTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mScore:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopScoreTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mScore:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    const-string v18, "mCoin"

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/findit/battle/InventoryActivity_Olleh;->mCoin:J

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mCoinNumTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mCoin:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopCoinNumTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mCoin:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 882
    const-string v18, "mPoint"

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_Olleh;->mPoint:I

    .line 885
    const-string v18, "mSkills"

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 886
    .local v5, "data":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_1

    .line 887
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    new-array v6, v0, [C

    .line 888
    .local v6, "datas":[C
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 890
    const/4 v9, 0x0

    .line 891
    .local v9, "j":I
    add-int/lit8 v9, v9, 0x1

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkills:Lcom/findit/battle/Objects$Skills;

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

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkills:Lcom/findit/battle/Objects$Skills;

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

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkills:Lcom/findit/battle/Objects$Skills;

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

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkills:Lcom/findit/battle/Objects$Skills;

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

    .line 898
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "j":I
    .restart local v10    # "j":I
    aget-char v15, v6, v9

    .line 900
    .local v15, "totalnum":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    if-lt v8, v15, :cond_a

    .line 910
    move v8, v15

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkills:Lcom/findit/battle/Objects$Skills;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v8, v0, :cond_e

    .line 915
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

    .line 916
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_2

    .line 917
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    new-array v6, v0, [C

    .line 918
    .restart local v6    # "datas":[C
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 920
    const/4 v9, 0x0

    .line 921
    .restart local v9    # "j":I
    add-int/lit8 v9, v9, 0x1

    .line 923
    const/4 v8, 0x0

    .restart local v8    # "i":I
    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    :goto_6
    const/16 v18, 0x6

    move/from16 v0, v18

    if-lt v8, v0, :cond_f

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/findit/battle/Items;->mItemTotalnum:I

    .line 953
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    aget-char v15, v6, v10

    .line 955
    .restart local v15    # "totalnum":I
    const/4 v8, 0x0

    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    :goto_7
    if-lt v8, v15, :cond_11

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/findit/battle/Items;->setSetTable()V

    .line 991
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

    iput v0, v1, Lcom/findit/battle/InventoryActivity_Olleh;->mAttack:I

    .line 992
    invoke-direct/range {p0 .. p0}, Lcom/findit/battle/InventoryActivity_Olleh;->setAttackText()V

    .line 995
    const-string v18, "mDefense"

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/InventoryActivity_Olleh;->mDefense:I

    .line 996
    invoke-direct/range {p0 .. p0}, Lcom/findit/battle/InventoryActivity_Olleh;->setDefenseText()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    .end local v5    # "data":Ljava/lang/String;
    .end local v11    # "maxscore":Ljava/lang/String;
    :cond_3
    :goto_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1006
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mDbhelper:Lcom/findit/battle/DBAdapter;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/findit/battle/DBAdapter;->fetchSetup(J)Landroid/database/Cursor;

    move-result-object v4

    .line 1008
    .local v4, "c1":Landroid/database/Cursor;
    if-eqz v4, :cond_5

    .line 1009
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v18

    if-eqz v18, :cond_5

    .line 1010
    const-string v18, "mEmail"

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/InventoryActivity_Olleh;->mUserId:Ljava/lang/String;

    .line 1013
    :cond_5
    return-void

    .line 893
    .end local v4    # "c1":Landroid/database/Cursor;
    .restart local v5    # "data":Ljava/lang/String;
    .restart local v6    # "datas":[C
    .restart local v10    # "j":I
    .restart local v11    # "maxscore":Ljava/lang/String;
    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 894
    .end local v10    # "j":I
    .restart local v9    # "j":I
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 895
    .end local v9    # "j":I
    .restart local v10    # "j":I
    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 896
    .end local v10    # "j":I
    .restart local v9    # "j":I
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 901
    .end local v9    # "j":I
    .restart local v8    # "i":I
    .restart local v10    # "j":I
    .restart local v15    # "totalnum":I
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkills:Lcom/findit/battle/Objects$Skills;

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

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkills:Lcom/findit/battle/Objects$Skills;

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

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkills:Lcom/findit/battle/Objects$Skills;

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

    .line 906
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->setSkillSlot(I)V

    .line 900
    add-int/lit8 v8, v8, 0x1

    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    goto/16 :goto_4

    .line 901
    :cond_b
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    aget-char v18, v6, v10

    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    goto :goto_9

    .line 902
    :cond_c
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    aget-char v18, v6, v10

    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    goto :goto_a

    .line 903
    .end local v10    # "j":I
    .restart local v9    # "j":I
    :cond_d
    const/16 v18, 0x0

    goto :goto_b

    .line 911
    .end local v9    # "j":I
    .restart local v10    # "j":I
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->setSkillSlot(I)V

    .line 910
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    .line 940
    .end local v15    # "totalnum":I
    :cond_f
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    aget-char v15, v6, v10

    .line 941
    .restart local v15    # "totalnum":I
    const/16 v17, 0x0

    .local v17, "z":I
    :goto_c
    move/from16 v0, v17

    if-lt v0, v15, :cond_10

    .line 923
    add-int/lit8 v8, v8, 0x1

    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    goto/16 :goto_6

    .line 942
    .end local v10    # "j":I
    .restart local v9    # "j":I
    :cond_10
    add-int/lit8 v9, v9, 0x1

    .line 943
    add-int/lit8 v9, v9, 0x1

    .line 944
    add-int/lit8 v9, v9, 0x1

    .line 945
    add-int/lit8 v9, v9, 0x1

    .line 946
    add-int/lit8 v9, v9, 0x1

    .line 947
    add-int/lit8 v9, v9, 0x1

    .line 948
    add-int/lit8 v9, v9, 0x1

    .line 941
    add-int/lit8 v17, v17, 0x1

    goto :goto_c

    .line 956
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

    .line 957
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

    .line 958
    .end local v9    # "j":I
    .restart local v10    # "j":I
    .local v13, "subtype":I
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1, v13}, Lcom/findit/battle/Items;->createItem(II)Lcom/findit/battle/Items$Item;

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

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

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

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

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

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

    .line 966
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    aget-char v14, v6, v10

    .line 967
    .local v14, "total":I
    if-nez v14, :cond_17

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    move-object/from16 v18, v0

    aget-object v18, v18, v8

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    .line 976
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    move-object/from16 v18, v0

    aget-object v18, v18, v8

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/findit/battle/Items$Item;->mSet:Z

    move/from16 v18, v0

    if-eqz v18, :cond_19

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

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

    invoke-direct {v0, v1, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->setItemSetSlot(II)I

    .line 955
    :goto_13
    add-int/lit8 v8, v8, 0x1

    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    goto/16 :goto_7

    .line 956
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

    .line 957
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

    .line 962
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

    .line 963
    .end local v10    # "j":I
    .restart local v9    # "j":I
    :cond_15
    const/16 v18, 0x0

    goto/16 :goto_10

    .line 964
    :cond_16
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "j":I
    .restart local v10    # "j":I
    aget-char v18, v6, v9

    goto :goto_11

    .line 970
    .end local v10    # "j":I
    .restart local v9    # "j":I
    .restart local v14    # "total":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    move-object/from16 v18, v0

    aget-object v18, v18, v8

    const-string v19, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    .line 971
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

    .line 972
    .end local v9    # "j":I
    .restart local v10    # "j":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

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

    .line 971
    add-int/lit8 v7, v7, 0x1

    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    goto :goto_14

    .line 979
    .end local v7    # "h":I
    .end local v10    # "j":I
    .restart local v9    # "j":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    move-object/from16 v18, v0

    aget-object v18, v18, v8

    move-object/from16 v0, v18

    iget v12, v0, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 980
    .local v12, "slotnum":I
    if-gez v12, :cond_1a

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    move-object/from16 v18, v0

    aget-object v18, v18, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->setItemSlot(Lcom/findit/battle/Items$Item;)Z

    goto/16 :goto_13

    .line 998
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

    .line 983
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

    invoke-direct {v0, v12, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->setItemSlot(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_13
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 25
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 3143
    invoke-super/range {p0 .. p3}, Lcom/kt/olleh/inapp/KTInAppActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 3144
    const-string v2, ">> onActivityResult()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3146
    sparse-switch p1, :sswitch_data_0

    .line 3316
    :cond_0
    :goto_0
    return-void

    .line 3148
    :sswitch_0
    if-eqz p3, :cond_0

    .line 3149
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    .line 3152
    .local v19, "imageuri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->getImagePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v21

    .line 3155
    .local v21, "path":Ljava/lang/String;
    if-eqz v21, :cond_0

    .line 3156
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->cutImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mCutImagePath:Ljava/lang/String;

    goto :goto_0

    .line 3161
    .end local v19    # "imageuri":Landroid/net/Uri;
    .end local v21    # "path":Ljava/lang/String;
    :sswitch_1
    if-eqz p3, :cond_0

    .line 3163
    invoke-direct/range {p0 .. p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getLastImagePath()Ljava/lang/String;

    move-result-object v21

    .line 3166
    .restart local v21    # "path":Ljava/lang/String;
    if-eqz v21, :cond_0

    .line 3167
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->cutImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mCutImagePath:Ljava/lang/String;

    goto :goto_0

    .line 3172
    .end local v21    # "path":Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mCutImagePath:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mCutImagePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 3183
    .local v5, "image":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mBodyImg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mActionImg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mWidthRate:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mHeightRate:F

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/findit/battle/InventoryActivity_Olleh;->drawImg(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 3184
    .local v16, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mCharacterImageView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->compressBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3185
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 3193
    .end local v5    # "image":Landroid/graphics/drawable/Drawable;
    .end local v16    # "bitmap":Landroid/graphics/Bitmap;
    :sswitch_3
    if-eqz p3, :cond_0

    .line 3197
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    .line 3199
    .local v18, "extras":Landroid/os/Bundle;
    const-string v20, ""

    .line 3200
    .local v20, "itemId":Ljava/lang/String;
    const-string v24, ""

    .line 3205
    .local v24, "thirdPartyName":Ljava/lang/String;
    const/16 v23, 0x1

    .line 3208
    .local v23, "statusCode":I
    const-string v17, ""

    .line 3209
    .local v17, "errorString":Ljava/lang/String;
    const/16 v22, 0x0

    .line 3214
    .local v22, "purchaseVO":Lcom/sec/android/iap/sample/vo/PurchaseVO;
    if-eqz v18, :cond_1

    .line 3215
    const-string v2, "THIRD_PARTY_NAME"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3216
    const-string v2, "STATUS_CODE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 3217
    const-string v2, "ERROR_STRING"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3218
    .end local v17    # "errorString":Ljava/lang/String;
    .local v9, "errorString":Ljava/lang/String;
    const-string v2, "ITEM_ID"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3223
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "3rdParty Name : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ItemId        : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "StatusCode    : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3224
    const-string v3, "errorString   : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3223
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 3240
    :goto_1
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v2, v0, :cond_3

    .line 3245
    if-nez v23, :cond_2

    .line 3249
    new-instance v22, Lcom/sec/android/iap/sample/vo/PurchaseVO;

    .end local v22    # "purchaseVO":Lcom/sec/android/iap/sample/vo/PurchaseVO;
    const-string v2, "RESULT_OBJECT"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Lcom/sec/android/iap/sample/vo/PurchaseVO;-><init>(Ljava/lang/String;)V

    .line 3255
    .restart local v22    # "purchaseVO":Lcom/sec/android/iap/sample/vo/PurchaseVO;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mSamsungIapHelper:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->verifyPurchaseResult(Landroid/app/Activity;Lcom/sec/android/iap/sample/vo/PurchaseVO;)V

    .line 3257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mPurchaseItemMap:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/findit/battle/Items$Item;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/findit/battle/InventoryActivity_Olleh;->applyPurchaseItem(Lcom/findit/battle/Items$Item;)V

    goto/16 :goto_0

    .line 3232
    .end local v9    # "errorString":Ljava/lang/String;
    .restart local v17    # "errorString":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mSamsungIapHelper:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    const v2, 0x7f090085

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/findit/battle/InventoryActivity_Olleh;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3233
    const v2, 0x7f09008a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/findit/battle/InventoryActivity_Olleh;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v7, p0

    .line 3232
    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->showIapDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    move-object/from16 v9, v17

    .end local v17    # "errorString":Ljava/lang/String;
    .restart local v9    # "errorString":Ljava/lang/String;
    goto :goto_1

    .line 3264
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mSamsungIapHelper:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    const v2, 0x7f090085

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/findit/battle/InventoryActivity_Olleh;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->showIapDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_0

    .line 3272
    :cond_3
    if-nez p2, :cond_0

    .line 3273
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mSamsungIapHelper:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    const v2, 0x7f090088

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/findit/battle/InventoryActivity_Olleh;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v2, 0x7f090089

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/findit/battle/InventoryActivity_Olleh;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    .line 3274
    const/4 v15, 0x0

    move-object/from16 v11, p0

    .line 3273
    invoke-virtual/range {v10 .. v15}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->showIapDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_0

    .line 3289
    .end local v9    # "errorString":Ljava/lang/String;
    .end local v18    # "extras":Landroid/os/Bundle;
    .end local v20    # "itemId":Ljava/lang/String;
    .end local v22    # "purchaseVO":Lcom/sec/android/iap/sample/vo/PurchaseVO;
    .end local v23    # "statusCode":I
    .end local v24    # "thirdPartyName":Ljava/lang/String;
    :sswitch_4
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v2, v0, :cond_4

    .line 3293
    invoke-virtual/range {p0 .. p0}, Lcom/findit/battle/InventoryActivity_Olleh;->bindIapService()V

    goto/16 :goto_0

    .line 3300
    :cond_4
    if-nez p2, :cond_0

    .line 3304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mSamsungIapHelper:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-virtual {v2}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->dismissProgressDialog()V

    .line 3307
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/findit/battle/InventoryActivity_Olleh;->mSamsungIapHelper:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    const v2, 0x7f090086

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/findit/battle/InventoryActivity_Olleh;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 3308
    const v2, 0x7f090087

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/findit/battle/InventoryActivity_Olleh;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v11, p0

    .line 3307
    invoke-virtual/range {v10 .. v15}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->showIapDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_0

    .line 3146
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 204
    invoke-super {p0, p1}, Lcom/kt/olleh/inapp/KTInAppActivity;->onCreate(Landroid/os/Bundle;)V

    .line 205
    const-string v8, ">> onCreate()"

    invoke-static {v8}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 206
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->requestWindowFeature(I)Z

    .line 208
    const v8, 0x7f030005

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->setContentView(I)V

    .line 211
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-static {}, Lcom/findit/battle/FindItApplication;->getDisplayScreenWidth()I

    move-result v9

    invoke-static {}, Lcom/findit/battle/FindItApplication;->getDisplayScreenHeight()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/view/Window;->setLayout(II)V

    .line 213
    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->setVolumeControlStream(I)V

    .line 215
    new-instance v8, Lcom/findit/battle/CommonDialog;

    invoke-direct {v8, p0}, Lcom/findit/battle/CommonDialog;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mCommonDialog:Lcom/findit/battle/CommonDialog;

    .line 217
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09004f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mBuyListTitleText:Ljava/lang/String;

    .line 218
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f060000

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mLevelScoreTable:[I

    .line 221
    const v8, 0x7f0b000e

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mCharacterImageView:Landroid/widget/ImageView;

    .line 222
    const v8, 0x7f0b0020

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mAttackTextView:Landroid/widget/TextView;

    .line 223
    const v8, 0x7f0b0022

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mDefenseTextView:Landroid/widget/TextView;

    .line 224
    const v8, 0x7f0b0029

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mLevelTextView:Landroid/widget/TextView;

    .line 225
    const v8, 0x7f0b0037

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopLevelTextView:Landroid/widget/TextView;

    .line 226
    const v8, 0x7f0b002b

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mScoreTextView:Landroid/widget/TextView;

    .line 227
    const v8, 0x7f0b0039

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopScoreTextView:Landroid/widget/TextView;

    .line 228
    const v8, 0x7f0b002d

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mCoinNumTextView:Landroid/widget/TextView;

    .line 229
    const v8, 0x7f0b003b

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopCoinNumTextView:Landroid/widget/TextView;

    .line 230
    const v8, 0x7f0b0034

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mExplainTextView:Landroid/widget/TextView;

    .line 231
    const v8, 0x7f0b0043

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mShopExplainTextView:Landroid/widget/TextView;

    .line 232
    const v8, 0x7f0b0050

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkillExplainTextView:Landroid/widget/TextView;

    .line 235
    const/4 v8, 0x3

    new-array v8, v8, [Landroid/view/animation/Animation;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mAnimation:[Landroid/view/animation/Animation;

    .line 236
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mAnimation:[Landroid/view/animation/Animation;

    const/4 v9, 0x0

    const v10, 0x7f040001

    invoke-static {p0, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    aput-object v10, v8, v9

    .line 237
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mAnimation:[Landroid/view/animation/Animation;

    const/4 v9, 0x1

    const v10, 0x7f040004

    invoke-static {p0, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    aput-object v10, v8, v9

    .line 238
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mAnimation:[Landroid/view/animation/Animation;

    const/4 v9, 0x2

    const v10, 0x7f040007

    invoke-static {p0, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    aput-object v10, v8, v9

    .line 240
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0201be

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mCoverImg:Landroid/graphics/drawable/Drawable;

    .line 241
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mCoverImg:Landroid/graphics/drawable/Drawable;

    const/16 v9, 0xdc

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 268
    new-instance v8, Lcom/findit/battle/Items;

    invoke-direct {v8, p0}, Lcom/findit/battle/Items;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    .line 269
    new-instance v5, Lcom/findit/battle/Objects;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v5, p0, v8, v9, v10}, Lcom/findit/battle/Objects;-><init>(Landroid/content/Context;IIF)V

    .line 270
    .local v5, "objects":Lcom/findit/battle/Objects;
    iget-object v8, v5, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkills:Lcom/findit/battle/Objects$Skills;

    .line 273
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    iget-object v6, v8, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    .line 275
    .local v6, "titem":[Lcom/findit/battle/Items$TypeItem;
    const/4 v8, 0x4

    new-array v4, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "000001005358"

    aput-object v9, v4, v8

    const/4 v8, 0x1

    const-string v9, "000001005359"

    aput-object v9, v4, v8

    const/4 v8, 0x2

    .line 276
    const-string v9, "000001005360"

    aput-object v9, v4, v8

    const/4 v8, 0x3

    const-string v9, "000001005361"

    aput-object v9, v4, v8

    .line 277
    .local v4, "keys":[Ljava/lang/String;
    iput-object v4, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mPurchaseItemKey:[Ljava/lang/String;

    .line 279
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

    .line 280
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

    .line 282
    .local v3, "items":[Lcom/findit/battle/Items$Item;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mPurchaseItemMap:Ljava/util/HashMap;

    .line 283
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, v4

    if-lt v2, v8, :cond_2

    .line 287
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->intiatieInAppPurchases()V

    .line 289
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 290
    .local v0, "extra":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 305
    const-string v8, "displaywidth"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x44a00000    # 1280.0f

    div-float v7, v8, v9

    .line 306
    .local v7, "widthrate":F
    const-string v8, "displayheight"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x44480000    # 800.0f

    div-float v1, v8, v9

    .line 313
    .local v1, "heightrate":F
    const-string v8, "bodyimgid"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mBodyImgId:I

    .line 314
    const-string v8, "actionimgid"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mActionImgId:I

    .line 315
    const-string v8, "faceimgid"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mFaceImgId:I

    .line 316
    const-string v8, "bodyimgpath"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mBodyImgPath:Ljava/lang/String;

    .line 317
    const-string v8, "actionimgpath"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mActionImgPath:Ljava/lang/String;

    .line 318
    const-string v8, "faceimgpath"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mFaceImgPath:Ljava/lang/String;

    .line 320
    mul-float v8, v7, v1

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v8, v9

    iput v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mMoveStandard:F

    .line 322
    iput v7, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mWidthRate:F

    .line 323
    iput v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mHeightRate:F

    .line 325
    const v8, 0x7f0b000c

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060001

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/findit/battle/InventoryActivity_Olleh;->coordinateLayout(Landroid/view/View;[Ljava/lang/String;)V

    .line 326
    const v8, 0x7f0b0027

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060002

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/findit/battle/InventoryActivity_Olleh;->coordinateLayout(Landroid/view/View;[Ljava/lang/String;)V

    .line 327
    const v8, 0x7f0b0035

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060003

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/findit/battle/InventoryActivity_Olleh;->coordinateLayout(Landroid/view/View;[Ljava/lang/String;)V

    .line 328
    const v8, 0x7f0b0046

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060004

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/findit/battle/InventoryActivity_Olleh;->coordinateLayout(Landroid/view/View;[Ljava/lang/String;)V

    .line 329
    const v8, 0x7f0b003d

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060005

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/findit/battle/InventoryActivity_Olleh;->coordinateLayout(Landroid/view/View;[Ljava/lang/String;)V

    .line 330
    const v8, 0x7f0b0049

    invoke-virtual {p0, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060006

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/findit/battle/InventoryActivity_Olleh;->coordinateLayout(Landroid/view/View;[Ljava/lang/String;)V

    .line 332
    invoke-direct {p0, v7, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->createItemSlots(FF)V

    .line 333
    invoke-direct {p0, v7, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->createShopSlots(FF)V

    .line 334
    invoke-direct {p0, v7, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->createSkillSlots(FF)V

    .line 336
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->setItemText()V

    .line 339
    .end local v1    # "heightrate":F
    .end local v7    # "widthrate":F
    :cond_0
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->createDeleteItemDlg()V

    .line 340
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->createLearnSkillDlg()V

    .line 341
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->createBuyItemDlg()V

    .line 342
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->createBuyListDlg()V

    .line 343
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->setTab()V

    .line 345
    const/4 v8, 0x0

    iput v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mTabNum:I

    .line 346
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mLoadingView:Z

    .line 349
    new-instance v8, Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-direct {v8, p0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 362
    const/4 v8, 0x0

    invoke-static {p0, v8}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->getInstance(Landroid/content/Context;I)Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    move-result-object v8

    iput-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSamsungIapHelper:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    .line 373
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSamsungIapHelper:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-virtual {v8, p0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->setOnInitIapListener(Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnInitIapListener;)V

    .line 379
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSamsungIapHelper:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-virtual {v8, p0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->isInstalledIapPackage(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 388
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSamsungIapHelper:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-virtual {v8, p0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->installIapPackage(Landroid/app/Activity;)V

    .line 391
    :cond_1
    return-void

    .line 284
    .end local v0    # "extra":Landroid/os/Bundle;
    :cond_2
    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mPurchaseItemMap:Ljava/util/HashMap;

    aget-object v9, v4, v2

    aget-object v10, v3, v2

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 532
    const-string v0, ">> onDestroy()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 533
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->clearData()V

    .line 535
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSamsungIapHelper:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSamsungIapHelper:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->stopRunningTask()V

    .line 537
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSamsungIapHelper:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->dispose()V

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mPurchaseItemMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mPurchaseItemMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 542
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mPurchaseItemMap:Ljava/util/HashMap;

    .line 545
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 546
    invoke-super {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->onDestroy()V

    .line 550
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 3077
    const-string v1, ">> onKeyUp()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3079
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 3080
    iput-boolean v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mLoadingView:Z

    .line 3082
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->finish()V

    .line 3083
    const v1, 0x7f040002

    const v2, 0x7f040003

    invoke-virtual {p0, v1, v2}, Lcom/findit/battle/InventoryActivity_Olleh;->overridePendingTransition(II)V

    .line 3088
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kt/olleh/inapp/KTInAppActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 398
    invoke-super {p0, p1}, Lcom/kt/olleh/inapp/KTInAppActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 399
    invoke-virtual {p0, p1}, Lcom/findit/battle/InventoryActivity_Olleh;->setIntent(Landroid/content/Intent;)V

    .line 400
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->saveStatusToDB()V

    .line 487
    :cond_0
    invoke-super {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->onPause()V

    .line 488
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 404
    invoke-super {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->onResume()V

    .line 406
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->loadImages()V

    .line 410
    new-instance v0, Lcom/findit/battle/DBAdapter;

    invoke-direct {v0, p0}, Lcom/findit/battle/DBAdapter;-><init>(Landroid/content/Context;)V

    .line 411
    .local v0, "dbhelper":Lcom/findit/battle/DBAdapter;
    invoke-virtual {v0}, Lcom/findit/battle/DBAdapter;->open()Lcom/findit/battle/DBAdapter;

    .line 412
    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mDbhelper:Lcom/findit/battle/DBAdapter;

    .line 415
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/findit/battle/InventoryActivity_Olleh;->loadState(J)V

    .line 416
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->setItemText()V

    .line 417
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->setSkillText()V

    .line 461
    new-instance v1, Landroid/media/SoundPool;

    const/16 v2, 0xa

    const/4 v3, 0x3

    const/16 v4, 0x3e8

    invoke-direct {v1, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSoundpool:Landroid/media/SoundPool;

    .line 462
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSoundPoolMap:Ljava/util/HashMap;

    .line 463
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSoundpool:Landroid/media/SoundPool;

    const v4, 0x7f050005

    const/4 v5, 0x1

    invoke-virtual {v3, p0, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mTabNum:I

    packed-switch v1, :pswitch_data_0

    .line 479
    :goto_0
    return-void

    .line 468
    :pswitch_0
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->setItemTab()V

    goto :goto_0

    .line 472
    :pswitch_1
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->setShopTab()V

    goto :goto_0

    .line 476
    :pswitch_2
    invoke-direct {p0}, Lcom/findit/battle/InventoryActivity_Olleh;->setSkillTab()V

    goto :goto_0

    .line 466
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSucceedInitIap()V
    .locals 4

    .prologue
    .line 3577
    const-string v0, ">> onSucceedInitIap()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3581
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSamsungIapHelper:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->dismissProgressDialog()V

    .line 3587
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSamsungIapHelper:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    .line 3589
    const/4 v1, 0x1

    .line 3590
    const-string v2, "100000100952"

    .line 3591
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mPurchaseId:Ljava/lang/String;

    .line 3587
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->startPurchase(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    .line 3593
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 3093
    const-string v0, ">> onTouchEvent()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3094
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    .line 3095
    .local v1, "touchx":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v2, v0

    .line 3098
    .local v2, "touchy":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3138
    :cond_0
    :goto_0
    return v10

    .line 3100
    :pswitch_0
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    iget v5, v0, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->mIndex:I

    .line 3101
    .local v5, "index":I
    if-le v5, v9, :cond_1

    .line 3102
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    invoke-virtual {v0, v1, v2, v8, v8}, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->move(IIII)V

    .line 3103
    invoke-direct {p0, v5, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->setSetSlotImageAlpha(IZ)V

    .line 3107
    iget v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSlotWindowX:I

    neg-int v3, v0

    iget v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSlotWindowY:I

    neg-int v4, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/findit/battle/InventoryActivity_Olleh;->changeItemSlots(IIIII)V

    .line 3109
    :cond_1
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    invoke-virtual {v0}, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->fadeView()V

    .line 3111
    invoke-direct {p0, v9, v9, v8, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->setFirstTouch(IIII)V

    goto :goto_0

    .line 3115
    .end local v5    # "index":I
    :pswitch_1
    invoke-direct {p0, v1, v2, v8, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->isActionMove(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3118
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    iget v5, v0, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->mIndex:I

    .line 3119
    .restart local v5    # "index":I
    if-le v5, v9, :cond_2

    .line 3120
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    invoke-virtual {v0, v1, v2, v8, v8}, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->move(IIII)V

    .line 3121
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    invoke-virtual {v0}, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->appearView()V

    .line 3122
    invoke-direct {p0, v5, v10}, Lcom/findit/battle/InventoryActivity_Olleh;->setSetSlotImageAlpha(IZ)V

    .line 3125
    :cond_2
    invoke-direct {p0, v9, v9, v8, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->setFirstTouch(IIII)V

    goto :goto_0

    .line 3129
    .end local v5    # "index":I
    :pswitch_2
    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSetItemTypeTable:[I

    .line 3130
    .local v6, "setitemtypetable":[I
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mMoveItemView:Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    invoke-virtual {v0, v1, v2, v8, v8}, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->touchRect(IIII)I

    move-result v7

    .line 3131
    .local v7, "slotnum":I
    if-le v7, v9, :cond_3

    array-length v0, v6

    if-ge v7, v0, :cond_3

    .line 3132
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    aget v3, v6, v7

    invoke-virtual {v0, v3}, Lcom/findit/battle/Items;->getSetIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/findit/battle/InventoryActivity_Olleh;->setMoveItemImage(I)V

    .line 3134
    :cond_3
    invoke-direct {p0, v1, v2, v8, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->setFirstTouch(IIII)V

    goto :goto_0

    .line 3098
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

    .line 1017
    const-string v0, ">> playSound()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1018
    iget-boolean v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSoundon:Z

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSoundpool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSoundPoolMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSoundpool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSoundPoolMap:Ljava/util/HashMap;

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

    .line 1022
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

    .line 788
    const-string v0, ">> saveState()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 789
    new-array v3, v1, [I

    .line 790
    .local v3, "intvalues":[I
    new-array v4, v11, [J

    .line 791
    .local v4, "longvalues":[J
    new-array v5, v11, [Ljava/lang/String;

    const-string v0, ""

    aput-object v0, v5, v2

    const-string v0, ""

    aput-object v0, v5, v1

    .line 794
    .local v5, "strvalues":[Ljava/lang/String;
    iget-wide v9, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mScore:J

    aput-wide v9, v4, v2

    .line 795
    iget-wide v9, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mCoin:J

    aput-wide v9, v4, v1

    .line 798
    iget v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mPoint:I

    aput v0, v3, v2

    .line 801
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

    .line 802
    aget-object v0, v5, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkills:Lcom/findit/battle/Objects$Skills;

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

    .line 803
    aget-object v0, v5, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkills:Lcom/findit/battle/Objects$Skills;

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

    .line 804
    aget-object v0, v5, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkills:Lcom/findit/battle/Objects$Skills;

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

    .line 805
    aget-object v0, v5, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkills:Lcom/findit/battle/Objects$Skills;

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

    .line 806
    aget-object v0, v5, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget v0, v0, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 807
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget v0, v0, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    if-lt v6, v0, :cond_4

    .line 814
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

    .line 816
    const/4 v6, 0x0

    :goto_5
    const/4 v0, 0x6

    if-lt v6, v0, :cond_6

    .line 830
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    iget v8, v0, Lcom/findit/battle/Items;->mItemTotalnum:I

    .line 831
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

    .line 832
    const/4 v6, 0x0

    :goto_6
    if-lt v6, v8, :cond_8

    .line 847
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mDbhelper:Lcom/findit/battle/DBAdapter;

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/findit/battle/DBAdapter;->updateStateForInven(J[I[J[Ljava/lang/String;)Z

    .line 850
    return-void

    .end local v6    # "i":I
    .end local v8    # "totalnum":I
    :cond_0
    move v0, v2

    .line 802
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 803
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 804
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 805
    goto :goto_3

    .line 808
    .restart local v6    # "i":I
    :cond_4
    aget-object v0, v5, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/findit/battle/Objects$Skills$Skill;->mNum:I

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 809
    aget-object v0, v5, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 810
    aget-object v0, v5, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mSkills:Lcom/findit/battle/Objects$Skills;

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

    .line 807
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 810
    goto :goto_7

    .line 817
    :cond_6
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v0, v0, v6

    iget v8, v0, Lcom/findit/battle/Items$TypeItem;->mSubItemTotalnum:I

    .line 818
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

    .line 819
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_8
    if-lt v7, v8, :cond_7

    .line 816
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 820
    :cond_7
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

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

    .line 821
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

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

    .line 822
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

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

    .line 823
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

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

    .line 824
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

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

    .line 825
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

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

    .line 826
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

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

    .line 819
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8

    .line 833
    .end local v7    # "j":I
    :cond_8
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/findit/battle/Items$Item;->mType:I

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 834
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/findit/battle/Items$Item;->mSubType:I

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 835
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/findit/battle/Items$Item;->mSlotnum:I

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 836
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

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

    .line 837
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/findit/battle/Items$Item;->mNum:I

    int-to-char v0, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 839
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v6

    iget-object v0, v0, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 840
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

    .line 832
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    :cond_9
    move v0, v2

    .line 836
    goto :goto_9

    .line 842
    :cond_a
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

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

    .line 843
    aget-object v0, v5, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mItems:Lcom/findit/battle/Items;

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
    .line 2801
    const-string v1, ">> sendAddCoin()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2802
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 2804
    .local v0, "connectnetwork":Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    :cond_0
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2807
    const-string v1, "http://14.63.220.39/"

    const-string v2, "app/member/addCoin.json"

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setServerUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 2808
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->clearParameter()V

    .line 2809
    const-string v1, "userId"

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    const-string v1, "coin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2813
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mCommonDialog:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v1}, Lcom/findit/battle/CommonDialog;->showProgressDlg()V

    .line 2814
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

    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mCoinResultHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->startParsingData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V

    .line 2815
    return-void
.end method

.method public sendSpendCoin(J)V
    .locals 6
    .param p1, "coin"    # J

    .prologue
    .line 2818
    const-string v1, ">> sendSpendCoin()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2819
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 2821
    .local v0, "connectnetwork":Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    :cond_0
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2824
    const-string v1, "http://14.63.220.39/"

    const-string v2, "app/member/spendCoin.json"

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setServerUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 2825
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->clearParameter()V

    .line 2826
    const-string v1, "userId"

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    const-string v1, "coin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mCommonDialog:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v1}, Lcom/findit/battle/CommonDialog;->showProgressDlg()V

    .line 2831
    const-string v1, "utf-8"

    const-string v2, "GET"

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Olleh;->mCoinResultHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->startParsingData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V

    .line 2832
    return-void
.end method
