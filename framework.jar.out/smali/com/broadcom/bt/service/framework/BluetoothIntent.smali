.class public Lcom/broadcom/bt/service/framework/BluetoothIntent;
.super Ljava/lang/Object;
.source "BluetoothIntent.java"


# static fields
.field public static final AUTHORIZE_REQUEST_ACTION:Ljava/lang/String; = "broadcom.android.bluetooth.intent.action.AUTHORIZE_REQUEST"

.field public static final BLUETOOTH_SERVICE_CONNECTED:B = 0x1t

.field public static final BLUETOOTH_SERVICE_DISCONNECTED:B = 0x0t

.field public static final BT_ACTION_PREFIX:Ljava/lang/String; = "broadcom.android.bluetooth.intent.action."

#the value of this static final field might be set in the static constructor
.field public static final BT_ACTION_PREFIX_LENGTH:I = 0x0

.field public static final BT_EXTRA_PREFIX:Ljava/lang/String; = "broadcom.android.bluetooth.intent."

.field public static final BT_SERVICE_ACCESS_ACTION:Ljava/lang/String; = "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

.field public static final BT_SERVICE_CONNECTION_ACTION:Ljava/lang/String; = "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

.field public static final BT_SVC_ENABLE_ACTION:Ljava/lang/String; = "broadcom.android.bluetooth.intent.action.BT_SVC_ENABLE"

.field public static final BT_SVC_STATE_CHANGED_ACTION:Ljava/lang/String; = "broadcom.android.bluetooth.intent.action.BT_SVC_STATE_CHANGED"

.field public static final BT_SVC_STATE_CHANGE_ACTION:Ljava/lang/String; = "broadcom.android.bluetooth.intent.action.BT_SVC_STATE_CHANGE"

.field public static final CALL_STATE:Ljava/lang/String; = "broadcom.android.bluetooth.intent.CALL_STATE"

.field public static final CALL_STATE_CHANGED_ACTION:Ljava/lang/String; = "broadcom.android.bluetooth.intent.action.CALL_STATE_CHANGED"

.field public static final DEVICE:Ljava/lang/String; = "broadcom.android.bluetooth.intent.DEVICE"

.field public static final EXTRA_BT_SVC_MSG_ID:Ljava/lang/String; = "BT_SVC_MSG_ID"

.field public static final EXTRA_BT_SVC_NAME:Ljava/lang/String; = "BT_SVC_NAME"

.field public static final EXTRA_BT_SVC_STATE:Ljava/lang/String; = "BT_SVC_STATE"

.field public static final EXTRA_BYTES_TRANSFERRED:Ljava/lang/String; = "BYTES_TRANSFERRED"

.field public static final EXTRA_FILEPATH:Ljava/lang/String; = "FILEPATH"

.field public static final EXTRA_FORMAT:Ljava/lang/String; = "FORMAT"

.field public static final EXTRA_OPERATION:Ljava/lang/String; = "OPERATION"

.field public static final EXTRA_RMT_DEV_ADDR:Ljava/lang/String; = "RMT_DEV_ADDR"

.field public static final EXTRA_RMT_DEV_NAME:Ljava/lang/String; = "RMT_DEV_NAME"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "STATUS"

.field public static final EXTRA_SVC_NAME:Ljava/lang/String; = "SVC_NAME"

.field public static final EXTRA_TOTAL_BYTES:Ljava/lang/String; = "TOTAL_BYTES"

.field public static final FILE_FORMAT:Ljava/lang/String; = "broadcom.android.bluetooth.intent.FILE_FORMAT"

.field public static final FILE_NAME:Ljava/lang/String; = "broadcom.android.bluetooth.intent.FILE_NAME"

.field public static final FILE_SIZE:Ljava/lang/String; = "broadcom.android.bluetooth.intent.FILE_SIZE"

.field public static final RMT_DEV_ADDR:Ljava/lang/String; = "broadcom.android.bluetooth.intent.RMT_DEV_ADDR"

.field public static final RMT_DEV_NAME:Ljava/lang/String; = "broadcom.android.bluetooth.intent.RMT_DEV_NAME"

.field public static final SERVICE:Ljava/lang/String; = "broadcom.android.bluetooth.intent.SERVICE"

.field public static final SERVICE_CONNECTED:Ljava/lang/String; = "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_CONNECTED"

.field public static final SERVICE_OPER_CODE:Ljava/lang/String; = "broadcom.android.bluetooth.intent.SERVICE_OPER_CODE"

.field public static final SERVICE_TYPE_BNEP:Ljava/lang/String; = "service_bnep"

.field public static final SERVICE_TYPE_DUN:Ljava/lang/String; = "service_dun"

.field public static final SERVICE_TYPE_FTP:Ljava/lang/String; = "service_ftp"

.field public static final SERVICE_TYPE_HID:Ljava/lang/String; = "service_hid"

.field public static final SERVICE_TYPE_MAP:Ljava/lang/String; = "service_map"

.field public static final SERVICE_TYPE_MNS:Ljava/lang/String; = "service_mns"

.field public static final SERVICE_TYPE_MSE:Ljava/lang/String; = "service_mse"

.field public static final SERVICE_TYPE_OPP:Ljava/lang/String; = "service_opp"

.field public static final SERVICE_TYPE_PBAP:Ljava/lang/String; = "service_pbap"

.field public static final SERVICE_TYPE_SAP:Ljava/lang/String; = "service_sap"

.field public static final SERVICE_TYPE_SAP_WEAK_LINKKEY:Ljava/lang/String; = "sap_weak_linkkey"

.field public static final SERVICE_TYPE_SPP:Ljava/lang/String; = "service_spp"

.field public static final SVC_STATE_STARTED:I = 0x2

.field public static final SVC_STATE_STOPPED:I = 0x1

.field public static final TEMPORARY_KEY:Ljava/lang/String; = "broadcom.android.bluetooth.intent.TEMPORARY_KEY"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "broadcom.android.bluetooth.intent.action."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/broadcom/bt/service/framework/BluetoothIntent;->BT_ACTION_PREFIX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
