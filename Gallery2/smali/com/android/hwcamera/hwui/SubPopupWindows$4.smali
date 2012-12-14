.class Lcom/android/hwcamera/hwui/SubPopupWindows$4;
.super Ljava/lang/Object;
.source "SubPopupWindows.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/hwui/SubPopupWindows;

.field final synthetic val$popWindowdismissAnimation:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/hwui/SubPopupWindows;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows$4;->this$0:Lcom/android/hwcamera/hwui/SubPopupWindows;

    iput-object p2, p0, Lcom/android/hwcamera/hwui/SubPopupWindows$4;->val$popWindowdismissAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows$4;->this$0:Lcom/android/hwcamera/hwui/SubPopupWindows;

    #getter for: Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->access$400(Lcom/android/hwcamera/hwui/SubPopupWindows;)Lcom/android/hwcamera/hwui/RotateLinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows$4;->val$popWindowdismissAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 199
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows$4;->this$0:Lcom/android/hwcamera/hwui/SubPopupWindows;

    #getter for: Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->access$400(Lcom/android/hwcamera/hwui/SubPopupWindows;)Lcom/android/hwcamera/hwui/RotateLinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows$4;->val$popWindowdismissAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 200
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows$4;->this$0:Lcom/android/hwcamera/hwui/SubPopupWindows;

    const/4 v1, 0x0

    #calls: Lcom/android/hwcamera/hwui/SubPopupWindows;->setPopupShowing(Z)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->access$500(Lcom/android/hwcamera/hwui/SubPopupWindows;Z)V

    .line 201
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows$4;->this$0:Lcom/android/hwcamera/hwui/SubPopupWindows;

    #getter for: Lcom/android/hwcamera/hwui/SubPopupWindows;->mListeners:Lcom/android/hwcamera/hwui/SubPopupWindows$Listenerex;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->access$300(Lcom/android/hwcamera/hwui/SubPopupWindows;)Lcom/android/hwcamera/hwui/SubPopupWindows$Listenerex;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows$Listenerex;->onPopupWindowDismiss()V

    .line 202
    return-void
.end method
