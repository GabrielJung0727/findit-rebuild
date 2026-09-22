.class Lcom/findit/battle/InventoryActivity_SAMSUNG$14;
.super Ljava/lang/Object;
.source "InventoryActivity_SAMSUNG.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/InventoryActivity_SAMSUNG;->createShopSlots(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;


# direct methods
.method constructor <init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$14;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    .line 1363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1367
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1377
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1369
    :pswitch_0
    const v0, 0x7f0201b8

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1373
    :pswitch_1
    const v0, 0x7f0201bb

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1367
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
