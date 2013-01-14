.class public Lcom/android/internal/telephony/IccCardApplicationStatus;
.super Ljava/lang/Object;
.source "IccCardApplicationStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;,
        Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;,
        Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    }
.end annotation


# static fields
.field private static SimType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;


# instance fields
.field public aid:Ljava/lang/String;

.field public app_label:Ljava/lang/String;

.field public app_state:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

.field public app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

.field public perso_substate:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

.field public pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

.field public pin1_replaced:I

.field public pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    sput-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus;->SimType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIccTypeHw()Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    .locals 1

    .prologue
    .line 297
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus;->SimType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    return-object v0
.end method

.method public static setIccTypeHw(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 292
    new-instance v0, Lcom/android/internal/telephony/IccCardApplicationStatus;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccCardApplicationStatus;-><init>()V

    .line 293
    .local v0, tmpIccCard:Lcom/android/internal/telephony/IccCardApplicationStatus;
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/IccCardApplicationStatus;->SimType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    .line 294
    return-void
.end method


# virtual methods
.method AppStateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    .locals 4
    .parameter "state"

    .prologue
    .line 196
    packed-switch p1, :pswitch_data_0

    .line 204
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_AppState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    .line 207
    .local v0, newState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    :goto_0
    return-object v0

    .line 198
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    goto :goto_0

    .line 199
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    goto :goto_0

    .line 200
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    goto :goto_0

    .line 201
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    goto :goto_0

    .line 202
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method AppTypeFromRILInt(I)Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    .locals 4
    .parameter "type"

    .prologue
    .line 179
    packed-switch p1, :pswitch_data_0

    .line 187
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_AppType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    .line 190
    .local v0, newType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    :goto_0
    return-object v0

    .line 181
    .end local v0           #newType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    goto :goto_0

    .line 182
    .end local v0           #newType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    goto :goto_0

    .line 183
    .end local v0           #newType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    goto :goto_0

    .line 184
    .end local v0           #newType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    goto :goto_0

    .line 185
    .end local v0           #newType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    .locals 4
    .parameter "substate"

    .prologue
    .line 213
    packed-switch p1, :pswitch_data_0

    .line 240
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_PersoSubstate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .line 243
    .local v0, newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :goto_0
    return-object v0

    .line 215
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_IN_PROGRESS:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 216
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_READY:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 217
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 218
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 219
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 220
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 221
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_7
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SIM:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 222
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_8
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 223
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_9
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 224
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_a
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE_PUK:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 225
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_b
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 226
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_c
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SIM_PUK:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 227
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_d
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 228
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_e
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 229
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_f
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 230
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_10
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 231
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_11
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 232
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_12
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 233
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_13
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1_PUK:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 234
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_14
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2_PUK:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 235
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_15
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD_PUK:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 236
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_16
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE_PUK:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 237
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_17
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 238
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    :pswitch_18
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM_PUK:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method PinStateFromRILInt(I)Lcom/android/internal/telephony/IccCardStatus$PinState;
    .locals 4
    .parameter "state"

    .prologue
    .line 248
    packed-switch p1, :pswitch_data_0

    .line 268
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_PinState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 270
    .local v0, newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :goto_0
    return-object v0

    .line 253
    .end local v0           #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 254
    .restart local v0       #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    goto :goto_0

    .line 256
    .end local v0           #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 257
    .restart local v0       #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    goto :goto_0

    .line 259
    .end local v0           #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 260
    .restart local v0       #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    goto :goto_0

    .line 262
    .end local v0           #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 263
    .restart local v0       #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    goto :goto_0

    .line 265
    .end local v0           #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 266
    .restart local v0       #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 278
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    sget-object v2, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    if-ne v1, v2, :cond_0

    .line 279
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    sget-object v2, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    sget-object v2, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    sget-object v2, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-ne v1, v2, :cond_2

    .line 284
    :cond_1
    const-string v1, ",pin1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 285
    const-string v1, ",pin2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 287
    :cond_2
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
