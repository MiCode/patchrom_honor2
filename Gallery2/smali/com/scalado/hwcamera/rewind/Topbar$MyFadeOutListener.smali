.class Lcom/scalado/hwcamera/rewind/Topbar$MyFadeOutListener;
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
    name = "MyFadeOutListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/hwcamera/rewind/Topbar;


# direct methods
.method private constructor <init>(Lcom/scalado/hwcamera/rewind/Topbar;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/scalado/hwcamera/rewind/Topbar$MyFadeOutListener;->this$0:Lcom/scalado/hwcamera/rewind/Topbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/hwcamera/rewind/Topbar;Lcom/scalado/hwcamera/rewind/Topbar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/scalado/hwcamera/rewind/Topbar$MyFadeOutListener;-><init>(Lcom/scalado/hwcamera/rewind/Topbar;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 186
    const-string v0, "Topbar"

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/Topbar$MyFadeOutListener;->this$0:Lcom/scalado/hwcamera/rewind/Topbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/scalado/hwcamera/rewind/Topbar;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/Topbar$MyFadeOutListener;->this$0:Lcom/scalado/hwcamera/rewind/Topbar;

    const/4 v1, 0x0

    #setter for: Lcom/scalado/hwcamera/rewind/Topbar;->mState:I
    invoke-static {v0, v1}, Lcom/scalado/hwcamera/rewind/Topbar;->access$302(Lcom/scalado/hwcamera/rewind/Topbar;I)I

    .line 190
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 193
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 196
    const-string v0, "Topbar"

    const-string v1, "onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void
.end method
