.class Landroid/server/BluetoothAdapterStateMachine$HotOff;
.super Lcom/android/internal/util/State;
.source "BluetoothAdapterStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothAdapterStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HotOff"
.end annotation


# instance fields
.field private mTurnColdPending:Z

.field final synthetic this$0:Landroid/server/BluetoothAdapterStateMachine;


# direct methods
.method private constructor <init>(Landroid/server/BluetoothAdapterStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/server/BluetoothAdapterStateMachine;Landroid/server/BluetoothAdapterStateMachine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 391
    invoke-direct {p0, p1}, Landroid/server/BluetoothAdapterStateMachine$HotOff;-><init>(Landroid/server/BluetoothAdapterStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter HotOff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$3500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Landroid/server/BluetoothAdapterStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Ljava/lang/String;)V

    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->mTurnColdPending:Z

    .line 400
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "message"

    .prologue
    const/16 v5, 0xb

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HotOff process message: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/server/BluetoothAdapterStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Ljava/lang/String;)V

    .line 406
    const/4 v0, 0x1

    .line 407
    .local v0, retValue:Z
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    move v0, v3

    .line 486
    .end local v0           #retValue:Z
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 410
    .restart local v0       #retValue:Z
    :sswitch_1
    iget-boolean v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->mTurnColdPending:Z

    if-eqz v1, :cond_1

    .line 413
    const-string v1, "BluetoothAdapterStateMachine"

    const-string v3, "HotOff: Deferring USER_TURN_ON until TURN_COLD finished..."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/server/BluetoothAdapterStateMachine;->access$3600(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    move v0, v2

    .line 415
    goto :goto_0

    .line 419
    :cond_1
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->broadcastState(I)V
    invoke-static {v1, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$1000(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 420
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 421
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->persistSwitchSetting(Z)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$900(Landroid/server/BluetoothAdapterStateMachine;Z)V

    .line 426
    :cond_2
    :sswitch_2
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$800(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/server/BluetoothService;->switchConnectable(Z)V

    .line 427
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mSwitching:Landroid/server/BluetoothAdapterStateMachine$Switching;
    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$3700(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$Switching;

    move-result-object v2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$3800(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 432
    :sswitch_3
    iput-boolean v2, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->mTurnColdPending:Z

    .line 434
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->shutoffBluetooth()V
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$3200(Landroid/server/BluetoothAdapterStateMachine;)V

    .line 438
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v2, 0x6a

    const-wide/16 v3, 0x14

    invoke-virtual {v1, v2, v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 443
    :sswitch_4
    iput-boolean v3, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->mTurnColdPending:Z

    .line 445
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mPowerOff:Landroid/server/BluetoothAdapterStateMachine$PowerOff;
    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$PowerOff;

    move-result-object v2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$3900(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 446
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mDelayBroadcastStateOff:Z
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$3100(Landroid/server/BluetoothAdapterStateMachine;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 447
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v2, 0xa

    #calls: Landroid/server/BluetoothAdapterStateMachine;->broadcastState(I)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1000(Landroid/server/BluetoothAdapterStateMachine;I)V

    goto :goto_0

    .line 451
    :sswitch_5
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->getBluetoothPersistedSetting()Z
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$1700(Landroid/server/BluetoothAdapterStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->broadcastState(I)V
    invoke-static {v1, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$1000(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 453
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mSwitching:Landroid/server/BluetoothAdapterStateMachine$Switching;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$3700(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$Switching;

    move-result-object v3

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Landroid/server/BluetoothAdapterStateMachine;->access$4000(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 454
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$800(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/server/BluetoothService;->switchConnectable(Z)V

    goto/16 :goto_0

    .line 458
    :sswitch_6
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mPerProcessState:Landroid/server/BluetoothAdapterStateMachine$PerProcessState;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$4100(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$PerProcessState;

    move-result-object v3

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Landroid/server/BluetoothAdapterStateMachine;->access$4200(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 462
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/server/BluetoothAdapterStateMachine;->access$4300(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    .line 464
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$800(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/server/BluetoothService;->switchConnectable(Z)V

    goto/16 :goto_0

    .line 467
    :sswitch_7
    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothStateChangeCallback;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->perProcessCallback(ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V
    invoke-static {v2, v3, v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V

    goto/16 :goto_0

    .line 472
    :sswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v2, 0x5

    const/4 v3, 0x0

    #calls: Landroid/server/BluetoothAdapterStateMachine;->recoverStateMachine(ILjava/lang/Object;)V
    invoke-static {v1, v2, v3}, Landroid/server/BluetoothAdapterStateMachine;->access$4400(Landroid/server/BluetoothAdapterStateMachine;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 477
    :sswitch_9
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/server/BluetoothAdapterStateMachine;->access$4500(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 407
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_6
        0x4 -> :sswitch_7
        0x5 -> :sswitch_9
        0x36 -> :sswitch_8
        0x37 -> :sswitch_3
        0x38 -> :sswitch_5
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
        0x6a -> :sswitch_4
        0x321 -> :sswitch_0
    .end sparse-switch
.end method
