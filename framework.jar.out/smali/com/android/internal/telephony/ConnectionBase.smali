.class public Lcom/android/internal/telephony/ConnectionBase;
.super Lcom/android/internal/telephony/Connection;
.source "ConnectionBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ConnectionBase$1;,
        Lcom/android/internal/telephony/ConnectionBase$MyHandler;
    }
.end annotation


# static fields
.field static final EVENT_DTMF_DONE:I = 0x1

.field static final EVENT_NEXT_POST_DIAL:I = 0x3

.field static final EVENT_PAUSE_DONE:I = 0x2

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "RILCONNECTION"

.field static final PAUSE_DELAY_MILLIS:I = 0x7d0

.field static final WAKE_LOCK_TIMEOUT_MILLIS:I = 0xea60


# instance fields
.field public address:Ljava/lang/String;

.field public callDetails:Lcom/android/internal/telephony/CallDetails;

.field public cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

.field cnapName:Ljava/lang/String;

.field cnapNamePresentation:I

.field public connectTime:J

.field connectTimeReal:J

.field createTime:J

.field dialString:Ljava/lang/String;

.field disconnectTime:J

.field disconnected:Z

.field duration:J

.field h:Landroid/os/Handler;

.field holdingStartTime:J

.field public index:I

.field public isIncoming:Z

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field nextPostDialChar:I

.field numberPresentation:I

.field public owner:Lcom/android/internal/telephony/CallTracker;

.field parent:Lcom/android/internal/telephony/Call;

.field postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field postDialString:Ljava/lang/String;

.field uusInfo:Lcom/android/internal/telephony/UUSInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/CallTracker;I)V
    .locals 2
    .parameter "context"
    .parameter "dc"
    .parameter "ct"
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 82
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 83
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 84
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ConnectionBase;->numberPresentation:I

    .line 85
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ConnectionBase;->cnapNamePresentation:I

    .line 86
    iput-object v1, p0, Lcom/android/internal/telephony/ConnectionBase;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 87
    iput-object v1, p0, Lcom/android/internal/telephony/ConnectionBase;->callDetails:Lcom/android/internal/telephony/CallDetails;

    .line 131
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ConnectionBase;->createWakeLock(Landroid/content/Context;)V

    .line 132
    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionBase;->acquireWakeLock()V

    .line 134
    iput-object p3, p0, Lcom/android/internal/telephony/ConnectionBase;->owner:Lcom/android/internal/telephony/CallTracker;

    .line 135
    new-instance v0, Lcom/android/internal/telephony/ConnectionBase$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/ConnectionBase;->owner:Lcom/android/internal/telephony/CallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/ConnectionBase$MyHandler;-><init>(Lcom/android/internal/telephony/ConnectionBase;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->h:Landroid/os/Handler;

    .line 137
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->address:Ljava/lang/String;

    .line 139
    iget-boolean v0, p2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/ConnectionBase;->isIncoming:Z

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/ConnectionBase;->createTime:J

    .line 141
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->cnapName:Ljava/lang/String;

    .line 142
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v0, p0, Lcom/android/internal/telephony/ConnectionBase;->cnapNamePresentation:I

    .line 143
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v0, p0, Lcom/android/internal/telephony/ConnectionBase;->numberPresentation:I

    .line 145
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 147
    :cond_0
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->callDetails:Lcom/android/internal/telephony/CallDetails;

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->callDetails:Lcom/android/internal/telephony/CallDetails;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->callDetails:Lcom/android/internal/telephony/CallDetails;

    iget v0, v0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 151
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ConnectionBase;->imsParentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->parent:Lcom/android/internal/telephony/Call;

    .line 155
    :goto_0
    iput p4, p0, Lcom/android/internal/telephony/ConnectionBase;->index:I

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->parent:Lcom/android/internal/telephony/Call;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->parent:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0, p0, p2}, Lcom/android/internal/telephony/Call;->attach(Lcom/android/internal/telephony/ConnectionBase;Lcom/android/internal/telephony/DriverCall;)V

    .line 160
    :goto_1
    return-void

    .line 153
    :cond_2
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ConnectionBase;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->parent:Lcom/android/internal/telephony/Call;

    goto :goto_0

    .line 158
    :cond_3
    const-string v0, "RILCONNECTION"

    const-string v1, "This ConnectionBase does not have a parent call"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/CallTracker;Lcom/android/internal/telephony/Call;)V
    .locals 2
    .parameter "context"
    .parameter "cw"
    .parameter "ct"
    .parameter "parent"

    .prologue
    const/4 v1, 0x0

    .line 238
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 82
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 83
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 84
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ConnectionBase;->numberPresentation:I

    .line 85
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ConnectionBase;->cnapNamePresentation:I

    .line 86
    iput-object v1, p0, Lcom/android/internal/telephony/ConnectionBase;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 87
    iput-object v1, p0, Lcom/android/internal/telephony/ConnectionBase;->callDetails:Lcom/android/internal/telephony/CallDetails;

    .line 239
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ConnectionBase;->createWakeLock(Landroid/content/Context;)V

    .line 240
    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionBase;->acquireWakeLock()V

    .line 242
    iput-object p3, p0, Lcom/android/internal/telephony/ConnectionBase;->owner:Lcom/android/internal/telephony/CallTracker;

    .line 243
    new-instance v0, Lcom/android/internal/telephony/ConnectionBase$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/ConnectionBase;->owner:Lcom/android/internal/telephony/CallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/ConnectionBase$MyHandler;-><init>(Lcom/android/internal/telephony/ConnectionBase;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->h:Landroid/os/Handler;

    .line 244
    iget-object v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->address:Ljava/lang/String;

    .line 245
    iget v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    iput v0, p0, Lcom/android/internal/telephony/ConnectionBase;->numberPresentation:I

    .line 246
    iget-object v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->cnapName:Ljava/lang/String;

    .line 247
    iget v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->namePresentation:I

    iput v0, p0, Lcom/android/internal/telephony/ConnectionBase;->cnapNamePresentation:I

    .line 248
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ConnectionBase;->index:I

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ConnectionBase;->isIncoming:Z

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/ConnectionBase;->createTime:J

    .line 251
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/ConnectionBase;->connectTime:J

    .line 252
    iput-object p4, p0, Lcom/android/internal/telephony/ConnectionBase;->parent:Lcom/android/internal/telephony/Call;

    .line 253
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/Call;->attachFake(Lcom/android/internal/telephony/ConnectionBase;Lcom/android/internal/telephony/Call$State;)V

    .line 254
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/CallTracker;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallDetails;)V
    .locals 2
    .parameter "context"
    .parameter "cw"
    .parameter "ct"
    .parameter "parent"
    .parameter "moCallDetails"

    .prologue
    const/4 v1, 0x0

    .line 258
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 82
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 83
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 84
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ConnectionBase;->numberPresentation:I

    .line 85
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ConnectionBase;->cnapNamePresentation:I

    .line 86
    iput-object v1, p0, Lcom/android/internal/telephony/ConnectionBase;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 87
    iput-object v1, p0, Lcom/android/internal/telephony/ConnectionBase;->callDetails:Lcom/android/internal/telephony/CallDetails;

    .line 259
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ConnectionBase;->createWakeLock(Landroid/content/Context;)V

    .line 260
    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionBase;->acquireWakeLock()V

    .line 262
    iput-object p3, p0, Lcom/android/internal/telephony/ConnectionBase;->owner:Lcom/android/internal/telephony/CallTracker;

    .line 263
    new-instance v0, Lcom/android/internal/telephony/ConnectionBase$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/ConnectionBase;->owner:Lcom/android/internal/telephony/CallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/ConnectionBase$MyHandler;-><init>(Lcom/android/internal/telephony/ConnectionBase;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->h:Landroid/os/Handler;

    .line 264
    iget-object v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->address:Ljava/lang/String;

    .line 265
    iget v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    iput v0, p0, Lcom/android/internal/telephony/ConnectionBase;->numberPresentation:I

    .line 266
    iget-object v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->cnapName:Ljava/lang/String;

    .line 267
    iget v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->namePresentation:I

    iput v0, p0, Lcom/android/internal/telephony/ConnectionBase;->cnapNamePresentation:I

    .line 268
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ConnectionBase;->index:I

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ConnectionBase;->isIncoming:Z

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/ConnectionBase;->createTime:J

    .line 271
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/ConnectionBase;->connectTime:J

    .line 272
    iput-object p5, p0, Lcom/android/internal/telephony/ConnectionBase;->callDetails:Lcom/android/internal/telephony/CallDetails;

    .line 273
    iput-object p4, p0, Lcom/android/internal/telephony/ConnectionBase;->parent:Lcom/android/internal/telephony/Call;

    .line 274
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/Call;->attachFake(Lcom/android/internal/telephony/ConnectionBase;Lcom/android/internal/telephony/Call$State;)V

    .line 275
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallTracker;Lcom/android/internal/telephony/Call;)V
    .locals 3
    .parameter "context"
    .parameter "dialString"
    .parameter "ct"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 164
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 82
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 83
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 84
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ConnectionBase;->numberPresentation:I

    .line 85
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ConnectionBase;->cnapNamePresentation:I

    .line 86
    iput-object v2, p0, Lcom/android/internal/telephony/ConnectionBase;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 87
    iput-object v2, p0, Lcom/android/internal/telephony/ConnectionBase;->callDetails:Lcom/android/internal/telephony/CallDetails;

    .line 165
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ConnectionBase;->createWakeLock(Landroid/content/Context;)V

    .line 166
    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionBase;->acquireWakeLock()V

    .line 168
    iput-object p3, p0, Lcom/android/internal/telephony/ConnectionBase;->owner:Lcom/android/internal/telephony/CallTracker;

    .line 169
    new-instance v0, Lcom/android/internal/telephony/ConnectionBase$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/ConnectionBase;->owner:Lcom/android/internal/telephony/CallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/ConnectionBase$MyHandler;-><init>(Lcom/android/internal/telephony/ConnectionBase;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->h:Landroid/os/Handler;

    .line 171
    iput-object p2, p0, Lcom/android/internal/telephony/ConnectionBase;->dialString:Ljava/lang/String;

    .line 172
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->address:Ljava/lang/String;

    .line 173
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->postDialString:Ljava/lang/String;

    .line 175
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ConnectionBase;->index:I

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ConnectionBase;->isIncoming:Z

    .line 178
    iput-object v2, p0, Lcom/android/internal/telephony/ConnectionBase;->cnapName:Ljava/lang/String;

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/ConnectionBase;->createTime:J

    .line 181
    if-eqz p4, :cond_0

    .line 182
    iput-object p4, p0, Lcom/android/internal/telephony/ConnectionBase;->parent:Lcom/android/internal/telephony/Call;

    .line 186
    iget-object v0, p4, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    .line 187
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ConnectionBase;->cnapNamePresentation:I

    .line 188
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ConnectionBase;->numberPresentation:I

    .line 189
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/Call;->attachFake(Lcom/android/internal/telephony/ConnectionBase;Lcom/android/internal/telephony/Call$State;)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/Call;->attachFake(Lcom/android/internal/telephony/ConnectionBase;Lcom/android/internal/telephony/Call$State;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallTracker;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallDetails;)V
    .locals 3
    .parameter "context"
    .parameter "dialString"
    .parameter "ct"
    .parameter "parent"
    .parameter "moCallDetails"

    .prologue
    const/4 v2, 0x0

    .line 199
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 82
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 83
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 84
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ConnectionBase;->numberPresentation:I

    .line 85
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ConnectionBase;->cnapNamePresentation:I

    .line 86
    iput-object v2, p0, Lcom/android/internal/telephony/ConnectionBase;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 87
    iput-object v2, p0, Lcom/android/internal/telephony/ConnectionBase;->callDetails:Lcom/android/internal/telephony/CallDetails;

    .line 200
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ConnectionBase;->createWakeLock(Landroid/content/Context;)V

    .line 201
    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionBase;->acquireWakeLock()V

    .line 203
    iput-object p3, p0, Lcom/android/internal/telephony/ConnectionBase;->owner:Lcom/android/internal/telephony/CallTracker;

    .line 204
    new-instance v0, Lcom/android/internal/telephony/ConnectionBase$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/ConnectionBase;->owner:Lcom/android/internal/telephony/CallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/ConnectionBase$MyHandler;-><init>(Lcom/android/internal/telephony/ConnectionBase;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->h:Landroid/os/Handler;

    .line 206
    iput-object p2, p0, Lcom/android/internal/telephony/ConnectionBase;->dialString:Ljava/lang/String;

    .line 207
    if-eqz p5, :cond_1

    iget v0, p5, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 209
    iput-object p2, p0, Lcom/android/internal/telephony/ConnectionBase;->address:Ljava/lang/String;

    .line 212
    :goto_0
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->postDialString:Ljava/lang/String;

    .line 214
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ConnectionBase;->index:I

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ConnectionBase;->isIncoming:Z

    .line 217
    iput-object v2, p0, Lcom/android/internal/telephony/ConnectionBase;->cnapName:Ljava/lang/String;

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/ConnectionBase;->createTime:J

    .line 219
    iput-object p5, p0, Lcom/android/internal/telephony/ConnectionBase;->callDetails:Lcom/android/internal/telephony/CallDetails;

    .line 221
    if-eqz p4, :cond_0

    .line 222
    iput-object p4, p0, Lcom/android/internal/telephony/ConnectionBase;->parent:Lcom/android/internal/telephony/Call;

    .line 226
    iget-object v0, p4, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_2

    .line 227
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ConnectionBase;->cnapNamePresentation:I

    .line 228
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ConnectionBase;->numberPresentation:I

    .line 229
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/Call;->attachFake(Lcom/android/internal/telephony/ConnectionBase;Lcom/android/internal/telephony/Call$State;)V

    .line 234
    :cond_0
    :goto_1
    return-void

    .line 211
    :cond_1
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->address:Ljava/lang/String;

    goto :goto_0

    .line 231
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/Call;->attachFake(Lcom/android/internal/telephony/ConnectionBase;Lcom/android/internal/telephony/Call$State;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/ConnectionBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionBase;->releaseWakeLock()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 944
    const-string v0, "acquireWakeLock"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ConnectionBase;->log(Ljava/lang/String;)V

    .line 945
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 946
    return-void
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 939
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 940
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "RILCONNECTION"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ConnectionBase;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 941
    return-void
.end method

.method private doDisconnect()V
    .locals 4

    .prologue
    .line 704
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ConnectionBase;->index:I

    .line 705
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/ConnectionBase;->disconnectTime:J

    .line 706
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/ConnectionBase;->connectTimeReal:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/telephony/ConnectionBase;->duration:J

    .line 707
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ConnectionBase;->disconnected:Z

    .line 708
    return-void
.end method

.method static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 282
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private imsParentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call;
    .locals 3
    .parameter "state"

    .prologue
    .line 893
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->owner:Lcom/android/internal/telephony/CallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/CallTracker;->imsPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 894
    sget-object v0, Lcom/android/internal/telephony/ConnectionBase$1;->$SwitchMap$com$android$internal$telephony$DriverCall$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 908
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 898
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->owner:Lcom/android/internal/telephony/CallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/CallTracker;->imsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 911
    :goto_0
    return-object v0

    .line 901
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->owner:Lcom/android/internal/telephony/CallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/CallTracker;->imsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0

    .line 905
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->owner:Lcom/android/internal/telephony/CallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/CallTracker;->imsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0

    .line 911
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 894
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private isConnectingInOrOut()Z
    .locals 2

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->parent:Lcom/android/internal/telephony/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->parent:Lcom/android/internal/telephony/Call;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ConnectionBase;->getPhoneFromConnection()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->parent:Lcom/android/internal/telephony/Call;

    iget-object v0, v0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->parent:Lcom/android/internal/telephony/Call;

    iget-object v0, v0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 958
    const-string v0, "RILCONNECTION"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CDMAConn] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    return-void
.end method

.method private onStartedHolding()V
    .locals 2

    .prologue
    .line 712
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/ConnectionBase;->holdingStartTime:J

    .line 713
    return-void
.end method

.method private parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call;
    .locals 3
    .parameter "state"

    .prologue
    .line 870
    sget-object v0, Lcom/android/internal/telephony/ConnectionBase$1;->$SwitchMap$com$android$internal$telephony$DriverCall$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 887
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 874
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->owner:Lcom/android/internal/telephony/CallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/CallTracker;->foregroundCall:Lcom/android/internal/telephony/Call;

    .line 883
    :goto_0
    return-object v0

    .line 878
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->owner:Lcom/android/internal/telephony/CallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/CallTracker;->backgroundCall:Lcom/android/internal/telephony/Call;

    goto :goto_0

    .line 883
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->owner:Lcom/android/internal/telephony/CallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/CallTracker;->ringingCall:Lcom/android/internal/telephony/Call;

    goto :goto_0

    .line 870
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private processPostDialChar(C)Z
    .locals 5
    .parameter "c"

    .prologue
    const/4 v0, 0x1

    .line 721
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 722
    iget-object v1, p0, Lcom/android/internal/telephony/ConnectionBase;->owner:Lcom/android/internal/telephony/CallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/ConnectionBase;->h:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    .line 749
    :goto_0
    return v0

    .line 723
    :cond_0
    const/16 v1, 0x2c

    if-ne p1, v1, :cond_1

    .line 724
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ConnectionBase;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 739
    iget-object v1, p0, Lcom/android/internal/telephony/ConnectionBase;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/ConnectionBase;->h:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 741
    :cond_1
    const/16 v1, 0x3b

    if-ne p1, v1, :cond_2

    .line 742
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ConnectionBase;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 743
    :cond_2
    const/16 v1, 0x4e

    if-ne p1, v1, :cond_3

    .line 744
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ConnectionBase;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 746
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 949
    iget-object v1, p0, Lcom/android/internal/telephony/ConnectionBase;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 950
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    const-string/jumbo v0, "releaseWakeLock"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ConnectionBase;->log(Ljava/lang/String;)V

    .line 952
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 954
    :cond_0
    monitor-exit v1

    .line 955
    return-void

    .line 954
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .locals 5
    .parameter "s"

    .prologue
    const/4 v2, 0x4

    .line 920
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne p1, v1, :cond_2

    .line 922
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/ConnectionBase;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 923
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ConnectionBase;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 924
    iget-object v1, p0, Lcom/android/internal/telephony/ConnectionBase;->h:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 928
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/ConnectionBase;->h:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 929
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/ConnectionBase;->h:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 930
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 935
    .end local v0           #msg:Landroid/os/Message;
    :goto_1
    iput-object p1, p0, Lcom/android/internal/telephony/ConnectionBase;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 936
    return-void

    .line 926
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionBase;->acquireWakeLock()V

    goto :goto_0

    .line 930
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 932
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/ConnectionBase;->h:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 933
    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionBase;->releaseWakeLock()V

    goto :goto_1
.end method


# virtual methods
.method public cancelPostDial()V
    .locals 1

    .prologue
    .line 449
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ConnectionBase;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 450
    return-void
.end method

.method public compareTo(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 4
    .parameter "c"

    .prologue
    const/4 v1, 0x1

    .line 292
    iget-boolean v2, p0, Lcom/android/internal/telephony/ConnectionBase;->isIncoming:Z

    if-nez v2, :cond_1

    iget-boolean v2, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-nez v2, :cond_1

    .line 298
    :cond_0
    :goto_0
    return v1

    .line 297
    :cond_1
    iget-object v2, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v3, p1, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, cAddress:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/internal/telephony/ConnectionBase;->isIncoming:Z

    iget-boolean v3, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/ConnectionBase;->address:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/ConnectionBase;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method disconnectCauseFromCode(Lcom/android/internal/telephony/PhoneBase;I)Lcom/android/internal/telephony/Connection$DisconnectCause;
    .locals 2
    .parameter "phone"
    .parameter "causeCode"

    .prologue
    .line 470
    sparse-switch p2, :sswitch_data_0

    .line 519
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 520
    .local v0, serviceState:I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 521
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->POWER_OFF:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 528
    .end local v0           #serviceState:I
    :goto_0
    return-object v1

    .line 472
    :sswitch_0
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 479
    :sswitch_1
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 481
    :sswitch_2
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 483
    :sswitch_3
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 485
    :sswitch_4
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 488
    :sswitch_5
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 491
    :sswitch_6
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->DIAL_MODIFIED_TO_USSD:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 493
    :sswitch_7
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->DIAL_MODIFIED_TO_SS:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 495
    :sswitch_8
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->DIAL_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 497
    :sswitch_9
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_LOCKED_UNTIL_POWER_CYCLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 499
    :sswitch_a
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_DROP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 501
    :sswitch_b
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_INTERCEPT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 503
    :sswitch_c
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_REORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 505
    :sswitch_d
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_SO_REJECT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 507
    :sswitch_e
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_RETRY_ORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 509
    :sswitch_f
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_ACCESS_FAILURE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 511
    :sswitch_10
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_PREEMPTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 513
    :sswitch_11
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_NOT_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 515
    :sswitch_12
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_ACCESS_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 522
    .restart local v0       #serviceState:I
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 524
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 525
    :cond_2
    const/16 v1, 0x10

    if-ne p2, v1, :cond_3

    .line 526
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 528
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 470
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x11 -> :sswitch_0
        0x22 -> :sswitch_1
        0x29 -> :sswitch_1
        0x2a -> :sswitch_1
        0x2c -> :sswitch_1
        0x31 -> :sswitch_1
        0x3a -> :sswitch_1
        0x44 -> :sswitch_2
        0xf0 -> :sswitch_3
        0xf1 -> :sswitch_4
        0xf4 -> :sswitch_6
        0xf5 -> :sswitch_7
        0xf6 -> :sswitch_8
        0x3e8 -> :sswitch_9
        0x3e9 -> :sswitch_a
        0x3ea -> :sswitch_b
        0x3eb -> :sswitch_c
        0x3ec -> :sswitch_d
        0x3ed -> :sswitch_e
        0x3ee -> :sswitch_f
        0x3ef -> :sswitch_10
        0x3f0 -> :sswitch_11
        0x3f1 -> :sswitch_12
    .end sparse-switch
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 278
    return-void
.end method

.method public fakeHoldBeforeDial()V
    .locals 2

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->parent:Lcom/android/internal/telephony/Call;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->parent:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Call;->detach(Lcom/android/internal/telephony/ConnectionBase;)V

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->owner:Lcom/android/internal/telephony/CallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/CallTracker;->backgroundCall:Lcom/android/internal/telephony/Call;

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->parent:Lcom/android/internal/telephony/Call;

    .line 663
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->parent:Lcom/android/internal/telephony/Call;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/Call;->attachFake(Lcom/android/internal/telephony/ConnectionBase;Lcom/android/internal/telephony/Call$State;)V

    .line 665
    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionBase;->onStartedHolding()V

    .line 666
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    const-string v0, "RILCONNECTION"

    const-string v1, "[CdmaConn] UNEXPECTED; mPartialWakeLock is held when finalizing."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionBase;->releaseWakeLock()V

    .line 799
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getCDMAIndex()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 670
    iget v0, p0, Lcom/android/internal/telephony/ConnectionBase;->index:I

    if-ltz v0, :cond_0

    .line 671
    iget v0, p0, Lcom/android/internal/telephony/ConnectionBase;->index:I

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 673
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "CDMA connection index not assigned"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->parent:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method public getCallDetails()Lcom/android/internal/telephony/CallDetails;
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->callDetails:Lcom/android/internal/telephony/CallDetails;

    return-object v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->cnapName:Ljava/lang/String;

    return-object v0
.end method

.method public getCnapNamePresentation()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/android/internal/telephony/ConnectionBase;->cnapNamePresentation:I

    return v0
.end method

.method public getConnectTime()J
    .locals 2

    .prologue
    .line 327
    iget-wide v0, p0, Lcom/android/internal/telephony/ConnectionBase;->connectTime:J

    return-wide v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 323
    iget-wide v0, p0, Lcom/android/internal/telephony/ConnectionBase;->createTime:J

    return-wide v0
.end method

.method public getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    return-object v0
.end method

.method public getDisconnectTime()J
    .locals 2

    .prologue
    .line 331
    iget-wide v0, p0, Lcom/android/internal/telephony/ConnectionBase;->disconnectTime:J

    return-wide v0
.end method

.method public getDurationMillis()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 335
    iget-wide v2, p0, Lcom/android/internal/telephony/ConnectionBase;->connectTimeReal:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 340
    :goto_0
    return-wide v0

    .line 337
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/telephony/ConnectionBase;->duration:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 338
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/ConnectionBase;->connectTimeReal:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 340
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/telephony/ConnectionBase;->duration:J

    goto :goto_0
.end method

.method public getHoldDurationMillis()J
    .locals 4

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/android/internal/telephony/ConnectionBase;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 347
    const-wide/16 v0, 0x0

    .line 349
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/ConnectionBase;->holdingStartTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 963
    iget v0, p0, Lcom/android/internal/telephony/ConnectionBase;->numberPresentation:I

    return v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->dialString:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneFromConnection()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->parent:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    return-object v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 753
    iget-object v3, p0, Lcom/android/internal/telephony/ConnectionBase;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v4, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/ConnectionBase;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v4, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/ConnectionBase;->postDialString:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/ConnectionBase;->postDialString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/android/internal/telephony/ConnectionBase;->nextPostDialChar:I

    if-gt v3, v4, :cond_2

    .line 757
    :cond_0
    const-string v1, ""

    .line 773
    :cond_1
    :goto_0
    return-object v1

    .line 760
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/ConnectionBase;->postDialString:Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/telephony/ConnectionBase;->nextPostDialChar:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 763
    .local v1, subStr:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 764
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 765
    .local v2, wIndex:I
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 767
    .local v0, pIndex:I
    if-lez v2, :cond_4

    if-lt v2, v0, :cond_3

    if-gtz v0, :cond_4

    .line 768
    :cond_3
    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 769
    :cond_4
    if-lez v0, :cond_1

    .line 770
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/android/internal/telephony/ConnectionBase;->disconnected:Z

    if-eqz v0, :cond_0

    .line 363
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    .line 365
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    goto :goto_0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    return-object v0
.end method

.method public hangup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/android/internal/telephony/ConnectionBase;->disconnected:Z

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->owner:Lcom/android/internal/telephony/CallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallTracker;->hangup(Lcom/android/internal/telephony/ConnectionBase;)V

    .line 375
    return-void

    .line 373
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/android/internal/telephony/ConnectionBase;->isIncoming:Z

    return v0
.end method

.method public onConnectedInOrOut()V
    .locals 3

    .prologue
    .line 682
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/ConnectionBase;->connectTime:J

    .line 683
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/ConnectionBase;->connectTimeReal:J

    .line 684
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/ConnectionBase;->duration:J

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConnectedInOrOut: connectTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/ConnectionBase;->connectTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ConnectionBase;->log(Ljava/lang/String;)V

    .line 692
    iget-boolean v0, p0, Lcom/android/internal/telephony/ConnectionBase;->isIncoming:Z

    if-nez v0, :cond_0

    .line 694
    invoke-virtual {p0}, Lcom/android/internal/telephony/ConnectionBase;->processNextPostDialChar()V

    .line 700
    :goto_0
    return-void

    .line 698
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionBase;->releaseWakeLock()V

    goto :goto_0
.end method

.method public onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    .locals 1
    .parameter "cause"

    .prologue
    .line 548
    iput-object p1, p0, Lcom/android/internal/telephony/ConnectionBase;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 550
    iget-boolean v0, p0, Lcom/android/internal/telephony/ConnectionBase;->disconnected:Z

    if-nez v0, :cond_0

    .line 551
    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionBase;->doDisconnect()V

    .line 554
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->owner:Lcom/android/internal/telephony/CallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/CallTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneBase;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 556
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->parent:Lcom/android/internal/telephony/Call;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->parent:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Call;->connectionDisconnected(Lcom/android/internal/telephony/ConnectionBase;)V

    .line 560
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionBase;->releaseWakeLock()V

    .line 561
    return-void
.end method

.method public onHangupLocal()V
    .locals 1

    .prologue
    .line 459
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 460
    return-void
.end method

.method public onLocalDisconnect()V
    .locals 1

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/android/internal/telephony/ConnectionBase;->disconnected:Z

    if-nez v0, :cond_0

    .line 567
    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionBase;->doDisconnect()V

    .line 571
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->parent:Lcom/android/internal/telephony/Call;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->parent:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Call;->detach(Lcom/android/internal/telephony/ConnectionBase;)V

    .line 575
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionBase;->releaseWakeLock()V

    .line 576
    return-void
.end method

.method public onRemoteDisconnect(I)V
    .locals 1
    .parameter "causeCode"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->owner:Lcom/android/internal/telephony/CallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/CallTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->disconnectCauseFromCode(I)Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ConnectionBase;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 537
    return-void
.end method

.method public onRemoteDisconnect(Lcom/android/internal/telephony/PhoneBase;I)V
    .locals 1
    .parameter "phone"
    .parameter "causeCode"

    .prologue
    .line 542
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/PhoneBase;->disconnectCauseFromCode(I)Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ConnectionBase;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 543
    return-void
.end method

.method public proceedAfterWaitChar()V
    .locals 3

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    .line 391
    const-string v0, "RILCONNECTION"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectionBase.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ConnectionBase;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :goto_0
    return-void

    .line 396
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ConnectionBase;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 398
    invoke-virtual {p0}, Lcom/android/internal/telephony/ConnectionBase;->processNextPostDialChar()V

    goto :goto_0
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 4
    .parameter "str"

    .prologue
    .line 402
    iget-object v1, p0, Lcom/android/internal/telephony/ConnectionBase;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_0

    .line 403
    const-string v1, "RILCONNECTION"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ConnectionBase;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :goto_0
    return-void

    .line 408
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ConnectionBase;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 436
    .local v0, buf:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/telephony/ConnectionBase;->postDialString:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/ConnectionBase;->nextPostDialChar:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ConnectionBase;->postDialString:Ljava/lang/String;

    .line 438
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/ConnectionBase;->nextPostDialChar:I

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "proceedAfterWildChar: new postDialString is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ConnectionBase;->postDialString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ConnectionBase;->log(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Lcom/android/internal/telephony/ConnectionBase;->processNextPostDialChar()V

    goto :goto_0
.end method

.method processNextPostDialChar()V
    .locals 10

    .prologue
    .line 801
    invoke-virtual {p0}, Lcom/android/internal/telephony/ConnectionBase;->getPhoneFromConnection()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    .line 802
    .local v4, phone:Lcom/android/internal/telephony/PhoneBase;
    const/4 v1, 0x0

    .line 805
    .local v1, c:C
    iget-object v7, p0, Lcom/android/internal/telephony/ConnectionBase;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v8, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v7, v8, :cond_1

    .line 806
    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionBase;->releaseWakeLock()V

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 811
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/ConnectionBase;->postDialString:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/ConnectionBase;->postDialString:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget v8, p0, Lcom/android/internal/telephony/ConnectionBase;->nextPostDialChar:I

    if-gt v7, v8, :cond_4

    .line 813
    :cond_2
    sget-object v7, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/ConnectionBase;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 816
    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionBase;->releaseWakeLock()V

    .line 819
    const/4 v1, 0x0

    .line 838
    :cond_3
    iget-object v5, v4, Lcom/android/internal/telephony/PhoneBase;->mPostDialHandler:Landroid/os/Registrant;

    .line 842
    .local v5, postDialHandler:Landroid/os/Registrant;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v3

    .local v3, notifyMessage:Landroid/os/Message;
    if-eqz v3, :cond_0

    .line 845
    iget-object v6, p0, Lcom/android/internal/telephony/ConnectionBase;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 846
    .local v6, state:Lcom/android/internal/telephony/Connection$PostDialState;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 847
    .local v0, ar:Landroid/os/AsyncResult;
    iput-object p0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 848
    iput-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 851
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 853
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 823
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #notifyMessage:Landroid/os/Message;
    .end local v5           #postDialHandler:Landroid/os/Registrant;
    .end local v6           #state:Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_4
    sget-object v7, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/ConnectionBase;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 825
    iget-object v7, p0, Lcom/android/internal/telephony/ConnectionBase;->postDialString:Ljava/lang/String;

    iget v8, p0, Lcom/android/internal/telephony/ConnectionBase;->nextPostDialChar:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/android/internal/telephony/ConnectionBase;->nextPostDialChar:I

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 827
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ConnectionBase;->processPostDialChar(C)Z

    move-result v2

    .line 829
    .local v2, isValid:Z
    if-nez v2, :cond_3

    .line 831
    iget-object v7, p0, Lcom/android/internal/telephony/ConnectionBase;->h:Landroid/os/Handler;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 833
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "processNextPostDialChar: c="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isn\'t valid!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public separate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/android/internal/telephony/ConnectionBase;->disconnected:Z

    if-nez v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->owner:Lcom/android/internal/telephony/CallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallTracker;->separate(Lcom/android/internal/telephony/ConnectionBase;)V

    .line 383
    return-void

    .line 381
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public update(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 9
    .parameter "dc"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 582
    const/4 v0, 0x0

    .line 583
    .local v0, changed:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionBase;->isConnectingInOrOut()Z

    move-result v3

    .line 584
    .local v3, wasConnectingInOrOut:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/ConnectionBase;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_5

    move v4, v5

    .line 586
    .local v4, wasHolding:Z
    :goto_0
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    if-eqz v7, :cond_6

    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    iget v7, v7, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    .line 587
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/ConnectionBase;->imsParentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 592
    .local v1, newParent:Lcom/android/internal/telephony/Call;
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parent= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/ConnectionBase;->parent:Lcom/android/internal/telephony/Call;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", newParent= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/ConnectionBase;->log(Ljava/lang/String;)V

    .line 594
    iget-object v7, p0, Lcom/android/internal/telephony/ConnectionBase;->address:Ljava/lang/String;

    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/internal/telephony/ConnectionBase;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 595
    const-string/jumbo v7, "update: phone # changed!"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/ConnectionBase;->log(Ljava/lang/String;)V

    .line 596
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/telephony/ConnectionBase;->address:Ljava/lang/String;

    .line 597
    const/4 v0, 0x1

    .line 602
    :cond_0
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 603
    iget-object v7, p0, Lcom/android/internal/telephony/ConnectionBase;->cnapName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 604
    const/4 v0, 0x1

    .line 605
    const-string v7, ""

    iput-object v7, p0, Lcom/android/internal/telephony/ConnectionBase;->cnapName:Ljava/lang/String;

    .line 612
    :cond_1
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--dssds----"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/ConnectionBase;->cnapName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/ConnectionBase;->log(Ljava/lang/String;)V

    .line 613
    iget v7, p1, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v7, p0, Lcom/android/internal/telephony/ConnectionBase;->cnapNamePresentation:I

    .line 614
    iget v7, p1, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v7, p0, Lcom/android/internal/telephony/ConnectionBase;->numberPresentation:I

    .line 616
    iget-object v7, p0, Lcom/android/internal/telephony/ConnectionBase;->parent:Lcom/android/internal/telephony/Call;

    if-eq v1, v7, :cond_8

    .line 617
    iget-object v5, p0, Lcom/android/internal/telephony/ConnectionBase;->parent:Lcom/android/internal/telephony/Call;

    if-eqz v5, :cond_2

    .line 618
    iget-object v5, p0, Lcom/android/internal/telephony/ConnectionBase;->parent:Lcom/android/internal/telephony/Call;

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/Call;->detach(Lcom/android/internal/telephony/ConnectionBase;)V

    .line 620
    :cond_2
    invoke-virtual {v1, p0, p1}, Lcom/android/internal/telephony/Call;->attach(Lcom/android/internal/telephony/ConnectionBase;Lcom/android/internal/telephony/DriverCall;)V

    .line 621
    iput-object v1, p0, Lcom/android/internal/telephony/ConnectionBase;->parent:Lcom/android/internal/telephony/Call;

    .line 622
    const/4 v0, 0x1

    .line 631
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update, wasConnectingInOrOut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", wasHolding="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isConnectingInOrOut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionBase;->isConnectingInOrOut()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", changed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ConnectionBase;->log(Ljava/lang/String;)V

    .line 638
    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionBase;->isConnectingInOrOut()Z

    move-result v5

    if-nez v5, :cond_3

    .line 639
    invoke-virtual {p0}, Lcom/android/internal/telephony/ConnectionBase;->onConnectedInOrOut()V

    .line 642
    :cond_3
    if-eqz v0, :cond_4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/ConnectionBase;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_4

    .line 644
    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionBase;->onStartedHolding()V

    .line 647
    :cond_4
    return v0

    .end local v1           #newParent:Lcom/android/internal/telephony/Call;
    .end local v4           #wasHolding:Z
    :cond_5
    move v4, v6

    .line 584
    goto/16 :goto_0

    .line 589
    .restart local v4       #wasHolding:Z
    :cond_6
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/ConnectionBase;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .restart local v1       #newParent:Lcom/android/internal/telephony/Call;
    goto/16 :goto_1

    .line 607
    :cond_7
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/ConnectionBase;->cnapName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 608
    const/4 v0, 0x1

    .line 609
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/telephony/ConnectionBase;->cnapName:Ljava/lang/String;

    goto/16 :goto_2

    .line 625
    :cond_8
    iget-object v7, p0, Lcom/android/internal/telephony/ConnectionBase;->parent:Lcom/android/internal/telephony/Call;

    invoke-virtual {v7, p0, p1}, Lcom/android/internal/telephony/Call;->update(Lcom/android/internal/telephony/ConnectionBase;Lcom/android/internal/telephony/DriverCall;)Z

    move-result v2

    .line 626
    .local v2, parentStateChange:Z
    if-nez v0, :cond_9

    if-eqz v2, :cond_a

    :cond_9
    move v0, v5

    :goto_4
    goto :goto_3

    :cond_a
    move v0, v6

    goto :goto_4
.end method

.method public updateParent(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V
    .locals 1
    .parameter "oldParent"
    .parameter "newParent"

    .prologue
    .line 777
    if-eq p2, p1, :cond_1

    .line 778
    if-eqz p1, :cond_0

    .line 779
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/Call;->detach(Lcom/android/internal/telephony/ConnectionBase;)V

    .line 781
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p2, p0, v0}, Lcom/android/internal/telephony/Call;->attachFake(Lcom/android/internal/telephony/ConnectionBase;Lcom/android/internal/telephony/Call$State;)V

    .line 782
    iput-object p2, p0, Lcom/android/internal/telephony/ConnectionBase;->parent:Lcom/android/internal/telephony/Call;

    .line 784
    :cond_1
    return-void
.end method
