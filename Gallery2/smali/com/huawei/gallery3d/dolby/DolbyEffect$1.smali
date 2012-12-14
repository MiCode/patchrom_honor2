.class Lcom/huawei/gallery3d/dolby/DolbyEffect$1;
.super Ljava/lang/Object;
.source "DolbyEffect.java"

# interfaces
.implements Landroid/media/dolby/DolbyMobileClientCallbacks;


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
    .line 48
    iput-object p1, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect$1;->this$0:Lcom/huawei/gallery3d/dolby/DolbyEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEffectOnChanged(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 61
    return-void
.end method

.method public onPresetChanged(II)V
    .locals 2
    .parameter "presetCategory"
    .parameter "preset"

    .prologue
    .line 64
    const-string v0, "DolbyEffect-Gallery2"

    const-string v1, "onPresetChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect$1;->this$0:Lcom/huawei/gallery3d/dolby/DolbyEffect;

    #getter for: Lcom/huawei/gallery3d/dolby/DolbyEffect;->mDolbyItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/huawei/gallery3d/dolby/DolbyEffect;->access$000(Lcom/huawei/gallery3d/dolby/DolbyEffect;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect$1;->this$0:Lcom/huawei/gallery3d/dolby/DolbyEffect;

    iget-object v1, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect$1;->this$0:Lcom/huawei/gallery3d/dolby/DolbyEffect;

    #getter for: Lcom/huawei/gallery3d/dolby/DolbyEffect;->mDolbyItem:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/huawei/gallery3d/dolby/DolbyEffect;->access$000(Lcom/huawei/gallery3d/dolby/DolbyEffect;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/gallery3d/dolby/DolbyEffect;->updateDolbyStatus(Landroid/view/MenuItem;)V

    .line 68
    :cond_0
    return-void
.end method

.method public onServiceConnected()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "DolbyEffect-Gallery2"

    const-string v1, "onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect$1;->this$0:Lcom/huawei/gallery3d/dolby/DolbyEffect;

    #getter for: Lcom/huawei/gallery3d/dolby/DolbyEffect;->mDolbyItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/huawei/gallery3d/dolby/DolbyEffect;->access$000(Lcom/huawei/gallery3d/dolby/DolbyEffect;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect$1;->this$0:Lcom/huawei/gallery3d/dolby/DolbyEffect;

    iget-object v1, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect$1;->this$0:Lcom/huawei/gallery3d/dolby/DolbyEffect;

    #getter for: Lcom/huawei/gallery3d/dolby/DolbyEffect;->mDolbyItem:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/huawei/gallery3d/dolby/DolbyEffect;->access$000(Lcom/huawei/gallery3d/dolby/DolbyEffect;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/gallery3d/dolby/DolbyEffect;->updateDolbyStatus(Landroid/view/MenuItem;)V

    .line 55
    :cond_0
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method
