.class Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyRenderCallback;
.super Ljava/lang/Object;
.source "StrobeViewerActivity.java"

# interfaces
.implements Lcom/scalado/hwcamera/strobe/SessionStore$RenderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyRenderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;


# direct methods
.method private constructor <init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyRenderCallback;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1251
    invoke-direct {p0, p1}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyRenderCallback;-><init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V

    return-void
.end method


# virtual methods
.method public onStrobeRenderCompleted(Lcom/scalado/caps/Session;)V
    .locals 1
    .parameter "strobeSession"

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyRenderCallback;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #calls: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->doSaveImage(Lcom/scalado/caps/Session;)V
    invoke-static {v0, p1}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$4800(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;Lcom/scalado/caps/Session;)V

    .line 1256
    return-void
.end method
