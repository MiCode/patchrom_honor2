.class Lcom/android/hwcamera/FocusManager$2;
.super Ljava/lang/Object;
.source "FocusManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/FocusManager;->onAutoFocusMoving(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/FocusManager;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/FocusManager;)V
    .locals 0
    .parameter

    .prologue
    .line 912
    iput-object p1, p0, Lcom/android/hwcamera/FocusManager$2;->this$0:Lcom/android/hwcamera/FocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 915
    const-string v0, "FocusManager"

    const-string v1, "onAutoFocusMoving moving"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager$2;->this$0:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->resetTouchFocus()V

    .line 917
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager$2;->this$0:Lcom/android/hwcamera/FocusManager;

    #getter for: Lcom/android/hwcamera/FocusManager;->mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;
    invoke-static {v0}, Lcom/android/hwcamera/FocusManager;->access$500(Lcom/android/hwcamera/FocusManager;)Lcom/android/hwcamera/hwui/FocusIndicatorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->showFocuing()V

    .line 918
    return-void
.end method
