.class Lcom/android/gallery3d/app/PhotoPage$1;
.super Lcom/android/gallery3d/ui/GLView;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$1;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 211
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$1;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$200(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/android/gallery3d/ui/PhotoView;->layout(IIII)V

    .line 213
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$1;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mHdrLableView:Lcom/android/gallery3d/ui/HdrLableView;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/HdrLableView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    const-string v0, "PhotoPage"

    const-string v1, "onLayout() --> mHdrLableView.layout"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$1;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mHdrLableView:Lcom/android/gallery3d/ui/HdrLableView;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/HdrLableView;

    move-result-object v0

    sget v1, Lcom/android/gallery3d/ui/HdrLableView;->HDR_LABEL_LEFT_MARGIN:I

    sget v2, Lcom/android/gallery3d/ui/HdrLableView;->HDR_LABEL_TOP_MARGIN:I

    sget v3, Lcom/android/gallery3d/ui/HdrLableView;->HDR_LABEL_WIDTH:I

    sget v4, Lcom/android/gallery3d/ui/HdrLableView;->HDR_LABEL_TOP_MARGIN:I

    sget v5, Lcom/android/gallery3d/ui/HdrLableView;->HDR_LABEL_HEIGHT:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/ui/HdrLableView;->layout(IIII)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$1;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$400(Lcom/android/gallery3d/app/PhotoPage;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$1;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$600(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/DetailsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$1;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/GalleryActionBar;->getHeight()I

    move-result v1

    invoke-virtual {v0, p2, v1, p4, p5}, Lcom/android/gallery3d/ui/DetailsHelper;->layout(IIII)V

    .line 222
    :cond_1
    return-void
.end method

.method protected renderBackground(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 205
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer()V

    .line 206
    return-void
.end method
