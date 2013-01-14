.class public Lcom/android/internal/telephony/CallBase;
.super Lcom/android/internal/telephony/Call;
.source "CallBase.java"


# instance fields
.field owner:Lcom/android/internal/telephony/PhoneBase;

.field tracker:Lcom/android/internal/telephony/CallTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CallTracker;)V
    .locals 0
    .parameter "owner"
    .parameter "tracker"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/telephony/Call;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/internal/telephony/CallBase;->owner:Lcom/android/internal/telephony/PhoneBase;

    .line 42
    iput-object p2, p0, Lcom/android/internal/telephony/CallBase;->tracker:Lcom/android/internal/telephony/CallTracker;

    .line 43
    return-void
.end method


# virtual methods
.method public attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V
    .locals 1
    .parameter "conn"
    .parameter "dc"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/CallBase;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {v0}, Lcom/android/internal/telephony/CallBase;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallBase;->state:Lcom/android/internal/telephony/Call$State;

    .line 83
    return-void
.end method

.method public attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V
    .locals 1
    .parameter "conn"
    .parameter "state"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/CallBase;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iput-object p2, p0, Lcom/android/internal/telephony/CallBase;->state:Lcom/android/internal/telephony/Call$State;

    .line 88
    return-void
.end method

.method public clearDisconnected()V
    .locals 4

    .prologue
    .line 162
    iget-object v2, p0, Lcom/android/internal/telephony/CallBase;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 163
    iget-object v2, p0, Lcom/android/internal/telephony/CallBase;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 165
    .local v0, cn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    .line 166
    iget-object v2, p0, Lcom/android/internal/telephony/CallBase;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 162
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 170
    .end local v0           #cn:Lcom/android/internal/telephony/Connection;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/CallBase;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 171
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v2, p0, Lcom/android/internal/telephony/CallBase;->state:Lcom/android/internal/telephony/Call$State;

    .line 173
    :cond_2
    return-void
.end method

.method public connectionDisconnected(Lcom/android/internal/telephony/Connection;)V
    .locals 5
    .parameter "conn"

    .prologue
    .line 94
    iget-object v3, p0, Lcom/android/internal/telephony/CallBase;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_1

    .line 97
    const/4 v0, 0x1

    .line 99
    .local v0, hasOnlyDisconnectedConnections:Z
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/android/internal/telephony/CallBase;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, s:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 100
    iget-object v3, p0, Lcom/android/internal/telephony/CallBase;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_2

    .line 102
    const/4 v0, 0x0

    .line 107
    :cond_0
    if-eqz v0, :cond_1

    .line 108
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    iput-object v3, p0, Lcom/android/internal/telephony/CallBase;->state:Lcom/android/internal/telephony/Call$State;

    .line 111
    .end local v0           #hasOnlyDisconnectedConnections:Z
    .end local v1           #i:I
    .end local v2           #s:I
    :cond_1
    return-void

    .line 99
    .restart local v0       #hasOnlyDisconnectedConnections:Z
    .restart local v1       #i:I
    .restart local v2       #s:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public detach(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .parameter "conn"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/CallBase;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/CallBase;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/CallBase;->state:Lcom/android/internal/telephony/Call$State;

    .line 119
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/telephony/CallBase;->connections:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/telephony/CallBase;->owner:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method public hangup()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/CallBase;->owner:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallTracker;->hangup(Lcom/android/internal/telephony/Call;)V

    .line 68
    return-void
.end method

.method public hangupAllCalls()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/CallBase;->owner:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CallBase;->owner:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSupportedDomain()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallTracker;->hangupAllCalls(I)V

    .line 72
    return-void
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/CallBase;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/CallBase;->owner:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getMaxConnectionsPerCall()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiparty()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 59
    iget-object v1, p0, Lcom/android/internal/telephony/CallBase;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHangupLocal()V
    .locals 4

    .prologue
    .line 150
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/android/internal/telephony/CallBase;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, s:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 151
    iget-object v3, p0, Lcom/android/internal/telephony/CallBase;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ConnectionBase;

    .line 153
    .local v0, cn:Lcom/android/internal/telephony/ConnectionBase;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ConnectionBase;->onHangupLocal()V

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v0           #cn:Lcom/android/internal/telephony/ConnectionBase;
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    iput-object v3, p0, Lcom/android/internal/telephony/CallBase;->state:Lcom/android/internal/telephony/Call$State;

    .line 156
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/CallBase;->state:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)Z
    .locals 3
    .parameter "conn"
    .parameter "dc"

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 125
    .local v0, changed:Z
    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {v2}, Lcom/android/internal/telephony/CallBase;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 127
    .local v1, newState:Lcom/android/internal/telephony/Call$State;
    iget-object v2, p0, Lcom/android/internal/telephony/CallBase;->state:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    .line 128
    iput-object v1, p0, Lcom/android/internal/telephony/CallBase;->state:Lcom/android/internal/telephony/Call$State;

    .line 129
    const/4 v0, 0x1

    .line 132
    :cond_0
    return v0
.end method
