.class Lcom/scalado/hwcamera/rewind/Topbar$MyFadeInListener;
.super Ljava/lang/Object;
.source "Topbar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/hwcamera/rewind/Topbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyFadeInListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/hwcamera/rewind/Topbar;


# direct methods
.method private constructor <init>(Lcom/scalado/hwcamera/rewind/Topbar;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/scalado/hwcamera/rewind/Topbar$MyFadeInListener;->this$0:Lcom/scalado/hwcamera/rewind/Topbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/hwcamera/rewind/Topbar;Lcom/scalado/hwcamera/rewind/Topbar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/scalado/hwcamera/rewind/Topbar$MyFadeInListener;-><init>(Lcom/scalado/hwcamera/rewind/Topbar;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 166
    const-string v0, "Topbar"

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/Topbar$MyFadeInListener;->this$0:Lcom/scalado/hwcamera/rewind/Topbar;

    #setter for: Lcom/scalado/hwcamera/rewind/Topbar;->mState:I
    invoke-static {v0, v2}, Lcom/scalado/hwcamera/rewind/Topbar;->access$302(Lcom/scalado/hwcamera/rewind/Topbar;I)I

    .line 168
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/Topbar$MyFadeInListener;->this$0:Lcom/scalado/hwcamera/rewind/Topbar;

    #getter for: Lcom/scalado/hwcamera/rewind/Topbar;->mFadeOutRequest:Z
    invoke-static {v0}, Lcom/scalado/hwcamera/rewind/Topbar;->access$400(Lcom/scalado/hwcamera/rewind/Topbar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/Topbar$MyFadeInListener;->this$0:Lcom/scalado/hwcamera/rewind/Topbar;

    #setter for: Lcom/scalado/hwcamera/rewind/Topbar;->mFadeOutRequest:Z
    invoke-static {v0, v2}, Lcom/scalado/hwcamera/rewind/Topbar;->access$402(Lcom/scalado/hwcamera/rewind/Topbar;Z)Z

    .line 170
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/Topbar$MyFadeInListener;->this$0:Lcom/scalado/hwcamera/rewind/Topbar;

    #calls: Lcom/scalado/hwcamera/rewind/Topbar;->fadeOut()V
    invoke-static {v0}, Lcom/scalado/hwcamera/rewind/Topbar;->access$500(Lcom/scalado/hwcamera/rewind/Topbar;)V

    .line 172
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 176
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 179
    const-string v0, "Topbar"

    const-string v1, "onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method
