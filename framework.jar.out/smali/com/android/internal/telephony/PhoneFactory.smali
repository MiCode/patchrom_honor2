.class public Lcom/android/internal/telephony/PhoneFactory;
.super Ljava/lang/Object;
.source "PhoneFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PhoneFactory$PhoneServiceInterface;
    }
.end annotation


# static fields
.field public static final CALLS_ON_IMS_ENABLED_PROPERTY:Ljava/lang/String; = "persist.radio.calls.on.ims"

.field static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field protected static final SOCKET_OPEN_MAX_RETRY:I = 0x3

.field protected static final SOCKET_OPEN_RETRY_MILLIS:I = 0x7d0

.field protected static mUiccManager:Lcom/android/internal/telephony/UiccManager; = null

.field protected static phoneService:Lcom/android/internal/telephony/PhoneFactory$PhoneServiceInterface; = null

.field protected static final preferredCdmaSubscription:I = 0x1

.field protected static sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field protected static sContext:Landroid/content/Context;

.field protected static sLooper:Landroid/os/Looper;

.field protected static sMadeDefaults:Z

.field protected static sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field protected static sProxyPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 47
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 57
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->phoneService:Lcom/android/internal/telephony/PhoneFactory$PhoneServiceInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCdmaPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 242
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 243
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 251
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 255
    .local v0, phone:Lcom/android/internal/telephony/PhoneBase;
    :goto_0
    monitor-exit v2

    .line 256
    return-object v0

    .line 245
    .end local v0           #phone:Lcom/android/internal/telephony/PhoneBase;
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 246
    .restart local v0       #phone:Lcom/android/internal/telephony/PhoneBase;
    goto :goto_0

    .line 255
    .end local v0           #phone:Lcom/android/internal/telephony/PhoneBase;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 229
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 230
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getDefaultPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_1

    .line 235
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static getGsmPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 260
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 261
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 262
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    return-object v0

    .line 263
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getPhoneType(I)I
    .locals 3
    .parameter "networkMode"

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 198
    packed-switch p0, :pswitch_data_0

    move v0, v1

    .line 224
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 209
    goto :goto_0

    .line 218
    :pswitch_2
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v2

    if-eq v2, v1, :cond_0

    move v0, v1

    .line 221
    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static isCallOnImsEnabled()Z
    .locals 2

    .prologue
    .line 280
    const-string/jumbo v0, "persist.radio.calls.on.ims"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 15
    .parameter "context"

    .prologue
    const/4 v13, 0x1

    .line 89
    const-class v10, Lcom/android/internal/telephony/Phone;

    monitor-enter v10

    .line 90
    :try_start_0
    sget-boolean v9, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v9, :cond_3

    .line 91
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v9

    sput-object v9, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    .line 92
    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    .line 94
    sget-object v9, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    if-nez v9, :cond_0

    .line 95
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v11, "PhoneFactory.makeDefaultPhone must be called from Looper thread"

    invoke-direct {v9, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 187
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 99
    :cond_0
    const/4 v8, 0x0

    .line 101
    .local v8, retryCount:I
    :goto_0
    const/4 v4, 0x0

    .line 102
    .local v4, hasException:Z
    add-int/lit8 v8, v8, 0x1

    .line 107
    :try_start_1
    new-instance v9, Landroid/net/LocalServerSocket;

    const-string v11, "com.android.internal.telephony"

    invoke-direct {v9, v11}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    :goto_1
    if-nez v4, :cond_4

    .line 124
    :try_start_2
    new-instance v9, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct {v9}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    sput-object v9, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 127
    const/4 v7, 0x0

    .line 128
    .local v7, preferredNetworkMode:I
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v9

    if-ne v9, v13, :cond_1

    .line 129
    const/4 v7, 0x7

    .line 131
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "preferred_network_mode"

    invoke-static {v9, v11, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 133
    .local v5, networkMode:I
    const-string v9, "PHONE"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Network Mode set to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "preferred_cdma_subscription"

    const/4 v12, 0x1

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 142
    .local v1, cdmaSubscription:I
    const-string v9, "PHONE"

    const-string v11, "lteOnCdma not set, using PREFERRED_CDMA_SUBSCRIPTION"

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v9, "PHONE"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cdma Subscription set to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v9, Lcom/android/internal/telephony/RIL;

    invoke-direct {v9, p0, v5, v1}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    sput-object v9, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 148
    sget-object v9, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p0, v9}, Lcom/android/internal/telephony/UiccManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/UiccManager;

    move-result-object v9

    sput-object v9, Lcom/android/internal/telephony/PhoneFactory;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 150
    invoke-static {v5}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v6

    .line 151
    .local v6, phoneType:I
    if-ne v6, v13, :cond_6

    .line 152
    const-string v9, "PHONE"

    const-string v11, "Creating GSMPhone"

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v9, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v11, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v12, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v13, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v11, p0, v12, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct {v9, v11}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v9, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 171
    :cond_2
    :goto_2
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    :try_start_3
    const-string v9, "com.huawei.telephony.HuaweiPhoneService"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 176
    .local v0, HuaweiPhoneServiceClass:Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/PhoneFactory$PhoneServiceInterface;

    sput-object v9, Lcom/android/internal/telephony/PhoneFactory;->phoneService:Lcom/android/internal/telephony/PhoneFactory$PhoneServiceInterface;

    .line 177
    sget-object v9, Lcom/android/internal/telephony/PhoneFactory;->phoneService:Lcom/android/internal/telephony/PhoneFactory$PhoneServiceInterface;

    sget-object v11, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    sget-object v12, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/PhoneFactory$PhoneServiceInterface;->setPhone(Lcom/android/internal/telephony/Phone;Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    .line 187
    .end local v0           #HuaweiPhoneServiceClass:Ljava/lang/Class;
    .end local v1           #cdmaSubscription:I
    .end local v4           #hasException:Z
    .end local v5           #networkMode:I
    .end local v6           #phoneType:I
    .end local v7           #preferredNetworkMode:I
    .end local v8           #retryCount:I
    :cond_3
    :goto_3
    :try_start_4
    monitor-exit v10

    .line 188
    return-void

    .line 108
    .restart local v4       #hasException:Z
    .restart local v8       #retryCount:I
    :catch_0
    move-exception v3

    .line 109
    .local v3, ex:Ljava/io/IOException;
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 114
    .end local v3           #ex:Ljava/io/IOException;
    :cond_4
    const/4 v9, 0x3

    if-le v8, v9, :cond_5

    .line 115
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v11, "PhoneFactory probably already running"

    invoke-direct {v9, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 118
    :cond_5
    const-wide/16 v11, 0x7d0

    :try_start_5
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 119
    :catch_1
    move-exception v9

    goto/16 :goto_0

    .line 155
    .restart local v1       #cdmaSubscription:I
    .restart local v5       #networkMode:I
    .restart local v6       #phoneType:I
    .restart local v7       #preferredNetworkMode:I
    :cond_6
    const/4 v9, 0x2

    if-ne v6, v9, :cond_2

    .line 156
    :try_start_6
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 164
    const-string v9, "PHONE"

    const-string v11, "Creating CDMAPhone"

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v9, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v11, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v12, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v13, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v11, p0, v12, v13}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct {v9, v11}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v9, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_2

    .line 158
    :pswitch_0
    const-string v9, "PHONE"

    const-string v11, "Creating CDMALTEPhone"

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v9, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v11, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    sget-object v12, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v13, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v14, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v11, v12, v13, v14}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct {v9, v11}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v9, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_2

    .line 178
    :catch_2
    move-exception v2

    .line 179
    .local v2, e:Ljava/lang/InstantiationException;
    const-string v9, "PHONE"

    const-string v11, "InstantiationException "

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 180
    .end local v2           #e:Ljava/lang/InstantiationException;
    :catch_3
    move-exception v2

    .line 181
    .local v2, e:Ljava/lang/IllegalAccessException;
    const-string v9, "PHONE"

    const-string v11, "IllegalAccessException "

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 182
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v2

    .line 183
    .local v2, e:Ljava/lang/ClassNotFoundException;
    const-string v9, "PHONE"

    const-string v11, "ClassNotFoundException "

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 68
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public static makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "sipUri"

    .prologue
    .line 273
    const/4 v0, 0x0

    return-object v0
.end method
