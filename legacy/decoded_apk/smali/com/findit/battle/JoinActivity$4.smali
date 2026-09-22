.class Lcom/findit/battle/JoinActivity$4;
.super Ljava/lang/Object;
.source "JoinActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/JoinActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/findit/battle/JoinActivity;


# direct methods
.method constructor <init>(Lcom/findit/battle/JoinActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/findit/battle/JoinActivity$4;->this$0:Lcom/findit/battle/JoinActivity;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const v10, 0x7f090009

    const/16 v9, 0x19

    const/4 v7, 0x1

    const/4 v8, -0x1

    .line 124
    const-string v6, ">> onClick()"

    invoke-static {v6}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 125
    iget-object v6, p0, Lcom/findit/battle/JoinActivity$4;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v6}, Lcom/findit/battle/JoinActivity;->access$13(Lcom/findit/battle/JoinActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "nickname":Ljava/lang/String;
    iget-object v6, p0, Lcom/findit/battle/JoinActivity$4;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v6}, Lcom/findit/battle/JoinActivity;->access$2(Lcom/findit/battle/JoinActivity;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_a

    .line 128
    iget-object v6, p0, Lcom/findit/battle/JoinActivity$4;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v6}, Lcom/findit/battle/JoinActivity;->access$14(Lcom/findit/battle/JoinActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "email":Ljava/lang/String;
    iget-object v6, p0, Lcom/findit/battle/JoinActivity$4;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v6}, Lcom/findit/battle/JoinActivity;->access$15(Lcom/findit/battle/JoinActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 130
    .local v5, "password":Ljava/lang/String;
    iget-object v6, p0, Lcom/findit/battle/JoinActivity$4;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v6}, Lcom/findit/battle/JoinActivity;->access$16(Lcom/findit/battle/JoinActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "identifypassword":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v7, :cond_1

    .line 133
    :cond_0
    iget-object v6, p0, Lcom/findit/battle/JoinActivity$4;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v6}, Lcom/findit/battle/JoinActivity;->access$0(Lcom/findit/battle/JoinActivity;)Lcom/findit/battle/CommonDialog;

    move-result-object v6

    const v7, 0x7f090003

    invoke-virtual {v6, v7}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    .line 162
    .end local v0    # "email":Ljava/lang/String;
    .end local v1    # "identifypassword":Ljava/lang/String;
    .end local v5    # "password":Ljava/lang/String;
    :goto_0
    return-void

    .line 134
    .restart local v0    # "email":Ljava/lang/String;
    .restart local v1    # "identifypassword":Ljava/lang/String;
    .restart local v5    # "password":Ljava/lang/String;
    :cond_1
    if-eqz v5, :cond_2

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v7, :cond_3

    .line 135
    :cond_2
    iget-object v6, p0, Lcom/findit/battle/JoinActivity$4;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v6}, Lcom/findit/battle/JoinActivity;->access$0(Lcom/findit/battle/JoinActivity;)Lcom/findit/battle/CommonDialog;

    move-result-object v6

    const v7, 0x7f090004

    invoke-virtual {v6, v7}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    goto :goto_0

    .line 136
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-lt v6, v7, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xc

    if-le v6, v7, :cond_5

    .line 137
    :cond_4
    iget-object v6, p0, Lcom/findit/battle/JoinActivity$4;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v6}, Lcom/findit/battle/JoinActivity;->access$0(Lcom/findit/battle/JoinActivity;)Lcom/findit/battle/CommonDialog;

    move-result-object v6

    const v7, 0x7f090006

    invoke-virtual {v6, v7}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    goto :goto_0

    .line 138
    :cond_5
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 139
    iget-object v6, p0, Lcom/findit/battle/JoinActivity$4;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v6}, Lcom/findit/battle/JoinActivity;->access$0(Lcom/findit/battle/JoinActivity;)Lcom/findit/battle/CommonDialog;

    move-result-object v6

    const v7, 0x7f09000d

    invoke-virtual {v6, v7}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    goto :goto_0

    .line 141
    :cond_6
    const-string v6, "@"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 142
    .local v2, "index":I
    if-eq v2, v8, :cond_7

    if-le v2, v8, :cond_8

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v8, :cond_8

    .line 143
    :cond_7
    iget-object v6, p0, Lcom/findit/battle/JoinActivity$4;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v6}, Lcom/findit/battle/JoinActivity;->access$0(Lcom/findit/battle/JoinActivity;)Lcom/findit/battle/CommonDialog;

    move-result-object v6

    const v7, 0x7f090005

    invoke-virtual {v6, v7}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    goto :goto_0

    .line 146
    :cond_8
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v3, v6

    .line 147
    .local v3, "length":I
    if-lez v3, :cond_9

    if-ge v3, v9, :cond_9

    .line 148
    iget-object v6, p0, Lcom/findit/battle/JoinActivity$4;->this$0:Lcom/findit/battle/JoinActivity;

    iget-object v7, p0, Lcom/findit/battle/JoinActivity$4;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v7}, Lcom/findit/battle/JoinActivity;->access$5(Lcom/findit/battle/JoinActivity;)I

    move-result v7

    invoke-static {v6, v0, v5, v7, v4}, Lcom/findit/battle/JoinActivity;->access$17(Lcom/findit/battle/JoinActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_9
    iget-object v6, p0, Lcom/findit/battle/JoinActivity$4;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v6}, Lcom/findit/battle/JoinActivity;->access$0(Lcom/findit/battle/JoinActivity;)Lcom/findit/battle/CommonDialog;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    goto/16 :goto_0

    .line 156
    .end local v0    # "email":Ljava/lang/String;
    .end local v1    # "identifypassword":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "length":I
    .end local v5    # "password":Ljava/lang/String;
    :cond_a
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v3, v6

    .line 157
    .restart local v3    # "length":I
    if-lez v3, :cond_b

    if-ge v3, v9, :cond_b

    .line 158
    iget-object v6, p0, Lcom/findit/battle/JoinActivity$4;->this$0:Lcom/findit/battle/JoinActivity;

    iget-object v7, p0, Lcom/findit/battle/JoinActivity$4;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v7}, Lcom/findit/battle/JoinActivity;->access$2(Lcom/findit/battle/JoinActivity;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "facebook"

    iget-object v9, p0, Lcom/findit/battle/JoinActivity$4;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v9}, Lcom/findit/battle/JoinActivity;->access$5(Lcom/findit/battle/JoinActivity;)I

    move-result v9

    invoke-static {v6, v7, v8, v9, v4}, Lcom/findit/battle/JoinActivity;->access$17(Lcom/findit/battle/JoinActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 160
    :cond_b
    iget-object v6, p0, Lcom/findit/battle/JoinActivity$4;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v6}, Lcom/findit/battle/JoinActivity;->access$0(Lcom/findit/battle/JoinActivity;)Lcom/findit/battle/CommonDialog;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    goto/16 :goto_0
.end method
