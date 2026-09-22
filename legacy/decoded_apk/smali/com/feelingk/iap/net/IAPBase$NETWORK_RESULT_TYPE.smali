.class public final enum Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;
.super Ljava/lang/Enum;
.source "IAPBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/net/IAPBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NETWORK_RESULT_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APP_AUTOMATIC_PAYMENT:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_AUTOMATIC_PAYMENT_DISMISS:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_AUTOMATIC_PAYMENT_DISMISS_CHECK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_CHARGE_ITEM:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_CHARGE_ITEM_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_CULTURELAND_CASH_REQ:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_CULTURELAND_CASH_REQ_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_DATA_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_DOTORI_SMSAUTH_NUMBER_REQ:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_DOTORI_SMSAUTH_NUMBER_REQ_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_DOTORI_SMSAUTH_REQ:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_DOTORI_SMSAUTH_REQ_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_DOWNLOADING:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_ERROR:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_FINAL_VERSION_CHECK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_IMEI_AUTH_NOT_REQUIRED:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_IMEI_AUTH_POPUP:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_IMEI_AUTH_REQ:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_LGU_SMSAUTHN_UMBER_REQ:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_LGU_SMSAUTHN_UMBER_REQ_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_LGU_SMSAUTH_REQ:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_LGU_SMSAUTH_REQ_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_LIMIT_EXCESS:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_MAIN:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_MAX:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_MEMBERSHIP:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_MEMBERSHIP_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_OCBCARD_UPDATE_REQ:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_OCBCARD_UPDATE_REQ_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_OCBPOINTINFO_REQ:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_OCBPOINTINFO_REQ_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_QUERY_ITEM:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_QUERY_ITEM_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_SKT_CERTI_FAIL:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_USER_CERTI_FAIL:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field public static final enum APP_VALID_USER:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field private static final synthetic ENUM$VALUES:[Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_AUTOMATIC_PAYMENT"

    invoke-direct {v0, v1, v3}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_AUTOMATIC_PAYMENT:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 36
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_AUTOMATIC_PAYMENT_DISMISS"

    invoke-direct {v0, v1, v4}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_AUTOMATIC_PAYMENT_DISMISS:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 37
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_AUTOMATIC_PAYMENT_DISMISS_CHECK"

    invoke-direct {v0, v1, v5}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_AUTOMATIC_PAYMENT_DISMISS_CHECK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 38
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_SKT_CERTI_FAIL"

    invoke-direct {v0, v1, v6}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_SKT_CERTI_FAIL:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 39
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_FINAL_VERSION_CHECK"

    invoke-direct {v0, v1, v7}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_FINAL_VERSION_CHECK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 40
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_USER_CERTI_FAIL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_USER_CERTI_FAIL:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 41
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_LIMIT_EXCESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_LIMIT_EXCESS:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 42
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_MAIN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_MAIN:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 43
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_VALID_USER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_VALID_USER:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 44
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_QUERY_ITEM"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_QUERY_ITEM:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 45
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_QUERY_ITEM_OK"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_QUERY_ITEM_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 46
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_CHARGE_ITEM"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_CHARGE_ITEM:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 47
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_CHARGE_ITEM_OK"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_CHARGE_ITEM_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 48
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_DATA_OK"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_DATA_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 49
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_DOWNLOADING"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_DOWNLOADING:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 50
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_ERROR"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_ERROR:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 51
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_MEMBERSHIP"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_MEMBERSHIP:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 52
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_MEMBERSHIP_OK"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_MEMBERSHIP_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 53
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_LGU_SMSAUTHN_UMBER_REQ"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_LGU_SMSAUTHN_UMBER_REQ:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 54
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_LGU_SMSAUTHN_UMBER_REQ_OK"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_LGU_SMSAUTHN_UMBER_REQ_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 55
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_LGU_SMSAUTH_REQ"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_LGU_SMSAUTH_REQ:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 56
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_LGU_SMSAUTH_REQ_OK"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_LGU_SMSAUTH_REQ_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 57
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_IMEI_AUTH_NOT_REQUIRED"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_IMEI_AUTH_NOT_REQUIRED:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 58
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_IMEI_AUTH_POPUP"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_IMEI_AUTH_POPUP:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 59
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_IMEI_AUTH_REQ"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_IMEI_AUTH_REQ:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 60
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_OCBCARD_UPDATE_REQ"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_OCBCARD_UPDATE_REQ:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 61
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_OCBCARD_UPDATE_REQ_OK"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_OCBCARD_UPDATE_REQ_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 62
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_OCBPOINTINFO_REQ"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_OCBPOINTINFO_REQ:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 63
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_OCBPOINTINFO_REQ_OK"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_OCBPOINTINFO_REQ_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 64
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_CULTURELAND_CASH_REQ"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_CULTURELAND_CASH_REQ:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 65
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_CULTURELAND_CASH_REQ_OK"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_CULTURELAND_CASH_REQ_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 66
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_DOTORI_SMSAUTH_NUMBER_REQ"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_DOTORI_SMSAUTH_NUMBER_REQ:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 67
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_DOTORI_SMSAUTH_NUMBER_REQ_OK"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_DOTORI_SMSAUTH_NUMBER_REQ_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 68
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_DOTORI_SMSAUTH_REQ"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_DOTORI_SMSAUTH_REQ:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 69
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_DOTORI_SMSAUTH_REQ_OK"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_DOTORI_SMSAUTH_REQ_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 71
    new-instance v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    const-string v1, "APP_MAX"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_MAX:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 34
    const/16 v0, 0x24

    new-array v0, v0, [Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_AUTOMATIC_PAYMENT:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_AUTOMATIC_PAYMENT_DISMISS:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_AUTOMATIC_PAYMENT_DISMISS_CHECK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_SKT_CERTI_FAIL:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_FINAL_VERSION_CHECK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_USER_CERTI_FAIL:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_LIMIT_EXCESS:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_MAIN:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_VALID_USER:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_QUERY_ITEM:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_QUERY_ITEM_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_CHARGE_ITEM:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_CHARGE_ITEM_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_DATA_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_DOWNLOADING:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_ERROR:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_MEMBERSHIP:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_MEMBERSHIP_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_LGU_SMSAUTHN_UMBER_REQ:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_LGU_SMSAUTHN_UMBER_REQ_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_LGU_SMSAUTH_REQ:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_LGU_SMSAUTH_REQ_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_IMEI_AUTH_NOT_REQUIRED:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_IMEI_AUTH_POPUP:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_IMEI_AUTH_REQ:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_OCBCARD_UPDATE_REQ:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_OCBCARD_UPDATE_REQ_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_OCBPOINTINFO_REQ:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_OCBPOINTINFO_REQ_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_CULTURELAND_CASH_REQ:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_CULTURELAND_CASH_REQ_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_DOTORI_SMSAUTH_NUMBER_REQ:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_DOTORI_SMSAUTH_NUMBER_REQ_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_DOTORI_SMSAUTH_REQ:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_DOTORI_SMSAUTH_REQ_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_MAX:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->ENUM$VALUES:[Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->ENUM$VALUES:[Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    array-length v1, v0

    new-array v2, v1, [Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
