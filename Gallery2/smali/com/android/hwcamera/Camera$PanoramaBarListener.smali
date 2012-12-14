.class Lcom/android/hwcamera/Camera$PanoramaBarListener;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/android/hwcamera/hwui/PanoramaBar$Listeners;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanoramaBarListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 3943
    iput-object p1, p0, Lcom/android/hwcamera/Camera$PanoramaBarListener;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3943
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera$PanoramaBarListener;-><init>(Lcom/android/hwcamera/Camera;)V

    return-void
.end method


# virtual methods
.method public onPanroamaStop(Z)V
    .locals 1
    .parameter "bshut"

    .prologue
    .line 3945
    iget-object v0, p0, Lcom/android/hwcamera/Camera$PanoramaBarListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->stopPanorama(Z)V
    invoke-static {v0, p1}, Lcom/android/hwcamera/Camera;->access$12300(Lcom/android/hwcamera/Camera;Z)V

    .line 3946
    return-void
.end method
