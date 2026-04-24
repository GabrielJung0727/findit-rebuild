package com.findit.battle;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.findit.battle.finals.LOG;

/* JADX INFO: loaded from: classes.dex */
public class DBAdapter {
    private static final String DATABASE_NAME = "FinditData";
    public static final int DATABASE_SUBVERSION_ITEMS = 1;
    public static final int DATABASE_SUBVERSION_SKILLS = 1;
    public static final String DATABASE_TABLE_CHARACTERS = "characters";
    public static final String DATABASE_TABLE_IMAGES = "images";
    public static final String DATABASE_TABLE_SATUP = "setup";
    public static final String DATABASE_TABLE_STATE = "state";
    // 스키마 변경 시 증분. v2: mGem/mHP/mInventorySize/mSkillDeckCount 추가 (1.6 보석 + 확장)
    private static final int DATABASE_VERSION = 2;
    public static final String FIELD_ATTACK = "mAttack";
    public static final String FIELD_AUTOLOGIN = "mAutoLogin";
    public static final String FIELD_CHARACTERS_BODYNUM = "mObjects_mCharacter_mBodyNum";
    public static final String FIELD_CHARACTERS_BODYTYPE = "mObjects_mCharacter_mBodyType";
    public static final String FIELD_CHARACTERS_FACEIMGNUM = "mObjects_mCharacter_mFaceImgnum";
    public static final String FIELD_CHARACTERS_FACEIMGPATH = "mObjects_mCharacter_mFaceImgPath";
    public static final String FIELD_CHARACTERS_NAME = "mObjects_mCharacter_mName";
    public static final String FIELD_COIN = "mCoin";
    public static final String FIELD_DEFENSE = "mDefense";
    public static final String FIELD_FACEBOOKAUTOLOGIN = "mFacebookAutoLogin";
    public static final String FIELD_GEM = "mGem";
    public static final String FIELD_HP = "mHP";
    public static final String FIELD_INVENTORY_SIZE = "mInventorySize";
    public static final String FIELD_IMAGES_DATAS = "ImagesDatas";
    public static final String FIELD_ITEMS = "mItems";
    public static final String FIELD_LEVEL = "mLevel";
    public static final String FIELD_LOGIN = "mLogin";
    public static final String FIELD_LOGIN_ID = "mEmail";
    public static final String FIELD_LOGIN_PASSWORD = "mPassword";
    public static final String FIELD_POINT = "mPoint";
    public static final String FIELD_ROWID = "_id";
    public static final String FIELD_SCORE = "mScore";
    public static final String FIELD_SCREENMODE = "mScreenMode";
    public static final String FIELD_SKILL_DECK_COUNT = "mSkillDeckCount";
    public static final String FIELD_SKILLS = "mSkills";
    public static final String FIELD_SOUNDON = "mSoundon";
    public static final int SATUP_ROWID = 0;
    public static final int STATE_ROWID = 0;
    private final Context mContext;
    private SQLiteDatabase mDb;
    private DatabaseHelper mDbHelper;

    private static class DatabaseHelper extends SQLiteOpenHelper {
        DatabaseHelper(Context context) {
            super(context, DBAdapter.DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, DATABASE_VERSION);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase db) {
            db.execSQL("create table state(_id integer primary key , mScreenMode integer , mLogin integer , mLevel integer , mScore long , mCoin long , mPoint integer , mAttack integer , mDefense integer , mSkills text , mItems text , mGem integer default 0 , mHP integer default 100 , mInventorySize integer default 3 , mSkillDeckCount integer default 1);");
            db.execSQL("create table setup(_id integer primary key , mEmail text , mPassword text , mAutoLogin boolean , mSoundon boolean , mFacebookAutoLogin boolean);");
            db.execSQL("create table images(_id integer primary key , ImagesDatas text);");
            db.execSQL("create table characters(_id integer primary key , mObjects_mCharacter_mName text , mObjects_mCharacter_mBodyType integer , mObjects_mCharacter_mBodyNum integer , mObjects_mCharacter_mFaceImgnum integer , mObjects_mCharacter_mFaceImgPath text);");
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
            LOG.error("Upgrading database from version " + oldVersion + " to " + newVersion);
            if (oldVersion < 2) {
                // v1 → v2: 보석/HP/인벤토리 크기/스킬덱 개수 컬럼 추가
                try { db.execSQL("ALTER TABLE state ADD COLUMN mGem integer default 0"); } catch (Exception e) {}
                try { db.execSQL("ALTER TABLE state ADD COLUMN mHP integer default 100"); } catch (Exception e) {}
                try { db.execSQL("ALTER TABLE state ADD COLUMN mInventorySize integer default 3"); } catch (Exception e) {}
                try { db.execSQL("ALTER TABLE state ADD COLUMN mSkillDeckCount integer default 1"); } catch (Exception e) {}
            }
        }
    }

    public DBAdapter(Context context) {
        this.mContext = context;
    }

    public DBAdapter open() throws SQLException {
        this.mDbHelper = new DatabaseHelper(this.mContext);
        this.mDb = this.mDbHelper.getWritableDatabase();
        return this;
    }

    public void close() {
        this.mDbHelper.close();
    }

    public boolean deleteRow(long rowId, String tablename) {
        return this.mDb.delete(tablename, new StringBuilder("_id=").append(rowId).toString(), null) > 0;
    }

    public long createState() {
        ContentValues initialValues = new ContentValues();
        initialValues.put(FIELD_ROWID, (Integer) 0);
        initialValues.put(FIELD_SCREENMODE, (Integer) 0);
        initialValues.put(FIELD_LOGIN, (Integer) 0);
        initialValues.put(FIELD_LEVEL, (Integer) 1);
        initialValues.put(FIELD_SCORE, (Long) 0L);
        initialValues.put(FIELD_COIN, (Integer) 10);
        initialValues.put(FIELD_POINT, (Integer) 2);
        initialValues.put(FIELD_ATTACK, (Integer) 0);
        initialValues.put(FIELD_DEFENSE, (Integer) 0);
        initialValues.put(FIELD_GEM, (Integer) 0);
        initialValues.put(FIELD_HP, (Integer) 110);
        initialValues.put(FIELD_INVENTORY_SIZE, (Integer) 3);
        initialValues.put(FIELD_SKILL_DECK_COUNT, (Integer) 1);
        initialValues.putNull(FIELD_SKILLS);
        initialValues.putNull(FIELD_ITEMS);
        return this.mDb.insert(DATABASE_TABLE_STATE, null, initialValues);
    }

    public long createSetup() {
        ContentValues initialValues = new ContentValues();
        initialValues.put(FIELD_ROWID, (Integer) 0);
        initialValues.putNull(FIELD_LOGIN_ID);
        initialValues.putNull(FIELD_LOGIN_PASSWORD);
        initialValues.put(FIELD_AUTOLOGIN, (Boolean) true);
        initialValues.put(FIELD_SOUNDON, (Boolean) true);
        initialValues.put(FIELD_FACEBOOKAUTOLOGIN, (Boolean) false);
        return this.mDb.insert(DATABASE_TABLE_SATUP, null, initialValues);
    }

    public long createImages(long rowid, String datas) {
        ContentValues initialValues = new ContentValues();
        initialValues.put(FIELD_ROWID, Long.valueOf(rowid));
        initialValues.put(FIELD_IMAGES_DATAS, datas);
        return this.mDb.insert(DATABASE_TABLE_IMAGES, null, initialValues);
    }

    public long createCharacters(long rowid, int bodytype, int bodynum, int faceimgnum) {
        ContentValues initialValues = new ContentValues();
        initialValues.put(FIELD_ROWID, Long.valueOf(rowid));
        initialValues.putNull(FIELD_CHARACTERS_NAME);
        initialValues.put(FIELD_CHARACTERS_BODYTYPE, Integer.valueOf(bodytype));
        initialValues.put(FIELD_CHARACTERS_BODYNUM, Integer.valueOf(bodynum));
        initialValues.put(FIELD_CHARACTERS_FACEIMGNUM, Integer.valueOf(faceimgnum));
        initialValues.putNull(FIELD_CHARACTERS_FACEIMGPATH);
        return this.mDb.insert(DATABASE_TABLE_CHARACTERS, null, initialValues);
    }

    public boolean updateState(long rowid, int[] intvalues, long[] longvalues, String[] strvalues) {
        ContentValues args = new ContentValues();
        args.put(FIELD_SCREENMODE, Integer.valueOf(intvalues[0]));
        args.put(FIELD_LOGIN, Integer.valueOf(intvalues[1]));
        args.put(FIELD_LEVEL, Integer.valueOf(intvalues[2]));
        args.put(FIELD_SCORE, Long.valueOf(longvalues[0]));
        args.put(FIELD_COIN, Long.valueOf(longvalues[1]));
        args.put(FIELD_POINT, Integer.valueOf(intvalues[3]));
        args.put(FIELD_ATTACK, Integer.valueOf(intvalues[4]));
        args.put(FIELD_DEFENSE, Integer.valueOf(intvalues[5]));
        args.put(FIELD_SKILLS, strvalues[0]);
        args.put(FIELD_ITEMS, strvalues[1]);
        int nUpdateComplete = this.mDb.update(DATABASE_TABLE_STATE, args, "_id=" + rowid, null);
        return nUpdateComplete > 0;
    }

    public boolean updateState(long rowid, int login) {
        ContentValues args = new ContentValues();
        args.put(FIELD_LOGIN, Integer.valueOf(login));
        return this.mDb.update(DATABASE_TABLE_STATE, args, new StringBuilder("_id=").append(rowid).toString(), null) > 0;
    }

    public boolean updateStateForInven(long rowid, int[] intvalues, long[] longvalues, String[] strvalues) {
        ContentValues args = new ContentValues();
        args.put(FIELD_SCORE, Long.valueOf(longvalues[0]));
        args.put(FIELD_COIN, Long.valueOf(longvalues[1]));
        args.put(FIELD_POINT, Integer.valueOf(intvalues[0]));
        args.put(FIELD_SKILLS, strvalues[0]);
        args.put(FIELD_ITEMS, strvalues[1]);
        int nUpdateComplete = this.mDb.update(DATABASE_TABLE_STATE, args, "_id=" + rowid, null);
        return nUpdateComplete > 0;
    }

    public boolean updateSettingLogin(long rowid, String email, String password, boolean autologin) {
        ContentValues args = new ContentValues();
        args.put(FIELD_LOGIN_ID, email);
        args.put(FIELD_LOGIN_PASSWORD, password);
        args.put(FIELD_AUTOLOGIN, Boolean.valueOf(autologin));
        return this.mDb.update(DATABASE_TABLE_SATUP, args, new StringBuilder("_id=").append(rowid).toString(), null) > 0;
    }

    public boolean updateSettingLogin(long rowid, String email, String password) {
        ContentValues args = new ContentValues();
        args.put(FIELD_LOGIN_ID, email);
        args.put(FIELD_LOGIN_PASSWORD, password);
        return this.mDb.update(DATABASE_TABLE_SATUP, args, new StringBuilder("_id=").append(rowid).toString(), null) > 0;
    }

    public boolean updateSetting(long rowid, boolean autologin, boolean soundon) {
        ContentValues args = new ContentValues();
        args.put(FIELD_AUTOLOGIN, Boolean.valueOf(autologin));
        args.put(FIELD_SOUNDON, Boolean.valueOf(soundon));
        return this.mDb.update(DATABASE_TABLE_SATUP, args, new StringBuilder("_id=").append(rowid).toString(), null) > 0;
    }

    public boolean updateSetting(long rowid, String field, boolean value) {
        ContentValues args = new ContentValues();
        args.put(field, Boolean.valueOf(value));
        return this.mDb.update(DATABASE_TABLE_SATUP, args, new StringBuilder("_id=").append(rowid).toString(), null) > 0;
    }

    public boolean updateImages(long rowid, String datas) {
        ContentValues args = new ContentValues();
        args.put(FIELD_ROWID, Long.valueOf(rowid));
        args.put(FIELD_IMAGES_DATAS, datas);
        return this.mDb.update(DATABASE_TABLE_IMAGES, args, new StringBuilder("_id=").append(rowid).toString(), null) > 0;
    }

    public boolean updateCharacters(long rowid, int[] intvalues, String[] strvalues) {
        ContentValues args = new ContentValues();
        args.put(FIELD_CHARACTERS_NAME, strvalues[0]);
        args.put(FIELD_CHARACTERS_BODYTYPE, Integer.valueOf(intvalues[0]));
        args.put(FIELD_CHARACTERS_BODYNUM, Integer.valueOf(intvalues[1]));
        args.put(FIELD_CHARACTERS_FACEIMGNUM, Integer.valueOf(intvalues[2]));
        args.put(FIELD_CHARACTERS_FACEIMGPATH, strvalues[1]);
        return this.mDb.update(DATABASE_TABLE_CHARACTERS, args, new StringBuilder("_id=").append(rowid).toString(), null) > 0;
    }

    public boolean updateCharacters(long rowid, String field, String value) {
        ContentValues args = new ContentValues();
        args.put(field, value);
        return this.mDb.update(DATABASE_TABLE_CHARACTERS, args, new StringBuilder("_id=").append(rowid).toString(), null) > 0;
    }

    public Cursor fetchState(long rowId) throws SQLException {
        Cursor c = this.mDb.query(DATABASE_TABLE_STATE, null, "_id=" + rowId, null, null, null, null);
        if (c != null) {
            c.moveToFirst();
        }
        return c;
    }

    public Cursor fetchSetup(long rowId) throws SQLException {
        Cursor c = this.mDb.query(DATABASE_TABLE_SATUP, null, "_id=" + rowId, null, null, null, null);
        if (c != null) {
            c.moveToFirst();
        }
        return c;
    }

    public Cursor fetchImages() throws SQLException {
        Cursor c = this.mDb.query(DATABASE_TABLE_IMAGES, null, null, null, null, null, null);
        if (c != null) {
            c.moveToFirst();
        }
        return c;
    }

    public Cursor fetchCharacters() throws SQLException {
        Cursor c = this.mDb.query(DATABASE_TABLE_CHARACTERS, null, null, null, null, null, null);
        if (c != null) {
            c.moveToFirst();
        }
        return c;
    }

    public Cursor fetchCharacters(long rowId) throws SQLException {
        Cursor c = this.mDb.query(DATABASE_TABLE_CHARACTERS, null, "_id=" + rowId, null, null, null, null);
        if (c != null) {
            c.moveToFirst();
        }
        return c;
    }
}
