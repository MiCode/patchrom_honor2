.class Lcom/android/gallery3d/widgetunit/GalleryUnitService$UnitHandler;
.super Landroid/os/Handler;
.source "GalleryUnitService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/widgetunit/GalleryUnitService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnitHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/widgetunit/GalleryUnitService;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/widgetunit/GalleryUnitService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/gallery3d/widgetunit/GalleryUnitService$UnitHandler;->this$0:Lcom/android/gallery3d/widgetunit/GalleryUnitService;

    .line 108
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 109
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 122
    :goto_0
    return-void

    .line 116
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryUnitService$UnitHandler;->this$0:Lcom/android/gallery3d/widgetunit/GalleryUnitService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/gallery3d/widgetunit/GalleryUnitService;->updateView(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/widgetunit/GalleryUnitService;->access$000(Lcom/android/gallery3d/widgetunit/GalleryUnitService;I)V

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
