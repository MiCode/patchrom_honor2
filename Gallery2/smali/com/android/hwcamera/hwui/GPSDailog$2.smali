.class Lcom/android/hwcamera/hwui/GPSDailog$2;
.super Ljava/lang/Object;
.source "GPSDailog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/hwui/GPSDailog;->creatGpsDialogBox(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/hwui/GPSDailog;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/hwui/GPSDailog;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/hwcamera/hwui/GPSDailog$2;->this$0:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GPSDailog$2;->this$0:Lcom/android/hwcamera/hwui/GPSDailog;

    #getter for: Lcom/android/hwcamera/hwui/GPSDailog;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/GPSDailog;->access$300(Lcom/android/hwcamera/hwui/GPSDailog;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setGPSstatus(Z)V

    .line 70
    return-void
.end method
