package com.findit.battle;

import android.content.Context;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class Items {
    public static final String SEQ_DEVIDER = "|";
    public static final int TYPEITEM_TOTALNUM = 6;
    public static final int TYPE_BERRY = 2;
    public static final int TYPE_ETC = 5;
    public static final int TYPE_GOLD = 4;
    public static final int TYPE_PEN = 0;
    public static final int TYPE_POTION = 3;
    public static final int TYPE_RING = 1;
    public static final String TYPE_S_BERRY = "BERRY";
    public static final String TYPE_S_ETC = "ETC";
    public static final String TYPE_S_GOLD = "GOLD";
    public static final String TYPE_S_PEN = "PEN";
    public static final String TYPE_S_POTION = "POTION";
    public static final String TYPE_S_RING = "RING";
    public static final int USERITEM_MAX = 99;
    public static final int USERITEM_TOTALNUM = 100;
    public Item[] mItem;
    public int mItemTotalnum;
    private int[] mSetTable;
    public TypeItem[] mTypeItem = new TypeItem[6];
    public HashMap<String, Integer> mTypeMap;

    public Items(Context context) {
        // ============================================================
        // 2013-12-20 기획 (findit_shop_items_20121220.xlsx) 반영
        //
        // mPower 스케일 = 20 단위 / 0.1초 (원본 코드 관습 유지)
        //   예: +0.5초 = 10, -0.9초 = 18
        // mPrice = 코인 가격
        // mMoney = 유료결제 가격 단위 (USD × 1000 = ¢)
        // ============================================================

        // PEN — 일반펜/날개달린펜/무지개펜 (2013 스펙)
        int[] penimgid   = {R.drawable.slot_item_pen_01, R.drawable.slot_item_pen_02, R.drawable.slot_item_pen_03};
        int[] pentextid  = {R.string.item_pen01, R.string.item_pen02, R.string.item_pen03};
        int[] pentypeno  = {38, 39, 40};
        int[] penpower   = {10, 16, 20};    // +0.5 / +0.8 / +1.0 초
        int[] penprice   = {50, 100, 200};  // 2013 spec
        int[] penmoney   = new int[3];
        this.mTypeItem[0] = new TypeItem(context, 0, pentypeno, penimgid, pentextid);
        this.mTypeItem[0].setContent(penpower, penprice, penmoney);

        // RING — 은반지/금반지 (2013 스펙)
        int[] ringimgid  = {R.drawable.slot_item_ring_01, R.drawable.slot_item_ring_02};
        int[] ringtextid = {R.string.item_ring01, R.string.item_ring02};
        int[] ringtypeno = {41, 42};
        int[] ringpower  = {12, 18};  // -0.6 / -0.9 초
        int[] ringprice  = {80, 150}; // 2013 spec
        int[] ringmoney  = new int[2];
        this.mTypeItem[1] = new TypeItem(context, 1, ringtypeno, ringimgid, ringtextid);
        this.mTypeItem[1].setContent(ringpower, ringprice, ringmoney);

        // BERRY — 폭발/불꽃/눈꽃/강력폭발/강력불꽃/강력눈꽃 (2013 스펙)
        int[] berryimgid  = {R.drawable.slot_item_berry_01, R.drawable.slot_item_berry_02, R.drawable.slot_item_berry_03,
                             R.drawable.slot_item_berry_21, R.drawable.slot_item_berry_22, R.drawable.slot_item_berry_23};
        int[] berrytextid = {R.string.item_berry01, R.string.item_berry02, R.string.item_berry03,
                             R.string.item_berry21, R.string.item_berry22, R.string.item_berry23};
        int[] berrytypeno = {43, 44, 45, 46, 47, 48};
        int[] berrypower  = {24, 10, 16, 44, 30, 36};       // +1.2/+0.5/+0.8/+2.2/+1.5/+1.8 초
        int[] berryprice  = {300, 100, 200, 800, 400, 600}; // 2013 spec
        int[] berrymoney  = new int[6];
        this.mTypeItem[2] = new TypeItem(context, 2, berrytypeno, berryimgid, berrytextid);
        this.mTypeItem[2].setContent(berrypower, berryprice, berrymoney);

        // POTION — 방어/좋은방어/고급방어/대용량좋은/대용량고급 (2013 스펙)
        int[] potionimgid  = {R.drawable.slot_item_posion_01, R.drawable.slot_item_posion_02, R.drawable.slot_item_posion_03,
                              R.drawable.slot_item_posion_21, R.drawable.slot_item_posion_22};
        int[] potiontextid = {R.string.item_potion01, R.string.item_potion02, R.string.item_potion03,
                              R.string.item_potion21, R.string.item_potion22};
        int[] potiontypeno = {49, 50, 51, 52, 53, 54};
        int[] potionpower  = {6, 12, 18, 32, 38};          // -0.3/-0.6/-0.9/-1.6/-1.9 초
        int[] potionprice  = {10, 80, 150, 500, 700};      // 2013 spec
        int[] potionmoney  = new int[5];
        int[] potionnum    = {99, 99, 99, 1, 1};           // 대용량은 7일 사용권, 1회 구매
        this.mTypeItem[3] = new TypeItem(context, 3, potiontypeno, potionimgid, potiontextid);
        this.mTypeItem[3].setContent(potionpower, potionprice, potionmoney, potionnum);

        // GOLD — 코인 IAP 패키지 (2013 스펙: 100/250/500/650 개, $0.99/$1.99/$3.99/$4.99)
        //  ⚠ 스토어(Google Play/Samsung) 등록 상품 ID 와 수량이 일치해야 함.
        //     Property.SAMSUNG_IAP_ITEM_ID_COIN1000~8500 이름은 BC 유지하되
        //     실제 지급 코인만 2013 스펙으로 조정.
        int[] goldimgid   = {R.drawable.slot_item_coin_1000, R.drawable.slot_item_coin_2500,
                             R.drawable.slot_item_coin_5500, R.drawable.slot_item_coin_8500};
        int[] goldtextid  = {R.string.item_gold0, R.string.item_gold1, R.string.item_gold2, R.string.item_gold3};
        int[] goldtypeno  = {55, 56, 57, 58};
        int[] goldpower   = {100, 250, 500, 650};          // 2013 지급 코인
        int[] goldprice   = new int[4];
        int[] goldmoney   = {990, 1990, 3990, 4990};       // USD × 1000 ($0.99/$1.99/$3.99/$4.99)
        this.mTypeItem[4] = new TypeItem(context, 4, goldtypeno, goldimgid, goldtextid);
        this.mTypeItem[4].setContent(goldpower, goldprice, goldmoney);

        // ETC — 스킬덱 확장 슬롯
        int[] etcimgid   = {R.drawable.slot_item_skilldeck_01, R.drawable.slot_item_skilldeck_02, R.drawable.slot_item_skilldeck_03};
        int[] etctextid  = {R.string.item_etc0, R.string.item_etc1, R.string.item_etc2};
        int[] etctypeno  = {0, 1, 2};
        int[] etcpower   = {0, 1, 2};
        int[] etcprice   = {100, 300, 900}; // 스킬덱 확장 비용 (balance.js SKILL_DECK_COST 와 동일)
        int[] etcmoney   = new int[3];
        this.mTypeItem[5] = new TypeItem(context, 5, etctypeno, etcimgid, etctextid);
        this.mTypeItem[5].setContent(etcpower, etcprice, etcmoney);
        this.mItem = new Item[100];
        this.mItemTotalnum = 0;
        this.mSetTable = new int[6];
        this.mTypeMap = new HashMap<>();
        this.mTypeMap.put(TYPE_S_PEN, 0);
        this.mTypeMap.put(TYPE_S_RING, 1);
        this.mTypeMap.put(TYPE_S_BERRY, 2);
        this.mTypeMap.put(TYPE_S_POTION, 3);
        this.mTypeMap.put(TYPE_S_GOLD, 4);
        this.mTypeMap.put(TYPE_S_ETC, 5);
        createItems();
    }

    private void createItems() {
        createItem(0, 0);
        createItem(0, 1);
        createItem(0, 2);
        createItem(1, 0);
        createItem(1, 1);
        createItem(2, 2);
        createItem(3, 0);
        createItem(3, 2);
        setSetTable();
    }

    class TypeItem {
        public static final int SUBITEM_TOTALNUM = 50;
        public Item[] mSubItem;
        public int mSubItemTotalnum;

        public TypeItem(Context context, int type, int[] typeno, int[] imgids, int[] textids) {
            this.mSubItem = new Item[50];
            for (int i = 0; i < imgids.length; i++) {
                create(context, type, typeno[i], imgids[i], textids[i]);
            }
        }

        public TypeItem(Context context, int type, int[] typeno, String[] imgpaths, String[] texts) {
            this.mSubItem = new Item[50];
            for (int i = 0; i < imgpaths.length; i++) {
                create(context, type, typeno[i], imgpaths[i], texts[i]);
            }
        }

        public void create(Context context, int type, int typeno, int imgids, int textids) {
            if (this.mSubItemTotalnum < 100) {
                int index = this.mSubItemTotalnum;
                this.mSubItemTotalnum = index + 1;
                this.mSubItem[index] = Items.this.new Item(context, type, index, typeno, imgids, null, textids, null);
            }
        }

        public void create(Context context, int type, int typeno, String imgpaths, String texts) {
            if (this.mSubItemTotalnum < 100) {
                int index = this.mSubItemTotalnum;
                this.mSubItemTotalnum = index + 1;
                this.mSubItem[index] = Items.this.new Item(context, type, index, typeno, 0, imgpaths, 0, texts);
            }
        }

        public void setContent(int[] powers, int[] prices, int[] moneys) {
            for (int i = 0; i < powers.length; i++) {
                this.mSubItem[i].mPower = powers[i];
                this.mSubItem[i].mPrice = prices[i];
                this.mSubItem[i].mMoney = moneys[i];
            }
        }

        public void setContent(int[] powers, int[] prices, int[] moneys, int[] nums) {
            for (int i = 0; i < powers.length; i++) {
                this.mSubItem[i].mPower = powers[i];
                this.mSubItem[i].mPrice = prices[i];
                this.mSubItem[i].mMoney = moneys[i];
                this.mSubItem[i].mNum = nums[i];
            }
        }
    }

    public Item checkOverlap(int type, int subtype) {
        int totalnum = this.mItemTotalnum;
        for (int i = 0; i < totalnum; i++) {
            Item item = this.mItem[i];
            if (item.mType == type && item.mSubType == subtype) {
                return item;
            }
        }
        return null;
    }

    public Item createItem(int type, int subtype) {
        if (this.mItemTotalnum >= 100) {
            return null;
        }
        int index = this.mItemTotalnum;
        this.mItemTotalnum = index + 1;
        this.mItem[index] = new Item(this.mTypeItem[type].mSubItem[subtype]);
        return this.mItem[index];
    }

    public void destroyItem(int index) {
        int totalnum = this.mItemTotalnum - 1;
        this.mItemTotalnum = totalnum;
        if (index < totalnum) {
            for (int i = index; i < totalnum; i++) {
                this.mItem[i].set(this.mItem[i + 1]);
            }
        }
    }

    public int getIndex(int slotnum) {
        int totalnum = this.mItemTotalnum;
        for (int i = 0; i < totalnum; i++) {
            if (this.mItem[i].mSlotnum == slotnum) {
                return i;
            }
        }
        return -1;
    }

    public int getSetIndex(int type) {
        return this.mSetTable[type];
    }

    public void setSetTable() {
        Arrays.fill(this.mSetTable, -1);
        int totalnum = this.mItemTotalnum;
        for (int i = 0; i < totalnum; i++) {
            Item item = this.mItem[i];
            if (item.mSet) {
                this.mSetTable[item.mType] = i;
            }
        }
    }

    public void setSetTable(int type, int index) {
        this.mSetTable[type] = index;
    }

    public int getSubType(int type, int typeno) {
        TypeItem typeitem = this.mTypeItem[type];
        int totalnum = typeitem.mSubItemTotalnum;
        for (int i = 0; i < totalnum; i++) {
            if (typeitem.mSubItem[i].mTypeNo == typeno) {
                return i;
            }
        }
        return -1;
    }

    class Item {
        public int mIconImgId;
        public String mIconImgPath;
        public int mMoney;
        public int mNum;
        public int mPower;
        public int mPrice;
        public String mSeqs;
        public boolean mSet;
        public int mSlotnum;
        public int mSubType;
        public String mText;
        public int mType;
        public int mTypeNo;

        public Item(Context context, int type, int subtype, int typeno, int iconimgid, String iconimgpath, int textid, String text) {
            this.mIconImgId = iconimgid;
            this.mIconImgPath = iconimgpath;
            this.mText = text == null ? context.getResources().getString(textid) : text;
            this.mSeqs = GameView.CHARACTER_AI;
            this.mType = type;
            this.mSubType = subtype;
            this.mTypeNo = typeno;
            this.mSlotnum = -1;
            this.mSet = false;
            this.mNum = 1;
        }

        public Item(Item item) {
            set(item);
        }

        public void set(Item item) {
            this.mIconImgId = item.mIconImgId;
            this.mIconImgPath = item.mIconImgPath;
            this.mText = item.mText;
            this.mSeqs = item.mSeqs;
            this.mType = item.mType;
            this.mSubType = item.mSubType;
            this.mTypeNo = item.mTypeNo;
            this.mSlotnum = item.mSlotnum;
            this.mSet = item.mSet;
            this.mNum = item.mNum;
            this.mPower = item.mPower;
            this.mPrice = item.mPrice;
            this.mMoney = item.mMoney;
        }
    }
}
