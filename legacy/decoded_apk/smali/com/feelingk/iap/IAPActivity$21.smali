.class Lcom/feelingk/iap/IAPActivity$21;
.super Ljava/lang/Object;
.source "IAPActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/IAPActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/IAPActivity;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$21;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 2137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v10, 0x67

    .line 2141
    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity$21;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v7}, Lcom/feelingk/iap/IAPActivity;->access$46(Lcom/feelingk/iap/IAPActivity;)V

    .line 2142
    const-string v7, "IAPActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DlgType"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2143
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v7

    if-ne v7, v10, :cond_1

    .line 2144
    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity$21;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v7}, Lcom/feelingk/iap/IAPActivity;->access$46(Lcom/feelingk/iap/IAPActivity;)V

    .line 2145
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    const-string v8, "http://helpdesk.nate.com/userinfo/exMemberInfo.asp?pgcode=my_phone"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2146
    .local v3, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity$21;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v7, v3}, Lcom/feelingk/iap/IAPActivity;->startActivity(Landroid/content/Intent;)V

    .line 2148
    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity$21;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v7}, Lcom/feelingk/iap/IAPActivity;->access$16(Lcom/feelingk/iap/IAPActivity;)V

    .line 2149
    const/16 v7, 0x7d

    invoke-static {v7}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 2195
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 2151
    :cond_1
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v7

    const/16 v8, 0x7e

    if-ne v7, v8, :cond_2

    .line 2152
    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity$21;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v7}, Lcom/feelingk/iap/IAPActivity;->access$46(Lcom/feelingk/iap/IAPActivity;)V

    .line 2154
    const/16 v7, 0x66

    invoke-static {v7}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 2155
    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity$21;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v7}, Lcom/feelingk/iap/IAPActivity;->access$12(Lcom/feelingk/iap/IAPActivity;)V

    .line 2156
    const-string v7, "D"

    iget-object v8, p0, Lcom/feelingk/iap/IAPActivity$21;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v8}, Lcom/feelingk/iap/IAPActivity;->access$9(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v8

    invoke-virtual {v8}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getmOCBCardNum()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/feelingk/iap/IAPLib;->sendOCBUpdateReq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2158
    :cond_2
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v7

    const/16 v8, 0x7f

    if-eq v7, v8, :cond_3

    .line 2159
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v7

    const/16 v8, 0x80

    if-eq v7, v8, :cond_3

    .line 2160
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v7

    const/16 v8, 0x82

    if-ne v7, v8, :cond_4

    .line 2161
    :cond_3
    invoke-static {v10}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 2162
    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity$21;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v8, p0, Lcom/feelingk/iap/IAPActivity$21;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v8}, Lcom/feelingk/iap/IAPActivity;->access$9(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/feelingk/iap/IAPActivity;->access$10(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Object;)V

    goto :goto_0

    .line 2165
    :cond_4
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v7

    const/16 v8, 0x72

    if-ne v7, v8, :cond_0

    .line 2167
    const/4 v6, 0x0

    .line 2170
    .local v6, "tStoreFlag":Z
    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity$21;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v7}, Lcom/feelingk/iap/IAPActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2171
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 2172
    .local v1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v0, 0x0

    .line 2173
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 2174
    .local v4, "nSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v4, :cond_5

    .line 2183
    if-eqz v6, :cond_7

    .line 2186
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2187
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v7, "com.skt.skaf.A000Z00040"

    const-string v8, "com.skt.skaf.A000Z00040.A000Z00040"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2188
    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity$21;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v7, v3}, Lcom/feelingk/iap/IAPActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2175
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 2176
    .restart local v0    # "app":Landroid/content/pm/ApplicationInfo;
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.skt.skaf.A000Z00040"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_6

    .line 2177
    const/4 v6, 0x1

    .line 2178
    const-string v7, "IAPActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\ud2f0\uc2a4\ud1a0\uc5b4 \uc124\uce58\uc5ec\ubd80: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2174
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2191
    :cond_7
    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity$21;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v7}, Lcom/feelingk/iap/IAPActivity;->access$46(Lcom/feelingk/iap/IAPActivity;)V

    goto/16 :goto_0
.end method
