.class Lcom/huawei/gallery3d/dolby/DolbyEffect$2;
.super Landroid/content/BroadcastReceiver;
.source "DolbyEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/gallery3d/dolby/DolbyEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/gallery3d/dolby/DolbyEffect;


# direct methods
.method constructor <init>(Lcom/huawei/gallery3d/dolby/DolbyEffect;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect$2;->this$0:Lcom/huawei/gallery3d/dolby/DolbyEffect;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/huawei/gallery3d/dolby/DolbyEffect;->access$102(I)I

    .line 78
    const-string v1, "DolbyEffect-Gallery2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "outputAudioDevice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/huawei/gallery3d/dolby/DolbyEffect;->access$100()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v1, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect$2;->this$0:Lcom/huawei/gallery3d/dolby/DolbyEffect;

    #getter for: Lcom/huawei/gallery3d/dolby/DolbyEffect;->mDolbyItem:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/huawei/gallery3d/dolby/DolbyEffect;->access$000(Lcom/huawei/gallery3d/dolby/DolbyEffect;)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect$2;->this$0:Lcom/huawei/gallery3d/dolby/DolbyEffect;

    iget-object v2, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect$2;->this$0:Lcom/huawei/gallery3d/dolby/DolbyEffect;

    #getter for: Lcom/huawei/gallery3d/dolby/DolbyEffect;->mDolbyItem:Landroid/view/MenuItem;
    invoke-static {v2}, Lcom/huawei/gallery3d/dolby/DolbyEffect;->access$000(Lcom/huawei/gallery3d/dolby/DolbyEffect;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/gallery3d/dolby/DolbyEffect;->updateDolbyStatus(Landroid/view/MenuItem;)V

    .line 83
    :cond_0
    return-void
.end method
