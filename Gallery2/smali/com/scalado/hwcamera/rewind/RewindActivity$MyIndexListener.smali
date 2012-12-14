.class Lcom/scalado/hwcamera/rewind/RewindActivity$MyIndexListener;
.super Ljava/lang/Object;
.source "RewindActivity.java"

# interfaces
.implements Lcom/scalado/hwcamera/rewind/IndexSelector$IndexListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/hwcamera/rewind/RewindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyIndexListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;


# direct methods
.method private constructor <init>(Lcom/scalado/hwcamera/rewind/RewindActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 631
    iput-object p1, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyIndexListener;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/hwcamera/rewind/RewindActivity;Lcom/scalado/hwcamera/rewind/RewindActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 631
    invoke-direct {p0, p1}, Lcom/scalado/hwcamera/rewind/RewindActivity$MyIndexListener;-><init>(Lcom/scalado/hwcamera/rewind/RewindActivity;)V

    return-void
.end method


# virtual methods
.method public onIndexFocused(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 634
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyIndexListener;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    #getter for: Lcom/scalado/hwcamera/rewind/RewindActivity;->mViewer:Lcom/scalado/app/rewind/RewindViewer;
    invoke-static {v0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->access$1900(Lcom/scalado/hwcamera/rewind/RewindActivity;)Lcom/scalado/app/rewind/RewindViewer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/scalado/app/rewind/RewindViewer;->selectBackground(I)V

    .line 635
    return-void
.end method

.method public onIndexSelected(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 638
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyIndexListener;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    #getter for: Lcom/scalado/hwcamera/rewind/RewindActivity;->mViewer:Lcom/scalado/app/rewind/RewindViewer;
    invoke-static {v0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->access$1900(Lcom/scalado/hwcamera/rewind/RewindActivity;)Lcom/scalado/app/rewind/RewindViewer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/scalado/app/rewind/RewindViewer;->selectBackground(I)V

    .line 639
    return-void
.end method
