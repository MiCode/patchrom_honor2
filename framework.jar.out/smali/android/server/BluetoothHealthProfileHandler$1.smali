.class Landroid/server/BluetoothHealthProfileHandler$1;
.super Landroid/os/Handler;
.source "BluetoothHealthProfileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothHealthProfileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothHealthProfileHandler;


# direct methods
.method constructor <init>(Landroid/server/BluetoothHealthProfileHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .parameter "msg"

    .prologue
    .line 96
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 98
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 100
    .local v19, registerApp:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getRole()I

    move-result v21

    .line 101
    .local v21, role:I
    const/16 v18, 0x0

    .line 103
    .local v18, path:Ljava/lang/String;
    const/4 v2, 0x2

    move/from16 v0, v21

    if-ne v0, v2, :cond_1

    .line 104
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/server/BluetoothHealthProfileHandler;->access$200(Landroid/server/BluetoothHealthProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getDataType()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    move/from16 v0, v21

    #calls: Landroid/server/BluetoothHealthProfileHandler;->getStringRole(I)Ljava/lang/String;
    invoke-static {v4, v0}, Landroid/server/BluetoothHealthProfileHandler;->access$100(Landroid/server/BluetoothHealthProfileHandler;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v4, v7}, Landroid/server/BluetoothService;->registerHealthApplicationNative(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 112
    :goto_1
    if-nez v18, :cond_2

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    const/4 v3, 0x1

    move-object/from16 v0, v19

    #calls: Landroid/server/BluetoothHealthProfileHandler;->callHealthApplicationStatusCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    invoke-static {v2, v0, v3}, Landroid/server/BluetoothHealthProfileHandler;->access$400(Landroid/server/BluetoothHealthProfileHandler;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V

    .line 115
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler;->mCallbacks:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/server/BluetoothHealthProfileHandler;->access$500(Landroid/server/BluetoothHealthProfileHandler;)Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 107
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/server/BluetoothHealthProfileHandler;->access$200(Landroid/server/BluetoothHealthProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getDataType()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    move/from16 v0, v21

    #calls: Landroid/server/BluetoothHealthProfileHandler;->getStringRole(I)Ljava/lang/String;
    invoke-static {v4, v0}, Landroid/server/BluetoothHealthProfileHandler;->access$100(Landroid/server/BluetoothHealthProfileHandler;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getChannelType()I

    move-result v23

    move/from16 v0, v23

    #calls: Landroid/server/BluetoothHealthProfileHandler;->getStringChannelType(I)Ljava/lang/String;
    invoke-static {v8, v0}, Landroid/server/BluetoothHealthProfileHandler;->access$300(Landroid/server/BluetoothHealthProfileHandler;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v3, v4, v7, v8}, Landroid/server/BluetoothService;->registerHealthApplicationNative(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto :goto_1

    .line 117
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler;->mHealthAppConfigs:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/server/BluetoothHealthProfileHandler;->access$600(Landroid/server/BluetoothHealthProfileHandler;)Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v17, Landroid/server/BluetoothHealthProfileHandler$BluetoothHealthDeathRecipient;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/server/BluetoothHealthProfileHandler;->access$200(Landroid/server/BluetoothHealthProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v2, v1}, Landroid/server/BluetoothHealthProfileHandler$BluetoothHealthDeathRecipient;-><init>(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothHealthAppConfiguration;)V

    .line 121
    .local v17, mRcpObj:Landroid/server/BluetoothHealthProfileHandler$BluetoothHealthDeathRecipient;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler;->mDeathRcps:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/server/BluetoothHealthProfileHandler;->access$700(Landroid/server/BluetoothHealthProfileHandler;)Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler;->mCallbacks:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/server/BluetoothHealthProfileHandler;->access$500(Landroid/server/BluetoothHealthProfileHandler;)Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IBluetoothHealthCallback;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothHealthCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 124
    .local v9, binder:Landroid/os/IBinder;
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, v17

    invoke-interface {v9, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    #calls: Landroid/server/BluetoothHealthProfileHandler;->callHealthApplicationStatusCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    invoke-static {v2, v0, v3}, Landroid/server/BluetoothHealthProfileHandler;->access$400(Landroid/server/BluetoothHealthProfileHandler;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V

    goto/16 :goto_0

    .line 125
    :catch_0
    move-exception v15

    .line 126
    .local v15, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothHealthProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LinktoDeath Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 135
    .end local v9           #binder:Landroid/os/IBinder;
    .end local v15           #e:Landroid/os/RemoteException;
    .end local v17           #mRcpObj:Landroid/server/BluetoothHealthProfileHandler$BluetoothHealthDeathRecipient;
    .end local v18           #path:Ljava/lang/String;
    .end local v19           #registerApp:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v21           #role:I
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 145
    .local v22, unregisterApp:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v12, channelsToDisconnect:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/server/BluetoothHealthProfileHandler$HealthChannel;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler;->mHealthChannels:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/server/BluetoothHealthProfileHandler;->access$800(Landroid/server/BluetoothHealthProfileHandler;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;

    .line 147
    .local v10, chan:Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    invoke-static {v10}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$900(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mState:I
    invoke-static {v10}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1000(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 149
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 152
    .end local v10           #chan:Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    :cond_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;

    .line 153
    .restart local v10       #chan:Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v10}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1100(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mId:I
    invoke-static {v10}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1200(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)I

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0, v4}, Landroid/server/BluetoothHealthProfileHandler;->disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    .line 156
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 158
    :catch_1
    move-exception v2

    goto :goto_4

    .line 165
    .end local v10           #chan:Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/server/BluetoothHealthProfileHandler;->access$200(Landroid/server/BluetoothHealthProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler;->mHealthAppConfigs:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/server/BluetoothHealthProfileHandler;->access$600(Landroid/server/BluetoothHealthProfileHandler;)Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/server/BluetoothService;->unregisterHealthApplicationNative(Ljava/lang/String;)Z

    move-result v20

    .line 168
    .local v20, result:Z
    const-string v2, "BluetoothHealthProfileHandler"

    const-string v3, "Unregister called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    if-eqz v20, :cond_6

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    const/4 v3, 0x2

    move-object/from16 v0, v22

    #calls: Landroid/server/BluetoothHealthProfileHandler;->callHealthApplicationStatusCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    invoke-static {v2, v0, v3}, Landroid/server/BluetoothHealthProfileHandler;->access$400(Landroid/server/BluetoothHealthProfileHandler;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V

    .line 172
    const-string v2, "BluetoothHealthProfileHandler"

    const-string v3, "Unregister successfull"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler;->mCallbacks:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/server/BluetoothHealthProfileHandler;->access$500(Landroid/server/BluetoothHealthProfileHandler;)Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IBluetoothHealthCallback;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler;->mDeathRcps:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/server/BluetoothHealthProfileHandler;->access$700(Landroid/server/BluetoothHealthProfileHandler;)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/server/BluetoothHealthProfileHandler$BluetoothHealthDeathRecipient;

    #calls: Landroid/server/BluetoothHealthProfileHandler;->cleanupDeathRecipient(Landroid/bluetooth/IBluetoothHealthCallback;Landroid/server/BluetoothHealthProfileHandler$BluetoothHealthDeathRecipient;)V
    invoke-static {v4, v2, v3}, Landroid/server/BluetoothHealthProfileHandler;->access$1300(Landroid/server/BluetoothHealthProfileHandler;Landroid/bluetooth/IBluetoothHealthCallback;Landroid/server/BluetoothHealthProfileHandler$BluetoothHealthDeathRecipient;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler;->mCallbacks:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/server/BluetoothHealthProfileHandler;->access$500(Landroid/server/BluetoothHealthProfileHandler;)Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler;->mHealthAppConfigs:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/server/BluetoothHealthProfileHandler;->access$600(Landroid/server/BluetoothHealthProfileHandler;)Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler;->mDeathRcps:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/server/BluetoothHealthProfileHandler;->access$700(Landroid/server/BluetoothHealthProfileHandler;)Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 180
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    const/4 v3, 0x3

    move-object/from16 v0, v22

    #calls: Landroid/server/BluetoothHealthProfileHandler;->callHealthApplicationStatusCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    invoke-static {v2, v0, v3}, Landroid/server/BluetoothHealthProfileHandler;->access$400(Landroid/server/BluetoothHealthProfileHandler;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V

    goto/16 :goto_0

    .line 185
    .end local v12           #channelsToDisconnect:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/server/BluetoothHealthProfileHandler$HealthChannel;>;"
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v20           #result:Z
    .end local v22           #unregisterApp:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;

    .line 186
    .restart local v10       #chan:Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/server/BluetoothHealthProfileHandler;->access$200(Landroid/server/BluetoothHealthProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v2

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v10}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1100(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 188
    .local v14, deviceObjectPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler;->mHealthAppConfigs:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/server/BluetoothHealthProfileHandler;->access$600(Landroid/server/BluetoothHealthProfileHandler;)Ljava/util/HashMap;

    move-result-object v2

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    invoke-static {v10}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$900(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 189
    .local v13, configPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mChannelType:I
    invoke-static {v10}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1400(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)I

    move-result v3

    #calls: Landroid/server/BluetoothHealthProfileHandler;->getStringChannelType(I)Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothHealthProfileHandler;->access$300(Landroid/server/BluetoothHealthProfileHandler;I)Ljava/lang/String;

    move-result-object v11

    .line 191
    .local v11, channelType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/server/BluetoothHealthProfileHandler;->access$200(Landroid/server/BluetoothHealthProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v2

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mId:I
    invoke-static {v10}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1200(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)I

    move-result v3

    invoke-virtual {v2, v14, v13, v11, v3}, Landroid/server/BluetoothService;->createChannelNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 193
    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mState:I
    invoke-static {v10}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1000(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)I

    move-result v5

    .line 194
    .local v5, prevState:I
    const/4 v6, 0x0

    .line 195
    .local v6, state:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    invoke-static {v10}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$900(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v3

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v10}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1100(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    const/4 v7, 0x0

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mId:I
    invoke-static {v10}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1200(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)I

    move-result v8

    #calls: Landroid/server/BluetoothHealthProfileHandler;->callHealthChannelCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V
    invoke-static/range {v2 .. v8}, Landroid/server/BluetoothHealthProfileHandler;->access$1500(Landroid/server/BluetoothHealthProfileHandler;Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothHealthProfileHandler$1;->this$0:Landroid/server/BluetoothHealthProfileHandler;

    #getter for: Landroid/server/BluetoothHealthProfileHandler;->mHealthChannels:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/server/BluetoothHealthProfileHandler;->access$800(Landroid/server/BluetoothHealthProfileHandler;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
