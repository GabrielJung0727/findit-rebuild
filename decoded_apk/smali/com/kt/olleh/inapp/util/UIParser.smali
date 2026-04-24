.class public Lcom/kt/olleh/inapp/util/UIParser;
.super Ljava/lang/Object;
.source "UIParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UIParser"


# instance fields
.field private hasResDir:Z

.field private mContext:Landroid/content/Context;

.field private mHash:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private mLayoutStack:Ljava/util/Stack;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v1, p0, Lcom/kt/olleh/inapp/util/UIParser;->hasResDir:Z

    .line 59
    iput-object p1, p0, Lcom/kt/olleh/inapp/util/UIParser;->mContext:Landroid/content/Context;

    .line 60
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/util/UIParser;->mHash:Ljava/util/Hashtable;

    .line 61
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/util/UIParser;->mLayoutStack:Ljava/util/Stack;

    .line 62
    iput v1, p0, Lcom/kt/olleh/inapp/util/UIParser;->mIndex:I

    .line 63
    return-void
.end method

.method private createView(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    .locals 44
    .param p1, "parse"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 198
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    .line 199
    .local v21, "name":Ljava/lang/String;
    const/16 v23, 0x0

    .line 200
    .local v23, "result":Landroid/view/View;
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 202
    .local v3, "atts":Landroid/util/AttributeSet;
    const-string v40, "LinearLayout"

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_1

    .line 203
    new-instance v23, Landroid/widget/LinearLayout;

    .end local v23    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/util/UIParser;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 223
    .restart local v23    # "result":Landroid/view/View;
    :goto_0
    if-nez v23, :cond_a

    .line 224
    const/16 v23, 0x0

    .line 534
    .end local v23    # "result":Landroid/view/View;
    :cond_0
    :goto_1
    return-object v23

    .line 204
    .restart local v23    # "result":Landroid/view/View;
    :cond_1
    const-string v40, "TextView"

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_2

    .line 205
    new-instance v23, Landroid/widget/TextView;

    .end local v23    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/util/UIParser;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .restart local v23    # "result":Landroid/view/View;
    goto :goto_0

    .line 206
    :cond_2
    const-string v40, "ImageView"

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_3

    .line 207
    new-instance v23, Landroid/widget/ImageView;

    .end local v23    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/util/UIParser;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .restart local v23    # "result":Landroid/view/View;
    goto :goto_0

    .line 208
    :cond_3
    const-string v40, "Button"

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_4

    .line 209
    new-instance v23, Landroid/widget/Button;

    .end local v23    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/util/UIParser;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .restart local v23    # "result":Landroid/view/View;
    goto :goto_0

    .line 210
    :cond_4
    const-string v40, "EditText"

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_5

    .line 211
    new-instance v23, Landroid/widget/EditText;

    .end local v23    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/util/UIParser;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .restart local v23    # "result":Landroid/view/View;
    goto :goto_0

    .line 212
    :cond_5
    const-string v40, "RadioGroup"

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_6

    .line 213
    new-instance v23, Landroid/widget/RadioGroup;

    .end local v23    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/util/UIParser;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .restart local v23    # "result":Landroid/view/View;
    goto/16 :goto_0

    .line 214
    :cond_6
    const-string v40, "RadioButton"

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 215
    new-instance v23, Landroid/widget/RadioButton;

    .end local v23    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/util/UIParser;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .restart local v23    # "result":Landroid/view/View;
    goto/16 :goto_0

    .line 216
    :cond_7
    const-string v40, "CheckBox"

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_8

    .line 217
    new-instance v23, Landroid/widget/CheckBox;

    .end local v23    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/util/UIParser;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .restart local v23    # "result":Landroid/view/View;
    goto/16 :goto_0

    .line 218
    :cond_8
    const-string v40, "WebView"

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_9

    .line 219
    new-instance v23, Landroid/webkit/WebView;

    .end local v23    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/util/UIParser;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .restart local v23    # "result":Landroid/view/View;
    goto/16 :goto_0

    .line 221
    :cond_9
    new-instance v40, Ljava/lang/StringBuilder;

    const-string v41, "Unhandled tag:"

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 226
    :cond_a
    const-string v40, "android:id"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 227
    .local v12, "id":Ljava/lang/String;
    if-eqz v12, :cond_b

    .line 228
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v12}, Lcom/kt/olleh/inapp/util/UIParser;->setID(Landroid/view/View;Ljava/lang/String;)V

    .line 230
    :cond_b
    const-string v40, "android:background"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 231
    .local v13, "image":Ljava/lang/String;
    if-eqz v13, :cond_c

    .line 233
    const-string v40, "#"

    move-object/from16 v0, v40

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_10

    .line 235
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, v23

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 299
    :cond_c
    :goto_2
    const-string v40, "android:visibility"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 300
    .local v39, "visible":Ljava/lang/String;
    if-eqz v39, :cond_d

    .line 302
    const-string v40, "gone"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_13

    .line 303
    const/16 v40, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    :cond_d
    :goto_3
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/RadioGroup;

    move/from16 v40, v0

    if-eqz v40, :cond_17

    move-object/from16 v24, v23

    .line 311
    check-cast v24, Landroid/widget/RadioGroup;

    .line 312
    .local v24, "rg":Landroid/widget/RadioGroup;
    const-string v40, "android:orientation"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 313
    .local v22, "orient":Ljava/lang/String;
    if-eqz v22, :cond_e

    .line 315
    const-string v40, "horizontal"

    move-object/from16 v0, v22

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_15

    .line 316
    const/16 v40, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 321
    :cond_e
    :goto_4
    const-string v40, "android:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 322
    .local v11, "gravity":Ljava/lang/String;
    if-eqz v11, :cond_f

    .line 324
    const-string v40, "center"

    move-object/from16 v0, v40

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_16

    .line 325
    const/16 v40, 0x11

    move-object/from16 v0, v24

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setGravity(I)V

    .line 529
    .end local v11    # "gravity":Ljava/lang/String;
    .end local v22    # "orient":Ljava/lang/String;
    .end local v24    # "rg":Landroid/widget/RadioGroup;
    :cond_f
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/util/UIParser;->mLayoutStack:Ljava/util/Stack;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/Stack;->size()I

    move-result v40

    if-lez v40, :cond_0

    .line 531
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v3}, Lcom/kt/olleh/inapp/util/UIParser;->setPadding(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/util/UIParser;->mLayoutStack:Ljava/util/Stack;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->loadLayoutParams(Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v40

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 239
    .end local v39    # "visible":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v40, v0

    if-eqz v40, :cond_11

    move-object/from16 v8, v23

    .line 241
    check-cast v8, Landroid/widget/EditText;

    .line 243
    .local v8, "btn":Landroid/widget/EditText;
    new-instance v10, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 245
    .local v10, "drawables":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v40

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/kt/olleh/inapp/util/UIParser;->getResourcePath()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v42, "inapp_input_box.png"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 246
    .local v15, "in":Ljava/io/InputStream;
    const-string v40, "inapp_input_box"

    move-object/from16 v0, v40

    invoke-static {v15, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 247
    .local v7, "btPress":Landroid/graphics/drawable/Drawable;
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [I

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const v42, 0x10100a7

    aput v42, v40, v41

    move-object/from16 v0, v40

    invoke-virtual {v10, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 249
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v40

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/kt/olleh/inapp/util/UIParser;->getResourcePath()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v42, "inapp_input_box.png"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 250
    const-string v40, "inapp_input_box"

    move-object/from16 v0, v40

    invoke-static {v15, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 251
    .local v4, "btFocus":Landroid/graphics/drawable/Drawable;
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [I

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const v42, 0x101009c

    aput v42, v40, v41

    move-object/from16 v0, v40

    invoke-virtual {v10, v0, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 253
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v40

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/kt/olleh/inapp/util/UIParser;->getResourcePath()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v42, "inapp_input_box.png"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 254
    const-string v40, "inapp_input_box"

    move-object/from16 v0, v40

    invoke-static {v15, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 255
    .local v5, "btOn":Landroid/graphics/drawable/Drawable;
    const/16 v40, 0x0

    move/from16 v0, v40

    new-array v0, v0, [I

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v10, v0, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 257
    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 259
    .end local v4    # "btFocus":Landroid/graphics/drawable/Drawable;
    .end local v5    # "btOn":Landroid/graphics/drawable/Drawable;
    .end local v7    # "btPress":Landroid/graphics/drawable/Drawable;
    .end local v8    # "btn":Landroid/widget/EditText;
    .end local v10    # "drawables":Landroid/graphics/drawable/StateListDrawable;
    .end local v15    # "in":Ljava/io/InputStream;
    :cond_11
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/RadioButton;

    move/from16 v40, v0

    if-nez v40, :cond_c

    .line 275
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/Button;

    move/from16 v40, v0

    if-eqz v40, :cond_12

    move-object/from16 v8, v23

    .line 277
    check-cast v8, Landroid/widget/Button;

    .line 279
    .local v8, "btn":Landroid/widget/Button;
    new-instance v10, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 281
    .restart local v10    # "drawables":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v40

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/kt/olleh/inapp/util/UIParser;->getResourcePath()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v42, "inapp_btn_02_p.png"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 282
    .restart local v15    # "in":Ljava/io/InputStream;
    const-string v40, "inapp_btn_02_p"

    move-object/from16 v0, v40

    invoke-static {v15, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 283
    .local v6, "btOver":Landroid/graphics/drawable/Drawable;
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [I

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const v42, 0x10100a7

    aput v42, v40, v41

    move-object/from16 v0, v40

    invoke-virtual {v10, v0, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 285
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v40

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/kt/olleh/inapp/util/UIParser;->getResourcePath()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v42, "inapp_btn_02_n.png"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 286
    const-string v40, "inapp_btn_02_n"

    move-object/from16 v0, v40

    invoke-static {v15, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 287
    .restart local v5    # "btOn":Landroid/graphics/drawable/Drawable;
    const/16 v40, 0x0

    move/from16 v0, v40

    new-array v0, v0, [I

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v10, v0, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 289
    invoke-virtual {v8, v10}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 293
    .end local v5    # "btOn":Landroid/graphics/drawable/Drawable;
    .end local v6    # "btOver":Landroid/graphics/drawable/Drawable;
    .end local v8    # "btn":Landroid/widget/Button;
    .end local v10    # "drawables":Landroid/graphics/drawable/StateListDrawable;
    .end local v15    # "in":Ljava/io/InputStream;
    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kt/olleh/inapp/util/UIParser;->openFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    .line 294
    .local v17, "is":Ljava/io/InputStream;
    move-object/from16 v0, v17

    invoke-static {v0, v13}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v40

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 304
    .end local v17    # "is":Ljava/io/InputStream;
    .restart local v39    # "visible":Ljava/lang/String;
    :cond_13
    const-string v40, "visible"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_14

    .line 305
    const/16 v40, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 306
    :cond_14
    const-string v40, "invisible"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_d

    .line 307
    const/16 v40, 0x4

    move-object/from16 v0, v23

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 317
    .restart local v22    # "orient":Ljava/lang/String;
    .restart local v24    # "rg":Landroid/widget/RadioGroup;
    :cond_15
    const-string v40, "vertical"

    move-object/from16 v0, v22

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_e

    .line 318
    const/16 v40, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOrientation(I)V

    goto/16 :goto_4

    .line 327
    .restart local v11    # "gravity":Ljava/lang/String;
    :cond_16
    const/16 v40, 0x5

    move-object/from16 v0, v24

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setGravity(I)V

    goto/16 :goto_5

    .line 330
    .end local v11    # "gravity":Ljava/lang/String;
    .end local v22    # "orient":Ljava/lang/String;
    .end local v24    # "rg":Landroid/widget/RadioGroup;
    :cond_17
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/LinearLayout;

    move/from16 v40, v0

    if-eqz v40, :cond_1b

    move-object/from16 v19, v23

    .line 332
    check-cast v19, Landroid/widget/LinearLayout;

    .line 333
    .local v19, "ll":Landroid/widget/LinearLayout;
    const-string v40, "android:orientation"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 334
    .restart local v22    # "orient":Ljava/lang/String;
    if-eqz v22, :cond_18

    .line 336
    const-string v40, "horizontal"

    move-object/from16 v0, v22

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_19

    .line 337
    const/16 v40, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 342
    :cond_18
    :goto_6
    const-string v40, "android:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 343
    .restart local v11    # "gravity":Ljava/lang/String;
    if-eqz v11, :cond_f

    .line 345
    const-string v40, "center"

    move-object/from16 v0, v40

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_1a

    .line 346
    const/16 v40, 0x11

    move-object/from16 v0, v19

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_5

    .line 338
    .end local v11    # "gravity":Ljava/lang/String;
    :cond_19
    const-string v40, "vertical"

    move-object/from16 v0, v22

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_18

    .line 339
    const/16 v40, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_6

    .line 348
    .restart local v11    # "gravity":Ljava/lang/String;
    :cond_1a
    const/16 v40, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_5

    .line 351
    .end local v11    # "gravity":Ljava/lang/String;
    .end local v19    # "ll":Landroid/widget/LinearLayout;
    .end local v22    # "orient":Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v40, v0

    if-eqz v40, :cond_27

    move-object/from16 v38, v23

    .line 353
    check-cast v38, Landroid/widget/EditText;

    .line 354
    .local v38, "tv":Landroid/widget/EditText;
    const-string v40, "android:text"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 355
    .local v27, "text":Ljava/lang/String;
    const-string v40, "android:textSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 356
    .local v36, "textSize":Ljava/lang/String;
    const-string v40, "android:textColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 357
    .local v28, "textColor":Ljava/lang/String;
    const-string v40, "android:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 358
    .local v30, "textGravity":Ljava/lang/String;
    const-string v40, "android:password"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 359
    .local v34, "textPassword":Ljava/lang/String;
    const-string v40, "android:maxLength"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 360
    .local v33, "textMaxLength":Ljava/lang/String;
    const-string v40, "android:hint"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 362
    .local v31, "textHint":Ljava/lang/String;
    if-eqz v27, :cond_1c

    .line 364
    const-string v40, "\\n"

    const-string v41, "\n"

    move-object/from16 v0, v27

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v27

    .line 365
    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 368
    :cond_1c
    if-eqz v36, :cond_1d

    .line 369
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/util/UIParser;->readSize(Ljava/lang/String;)I

    move-result v40

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 371
    :cond_1d
    if-eqz v28, :cond_1e

    .line 372
    invoke-static/range {v28 .. v28}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 374
    :cond_1e
    if-eqz v30, :cond_25

    .line 375
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/kt/olleh/inapp/util/UIParser;->setGravity(Landroid/view/View;Ljava/lang/String;)I

    .line 379
    :goto_7
    if-eqz v34, :cond_1f

    const-string v40, "true"

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_1f

    .line 380
    new-instance v40, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct/range {v40 .. v40}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 382
    :cond_1f
    if-eqz v33, :cond_20

    .line 383
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    new-instance v42, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/util/UIParser;->readInt(Ljava/lang/String;)I

    move-result v43

    invoke-direct/range {v42 .. v43}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v42, v40, v41

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 385
    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v3}, Lcom/kt/olleh/inapp/util/UIParser;->setPadding(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 387
    const-string v40, "android:maxLines"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 388
    .local v20, "maxLines":Ljava/lang/String;
    if-eqz v20, :cond_21

    .line 389
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/util/UIParser;->readInt(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 391
    :cond_21
    const-string v40, "android:singleLine"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 392
    .local v25, "singeline":Ljava/lang/String;
    if-eqz v25, :cond_22

    const-string v40, "true"

    move-object/from16 v0, v25

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_22

    .line 393
    const/16 v40, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 395
    :cond_22
    const-string v40, "android:imeOptions"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 396
    .local v14, "imeOptions":Ljava/lang/String;
    if-eqz v14, :cond_23

    .line 398
    const-string v40, "actionNext"

    move-object/from16 v0, v40

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_26

    .line 399
    const/16 v40, 0x5

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 404
    :cond_23
    :goto_8
    const-string v40, "android:inputType"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 405
    .local v16, "inputType":Ljava/lang/String;
    if-eqz v16, :cond_24

    .line 407
    const/16 v40, 0x81

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 409
    const-string v40, "number"

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_24

    .line 410
    const/16 v40, 0x2

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 413
    :cond_24
    if-eqz v31, :cond_f

    .line 414
    move-object/from16 v0, v38

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 377
    .end local v14    # "imeOptions":Ljava/lang/String;
    .end local v16    # "inputType":Ljava/lang/String;
    .end local v20    # "maxLines":Ljava/lang/String;
    .end local v25    # "singeline":Ljava/lang/String;
    :cond_25
    const/16 v40, 0x13

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    goto/16 :goto_7

    .line 401
    .restart local v14    # "imeOptions":Ljava/lang/String;
    .restart local v20    # "maxLines":Ljava/lang/String;
    .restart local v25    # "singeline":Ljava/lang/String;
    :cond_26
    const/16 v40, 0x6

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_8

    .line 418
    .end local v14    # "imeOptions":Ljava/lang/String;
    .end local v20    # "maxLines":Ljava/lang/String;
    .end local v25    # "singeline":Ljava/lang/String;
    .end local v27    # "text":Ljava/lang/String;
    .end local v28    # "textColor":Ljava/lang/String;
    .end local v30    # "textGravity":Ljava/lang/String;
    .end local v31    # "textHint":Ljava/lang/String;
    .end local v33    # "textMaxLength":Ljava/lang/String;
    .end local v34    # "textPassword":Ljava/lang/String;
    .end local v36    # "textSize":Ljava/lang/String;
    .end local v38    # "tv":Landroid/widget/EditText;
    :cond_27
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v40, v0

    if-eqz v40, :cond_33

    move-object/from16 v38, v23

    .line 420
    check-cast v38, Landroid/widget/TextView;

    .line 421
    .local v38, "tv":Landroid/widget/TextView;
    const-string v40, "android:text"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 422
    .restart local v27    # "text":Ljava/lang/String;
    const-string v40, "android:textSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 423
    .restart local v36    # "textSize":Ljava/lang/String;
    const-string v40, "android:textColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 424
    .restart local v28    # "textColor":Ljava/lang/String;
    const-string v40, "android:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 425
    .restart local v30    # "textGravity":Ljava/lang/String;
    const-string v40, "android:ellipsize"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 426
    .local v29, "textEllipsize":Ljava/lang/String;
    const-string v40, "android:singleLine"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 427
    .local v35, "textSingleLine":Ljava/lang/String;
    const-string v40, "lineSpacingExtra"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 428
    .local v32, "textLineSpacingExtra":Ljava/lang/String;
    const-string v40, "textStyle"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 430
    .local v37, "textStyle":Ljava/lang/String;
    if-eqz v27, :cond_28

    .line 432
    const-string v40, "\\n"

    const-string v41, "\n"

    move-object/from16 v0, v27

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v27

    .line 433
    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    :cond_28
    if-eqz v32, :cond_2e

    .line 438
    const/16 v40, 0x0

    const/16 v41, 0x0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v42

    add-int/lit8 v42, v42, -0x3

    move-object/from16 v0, v32

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v41

    move-object/from16 v0, v38

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 443
    :goto_9
    if-eqz v35, :cond_29

    .line 445
    const-string v40, "true"

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_2f

    .line 447
    const/16 v40, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 455
    :cond_29
    :goto_a
    if-eqz v29, :cond_2b

    .line 457
    const-string v40, "end"

    move-object/from16 v0, v29

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_30

    .line 458
    sget-object v40, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 461
    :cond_2a
    :goto_b
    const/16 v40, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 464
    :cond_2b
    if-eqz v36, :cond_2c

    .line 465
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/util/UIParser;->readSize(Ljava/lang/String;)I

    move-result v40

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 467
    :cond_2c
    if-eqz v28, :cond_2d

    .line 469
    const-string v40, "#"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_31

    .line 470
    invoke-static/range {v28 .. v28}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 496
    :cond_2d
    :goto_c
    if-eqz v30, :cond_32

    .line 497
    const/16 v40, 0x11

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 501
    :goto_d
    if-eqz v37, :cond_f

    .line 502
    const-string v40, "bold"

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_f

    .line 503
    invoke-virtual/range {v38 .. v38}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v40

    or-int/lit8 v40, v40, 0x20

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    goto/16 :goto_5

    .line 440
    :cond_2e
    const/16 v40, 0x0

    const v41, 0x3f933333    # 1.15f

    move-object/from16 v0, v38

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    goto/16 :goto_9

    .line 451
    :cond_2f
    const/16 v40, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto/16 :goto_a

    .line 459
    :cond_30
    const-string v40, "marque"

    move-object/from16 v0, v29

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_2a

    .line 460
    sget-object v40, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_b

    .line 473
    :cond_31
    const/16 v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [[I

    move-object/from16 v26, v0

    const/16 v40, 0x0

    const/16 v41, 0x1

    move/from16 v0, v41

    new-array v0, v0, [I

    move-object/from16 v41, v0

    const/16 v42, 0x0

    const v43, 0x10100a7

    aput v43, v41, v42

    aput-object v41, v26, v40

    const/16 v40, 0x1

    const/16 v41, 0x1

    move/from16 v0, v41

    new-array v0, v0, [I

    move-object/from16 v41, v0

    aput-object v41, v26, v40

    .line 475
    .local v26, "stateList":[[I
    const/16 v40, 0x2

    move/from16 v0, v40

    new-array v9, v0, [I

    const/16 v40, 0x0

    const-string v41, "#FFFFFF"

    invoke-static/range {v41 .. v41}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v41

    aput v41, v9, v40

    const/16 v40, 0x1

    const-string v41, "#171717"

    invoke-static/range {v41 .. v41}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v41

    aput v41, v9, v40

    .line 477
    .local v9, "colors":[I
    new-instance v18, Landroid/content/res/ColorStateList;

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v9}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 479
    .local v18, "list":Landroid/content/res/ColorStateList;
    const/16 v40, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 480
    move-object/from16 v0, v38

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 482
    new-instance v10, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 484
    .restart local v10    # "drawables":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v40

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/kt/olleh/inapp/util/UIParser;->getResourcePath()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v42, "e_popup_list_p.png"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 485
    .restart local v15    # "in":Ljava/io/InputStream;
    const-string v40, "e_popup_list_bg"

    move-object/from16 v0, v40

    invoke-static {v15, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 486
    .restart local v6    # "btOver":Landroid/graphics/drawable/Drawable;
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [I

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const v42, 0x10100a7

    aput v42, v40, v41

    move-object/from16 v0, v40

    invoke-virtual {v10, v0, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 488
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v40

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/kt/olleh/inapp/util/UIParser;->getResourcePath()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v42, "e_popup_list_bg.png"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 489
    const-string v40, "e_popup_list_bg"

    move-object/from16 v0, v40

    invoke-static {v15, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 490
    .restart local v5    # "btOn":Landroid/graphics/drawable/Drawable;
    const/16 v40, 0x0

    move/from16 v0, v40

    new-array v0, v0, [I

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v10, v0, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 492
    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_c

    .line 499
    .end local v5    # "btOn":Landroid/graphics/drawable/Drawable;
    .end local v6    # "btOver":Landroid/graphics/drawable/Drawable;
    .end local v9    # "colors":[I
    .end local v10    # "drawables":Landroid/graphics/drawable/StateListDrawable;
    .end local v15    # "in":Ljava/io/InputStream;
    .end local v18    # "list":Landroid/content/res/ColorStateList;
    .end local v26    # "stateList":[[I
    :cond_32
    const/16 v40, 0x13

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_d

    .line 506
    .end local v27    # "text":Ljava/lang/String;
    .end local v28    # "textColor":Ljava/lang/String;
    .end local v29    # "textEllipsize":Ljava/lang/String;
    .end local v30    # "textGravity":Ljava/lang/String;
    .end local v32    # "textLineSpacingExtra":Ljava/lang/String;
    .end local v35    # "textSingleLine":Ljava/lang/String;
    .end local v36    # "textSize":Ljava/lang/String;
    .end local v37    # "textStyle":Ljava/lang/String;
    .end local v38    # "tv":Landroid/widget/TextView;
    :cond_33
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/Button;

    move/from16 v40, v0

    if-eqz v40, :cond_f

    move-object/from16 v8, v23

    .line 508
    check-cast v8, Landroid/widget/Button;

    .line 510
    .restart local v8    # "btn":Landroid/widget/Button;
    const-string v40, "android:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 511
    .restart local v11    # "gravity":Ljava/lang/String;
    if-eqz v11, :cond_34

    .line 513
    const-string v40, "center"

    move-object/from16 v0, v40

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_36

    .line 514
    const/16 v40, 0x11

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setGravity(I)V

    .line 519
    :cond_34
    :goto_e
    const-string v40, "android:textSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 520
    .restart local v36    # "textSize":Ljava/lang/String;
    if-eqz v36, :cond_35

    .line 521
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/util/UIParser;->readSize(Ljava/lang/String;)I

    move-result v40

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 523
    :cond_35
    const-string v40, "android:textColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v3, v1}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 524
    .restart local v28    # "textColor":Ljava/lang/String;
    if-eqz v28, :cond_f

    .line 525
    invoke-static/range {v28 .. v28}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v40

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_5

    .line 516
    .end local v28    # "textColor":Ljava/lang/String;
    .end local v36    # "textSize":Ljava/lang/String;
    :cond_36
    const/16 v40, 0x5

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setGravity(I)V

    goto :goto_e
.end method

.method private dipToInt(F)I
    .locals 3
    .param p1, "number"    # F

    .prologue
    .line 781
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 783
    const/4 v0, 0x0

    .line 787
    :goto_0
    return v0

    .line 786
    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/kt/olleh/inapp/util/UIParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v0, v1

    .line 787
    .local v0, "num":I
    goto :goto_0
.end method

.method private findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "atts"    # Landroid/util/AttributeSet;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 651
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 655
    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 656
    .local v1, "ix":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 657
    const-string v2, "http://schemas.android.com/apk/res/android"

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 659
    .end local v1    # "ix":I
    :goto_1
    return-object v2

    .line 652
    :cond_0
    invoke-interface {p1, v0}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 653
    invoke-interface {p1, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 651
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 659
    .restart local v1    # "ix":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private inflate(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    .locals 6
    .param p1, "parse"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v4, p0, Lcom/kt/olleh/inapp/util/UIParser;->mLayoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->clear()V

    .line 143
    iget-object v4, p0, Lcom/kt/olleh/inapp/util/UIParser;->mHash:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 144
    const/4 v4, 0x0

    iput v4, p0, Lcom/kt/olleh/inapp/util/UIParser;->mIndex:I

    .line 146
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 147
    .local v0, "data":Ljava/util/Stack;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 148
    .local v1, "evt":I
    const/4 v2, 0x0

    .line 149
    .local v2, "root":Landroid/view/View;
    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 188
    return-object v2

    .line 151
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 186
    :cond_2
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 158
    :pswitch_1
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    goto :goto_1

    .line 162
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-direct {p0, p1}, Lcom/kt/olleh/inapp/util/UIParser;->createView(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;

    move-result-object v3

    .line 164
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 166
    if-nez v2, :cond_3

    .line 167
    move-object v2, v3

    .line 170
    :goto_2
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 171
    iget-object v4, p0, Lcom/kt/olleh/inapp/util/UIParser;->mLayoutStack:Ljava/util/Stack;

    check-cast v3, Landroid/view/ViewGroup;

    .end local v3    # "v":Landroid/view/View;
    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 169
    .restart local v3    # "v":Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/kt/olleh/inapp/util/UIParser;->mLayoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 177
    .end local v3    # "v":Landroid/view/View;
    :pswitch_3
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 181
    :pswitch_4
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 182
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/kt/olleh/inapp/util/UIParser;->isLayout(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 183
    iget-object v4, p0, Lcom/kt/olleh/inapp/util/UIParser;->mLayoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private isLayout(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 193
    const-string v0, "Layout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private loadLayoutParams(Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;
    .locals 13
    .param p1, "atts"    # Landroid/util/AttributeSet;
    .param p2, "vg"    # Landroid/view/ViewGroup;

    .prologue
    .line 664
    const/4 v4, 0x0

    .line 665
    .local v4, "lps":Landroid/view/ViewGroup$LayoutParams;
    const-string v12, "android:layout_width"

    invoke-direct {p0, p1, v12}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 666
    .local v11, "width":Ljava/lang/String;
    const-string v12, "android:layout_height"

    invoke-direct {p0, p1, v12}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 667
    .local v2, "height":Ljava/lang/String;
    invoke-direct {p0, v11}, Lcom/kt/olleh/inapp/util/UIParser;->readSize(Ljava/lang/String;)I

    move-result v9

    .line 668
    .local v9, "w":I
    invoke-direct {p0, v2}, Lcom/kt/olleh/inapp/util/UIParser;->readSize(Ljava/lang/String;)I

    move-result v1

    .line 670
    .local v1, "h":I
    instance-of v12, p2, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    .line 671
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .end local v4    # "lps":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v4, v9, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 673
    .restart local v4    # "lps":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v12, v4, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v12, :cond_7

    move-object v3, v4

    .line 675
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 676
    .local v3, "l":Landroid/widget/LinearLayout$LayoutParams;
    const-string v12, "android:layout_gravity"

    invoke-direct {p0, p1, v12}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, "gravity":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 679
    const-string v12, "center"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 680
    const/16 v12, 0x11

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 685
    :cond_1
    :goto_0
    const-string v12, "android:layout_weight"

    invoke-direct {p0, p1, v12}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 686
    .local v10, "weight":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 687
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 688
    :cond_2
    const-string v12, "android:layout_marginTop"

    invoke-direct {p0, p1, v12}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 689
    .local v8, "marginTop":Ljava/lang/String;
    const-string v12, "android:layout_marginLeft"

    invoke-direct {p0, p1, v12}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 690
    .local v6, "marginLeft":Ljava/lang/String;
    const-string v12, "android:layout_marginRight"

    invoke-direct {p0, p1, v12}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 691
    .local v7, "marginRight":Ljava/lang/String;
    const-string v12, "android:layout_marginBottom"

    invoke-direct {p0, p1, v12}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 692
    .local v5, "marginBottom":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 693
    invoke-direct {p0, v8}, Lcom/kt/olleh/inapp/util/UIParser;->readDPSize(Ljava/lang/String;)I

    move-result v12

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 694
    :cond_3
    if-eqz v6, :cond_4

    .line 695
    invoke-direct {p0, v6}, Lcom/kt/olleh/inapp/util/UIParser;->readDPSize(Ljava/lang/String;)I

    move-result v12

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 696
    :cond_4
    if-eqz v7, :cond_5

    .line 697
    invoke-direct {p0, v7}, Lcom/kt/olleh/inapp/util/UIParser;->readDPSize(Ljava/lang/String;)I

    move-result v12

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 698
    :cond_5
    if-eqz v5, :cond_6

    .line 699
    invoke-direct {p0, v5}, Lcom/kt/olleh/inapp/util/UIParser;->readDPSize(Ljava/lang/String;)I

    move-result v12

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 700
    :cond_6
    move-object v4, v3

    .line 702
    .end local v0    # "gravity":Ljava/lang/String;
    .end local v3    # "l":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "marginBottom":Ljava/lang/String;
    .end local v6    # "marginLeft":Ljava/lang/String;
    .end local v7    # "marginRight":Ljava/lang/String;
    .end local v8    # "marginTop":Ljava/lang/String;
    .end local v10    # "weight":Ljava/lang/String;
    :cond_7
    return-object v4

    .line 682
    .restart local v0    # "gravity":Ljava/lang/String;
    .restart local v3    # "l":Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    const/4 v12, 0x5

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method private readDPSize(Ljava/lang/String;)I
    .locals 4
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 763
    const/4 v1, 0x0

    .line 766
    .local v1, "size":F
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    const-string v2, "dip"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 768
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 769
    invoke-direct {p0, v1}, Lcom/kt/olleh/inapp/util/UIParser;->dipToInt(F)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 776
    :goto_0
    return v2

    .line 772
    :catch_0
    move-exception v0

    .line 774
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_0

    .line 776
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method private readFontSize(Ljava/lang/String;)I
    .locals 7
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 741
    const/4 v2, 0x0

    .line 746
    .local v2, "size":F
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 752
    float-to-double v3, v2

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    div-double/2addr v3, v5

    double-to-float v0, v3

    .line 753
    .local v0, "dpChange":F
    float-to-int v3, v0

    .end local v0    # "dpChange":F
    :goto_0
    return v3

    .line 748
    :catch_0
    move-exception v1

    .line 750
    .local v1, "ex":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private readInt(Ljava/lang/String;)I
    .locals 4
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 793
    const/4 v1, 0x0

    .line 796
    .local v1, "size":I
    if-eqz p1, :cond_0

    .line 798
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 805
    :cond_0
    :goto_0
    return v1

    .line 801
    :catch_0
    move-exception v0

    .line 803
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "UIParser"

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private readSize(Ljava/lang/String;)I
    .locals 9
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v4, -0x1

    const/4 v7, 0x0

    .line 707
    const/high16 v0, 0x3f800000    # 1.0f

    .line 708
    .local v0, "density":F
    const-string v5, "wrap_content"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 709
    const/4 v4, -0x2

    .line 736
    :cond_0
    :goto_0
    return v4

    .line 710
    :cond_1
    const-string v5, "fill_parent"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 717
    const/4 v3, 0x0

    .line 718
    .local v3, "size":F
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_2

    const-string v5, "dip"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 720
    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 721
    invoke-direct {p0, v3}, Lcom/kt/olleh/inapp/util/UIParser;->dipToInt(F)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 724
    :catch_0
    move-exception v2

    .line 726
    .local v2, "ex":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 728
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_3

    const-string v4, "pt"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 730
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 731
    float-to-double v4, v3

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    div-double/2addr v4, v6

    double-to-float v1, v4

    .line 732
    .local v1, "dpChange":F
    mul-float v4, v1, v0

    float-to-int v4, v4

    goto :goto_0

    .line 733
    .end local v1    # "dpChange":F
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_4

    const-string v4, "sp"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 734
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/kt/olleh/inapp/util/UIParser;->spTopixel(Ljava/lang/Float;)F

    move-result v4

    float-to-int v4, v4

    goto :goto_0

    .line 736
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0
.end method

.method private setGravity(Landroid/view/View;Ljava/lang/String;)I
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "layoutGravity"    # Ljava/lang/String;

    .prologue
    .line 539
    if-eqz p2, :cond_d

    .line 541
    const-string v3, "|"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 542
    .local v2, "split":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 543
    .local v0, "gravity":I
    if-eqz v2, :cond_d

    .line 545
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 601
    .end local v0    # "gravity":I
    .end local v1    # "i":I
    .end local v2    # "split":[Ljava/lang/String;
    :goto_1
    return v0

    .line 547
    .restart local v0    # "gravity":I
    .restart local v1    # "i":I
    .restart local v2    # "split":[Ljava/lang/String;
    :cond_0
    aget-object v3, v2, v1

    const-string v4, "top"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 549
    or-int/lit8 v0, v0, 0x30

    .line 545
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 551
    :cond_2
    aget-object v3, v2, v1

    const-string v4, "bottom"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 553
    or-int/lit8 v0, v0, 0x50

    goto :goto_2

    .line 555
    :cond_3
    aget-object v3, v2, v1

    const-string v4, "left"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 557
    or-int/lit8 v0, v0, 0x3

    goto :goto_2

    .line 559
    :cond_4
    aget-object v3, v2, v1

    const-string v4, "right"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 561
    or-int/lit8 v0, v0, 0x5

    goto :goto_2

    .line 563
    :cond_5
    aget-object v3, v2, v1

    const-string v4, "center_vertical"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 565
    or-int/lit8 v0, v0, 0x10

    goto :goto_2

    .line 567
    :cond_6
    aget-object v3, v2, v1

    const-string v4, "fill_vertical"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 569
    or-int/lit8 v0, v0, 0x70

    goto :goto_2

    .line 571
    :cond_7
    aget-object v3, v2, v1

    const-string v4, "center_horizontal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 573
    or-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 575
    :cond_8
    aget-object v3, v2, v1

    const-string v4, "fill_horizontal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 577
    or-int/lit8 v0, v0, 0x7

    goto :goto_2

    .line 579
    :cond_9
    aget-object v3, v2, v1

    const-string v4, "center"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 581
    or-int/lit8 v0, v0, 0x11

    goto :goto_2

    .line 583
    :cond_a
    aget-object v3, v2, v1

    const-string v4, "fill"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 585
    or-int/lit8 v0, v0, 0x77

    goto :goto_2

    .line 587
    :cond_b
    aget-object v3, v2, v1

    const-string v4, "clip_vertical"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 589
    or-int/lit16 v0, v0, 0x80

    goto/16 :goto_2

    .line 591
    :cond_c
    aget-object v3, v2, v1

    const-string v4, "clip_horizontal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 593
    or-int/lit8 v0, v0, 0x8

    goto/16 :goto_2

    .line 601
    .end local v0    # "gravity":I
    .end local v1    # "i":I
    .end local v2    # "split":[Ljava/lang/String;
    :cond_d
    const/16 v0, 0x11

    goto/16 :goto_1
.end method

.method private setPadding(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "atts"    # Landroid/util/AttributeSet;

    .prologue
    .line 606
    const/4 v1, 0x0

    .line 607
    .local v1, "left":I
    const/4 v7, 0x0

    .line 608
    .local v7, "right":I
    const/4 v9, 0x0

    .line 609
    .local v9, "top":I
    const/4 v0, 0x0

    .line 611
    .local v0, "bottom":I
    const-string v10, "android:padding"

    invoke-direct {p0, p2, v10}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 612
    .local v2, "padding":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 614
    invoke-direct {p0, v2}, Lcom/kt/olleh/inapp/util/UIParser;->readDPSize(Ljava/lang/String;)I

    move-result v8

    .line 615
    .local v8, "size":I
    move v0, v8

    move v9, v8

    move v7, v8

    move v1, v8

    .line 618
    .end local v8    # "size":I
    :cond_0
    const-string v10, "android:paddingTop"

    invoke-direct {p0, p2, v10}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 619
    .local v6, "paddingTop":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 621
    invoke-direct {p0, v6}, Lcom/kt/olleh/inapp/util/UIParser;->readDPSize(Ljava/lang/String;)I

    move-result v8

    .line 622
    .restart local v8    # "size":I
    move v9, v8

    .line 625
    .end local v8    # "size":I
    :cond_1
    const-string v10, "android:paddingBottom"

    invoke-direct {p0, p2, v10}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 626
    .local v3, "paddingBottom":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 628
    invoke-direct {p0, v3}, Lcom/kt/olleh/inapp/util/UIParser;->readDPSize(Ljava/lang/String;)I

    move-result v8

    .line 629
    .restart local v8    # "size":I
    move v0, v8

    .line 632
    .end local v8    # "size":I
    :cond_2
    const-string v10, "android:paddingLeft"

    invoke-direct {p0, p2, v10}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 633
    .local v4, "paddingLeft":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 635
    invoke-direct {p0, v4}, Lcom/kt/olleh/inapp/util/UIParser;->readDPSize(Ljava/lang/String;)I

    move-result v8

    .line 636
    .restart local v8    # "size":I
    move v1, v8

    .line 639
    .end local v8    # "size":I
    :cond_3
    const-string v10, "android:paddingRight"

    invoke-direct {p0, p2, v10}, Lcom/kt/olleh/inapp/util/UIParser;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 640
    .local v5, "paddingRight":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 642
    invoke-direct {p0, v5}, Lcom/kt/olleh/inapp/util/UIParser;->readDPSize(Ljava/lang/String;)I

    move-result v8

    .line 643
    .restart local v8    # "size":I
    move v7, v8

    .line 646
    .end local v8    # "size":I
    :cond_4
    invoke-virtual {p1, v1, v9, v7, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 647
    return-void
.end method


# virtual methods
.method public Start(Ljava/lang/String;)Landroid/view/View;
    .locals 8
    .param p1, "xmlFileFname"    # Ljava/lang/String;

    .prologue
    .line 113
    const/4 v3, 0x0

    .line 116
    .local v3, "parse":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 117
    .local v1, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 120
    .local v2, "is":Ljava/io/InputStream;
    if-nez v2, :cond_0

    .line 121
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/kt/olleh/inapp/util/UIParser;->hasResDir:Z

    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/res"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 125
    :cond_0
    const-string v5, "utf-8"

    invoke-interface {v3, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, v3}, Lcom/kt/olleh/inapp/util/UIParser;->inflate(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 137
    .end local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v4

    .line 129
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v5, "UIParser"

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 133
    :catch_1
    move-exception v0

    .line 135
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "UIParser"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lcom/kt/olleh/inapp/util/UIParser;->mHash:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/kt/olleh/inapp/util/UIParser;->mHash:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 87
    iput-object v1, p0, Lcom/kt/olleh/inapp/util/UIParser;->mHash:Ljava/util/Hashtable;

    .line 90
    :cond_0
    iput-object v1, p0, Lcom/kt/olleh/inapp/util/UIParser;->mContext:Landroid/content/Context;

    .line 91
    return-void
.end method

.method public findPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 833
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kt/olleh/inapp/util/UIParser;->findPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findPath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "bNine"    # Z

    .prologue
    const/4 v3, 0x1

    .line 810
    if-nez p1, :cond_1

    .line 811
    const/4 p1, 0x0

    .line 828
    .end local p1    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 813
    .restart local p1    # "value":Ljava/lang/String;
    :cond_1
    const-string v1, "@drawable/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 815
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 816
    .local v0, "split":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, v3, :cond_0

    .line 818
    if-eqz p2, :cond_2

    .line 819
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/util/UIParser;->getResourcePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".9.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 821
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/util/UIParser;->getResourcePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getID(Ljava/lang/String;)I
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kt/olleh/inapp/util/UIParser;->mHash:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 96
    const/4 v0, -0x1

    .line 97
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kt/olleh/inapp/util/UIParser;->mHash:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/kt/olleh/inapp/Config/Config;->densityDpi:I

    packed-switch v0, :pswitch_data_0

    .line 77
    iget-boolean v0, p0, Lcom/kt/olleh/inapp/util/UIParser;->hasResDir:Z

    if-eqz v0, :cond_1

    const-string v0, "/res/drawable-hdpi/"

    :goto_0
    return-object v0

    .line 71
    :pswitch_0
    iget-boolean v0, p0, Lcom/kt/olleh/inapp/util/UIParser;->hasResDir:Z

    if-eqz v0, :cond_0

    const-string v0, "/res/drawable-mdpi/"

    goto :goto_0

    :cond_0
    const-string v0, "/drawable-mdpi/"

    goto :goto_0

    .line 77
    :cond_1
    const-string v0, "/drawable-hdpi/"

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0xa0
        :pswitch_0
    .end packed-switch
.end method

.method public openFile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 838
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/kt/olleh/inapp/util/UIParser;->findPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 839
    .local v0, "is":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 841
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/kt/olleh/inapp/util/UIParser;->findPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 844
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_0
    return-object v0
.end method

.method public setID(Landroid/view/View;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 102
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    if-gtz v1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 106
    :cond_0
    iget v1, p0, Lcom/kt/olleh/inapp/util/UIParser;->mIndex:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 107
    iget-object v1, p0, Lcom/kt/olleh/inapp/util/UIParser;->mHash:Ljava/util/Hashtable;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lcom/kt/olleh/inapp/util/UIParser;->mIndex:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget v1, p0, Lcom/kt/olleh/inapp/util/UIParser;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/kt/olleh/inapp/util/UIParser;->mIndex:I

    goto :goto_0
.end method

.method public spTopixel(Ljava/lang/Float;)F
    .locals 2
    .param p1, "sp"    # Ljava/lang/Float;

    .prologue
    .line 848
    iget-object v1, p0, Lcom/kt/olleh/inapp/util/UIParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 849
    .local v0, "scaledDensity":F
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v0

    return v1
.end method
