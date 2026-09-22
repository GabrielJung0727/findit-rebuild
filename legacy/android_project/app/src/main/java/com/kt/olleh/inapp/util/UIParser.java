package com.kt.olleh.inapp.util;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.feelingk.iap.util.Defines;
import com.findit.battle.Objects;
import com.jargoandroid.connectnetwork.ConnectNetwork;
import com.kt.olleh.inapp.Config.Config;
import java.io.IOException;
import java.io.InputStream;
import java.util.Hashtable;
import java.util.Stack;
import junit.framework.Assert;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: loaded from: classes.dex */
public class UIParser {
    private static final String TAG = "UIParser";
    private Context mContext;
    private boolean hasResDir = false;
    private Hashtable<String, Integer> mHash = new Hashtable<>();
    private Stack mLayoutStack = new Stack();
    private int mIndex = 0;

    public UIParser(Context context) {
        this.mContext = context;
    }

    public String getResourcePath() {
        switch (Config.densityDpi) {
            case 160:
                return this.hasResDir ? "/res/drawable-mdpi/" : "/drawable-mdpi/";
            default:
                return this.hasResDir ? "/res/drawable-hdpi/" : "/drawable-hdpi/";
        }
    }

    public void clear() {
        if (this.mHash != null) {
            this.mHash.clear();
            this.mHash = null;
        }
        this.mContext = null;
    }

    public int getID(String id) {
        if (this.mHash == null) {
            return -1;
        }
        return this.mHash.get(id).intValue();
    }

    public void setID(View view, String value) {
        String[] split = value.split(Objects.Animation.DEVIDER_DATA);
        if (split.length > 0) {
            view.setId(this.mIndex);
            this.mHash.put(split[1], new Integer(this.mIndex));
            this.mIndex++;
        }
    }

    public View Start(String xmlFileFname) {
        try {
            XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
            XmlPullParser parse = factory.newPullParser();
            InputStream is = getClass().getResourceAsStream(xmlFileFname);
            if (is == null) {
                this.hasResDir = true;
                is = getClass().getResourceAsStream("/res" + xmlFileFname);
            }
            parse.setInput(is, ConnectNetwork.UTF_8);
            return inflate(parse);
        } catch (IOException e) {
            Config.LogD(TAG, e.toString(), e);
            return null;
        } catch (XmlPullParserException e2) {
            Config.LogD(TAG, e2.toString(), e2);
            return null;
        }
    }

    private View inflate(XmlPullParser parse) throws XmlPullParserException, IOException {
        this.mLayoutStack.clear();
        this.mHash.clear();
        this.mIndex = 0;
        Stack data = new Stack();
        int evt = parse.getEventType();
        View root = null;
        while (evt != 1) {
            switch (evt) {
                case 0:
                    data.clear();
                    evt = parse.next();
                    break;
                case 1:
                default:
                    evt = parse.next();
                    break;
                case 2:
                    data.push(new StringBuffer());
                    View v = createView(parse);
                    if (v != null) {
                        if (root == null) {
                            root = v;
                        } else {
                            ((ViewGroup) this.mLayoutStack.peek()).addView(v);
                        }
                        if (v instanceof ViewGroup) {
                            this.mLayoutStack.push((ViewGroup) v);
                        }
                        evt = parse.next();
                    }
                    break;
                case 3:
                    data.pop();
                    if (isLayout(parse.getName())) {
                        this.mLayoutStack.pop();
                    }
                    evt = parse.next();
                    break;
                case 4:
                    ((StringBuffer) data.peek()).append(parse.getText());
                    evt = parse.next();
                    break;
            }
        }
        return root;
    }

    private boolean isLayout(String name) {
        return name.endsWith("Layout");
    }

    private View createView(XmlPullParser parse) {
        String name = parse.getName();
        View result = null;
        AttributeSet atts = Xml.asAttributeSet(parse);
        if (name.equals("LinearLayout")) {
            result = new LinearLayout(this.mContext);
        } else if (name.equals("TextView")) {
            result = new TextView(this.mContext);
        } else if (name.equals("ImageView")) {
            result = new ImageView(this.mContext);
        } else if (name.equals("Button")) {
            result = new Button(this.mContext);
        } else if (name.equals("EditText")) {
            result = new EditText(this.mContext);
        } else if (name.equals("RadioGroup")) {
            result = new RadioGroup(this.mContext);
        } else if (name.equals("RadioButton")) {
            result = new RadioButton(this.mContext);
        } else if (name.equals("CheckBox")) {
            result = new CheckBox(this.mContext);
        } else if (name.equals("WebView")) {
            result = new WebView(this.mContext);
        } else {
            Assert.fail("Unhandled tag:" + name);
        }
        if (result == null) {
            return null;
        }
        String id = findAttribute(atts, "android:id");
        if (id != null) {
            setID(result, id);
        }
        String image = findAttribute(atts, "android:background");
        if (image != null) {
            if (image.startsWith("#")) {
                result.setBackgroundColor(Color.parseColor(image));
            } else if (result instanceof EditText) {
                StateListDrawable drawables = new StateListDrawable();
                InputStream in = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + "inapp_input_box.png");
                Drawable btPress = Drawable.createFromStream(in, "inapp_input_box");
                drawables.addState(new int[]{R.attr.state_pressed}, btPress);
                InputStream in2 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + "inapp_input_box.png");
                Drawable btFocus = Drawable.createFromStream(in2, "inapp_input_box");
                drawables.addState(new int[]{R.attr.state_focused}, btFocus);
                InputStream in3 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + "inapp_input_box.png");
                Drawable btOn = Drawable.createFromStream(in3, "inapp_input_box");
                drawables.addState(new int[0], btOn);
                ((EditText) result).setBackgroundDrawable(drawables);
            } else if (!(result instanceof RadioButton)) {
                if (result instanceof Button) {
                    StateListDrawable drawables2 = new StateListDrawable();
                    InputStream in4 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + "inapp_btn_02_p.png");
                    Drawable btOver = Drawable.createFromStream(in4, "inapp_btn_02_p");
                    drawables2.addState(new int[]{R.attr.state_pressed}, btOver);
                    InputStream in5 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + "inapp_btn_02_n.png");
                    Drawable btOn2 = Drawable.createFromStream(in5, "inapp_btn_02_n");
                    drawables2.addState(new int[0], btOn2);
                    ((Button) result).setBackgroundDrawable(drawables2);
                } else {
                    InputStream is = openFile(image);
                    result.setBackgroundDrawable(Drawable.createFromStream(is, image));
                }
            }
        }
        String visible = findAttribute(atts, "android:visibility");
        if (visible != null) {
            if (visible.equals("gone")) {
                result.setVisibility(8);
            } else if (visible.equals("visible")) {
                result.setVisibility(0);
            } else if (visible.equals("invisible")) {
                result.setVisibility(4);
            }
        }
        if (result instanceof RadioGroup) {
            RadioGroup rg = (RadioGroup) result;
            String orient = findAttribute(atts, "android:orientation");
            if (orient != null) {
                if (orient.equals("horizontal")) {
                    rg.setOrientation(0);
                } else if (orient.equals("vertical")) {
                    rg.setOrientation(1);
                }
            }
            String gravity = findAttribute(atts, "android:gravity");
            if (gravity != null) {
                if (gravity.equals("center")) {
                    rg.setGravity(17);
                } else {
                    rg.setGravity(5);
                }
            }
        } else if (result instanceof LinearLayout) {
            LinearLayout ll = (LinearLayout) result;
            String orient2 = findAttribute(atts, "android:orientation");
            if (orient2 != null) {
                if (orient2.equals("horizontal")) {
                    ll.setOrientation(0);
                } else if (orient2.equals("vertical")) {
                    ll.setOrientation(1);
                }
            }
            String gravity2 = findAttribute(atts, "android:gravity");
            if (gravity2 != null) {
                if (gravity2.equals("center")) {
                    ll.setGravity(17);
                } else {
                    ll.setGravity(5);
                }
            }
        } else if (result instanceof EditText) {
            EditText tv = (EditText) result;
            String text = findAttribute(atts, "android:text");
            String textSize = findAttribute(atts, "android:textSize");
            String textColor = findAttribute(atts, "android:textColor");
            String textGravity = findAttribute(atts, "android:gravity");
            String textPassword = findAttribute(atts, "android:password");
            String textMaxLength = findAttribute(atts, "android:maxLength");
            String textHint = findAttribute(atts, "android:hint");
            if (text != null) {
                tv.setText(text.replace("\\n", "\n"));
            }
            if (textSize != null) {
                tv.setTextSize(readSize(textSize));
            }
            if (textColor != null) {
                tv.setTextColor(Color.parseColor(textColor));
            }
            if (textGravity != null) {
                setGravity(tv, textGravity);
            } else {
                tv.setGravity(19);
            }
            if (textPassword != null && textPassword.equals("true")) {
                tv.setTransformationMethod(new PasswordTransformationMethod());
            }
            if (textMaxLength != null) {
                tv.setFilters(new InputFilter[]{new InputFilter.LengthFilter(readInt(textMaxLength))});
            }
            setPadding(tv, atts);
            String maxLines = findAttribute(atts, "android:maxLines");
            if (maxLines != null) {
                tv.setMaxLines(readInt(maxLines));
            }
            String singeline = findAttribute(atts, "android:singleLine");
            if (singeline != null && singeline.equals("true")) {
                tv.setSingleLine(true);
            }
            String imeOptions = findAttribute(atts, "android:imeOptions");
            if (imeOptions != null) {
                if (imeOptions.equals("actionNext")) {
                    tv.setImeOptions(5);
                } else {
                    tv.setImeOptions(6);
                }
            }
            String inputType = findAttribute(atts, "android:inputType");
            if (inputType != null) {
                tv.setInputType(Defines.DIALOG_STATE.DLG_OCB_DELETE_YESNO_DIALOG);
                if (inputType.equals("number")) {
                    tv.setInputType(2);
                }
            }
            if (textHint != null) {
                tv.setHint(textHint);
            }
        } else if (result instanceof TextView) {
            TextView tv2 = (TextView) result;
            String text2 = findAttribute(atts, "android:text");
            String textSize2 = findAttribute(atts, "android:textSize");
            String textColor2 = findAttribute(atts, "android:textColor");
            String textGravity2 = findAttribute(atts, "android:gravity");
            String textEllipsize = findAttribute(atts, "android:ellipsize");
            String textSingleLine = findAttribute(atts, "android:singleLine");
            String textLineSpacingExtra = findAttribute(atts, "lineSpacingExtra");
            String textStyle = findAttribute(atts, "textStyle");
            if (text2 != null) {
                tv2.setText(text2.replace("\\n", "\n"));
            }
            if (textLineSpacingExtra != null) {
                tv2.setLineSpacing(0.0f, Float.parseFloat(textLineSpacingExtra.substring(0, textLineSpacingExtra.length() - 3)));
            } else {
                tv2.setLineSpacing(0.0f, 1.15f);
            }
            if (textSingleLine != null) {
                if (textSingleLine.equals("true")) {
                    tv2.setSingleLine(true);
                } else {
                    tv2.setSingleLine(false);
                }
            }
            if (textEllipsize != null) {
                if (textEllipsize.equals("end")) {
                    tv2.setEllipsize(TextUtils.TruncateAt.END);
                } else if (textEllipsize.equals("marque")) {
                    tv2.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                }
                tv2.setSelected(true);
            }
            if (textSize2 != null) {
                tv2.setTextSize(readSize(textSize2));
            }
            if (textColor2 != null) {
                if (textColor2.startsWith("#")) {
                    tv2.setTextColor(Color.parseColor(textColor2));
                } else {
                    int[][] stateList = {new int[]{R.attr.state_pressed}, new int[1]};
                    int[] colors = {Color.parseColor("#FFFFFF"), Color.parseColor("#171717")};
                    ColorStateList list = new ColorStateList(stateList, colors);
                    tv2.setClickable(true);
                    tv2.setTextColor(list);
                    StateListDrawable drawables3 = new StateListDrawable();
                    InputStream in6 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + "e_popup_list_p.png");
                    Drawable btOver2 = Drawable.createFromStream(in6, "e_popup_list_bg");
                    drawables3.addState(new int[]{R.attr.state_pressed}, btOver2);
                    InputStream in7 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + "e_popup_list_bg.png");
                    Drawable btOn3 = Drawable.createFromStream(in7, "e_popup_list_bg");
                    drawables3.addState(new int[0], btOn3);
                    tv2.setBackgroundDrawable(drawables3);
                }
            }
            if (textGravity2 != null) {
                tv2.setGravity(17);
            } else {
                tv2.setGravity(19);
            }
            if (textStyle != null && textStyle.equals("bold")) {
                tv2.setPaintFlags(tv2.getPaintFlags() | 32);
            }
        } else if (result instanceof Button) {
            Button btn = (Button) result;
            String gravity3 = findAttribute(atts, "android:gravity");
            if (gravity3 != null) {
                if (gravity3.equals("center")) {
                    btn.setGravity(17);
                } else {
                    btn.setGravity(5);
                }
            }
            String textSize3 = findAttribute(atts, "android:textSize");
            if (textSize3 != null) {
                btn.setTextSize(readSize(textSize3));
            }
            String textColor3 = findAttribute(atts, "android:textColor");
            if (textColor3 != null) {
                btn.setTextColor(Color.parseColor(textColor3));
            }
        }
        if (this.mLayoutStack.size() > 0) {
            setPadding(result, atts);
            result.setLayoutParams(loadLayoutParams(atts, (ViewGroup) this.mLayoutStack.peek()));
            return result;
        }
        return result;
    }

    private int setGravity(View v, String layoutGravity) {
        if (layoutGravity != null) {
            String[] split = layoutGravity.split("|");
            int gravity = 0;
            if (split != null) {
                for (int i = 0; i < split.length; i++) {
                    if (split[i].equalsIgnoreCase("top")) {
                        gravity |= 48;
                    } else if (split[i].equalsIgnoreCase("bottom")) {
                        gravity |= 80;
                    } else if (split[i].equalsIgnoreCase("left")) {
                        gravity |= 3;
                    } else if (split[i].equalsIgnoreCase("right")) {
                        gravity |= 5;
                    } else if (split[i].equalsIgnoreCase("center_vertical")) {
                        gravity |= 16;
                    } else if (split[i].equalsIgnoreCase("fill_vertical")) {
                        gravity |= Defines.DIALOG_STATE.DLG_AUTO_PURCHASE_DISMISS;
                    } else if (split[i].equalsIgnoreCase("center_horizontal")) {
                        gravity |= 1;
                    } else if (split[i].equalsIgnoreCase("fill_horizontal")) {
                        gravity |= 7;
                    } else if (split[i].equalsIgnoreCase("center")) {
                        gravity |= 17;
                    } else if (split[i].equalsIgnoreCase("fill")) {
                        gravity |= Defines.DIALOG_STATE.DLG_ALERT_DIALOG;
                    } else if (split[i].equalsIgnoreCase("clip_vertical")) {
                        gravity |= Defines.DIALOG_STATE.DLG_CUTURE_QUERY_ERROR;
                    } else if (split[i].equalsIgnoreCase("clip_horizontal")) {
                        gravity |= 8;
                    }
                }
                return gravity;
            }
        }
        return 17;
    }

    private void setPadding(View v, AttributeSet atts) {
        int left = 0;
        int right = 0;
        int top = 0;
        int bottom = 0;
        String padding = findAttribute(atts, "android:padding");
        if (padding != null) {
            int size = readDPSize(padding);
            bottom = size;
            top = size;
            right = size;
            left = size;
        }
        String paddingTop = findAttribute(atts, "android:paddingTop");
        if (paddingTop != null) {
            int size2 = readDPSize(paddingTop);
            top = size2;
        }
        String paddingBottom = findAttribute(atts, "android:paddingBottom");
        if (paddingBottom != null) {
            int size3 = readDPSize(paddingBottom);
            bottom = size3;
        }
        String paddingLeft = findAttribute(atts, "android:paddingLeft");
        if (paddingLeft != null) {
            int size4 = readDPSize(paddingLeft);
            left = size4;
        }
        String paddingRight = findAttribute(atts, "android:paddingRight");
        if (paddingRight != null) {
            int size5 = readDPSize(paddingRight);
            right = size5;
        }
        v.setPadding(left, top, right, bottom);
    }

    private String findAttribute(AttributeSet atts, String id) {
        for (int i = 0; i < atts.getAttributeCount(); i++) {
            if (atts.getAttributeName(i).equals(id)) {
                return atts.getAttributeValue(i);
            }
        }
        int ix = id.indexOf(":");
        if (ix != -1) {
            return atts.getAttributeValue("http://schemas.android.com/apk/res/android", id.substring(ix + 1));
        }
        return null;
    }

    private ViewGroup.LayoutParams loadLayoutParams(AttributeSet atts, ViewGroup vg) {
        ViewGroup.LayoutParams lps = null;
        String width = findAttribute(atts, "android:layout_width");
        String height = findAttribute(atts, "android:layout_height");
        int w = readSize(width);
        int h = readSize(height);
        if (vg instanceof LinearLayout) {
            lps = new LinearLayout.LayoutParams(w, h);
        }
        if (lps instanceof LinearLayout.LayoutParams) {
            LinearLayout.LayoutParams l = (LinearLayout.LayoutParams) lps;
            String gravity = findAttribute(atts, "android:layout_gravity");
            if (gravity != null) {
                if (gravity.equals("center")) {
                    l.gravity = 17;
                } else {
                    l.gravity = 5;
                }
            }
            String weight = findAttribute(atts, "android:layout_weight");
            if (weight != null) {
                l.weight = Float.parseFloat(weight);
            }
            String marginTop = findAttribute(atts, "android:layout_marginTop");
            String marginLeft = findAttribute(atts, "android:layout_marginLeft");
            String marginRight = findAttribute(atts, "android:layout_marginRight");
            String marginBottom = findAttribute(atts, "android:layout_marginBottom");
            if (marginTop != null) {
                l.topMargin = readDPSize(marginTop);
            }
            if (marginLeft != null) {
                l.leftMargin = readDPSize(marginLeft);
            }
            if (marginRight != null) {
                l.rightMargin = readDPSize(marginRight);
            }
            if (marginBottom != null) {
                l.bottomMargin = readDPSize(marginBottom);
            }
            return l;
        }
        return lps;
    }

    private int readSize(String val) {
        if ("wrap_content".equals(val)) {
            return -2;
        }
        if ("fill_parent".equals(val)) {
            return -1;
        }
        if (val != null) {
            try {
                if (val.length() > 3 && val.endsWith("dip")) {
                    float size = Float.parseFloat(val.substring(0, val.length() - 3));
                    return dipToInt(size);
                }
            } catch (NumberFormatException e) {
                return -1;
            }
        }
        if (val != null && val.length() > 2 && val.endsWith("pt")) {
            float size2 = Float.parseFloat(val.substring(0, val.length() - 2));
            float dpChange = (float) (((double) size2) / 1.5d);
            return (int) (dpChange * 1.0f);
        }
        if (val != null && val.length() > 2 && val.endsWith("sp")) {
            return (int) spTopixel(Float.valueOf(Float.parseFloat(val.substring(0, val.length() - 2))));
        }
        return Integer.parseInt(val);
    }

    private int readFontSize(String val) {
        try {
            float size = Float.parseFloat(val.substring(0, val.length() - 3));
            float dpChange = (float) (((double) size) / 1.5d);
            return (int) dpChange;
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    private int readDPSize(String val) {
        if (val != null) {
            try {
                if (val.length() > 3 && val.endsWith("dip")) {
                    float size = Float.parseFloat(val.substring(0, val.length() - 3));
                    return dipToInt(size);
                }
            } catch (NumberFormatException e) {
                return -1;
            }
        }
        return Integer.parseInt(val);
    }

    private int dipToInt(float number) {
        if (number == 0.0f) {
            return 0;
        }
        return (int) TypedValue.applyDimension(1, number, this.mContext.getResources().getDisplayMetrics());
    }

    private int readInt(String val) {
        if (val == null) {
            return 0;
        }
        try {
            int size = Integer.parseInt(val);
            return size;
        } catch (NumberFormatException e) {
            Config.LogD(TAG, e.toString(), e);
            return 0;
        }
    }

    public String findPath(String value, boolean bNine) {
        String[] split;
        if (value == null) {
            return null;
        }
        if (value.startsWith("@drawable/") && (split = value.split(Objects.Animation.DEVIDER_DATA)) != null && split.length > 1) {
            if (bNine) {
                return String.valueOf(getResourcePath()) + split[1] + ".9.png";
            }
            return String.valueOf(getResourcePath()) + split[1] + ".png";
        }
        return value;
    }

    public String findPath(String value) {
        return findPath(value, false);
    }

    public InputStream openFile(String value) {
        InputStream is = getClass().getResourceAsStream(findPath(value));
        if (is == null) {
            return getClass().getResourceAsStream(findPath(value, true));
        }
        return is;
    }

    public float spTopixel(Float sp) {
        float scaledDensity = this.mContext.getResources().getDisplayMetrics().scaledDensity;
        return sp.floatValue() * scaledDensity;
    }
}
