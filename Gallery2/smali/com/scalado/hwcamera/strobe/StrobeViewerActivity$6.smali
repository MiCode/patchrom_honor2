.class Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$6;
.super Landroid/os/Handler;
.source "StrobeViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;


# direct methods
.method constructor <init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1227
    iput-object p1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$6;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$6;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    invoke-virtual {v0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->finish()V

    .line 1230
    return-void
.end method
