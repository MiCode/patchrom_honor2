.class Lcom/android/server/HDMIConnectService;
.super Landroid/os/IHDMIConnectService$Stub;
.source "HDMIConnectService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HDMIConnectService"


# instance fields
.field public final ACTION_HDCP_AUTH_FAILED:Ljava/lang/String;

.field public final ACTION_HDCP_AUTH_SUCESS:Ljava/lang/String;

.field public final ACTION_HDMI_CABLE_CONNECTED:Ljava/lang/String;

.field public final ACTION_HDMI_CABLE_DISCONNECTED:Ljava/lang/String;

.field public final ACTION_HDMI_OFF:Ljava/lang/String;

.field public final ACTION_HDMI_ON:Ljava/lang/String;

.field final HDMI_MODE_COORDINATE:[I

.field public final HDMI_USER_CONFIG:Ljava/lang/String;

.field final VESA_OFFSET:I

.field final m1024x768p43Hz:I

.field final m1024x768p60Hz:I

.field final m1024x768p70Hz:I

.field final m1024x768p75Hz:I

.field final m1024x768p85Hz:I

.field final m1152x864p75Hz:I

.field final m1280x1024p60Hz:I

.field final m1280x1024p75Hz:I

.field final m1280x1024p85Hz:I

.field final m1280x720p50_16_9:I

.field final m1280x720p60Hz:I

.field final m1280x720p60_16_9:I

.field final m1280x768p60Hz:I

.field final m1280x768p60HzCVT:I

.field final m1280x768p75Hz:I

.field final m1280x768p85Hz:I

.field final m1280x800p60Hz:I

.field final m1280x800p60HzCVT:I

.field final m1280x800p75Hz:I

.field final m1280x800p85Hz:I

.field final m1280x960p60Hz:I

.field final m1280x960p85Hz:I

.field final m1360x768p60Hz:I

.field final m1366x768p60Hz:I

.field final m1400x1050p60Hz:I

.field final m1400x1050p60HzCVT:I

.field final m1400x1050p75Hz:I

.field final m1400x1050p85Hz:I

.field final m1440x900p60Hz:I

.field final m1440x900p60HzCVT:I

.field final m1440x900p75Hz:I

.field final m1440x900p85Hz:I

.field final m1600x1200p60Hz:I

.field final m1600x1200p65Hz:I

.field final m1600x1200p70Hz:I

.field final m1600x1200p75Hz:I

.field final m1600x1200p85Hz:I

.field final m1680x1050p60Hz:I

.field final m1680x1050p60HzCVT:I

.field final m1680x1050p75Hz:I

.field final m1680x1050p85Hz:I

.field final m1920x1080p24_16_9:I

.field final m1920x1080p25_16_9:I

.field final m1920x1080p30_16_9:I

.field final m1920x1080p50_16_9:I

.field final m1920x1080p60Hz:I

.field final m1920x1080p60_16_9:I

.field final m1920x1200p60Hz:I

.field final m640x350p85Hz:I

.field final m640x400p85Hz:I

.field final m640x480p60Hz:I

.field final m640x480p60_4_3:I

.field final m640x480p72Hz:I

.field final m640x480p75Hz:I

.field final m640x480p85Hz:I

.field final m720x400p85Hz:I

.field final m720x480p60_16_9:I

.field final m720x480p60_4_3:I

.field final m720x576p50_16_9:I

.field final m720x576p50_4_3:I

.field final m800x600p56Hz:I

.field final m800x600p60Hz:I

.field final m800x600p72Hz:I

.field final m800x600p75Hz:I

.field final m800x600p85Hz:I

.field final m848x480p60Hz:I

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHDMICodes:[I

.field private mHDMIUserConfig:Z

.field private mListener:Lcom/android/server/HDMIEventListener;

.field final mTimingOrder:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/os/IHDMIConnectService$Stub;-><init>()V

    iput-boolean v2, p0, Lcom/android/server/HDMIConnectService;->mHDMIUserConfig:Z

    const-string v1, "hdmi_connected"

    iput-object v1, p0, Lcom/android/server/HDMIConnectService;->ACTION_HDMI_CABLE_CONNECTED:Ljava/lang/String;

    const-string v1, "hdmi_disconnected"

    iput-object v1, p0, Lcom/android/server/HDMIConnectService;->ACTION_HDMI_CABLE_DISCONNECTED:Ljava/lang/String;

    const-string v1, "hdmi_on"

    iput-object v1, p0, Lcom/android/server/HDMIConnectService;->ACTION_HDMI_ON:Ljava/lang/String;

    const-string v1, "hdmi_off"

    iput-object v1, p0, Lcom/android/server/HDMIConnectService;->ACTION_HDMI_OFF:Ljava/lang/String;

    const-string v1, "hdcp_auth_success"

    iput-object v1, p0, Lcom/android/server/HDMIConnectService;->ACTION_HDCP_AUTH_SUCESS:Ljava/lang/String;

    const-string v1, "hdcp_auth_failed"

    iput-object v1, p0, Lcom/android/server/HDMIConnectService;->ACTION_HDCP_AUTH_FAILED:Ljava/lang/String;

    const-string v1, "HDMI_USER_CONFIG"

    iput-object v1, p0, Lcom/android/server/HDMIConnectService;->HDMI_USER_CONFIG:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/HDMIConnectService;->m640x480p60_4_3:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m720x480p60_4_3:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m720x480p60_16_9:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1280x720p60_16_9:I

    const/16 v1, 0x10

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1920x1080p60_16_9:I

    const/16 v1, 0x11

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m720x576p50_4_3:I

    const/16 v1, 0x12

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m720x576p50_16_9:I

    const/16 v1, 0x13

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1280x720p50_16_9:I

    const/16 v1, 0x1f

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1920x1080p50_16_9:I

    const/16 v1, 0x20

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1920x1080p24_16_9:I

    const/16 v1, 0x21

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1920x1080p25_16_9:I

    const/16 v1, 0x22

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1920x1080p30_16_9:I

    const/16 v1, 0x64

    iput v1, p0, Lcom/android/server/HDMIConnectService;->VESA_OFFSET:I

    const/16 v1, 0x65

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m640x350p85Hz:I

    const/16 v1, 0x66

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m640x400p85Hz:I

    const/16 v1, 0x67

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m720x400p85Hz:I

    const/16 v1, 0x68

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m640x480p60Hz:I

    const/16 v1, 0x69

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m640x480p72Hz:I

    const/16 v1, 0x6a

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m640x480p75Hz:I

    const/16 v1, 0x6b

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m640x480p85Hz:I

    const/16 v1, 0x6c

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m800x600p56Hz:I

    const/16 v1, 0x6d

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m800x600p60Hz:I

    const/16 v1, 0x6e

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m800x600p72Hz:I

    const/16 v1, 0x6f

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m800x600p75Hz:I

    const/16 v1, 0x70

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m800x600p85Hz:I

    const/16 v1, 0x72

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m848x480p60Hz:I

    const/16 v1, 0x73

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1024x768p43Hz:I

    const/16 v1, 0x74

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1024x768p60Hz:I

    const/16 v1, 0x75

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1024x768p70Hz:I

    const/16 v1, 0x76

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1024x768p75Hz:I

    const/16 v1, 0x77

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1024x768p85Hz:I

    const/16 v1, 0x79

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1152x864p75Hz:I

    const/16 v1, 0x7a

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1280x768p60HzCVT:I

    const/16 v1, 0x7b

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1280x768p60Hz:I

    const/16 v1, 0x7c

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1280x768p75Hz:I

    const/16 v1, 0x7d

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1280x768p85Hz:I

    const/16 v1, 0x7f

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1280x800p60HzCVT:I

    const/16 v1, 0x80

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1280x800p60Hz:I

    const/16 v1, 0x81

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1280x800p75Hz:I

    const/16 v1, 0x82

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1280x800p85Hz:I

    const/16 v1, 0x84

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1280x960p60Hz:I

    const/16 v1, 0x85

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1280x960p85Hz:I

    const/16 v1, 0x87

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1280x1024p60Hz:I

    const/16 v1, 0x88

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1280x1024p75Hz:I

    const/16 v1, 0x89

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1280x1024p85Hz:I

    const/16 v1, 0x8b

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1360x768p60Hz:I

    const/16 v1, 0x8d

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1400x1050p60HzCVT:I

    const/16 v1, 0x8e

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1400x1050p60Hz:I

    const/16 v1, 0x8f

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1400x1050p75Hz:I

    const/16 v1, 0x90

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1400x1050p85Hz:I

    const/16 v1, 0x92

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1440x900p60HzCVT:I

    const/16 v1, 0x93

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1440x900p60Hz:I

    const/16 v1, 0x94

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1440x900p75Hz:I

    const/16 v1, 0x95

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1440x900p85Hz:I

    const/16 v1, 0x97

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1600x1200p60Hz:I

    const/16 v1, 0x98

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1600x1200p65Hz:I

    const/16 v1, 0x99

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1600x1200p70Hz:I

    const/16 v1, 0x9a

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1600x1200p75Hz:I

    const/16 v1, 0x9b

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1600x1200p85Hz:I

    const/16 v1, 0x9d

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1680x1050p60HzCVT:I

    const/16 v1, 0x9e

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1680x1050p60Hz:I

    const/16 v1, 0x9f

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1680x1050p75Hz:I

    const/16 v1, 0xa0

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1680x1050p85Hz:I

    const/16 v1, 0xa9

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1920x1200p60Hz:I

    const/16 v1, 0xb5

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1366x768p60Hz:I

    const/16 v1, 0xb6

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1920x1080p60Hz:I

    const/16 v1, 0xb9

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1280x720p60Hz:I

    const/16 v1, 0xc4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/HDMIConnectService;->HDMI_MODE_COORDINATE:[I

    const/16 v1, 0xd

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/server/HDMIConnectService;->mTimingOrder:[I

    new-instance v1, Lcom/android/server/HDMIConnectService$1;

    invoke-direct {v1, p0}, Lcom/android/server/HDMIConnectService$1;-><init>(Lcom/android/server/HDMIConnectService;)V

    iput-object v1, p0, Lcom/android/server/HDMIConnectService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/HDMIConnectService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/HDMIConnectService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/HDMIConnectService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Lcom/android/server/HDMIEventListener;

    invoke-direct {v1, p0}, Lcom/android/server/HDMIEventListener;-><init>(Lcom/android/server/HDMIConnectService;)V

    iput-object v1, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    iget-object v1, p0, Lcom/android/server/HDMIConnectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "HDMI_USER_CONFIG"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, hdmiUserConfig:Ljava/lang/String;
    const-string v1, "hdmi_off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/HDMIConnectService;->mHDMIUserConfig:Z

    :cond_0
    return-void

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x15t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x65t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x6dt 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x6dt 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x76t 0x0t 0x0t 0x0t
        0x77t 0x0t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0x7bt 0x0t 0x0t 0x0t
        0x7ct 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t
        0x7bt 0x0t 0x0t 0x0t
        0x7ft 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x81t 0x0t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x84t 0x0t 0x0t 0x0t
        0x85t 0x0t 0x0t 0x0t
        0x84t 0x0t 0x0t 0x0t
        0x87t 0x0t 0x0t 0x0t
        0x88t 0x0t 0x0t 0x0t
        0x89t 0x0t 0x0t 0x0t
        0x87t 0x0t 0x0t 0x0t
        0x8bt 0x0t 0x0t 0x0t
        0x8bt 0x0t 0x0t 0x0t
        0x8dt 0x0t 0x0t 0x0t
        0x8et 0x0t 0x0t 0x0t
        0x8ft 0x0t 0x0t 0x0t
        0x90t 0x0t 0x0t 0x0t
        0x8et 0x0t 0x0t 0x0t
        0x92t 0x0t 0x0t 0x0t
        0x93t 0x0t 0x0t 0x0t
        0x94t 0x0t 0x0t 0x0t
        0x95t 0x0t 0x0t 0x0t
        0x93t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0x98t 0x0t 0x0t 0x0t
        0x99t 0x0t 0x0t 0x0t
        0x9at 0x0t 0x0t 0x0t
        0x9bt 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0x9dt 0x0t 0x0t 0x0t
        0x9et 0x0t 0x0t 0x0t
        0x9ft 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0x9et 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xa9t 0x0t 0x0t 0x0t
        0xa9t 0x0t 0x0t 0x0t
        0xa9t 0x0t 0x0t 0x0t
        0xa9t 0x0t 0x0t 0x0t
        0xa9t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xb5t 0x0t 0x0t 0x0t
        0xb6t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xb9t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/HDMIConnectService;)Lcom/android/server/HDMIEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    return-object v0
.end method


# virtual methods
.method public broadcastEvent(Ljava/lang/String;)V
    .locals 4
    .parameter "eventName"

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/HDMIConnectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "HDMIConnectService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting ... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public broadcastEvent(Ljava/lang/String;[I)V
    .locals 4
    .parameter "eventName"
    .parameter "modes"

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "EDID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/HDMIConnectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "HDMIConnectService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting ... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", modes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method getAppropriateCode()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .local v2, bestOrder:I
    const/4 v1, 0x4

    .local v1, bestCode:I
    iget-object v0, p0, Lcom/android/server/HDMIConnectService;->mHDMICodes:[I

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget v3, v0, v4

    .local v3, code:I
    iget-object v7, p0, Lcom/android/server/HDMIConnectService;->HDMI_MODE_COORDINATE:[I

    aget v3, v7, v3

    if-gez v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/server/HDMIConnectService;->getTimingOrder(I)I

    move-result v6

    .local v6, order:I
    if-lt v6, v2, :cond_0

    move v2, v6

    move v1, v3

    goto :goto_1

    .end local v3           #code:I
    .end local v6           #order:I
    :cond_2
    return v1
.end method

.method public getHDMIUserConfig()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/HDMIConnectService;->mHDMIUserConfig:Z

    return v0
.end method

.method getTimingOrder(I)I
    .locals 2
    .parameter "code"

    .prologue
    const/16 v1, 0x64

    if-ge v1, p1, :cond_1

    const/4 v0, 0x2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/server/HDMIConnectService;->mTimingOrder:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/HDMIConnectService;->mTimingOrder:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHDMIConnected()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    invoke-virtual {v0}, Lcom/android/server/HDMIEventListener;->isHDMIConnected()Z

    move-result v0

    return v0
.end method

.method public sendCecCmd(Ljava/lang/String;)V
    .locals 3
    .parameter "CecCmdStr"

    .prologue
    const-string v0, "HDMIConnectService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCecCmd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/HDMIConnectService;->broadcastEvent(Ljava/lang/String;)V

    return-void
.end method

.method public sendHDCPconnected(Z)V
    .locals 3
    .parameter "bConnected"

    .prologue
    const-string v0, "HDMIConnectService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendHDCPconnected bConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    const-string v0, "hdcp_auth_success"

    invoke-virtual {p0, v0}, Lcom/android/server/HDMIConnectService;->broadcastEvent(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "hdcp_auth_failed"

    invoke-virtual {p0, v0}, Lcom/android/server/HDMIConnectService;->broadcastEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendHDMIConnected([I)V
    .locals 3
    .parameter "codes"

    .prologue
    iput-object p1, p0, Lcom/android/server/HDMIConnectService;->mHDMICodes:[I

    const-string v0, "hdmi_connected"

    invoke-virtual {p0, v0}, Lcom/android/server/HDMIConnectService;->broadcastEvent(Ljava/lang/String;)V

    const-string v0, "HDMIConnectService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendHDMIConnected getHDMIUserConfig"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/HDMIConnectService;->getHDMIUserConfig()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/HDMIConnectService;->getHDMIUserConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "hdmi_on"

    iget-object v1, p0, Lcom/android/server/HDMIConnectService;->mHDMICodes:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/HDMIConnectService;->broadcastEvent(Ljava/lang/String;[I)V

    iget-object v1, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    monitor-enter v1

    :try_start_0
    const-string v0, "HDMIConnectService"

    const-string v2, "mListener.enableHDMIDisplay(true)"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    invoke-virtual {p0}, Lcom/android/server/HDMIConnectService;->getAppropriateCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/HDMIEventListener;->changeDisplayCode(I)V

    iget-object v0, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/HDMIEventListener;->enableHDMIDisplay(Z)V

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/HDMIConnectService;->setHDMIEnable(Z)V

    goto :goto_0
.end method

.method public sendHDMIDisconnected()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/HDMIConnectService;->mHDMICodes:[I

    const-string v0, "hdmi_disconnected"

    invoke-virtual {p0, v0}, Lcom/android/server/HDMIConnectService;->broadcastEvent(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/HDMIConnectService;->getHDMIUserConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "hdmi_off"

    invoke-virtual {p0, v0}, Lcom/android/server/HDMIConnectService;->broadcastEvent(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/HDMIEventListener;->enableHDMIDisplay(Z)V

    invoke-virtual {p0}, Lcom/android/server/HDMIConnectService;->getHDMIUserConfig()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/HDMIEventListener;->setHPDOption(Z)V

    :cond_0
    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCecCmd(Ljava/lang/String;)V
    .locals 1
    .parameter "cmd"

    .prologue
    iget-object v0, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/HDMIEventListener;->setCecCmd(Ljava/lang/String;)V

    return-void
.end method

.method public setDisplayCode(I)V
    .locals 3
    .parameter "code"

    .prologue
    invoke-virtual {p0}, Lcom/android/server/HDMIConnectService;->isHDMIConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HDMIConnectService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mListener.changeDisplayCode(code) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/HDMIEventListener;->changeDisplayCode(I)V

    :cond_0
    return-void
.end method

.method public setHDCPEnable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const-string v0, "HDMIConnectService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mListener.setHDCPEnable(true) enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/HDMIEventListener;->setHDCPEnable(Z)V

    return-void
.end method

.method public setHDMIEnable(Z)V
    .locals 3
    .parameter "enableHDMI"

    .prologue
    iget-object v0, p0, Lcom/android/server/HDMIConnectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "HDMI_USER_CONFIG"

    if-eqz p1, :cond_1

    const-string v0, "hdmi_on"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iput-boolean p1, p0, Lcom/android/server/HDMIConnectService;->mHDMIUserConfig:Z

    iget-object v1, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    monitor-enter v1

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/HDMIEventListener;->enableHDMIDisplay(Z)V

    const-string v0, "hdmi_off"

    invoke-virtual {p0, v0}, Lcom/android/server/HDMIConnectService;->broadcastEvent(Ljava/lang/String;)V

    const-string v0, "hdmi_disconnected"

    invoke-virtual {p0, v0}, Lcom/android/server/HDMIConnectService;->broadcastEvent(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    invoke-virtual {p0}, Lcom/android/server/HDMIConnectService;->getHDMIUserConfig()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/HDMIEventListener;->setHPDOption(Z)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    const-string v0, "hdmi_off"

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setReproductionHeightRatio(F)V
    .locals 1
    .parameter "asHeightRatio"

    .prologue
    iget-object v0, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/HDMIEventListener;->setReproductionHeightRatio(F)V

    return-void
.end method

.method public setReproductionWidthRatio(F)V
    .locals 1
    .parameter "asWidthRatio"

    .prologue
    iget-object v0, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/HDMIEventListener;->setReproductionWidthRatio(F)V

    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/HDMIConnectService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SHUTDOWN permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "HDMIConnectService"

    const-string v1, "Shutting down out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
